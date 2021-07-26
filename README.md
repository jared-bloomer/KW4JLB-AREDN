# THIS IS NOT A WORKING PROJECT YET

## Notes
These Ansible Playbooks were built on a Raspberry Pi 4 (4GB) running Raspberry OS. Raspberry OS is built from Debian so in theory this should work on any Debian Based Operating system on ARM architecture. 

## Installation

Clone this repo and change to its directory

`git clone https://github.com/jared-bloomer/KW4JLB-AREDN.git && cd KW4JLB-AREDN`

Run the command `chmod +x install.sh && bash install.sh`

## The following Services are available for installation

* Mattermost (open source version of slack). This runs on port 8065 by default
  * To run this playbook run `ansible-playbook install_mattermost.yml`

