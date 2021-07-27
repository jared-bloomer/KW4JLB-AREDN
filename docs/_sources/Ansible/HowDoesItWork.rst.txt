.. _`Ansible`:

How Does it Work?
=================

Ansible is based on the `Python Scripting Language <https://www.python.org/>`_. Through a series of Modules built to perform a specific task, you can build a "playbook" to perform many task in an automated fashion. This specific github repository is a collection of various Ansible Playbooks to perform many different task. More Specifically, installing base configurations for many of the common services a person may offer on the AREDN Mesh network. 

.. _Ansible_Use_Case:

Ansible Use Case Example
========================

Say we want to have a way too run 1 command to install an apache2 webserver. We can create a YAML file with the following contents

.. code-block:: yaml

---
- name: Install MeshChat
  hosts: localhost
  gather_facts: True
  become: true
  become_method: sudo

  tasks:
    - name: Install Apache2
      package:
        name: apache2
        state: present


