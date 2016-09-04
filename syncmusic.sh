#/bin/bash

# Incrementally copy music to phone (connected via USB or FTP Server)

findPathByUSBIdOrFTPStorage () {
        lsusboutput="$(lsusb -d $1 | head -n1)"
        usbbus="${lsusboutput% Device*}"
        usbbus="${usbbus#Bus }"
        usbdevice="${lsusboutput%%:*}"
        usbdevice="${usbdevice#*Device }"

        if [ -d "$XDG_RUNTIME_DIR" ]; then
                runtimedir="$XDG_RUNTIME_DIR"
        else
                runtimedir="/run/user/$USER"
        fi

        # Media Transfer Protocol
        MtpPath="$runtimedir/gvfs/mtp:host=%5Busb%3A${usbbus}%2C${usbdevice}%5D"
        # Picture Transfer Protocol
        PtpPath="$runtimedir/gvfs/gphoto2:host=%5Busb%3A${usbbus}%2C${usbdevice}%5D"
        # Phone running ftp server
        FtpPath="$runtimedir/gvfs/ftp:host=192.168.0.39,port=2121"

        if [ -d "$MtpPath" ]; then
                echo "$MtpPath/Internal storage/Music"
        elif [ -d "$PtpPath" ]; then
                echo "$PtpPath/Internal storage/Music"
        elif [ -d "$FtpPath" ]; then
                echo "$FtpPath/Music"
        else
                echo "error"
        fi
}

# use 'lsusb' to find usb id of the connected device
# USB ID for my MOTO G
# Id="22b8:2e82"

# USB ID for my Redmi Note 3
Id="2717:ff40"

Path="$(findPathByUSBIdOrFTPStorage $Id)"
echo $Path
if [ "$Path" == "error" ]; then
        echo "Mounted USB Device/FTP Storage Not Found"
else
        rsync  -r --update --delete --progress /media/bhavya/D/movie/newsongs/Music/ "$Path" # sync files from pc's location to mounted phone
        exit
fi
