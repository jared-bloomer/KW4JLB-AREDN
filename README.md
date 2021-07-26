# What am I looking at?
AREDN Mesh networks are for Amateur Radio Operators to deploy a mesh network for various data services using RF traffic. Once you have AREDN nodes deployed, there are backend services you can make available on the network from a computer running these services. Due to the portability and low power requirements, many Amateur Radio Operators like to use Raspberry Pi Computers. This repository is a way to install various services on a Raspberry Pi computer using Ansible as an automation method. 

If you would like to learn more about AREDN Mesh Networks, please visit [AREDN Mesh Networks Website](https://www.arednmesh.org/). Official AREDN documentation can be found [Here](https://arednmesh.readthedocs.io/en/latest/)

If you would like to learn more about Ansible, please visit [Redhat's Ansible Page](https://www.ansible.com/)

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
