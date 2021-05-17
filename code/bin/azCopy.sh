#!/bin/bash
echo "azcopy login with SP :-" $clientidWK
export AZCOPY_SPA_CLIENT_SECRET=$client_secret
azcopy login --service-principal --application-id $clientid --tenant-id=$tenentid
echo "azcopy Artifact to ADLS"
azcopy copy "$(System.DefaultWorkingDirectory)/nwrlc/" "https://$target_storage.dfs.core.windows.net/$target_container/DBPP/" --include-path "code/bin/py/Sparkpostprocess.py;code/bin/py/customPurge.py"  --recursive=true
