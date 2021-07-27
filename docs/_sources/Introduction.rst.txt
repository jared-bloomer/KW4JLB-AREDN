.. _`Introduction`:

.. _introductione:

Introduction
============

AREDN Mesh Networks essentially are an "off grid" implementation of an Intranet of servers. AREDN Mesh Nodes find each other over several ways. They will automatically detect each other and link together. This can be done via RF (Radio Frequency) by pointing nodes towards each other. However local nodes can be connected by an Ethernet switch and they will automatically connect via Device To Device (D2D) detection. 

Behind the AREDN Mesh nodes can be servers, in many cases Raspberry Pis because of the small form factor and low power consumption, can run various services that can be exposed via the AREDN mesh nodes for users to connect to. Although it is not required to setup servers behinds the nodes. 

For more information for AREDN Mesh Networks, please visit `http://arednmesh.org <http://arednmesh.org>`_

.. _What_is_contained_in_this_repo:

What is contained in this Repo?
-------------------------------

This repository is a collection on Ansible playbooks used to deploy various services on a Raspberry Pi to be used as a service in an AREDN Mesh network. Ansible is used for automation of a series of tasks.

.. _What_is_Ansible:

What is Ansible?
----------------

Ansible is a collection of tools based on Python that is developed and maintained by RedHat. Official Ansible Documentation can be Found `HERE <https://www.ansible.com/>`_. 

Ansible is designed to automate repetitive task such as Installing software, deploying configurations, managing servers, and much more. 




