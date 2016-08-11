#!/bin/bash
# feldikey_query.sh: get the content of a quicktext either by shortcut, title or id
# example: feldikey_query.sh shortcut _debug5de_
# example: feldikey_query.sh title Debugdatei
# example: feldikey_query.sh id 1

type=${1}
query=${2}

echo 'select content from entries where '${type}'="'${query}'";' | sqlite3 ~/.config/feldikey/feldikey.db
