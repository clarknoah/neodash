#!/bin/sh
###########
set -e 

echo " \
    { \
    \"ssoEnabled\": ${ssoEnabled:=false}, \
    \"ssoDiscoveryUrl\": \"${ssoDiscoveryUrl:='https://example.com'}\",  \
    \"standalone\": "${standalone:=false}", \
    \"standaloneProtocol\": \"${standaloneProtocol:='neo4j+s'}\", \
    \"standaloneHost\": \"${standaloneHost:='test.databases.neo4j.io'}\", \
    \"standalonePort\": ${standalonePort:=7687}, \
    \"standaloneDatabase\": \"${standaloneDatabase:='neo4j'}\",  \
    \"standaloneDashboardName\": \"${standaloneDashboardName:='My Dashboard'}\", \
    \"standaloneDashboardDatabase\": \"${standaloneDashboardDatabase:='neo4j'}\"  \
    }" > /usr/share/nginx/html/config.json
