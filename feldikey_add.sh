#!/bin/bash
# feldikey_add.sh: add a quicktext to the database
# usage: feldikey_add.sh welcometext _welcome_ "Willkommen bei feldikey, bla bla bla"

title=${1}
shortcut=${2}
text=${3}

echo 'insert into entries(title, shortcut, content) values("'${title}'", "'${shortcut}'", "'${text}'");' | sqlite3 ~/.config/feldikey/feldikey.db
