#!/bin/bash
echo "azcopy Artifact to ADLS"
azcopy copy "$System.DefaultWorkingDirectory/nwrlc/" "https://$target_storage.dfs.core.windows.net/$target_container/DBPP/" --include-path "code/bin/py/Sparkpostprocess.py;code/bin/py/customPurge.py"  --recursive=true
