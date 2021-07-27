.. _`Ansible`:

Ansible
=======

Ansible is a collection of tools based on Python that is developed and maintained by RedHat. Official Ansible Documentation can be Found `HERE <https://www.ansible.com/>`_.

Ansible is designed to automate repetitive task such as Installing software, deploying configurations, managing servers, and much more.


.. _How_Does_it_Work:

How Does it Work?
-----------------

Ansible is based on the `Python Scripting Language <https://www.python.org/>`_. Through a series of Modules built to perform a specific task, you can build a "playbook" to perform many task in an automated fashion. This specific github repository is a collection of various Ansible Playbooks to perform many different task. More Specifically, installing base configurations for many of the common services a person may offer on the AREDN Mesh network. 

.. _Ansible_Use_Case:

Ansible Use Case Example
------------------------

Say we want to have a way too run 1 command to install an apache2 webserver. We can create a YAML file with the following contents

.. code-block:: yaml

  ---
  - name: Install Apache2
    hosts: localhost
    gather_facts: True
    become: true
    become_method: sudo
    
    tasks:
      - name: Install Apache2
        package:
          name: apache2
          state: present

We can save the above YAML to a file called `install_apache2.yml`. We can then tell Ansible to read it and take action with the command `ansible-playbook install_apache2.yml`. It will use the package module to use the Operating Systems package manage to install the package apache2. If it is already installed it will just report ok and will not take any action. However, we can change the state to latest and it will check and make sure the package apache2 is install and the latest version available. 

