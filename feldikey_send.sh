#!/bin/bash
# feldikey_send: Part of feldikey to send out text to the brower

quicktext=${*}
for quickstep in $(echo ${quicktext})
do
	# Each quickstep is a word that will get "customized" by sed to our needs
	# TODO: Newlines and a lot of custom characters, german umlauts etc
	quickstep=$(echo ${quickstep} | sed 's/./& /g')
	quickstep=$(echo ${quickstep} | sed 's/ $//g')
	quickstep=$(echo ${quickstep} | sed 's/,/comma/g')
	quickstep=$(echo ${quickstep} | sed 's/\./period/g')
	quickstep=$(echo ${quickstep} | sed 's/ö/odiaeresis/g')
	quicktext_final="${quicktext_final} space ${quickstep}"
done

quicktext_final="${quicktext_final} Return"

# Just for development we actively select the Leafpad window.
# We won't use that in the end. In production, we will just
# use xdotool key and directly write into the active window.
window=$(xdotool search "Unbenannt" | head -1)
xdotool windowactivate --sync ${window}
xdotool key ${quicktext_final}
