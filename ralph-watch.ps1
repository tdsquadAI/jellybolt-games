# ⚡ JellyBolt Games — Ralph Watch Script
# Monitors all game repos for issues, tracks studio health
# Run: pwsh ralph-watch.ps1

param(
    [int]$IntervalMinutes = 30,
    [switch]$Once
)

$StudioName = "JellyBolt Games"
$Owner = "tamirdresher"
$GameRepos = @(
    "brainrot-quiz-battle",
    "bounce-blitz",
    "idle-critter-farm"
)
$StudioRepo = "jellybolt-games"
$AllRepos = @($StudioRepo) + $GameRepos

function Write-Header {
    param([string]$Text)
    $line = "=" * 60
    Write-Host "`n$line" -ForegroundColor Cyan
    Write-Host "  $Text" -ForegroundColor White
    Write-Host "$line" -ForegroundColor Cyan
}

function Get-RepoIssues {
    param([string]$Repo)
    try {
        $issues = gh issue list --repo "$Owner/$Repo" --state open --json number,title,labels,assignees,createdAt,updatedAt --limit 50 2>$null | ConvertFrom-Json
        return $issues
    } catch {
        return @()
    }
}

function Get-StaleIssues {
    param($Issues, [int]$DaysStale = 7)
    $cutoff = (Get-Date).AddDays(-$DaysStale)
    return $Issues | Where-Object {
        $updated = [DateTime]::Parse($_.updatedAt)
        $updated -lt $cutoff
    }
}

function Get-UnassignedIssues {
    param($Issues)
    return $Issues | Where-Object {
        $_.assignees.Count -eq 0
    }
}

function Show-DashboardRound {
    Write-Header "$StudioName — Ralph Dashboard $(Get-Date -Format 'yyyy-MM-dd HH:mm')"

    $totalOpen = 0
    $totalStale = 0
    $totalUnassigned = 0

    foreach ($repo in $AllRepos) {
        $issues = Get-RepoIssues -Repo $repo
        $stale = Get-StaleIssues -Issues $issues
        $unassigned = Get-UnassignedIssues -Issues $issues

        $totalOpen += $issues.Count
        $totalStale += $stale.Count
        $totalUnassigned += $unassigned.Count

        $statusIcon = if ($stale.Count -gt 0) { "🟡" } elseif ($issues.Count -gt 0) { "🟢" } else { "⚪" }

        Write-Host "`n  $statusIcon $repo" -ForegroundColor Yellow
        Write-Host "     Open: $($issues.Count) | Stale (7d+): $($stale.Count) | Unassigned: $($unassigned.Count)" -ForegroundColor Gray

        if ($stale.Count -gt 0) {
            Write-Host "     ⚠️  Stale issues:" -ForegroundColor Red
            foreach ($s in $stale | Select-Object -First 3) {
                Write-Host "        #$($s.number) $($s.title)" -ForegroundColor DarkYellow
            }
        }

        if ($unassigned.Count -gt 0) {
            Write-Host "     📋 Unassigned:" -ForegroundColor Magenta
            foreach ($u in $unassigned | Select-Object -First 3) {
                Write-Host "        #$($u.number) $($u.title)" -ForegroundColor DarkMagenta
            }
        }
    }

    # Summary
    Write-Host "`n  📊 Studio Summary" -ForegroundColor Cyan
    Write-Host "     Total Open Issues: $totalOpen" -ForegroundColor White
    Write-Host "     Stale (7d+):       $totalStale" -ForegroundColor $(if ($totalStale -gt 0) { "Yellow" } else { "Green" })
    Write-Host "     Unassigned:        $totalUnassigned" -ForegroundColor $(if ($totalUnassigned -gt 0) { "Yellow" } else { "Green" })

    # Health score
    $health = 100
    if ($totalStale -gt 0) { $health -= ($totalStale * 5) }
    if ($totalUnassigned -gt 3) { $health -= (($totalUnassigned - 3) * 3) }
    $health = [Math]::Max(0, $health)
    $healthColor = if ($health -ge 80) { "Green" } elseif ($health -ge 50) { "Yellow" } else { "Red" }
    Write-Host "     Studio Health:     $health%" -ForegroundColor $healthColor

    # Future placeholders
    Write-Host "`n  🔮 Future Monitors (not yet active):" -ForegroundColor DarkGray
    Write-Host "     📱 Play Store Reviews — coming after first launch" -ForegroundColor DarkGray
    Write-Host "     💰 Revenue Metrics — coming after RevenueCat integration" -ForegroundColor DarkGray
    Write-Host "     📈 DAU/MAU Tracking — coming after Firebase setup" -ForegroundColor DarkGray

    Write-Host ""
}

function Invoke-AgencyRound {
    param([int]$Round, [int]$TimeoutMinutes = 30)

    # Gather issue data across all repos for the prompt
    $issuesSummary = @()
    foreach ($repo in $AllRepos) {
        $issues = Get-RepoIssues -Repo $repo
        $stale = Get-StaleIssues -Issues $issues
        $unassigned = Get-UnassignedIssues -Issues $issues
        if ($stale.Count -gt 0 -or $unassigned.Count -gt 0) {
            $repoSummary = "Repo $Owner/${repo}: $($issues.Count) open"
            if ($stale.Count -gt 0) {
                $staleList = ($stale | Select-Object -First 5 | ForEach-Object { "#$($_.number) $($_.title)" }) -join "; "
                $repoSummary += ", stale: $staleList"
            }
            if ($unassigned.Count -gt 0) {
                $unassignedList = ($unassigned | Select-Object -First 5 | ForEach-Object { "#$($_.number) $($_.title)" }) -join "; "
                $repoSummary += ", unassigned: $unassignedList"
            }
            $issuesSummary += $repoSummary
        }
    }

    if ($issuesSummary.Count -eq 0) {
        Write-Host "  ✅ No stale or unassigned issues — skipping agency round $Round" -ForegroundColor Green
        return
    }

    $prompt = @"
You are Ralph, the work monitor for $StudioName. Round $Round.
Review the following issues across game repos and take action:
$($issuesSummary -join "`n")
For stale issues: add a comment asking for status update, or triage if unassigned.
For unassigned issues: assign to an appropriate team member or add a needs-triage label.
Work through each issue methodically.
"@

    Write-Host "  🚀 Launching agency round $Round..." -ForegroundColor Cyan

    $roundSessionId = [guid]::NewGuid().ToString()

    # Write prompt to temp file to avoid Start-Process argument splitting
    # (embedded flags like -R in prompt text get misinterpreted as CLI args)
    $promptFile = Join-Path $env:TEMP "ralph-prompt-$Round.txt"
    [System.IO.File]::WriteAllText($promptFile, $prompt, [System.Text.Encoding]::UTF8)

    # Create a thin wrapper script that reads the prompt from file and calls agency
    # This avoids ALL Start-Process argument quoting issues
    $wrapperScript = Join-Path $env:TEMP "ralph-round-$Round.ps1"
    @"
`$promptFile = '$($promptFile.Replace("'","''"))'
`$p = [System.IO.File]::ReadAllText(`$promptFile)
`$singleLine = `$p -replace "`r`n", " " -replace "`n", " "
agency copilot --yolo --autopilot --agent squad -p `$singleLine --resume=$roundSessionId
exit `$LASTEXITCODE
"@ | Out-File -FilePath $wrapperScript -Encoding utf8 -Force

    # Launch the wrapper script with timeout guard
    $agencyProc = Start-Process -FilePath "pwsh" `
        -ArgumentList @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $wrapperScript) `
        -PassThru -NoNewWindow

    $timedOut = $false
    $timeoutMs = $TimeoutMinutes * 60 * 1000
    if (-not $agencyProc.WaitForExit($timeoutMs)) {
        $timedOut = $true
        Write-Host "  ⏰ TIMEOUT: Round $Round exceeded ${TimeoutMinutes}m — killing agency (PID $($agencyProc.Id))" -ForegroundColor Red
        try {
            $childProcs = Get-CimInstance Win32_Process | Where-Object { $_.ParentProcessId -eq $agencyProc.Id }
            foreach ($child in $childProcs) {
                Stop-Process -Id $child.ProcessId -Force -ErrorAction SilentlyContinue
            }
            Stop-Process -Id $agencyProc.Id -Force -ErrorAction SilentlyContinue
        } catch {
            Write-Host "  Warning: Could not kill all child processes: $($_.Exception.Message)" -ForegroundColor Yellow
        }
    }

    $exitCode = if ($timedOut) { 124 } else { $agencyProc.ExitCode }

    if ($timedOut) {
        Write-Host "  ❌ Round $Round timed out (exit 124)" -ForegroundColor Red
    } elseif ($exitCode -eq 0) {
        Write-Host "  ✅ Round $Round completed successfully" -ForegroundColor Green
    } else {
        Write-Host "  ⚠️  Round $Round failed (exit $exitCode)" -ForegroundColor Yellow
    }

    # Cleanup temp files
    Remove-Item -Path $promptFile -Force -ErrorAction SilentlyContinue
    Remove-Item -Path $wrapperScript -Force -ErrorAction SilentlyContinue
}

# Main loop
$round = 0
if ($Once) {
    Show-DashboardRound
    Invoke-AgencyRound -Round 1
} else {
    Write-Host "🔄 Ralph watching $StudioName — every $IntervalMinutes minutes" -ForegroundColor Cyan
    Write-Host "   Press Ctrl+C to stop`n" -ForegroundColor Gray

    while ($true) {
        $round++
        Show-DashboardRound
        Invoke-AgencyRound -Round $round
        Write-Host "  ⏳ Next check in $IntervalMinutes minutes..." -ForegroundColor DarkGray
        Start-Sleep -Seconds ($IntervalMinutes * 60)
    }
}
