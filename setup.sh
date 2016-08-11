#!/bin/bash
# feldikey_setup.sh: Prepares everything for feldikey


echo "Checking dependencies.."
for dependency in sqlite3 xdotool xev
do
	echo -n "	${dependency}: "
	if ! which ${dependency}
	then 
		echo -n "missing. Please install it and try again!"
		echo
		exit 1
	else
		echo -n "found :)"
		echo
	fi
done


echo "Creating config folder.."
mkdir -p ~/.config/feldikey


echo "Creating database.."
echo "create table entries(id integer primary key autoincrement, title text, shortcut text, content text);" | sqlite3 ~/.config/feldikey/feldikey.db
echo "create table categories(id integer primary key autoincrement, title text);" | sqlite3 ~/.config/feldikey/feldikey.db
echo "create table cats_entries(id integer primary key autoincrement, catid integer, entryid integer);" | sqlite3 ~/.config/feldikey/feldikey.db


echo "Everything is done, welcome to your personal feldikey setup. Please note that this is completely pre-alpha ;)"
