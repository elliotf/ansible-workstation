#!/bin/bash -xe

# run via:
#
#   wget -qO - https://raw.githubusercontent.com/elliotf/ansible-workstation/master/setup.sh | bash
#
PLAYBOOK_DIR=$HOME/work/ansible/workstation
sudo apt -y install ansible git build-essential
mkdir -p $PLAYBOOK_DIR
git clone https://github.com/elliotf/ansible-workstation.git $PLAYBOOK_DIR
cd $PLAYBOOK_DIR
make
