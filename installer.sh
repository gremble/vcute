#!/bin/bash
#Installer for vcute

MY_PATH="`dirname \"$0\"`"

echo "One day this installer will be better..." 
echo

if [ ! -f /etc/default/vcute ]; then
   echo "Copying $MY_PATH/etc/default/vcute to /etc/default/vcute ..."
   cp $MY_PATH/etc/default/vcute /etc/default/vcute
   echo "Now edit /etc/default/vcute"
else 

   echo "/etc/default/vcute exists, doing nothing."
   echo "Edit /etc/default/vcute if VCUTE still isn't working."
fi
