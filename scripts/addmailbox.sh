#!/usr/bin/env bash

# This script will add a mailbox to be accessed by an email client or squirrelmail

read -p "Enter the Mailbox Name (acount username): " MBOXNAME
read -p "Enter the users First and Last (Sur) Names: " MBOXCOMMENT

# Generate random 10 character Password
PASS=$(openssl rand -base64 48 | cut -c1-10)

# Create User account
sudo useradd -m -d /home/$MBOXNAME -c "$MBOXCOMMENT" -s /sbin/nologin $MBOXNAME

# Set Password for new account
echo -e "$PASS\n$PASS" | sudo passwd $MBOXNAME

echo "Username: $MBOXNAME"
echo "PASSWORD: $PASS"

exit 0
