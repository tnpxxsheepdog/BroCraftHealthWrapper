#!/bin/bash

# BroCraft Server Network restart script
# Created orginally by iamadpond iamadpond@naughton.ie Customized by TNPXXSHEEPDOG BroCraftPE.me
# Free to redistrubute under the GNU GPL Licence 
# https://www.gnu.org/licenses/gpl.html
# May not be used by commerical entities without prior permission from the address above.
#
#
# Used to auto restart the server after a PocketMine proccess is disabled (most likely by a restart script or crash)
# Script will attempt to download the latest PocketMine-MP phar. (Channel can be set in the "wget" line)
#
# It is not recommended to use this script if you are not comfortable using most recent builds, some of which can cause data corruption based on bugs in the project. 
#
#
# Version 1.0.0
# Author of customized script: TNPXXSHEEPDOG
# Based off and modified from the health wrapper created by IamApond (Pocketmine.net)
#
# ----------------------------------------------



while true; do
wget -q -O - http://get.pocketmine.net/ | bash -s - -v development
# Set above channel to Beta or Stable for more reliable builds!
bash start.sh
clear
echo "      ***        Server has stopped        ***      "
echo "Server will attempt to download latest PocketMine build and then reboot."
echo "             **Press CTRL + C to cancel this operation**            "
for (( i=10; i>0; i--)); do
sleep 1 &
printf "Restarting Server in $i \r                 "
wait
done
clear
done
