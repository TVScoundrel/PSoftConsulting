#!/bin/bash
set -e

### Configuration ###

SERVER=root@82.143.81.172
APP_DIR=/var/www/psoftconsulting
KEYFILE=
REMOTE_SCRIPT_PATH=/tmp/deploy-psoftconsulting.sh


### Library ###

function run()
{
  echo "Running: $@"
  "$@"
}


### Automation steps ###

if [[ "$KEYFILE" != "" ]]; then
  KEYARG="-i $KEYFILE"
else
  KEYARG=
fi

run scp $KEYARG deploy/work.sh $SERVER:$REMOTE_SCRIPT_PATH
echo
echo "---- Running deployment script on remote server ----"
run ssh $KEYARG $SERVER bash $REMOTE_SCRIPT_PATH