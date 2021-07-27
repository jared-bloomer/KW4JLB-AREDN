#!/usr/bin/env bash

read -p "Enter the username of the Mailbox to delete: " MBOXNAME

sudo userdel $MBOXNAME

exit 0
