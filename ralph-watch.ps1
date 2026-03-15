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

# Main loop
if ($Once) {
    Show-DashboardRound
} else {
    Write-Host "🔄 Ralph watching $StudioName — every $IntervalMinutes minutes" -ForegroundColor Cyan
    Write-Host "   Press Ctrl+C to stop`n" -ForegroundColor Gray

    while ($true) {
        Show-DashboardRound
        Write-Host "  ⏳ Next check in $IntervalMinutes minutes..." -ForegroundColor DarkGray
        Start-Sleep -Seconds ($IntervalMinutes * 60)
    }
}
