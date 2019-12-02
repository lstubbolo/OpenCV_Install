#!/bin/bash

#this setup step enables root access... it may not be possible


echo $"sudo -i"

echo "PermitRootLogin yes">>/etc/ssh/sshd_config

/etc/init.d/ssh restart


echo ""
echo ""
echo "FOR THE LOVE OF GOD USE 'toor' AS THE ROOT PASSWORD
echo "DO _NOT_ INCLUDE THE APOSTROPHES"
echo ""
echo ""

sudo -i
passwd root