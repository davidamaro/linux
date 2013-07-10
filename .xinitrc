setxkbmap -option terminate:ctrl_alt_bksp
#exec dbus-launch openbox-session
vol(){
edo="`amixer get Master | grep -m 2 Front\ Left | tail -n 1 | awk '{print $6}'`"
if test "$edo" != "[on]" ; then
echo " Mute"
else
echo " `amixer get Master | grep -m 2 Front\ Left | tail -n 1 | awk '{print $5}' | sed -e 's/\[//g'|sed -e 's/%\]//g'`%"
fi
}
batt(){
echo "`acpi -b | awk '{print $4}' | sed -e 's/,//g'`"
}
xrdb -merge ~/.Xresources
while true ; do
#	xsetroot -name "[ Vol: `volumen` ] [ `cancion` ] [ `wifi` ] `date +"[ %a %d %b %Y ] [ %H:%M:%S ]"`"
	xsetroot -name "[ Vol: `vol` ] [ Batt: `batt` ] `date +"[ %a %d %b %Y ] [ %H:%M:%S ]"`"
    sleep 1m
done &
pulseaudio --start
sh ~/.fehbg &
numlockx &
udiskie &
exec dwm
#exec startfluxbox
