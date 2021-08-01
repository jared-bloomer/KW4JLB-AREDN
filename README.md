# What am I looking at?
AREDN Mesh networks are for Amateur Radio Operators to deploy a mesh network for various data services using RF traffic. Once you have AREDN nodes deployed, there are backend services you can make available on the network from a computer running these services. Due to the portability and low power requirements, many Amateur Radio Operators like to use Raspberry Pi Computers. This repository is a way to install various services on a Raspberry Pi computer using Ansible as an automation method. 

If you would like to learn more about AREDN Mesh Networks, please visit [AREDN Mesh Networks Website](https://www.arednmesh.org/). Official AREDN documentation can be found [Here](https://arednmesh.readthedocs.io/en/latest/)

If you would like to learn more about Ansible, please visit [Redhat's Ansible Page](https://www.ansible.com/)

## For Official Repository Documentation
For the offical documentation for this repository please go to [the github pages site](https://jared-bloomer.github.io/KW4JLB-AREDN/)

## Notes
These Ansible Playbooks were built on a Raspberry Pi 4 (4GB) running Raspberry OS. Raspberry OS is built from Debian so in theory this should work on any Debian Based Operating system on ARM architecture. 

## Pre-RUN Steps
Please edit `group_vars/all.yml`. This file contains variables used in Ansible for things like Credentials, and software versions. At a minimum, Credentials should be changed and made unique for security reasons. 

## Installation

Clone this repo and change to its directory

`git clone https://github.com/jared-bloomer/KW4JLB-AREDN.git && cd KW4JLB-AREDN`

Run the command `chmod +x install.sh && bash install.sh`

**Note: the above commands should only need to be run 1 time per computer. It just installs what is needed for the Ansible playbooks in this repo to run. **

## The following Services are available for installation

### Chat Programs

* Mattermost (open source version of slack). This runs on port 8065 by default
  * To run this playbook run `ansible-playbook install_mattermost.yml`

* MeshChat
  * You must have the Meshchat API package installed on your AREDN node. Get it [HERE](https://s3.amazonaws.com/aredn/meshchat-api_1.02_all.ipk)
  * To run this playbook run `ansible-playbook install_meshchat.yml`

### Email Programs

* Postfix/Dovecot/Squirrelmail
  * This is a bare bones configuration. More advanced configuration may be needed. 
  * See the `scripts` directory for tools to add and delete mailboxes
  * To run this playbook run `ansible-playbook install_email.yml`

### File Sharing Programs

* FTP (vsftpd)
  * By default anonymous access is disabled. To enable it set `ftp_anonymous_access: true` in group_vars/all.yml
  * To run this playbook run `ansible-playbook install_ftp.yml`

* NextCloud
  * This is a little heavy on the resource consumption. It is recommended to have a minimum 4GB of memory for this
  * To run this playbook run `ansible-playbook install_nextcloud.yml`

* Apache2 Web Server
  * This is a barebone install of the Apache2 Web Server
  * To run this playbook run `ansible-playbook install_apache2.yml`

### VoIP Audio/Phone Conferencing Programs

* Asterisk/FreePBX
  * This can be heavy on resources. It is recommended to run on a deditcated Raspberry pi of at least 4GB Memory
  * Access freePBX by going to http://<IP of you Raspberry PI>:81
  * To run this playbook run `ansible-playbook install_voip.yml`
  
### Video Streaming and Surveillance Programs

### Computer Aided Dispatch Programs

### Other Programs

* Duckhunt
  * This is a web browser based version of the classic Super Nintendo Game Duckhunt
  * To run this playbook run `ansible-playbook install_game_duckhunt.yml`
