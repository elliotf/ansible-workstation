#!/bin/bash -xe

# run via:
#
#   wget -q -O - https://raw.githubusercontent.com/elliotf/ansible-workstation/master/setup.sh | bash
#
PLAYBOOK_DIR=$HOME/work/ansible/workstation
sudo apt -y install ansible git
mkdir -p $PLAYBOOK_DIR
git clone https://github.com/elliotf/ansible-workstation.git $PLAYBOOK_DIR
cd $PLAYBOOK_DIR
ansible-playbook workstation.yml
