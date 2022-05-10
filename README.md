update_tomcat_config
=========

This role can be used to update a tomcat config, e. g. early in the
startup process before the actual services runs.

[![CI](https://github.com/Rheinwerk/ansible-role-update_tomcat_config/actions/workflows/ci.yml/badge.svg)](https://github.com/Rheinwerk/ansible-role-update_tomcat_config/workflows/ci.yml)

Notice that it will not start the service and expects the program to be
installed already.

Requirements
------------

The target machine must have tomcat installed.

Role Variables
--------------

There is one main variable that drives this role: `_tomcat`. It is a map that contains all configuration and settings for this role.
Please see [defaults file][defaults].

[defaults]: defaults/main.yml

Dependencies
------------

None

Example Playbook
----------------

```yaml
- hosts: servers
  var:
    TOMCAT:
      ...
  roles:
     - { role: update_tomcat_config, tags: [ 'tomcat' ], _tomcat: "{{ TOMCAT }}" }

```

License
-------

Please see LICENSE.

Author Information
------------------

Original author is [Michael Schmitz](https://github.com/eifelmicha) as member of the [Rheinwerk](https://github.com/Rheinwerk) project.
