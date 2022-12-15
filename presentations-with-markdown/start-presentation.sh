#! /bin/bash

BASEDIR=$(cd "$(dirname "$0")"; pwd)
PRESENTATION="$1"
CSS_FILE="$2"
PORT="$3"

echo "### starting presentation ... : $1"
echo "### using theme ............. : $2"
echo "### in folder ............... : $BASEDIR"

cd "$BASEDIR"

if [ -n "$PORT" ]; then
	echo "### using port .............. : $PORT"
else
	PORT=8001
	echo "### using default port ...... : $PORT"
fi

PORT=$PORT marp --server --html --watch --theme $CSS_FILE $PRESENTATION & PROCESS_ID=$!
sleep 2.0
open http://localhost:$PORT/
read -r
kill $PROCESS_ID
