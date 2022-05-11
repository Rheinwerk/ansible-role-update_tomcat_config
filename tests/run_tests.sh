#!/bin/bash

ansible-galaxy install -r requirements.yml
ansible-playbook -v test.yml -i inventory --diff $@
