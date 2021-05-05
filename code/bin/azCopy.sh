echo "azcopy login with SP"

export AZCOPY_SPA_CLIENT_SECRET=$(client-secret)
/home/datalake1/azcopy/azcopy_linux_amd64_10.10.0/azcopy login --service-principal --application-id $(clientid) --tenant-id=$(tenentid)

echo "azcopy Artifact to ADLS"

/home/datalake1/azcopy/azcopy_linux_amd64_10.10.0/azcopy copy "$(System.DefaultWorkingDirectory)/nwrlc/" "https://$(target-storage).dfs.core.windows.net/$(target-container)/DBPP/" --include-path "code/bin/py/Sparkpostprocess.py;code/bin/py/customPurge.py"  --recursive=true
