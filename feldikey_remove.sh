#!/bin/bash
# feldikey_remove.sh: remove a quicktext either by shortcut, title or id
# example: feldikey_remove.sh shortcut _debug5de_
# example: feldikey_remove.sh title Debugdatei
# example: feldikey_remove.sh id 1

searchtype=${1}
query=${2}

echo 'delete from entries where '${searchtype}'="'${query}'";' | sqlite3 ~/.config/feldikey/feldikey.db
