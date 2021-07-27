.. _`Introduction`:

Introduction
============

AREDN Mesh Networks essentially are an "off grid" implementation of an Intranet of servers. AREDN Mesh Nodes find each other over several ways. They will automatically detect each other and link together. This can be done via RF (Radio Frequency) by pointing nodes towards each other. However local nodes can be connected by an Ethernet switch and they will automatically connect via Device To Device (D2D) detection. 

Behind the AREDN Mesh nodes can be servers, in many cases Raspberry Pis because of the small form factor and low power consumption, can run various services that can be exposed via the AREDN mesh nodes for users to connect to. Although it is not required to setup servers behinds the nodes. 

For more information for AREDN Mesh Networks, please visit `http://arednmesh.org <http://arednmesh.org>`_

.. _Who_can_use_AREDN:

Who Can Use AREDN Mesh Networks?
--------------------------------

In order to use AREDN Mesh Networks, you must be a License Amateur Radio Operator, holding a license with the proper privileges for the Frequencies you will be using. In the United States of America, this is regulated by the Federal Communications Commission (FCC). They are the license issueing organization. More information about this can be found on the FCC website under `47 C.F.R, Part 97 <https://www.ecfr.gov/cgi-bin/text-idx?SID=a552d1b1f1e1a4c549c8906067e4e533&mc=true&node=pt47.5.97&rgn=div5>`_ of the Rules. 

The Amateur Radio Relay League (ARRL) is the Organization in the Untied States that works with the FCC to ensure proper Licensing, License Examination, Policing, and Privilege Allocation. For more information on the ARRL, please visit `their website <http://www.arrl.org/>`_

.. _What_is_contained_in_this_repo:

What is contained in this Repo?
-------------------------------

This repository is a collection on Ansible playbooks used to deploy various services on a Raspberry Pi to be used as a service in an AREDN Mesh network. Ansible is used for automation of a series of tasks.





