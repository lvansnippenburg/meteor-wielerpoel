#!/bin/sh

if [ $(ps aux | grep "main.js" | grep -v grep | wc -l | tr -s "\n") -eq 0 ]
then
    export PATH=/usr/sbin:/usr/local/bin:$PATH
    export MONGO_URL=mongodb://
    cd '/Users/lvansnippenburg/Dropbox/Development/meteorapps/wielerpoel'
    meteor
    # meteor >> /Users/lvansnippenburg/Dropbox/Development/logfiles/pagebreak.log 2>&1
fi
exit 0;