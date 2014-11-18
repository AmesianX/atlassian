#!/bin/bash
echo "******CREATING JIRA DATABASE******"
gosu postgres postgres --single <<- EOSQL
   CREATE DATABASE jira WITH ENCODING 'UNICODE' LC_COLLATE 'C' LC_CTYPE 'C' \
       TEMPLATE template0;
   CREATE USER jira;
   GRANT ALL PRIVILEGES ON DATABASE jira to jira;
EOSQL
echo ""
echo "******JIRA DATABASE CREATED******"
