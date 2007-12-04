#!/bin/sh

CWD="`pwd`"

INITSCRIPT="$CWD/dropr"
CONFIG="$CWD/dropr.cfg-default"

if [ -e "$CONFIG" ]
then
  . "$CONFIG"

  case "$1" in
    remove)
      /etc/init.d/dropr stop

      rm -f /etc/init.d/dropr
      rm -f /etc/default/dropr

      echo
      update-rc.d dropr remove
      echo
    ;;
    *)
      ln -s $INITSCRIPT /etc/init.d/dropr
      ln -s $CONFIG /etc/default/dropr

      echo
      update-rc.d dropr defaults 99 01
      echo
    ;;
   esac

else
  echo "$CONFIG missing."
  echo "Could not install/remove."
fi