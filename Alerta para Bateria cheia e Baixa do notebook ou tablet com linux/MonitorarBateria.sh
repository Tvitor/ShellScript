##Notificacoes da Bateria
chmod 744 .bateriaMonitor.sh
while true 
do

    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
        if [ $battery_level -gt 98 ]
            then
                notify-send "Bateria em nivel satisfatorio." "Level: ${battery_level}% "
        fi

    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
        if [ $battery_level -le 20 ]
            then
                notify-send  "Battery com nivel baixo." "Level: ${battery_level}% "
        fi
    sleep 300 ## sleep 300 wait 5 min before repeating
done
## sleep 300 wait 5 min before repeating

