#!/bin/bash
#Installer for vcute

SCRIPT=`realpath -s $0`
MY_PATH=`dirname $SCRIPT`

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

if [ ! -f /usr/local/bin/vcute ]; then
   echo "Linking $MY_PATH/usr/bin/vcute <- /usr/local/bin/vcute"
   ln -s $MY_PATH/usr/bin/vcute /usr/local/bin/vcute
else
   echo "Symlink for vcute already there, not doing that again."

fi
