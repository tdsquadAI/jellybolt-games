#!/bin/bash
# Run this once you have your AdSense publisher ID from adsense.google.com
# Usage: ./scripts/activate-adsense.sh ca-pub-XXXXXXXXXXXXXXXX YOUR_AD_SLOT_ID
PUB_ID=$1
AD_SLOT=$2
find games -name "index.html" -exec sed -i "s/JELLYBOLT_ADSENSE_PUB_ID/$PUB_ID/g" {} \;
find games -name "index.html" -exec sed -i "s/JELLYBOLT_AD_SLOT_ID/$AD_SLOT/g" {} \;
echo "✅ AdSense activated with $PUB_ID"