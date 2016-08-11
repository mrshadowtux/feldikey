#!/bin/bash
# feldikey_send: Part of feldikey to send out text to the brower
quicktext=$*
for quickstep in $(echo $quicktext)
do
	# TODO: Newlines and a lot of custom characters, german umlauts etc
	quickstep=$(echo $quickstep | sed 's/./& /g')
	quickstep=$(echo $quickstep | sed 's/ $//g')
	quickstep=$(echo $quickstep | sed 's/,/comma/g')
	quickstep=$(echo $quickstep | sed 's/\./period/g')
	quickstep=$(echo $quickstep | sed 's/ö/odiaeresis/g')
	quicktext_final="${quicktext_final} space ${quickstep}"
done

quicktext_final="${quicktext_final} Return"

window=$(xdotool search "Unbenannt" | head -1)
xdotool windowactivate --sync ${window}
xdotool key ${quicktext_final}
