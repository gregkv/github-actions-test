#!/bin/sh

mkdir ~/.ssh
echo "$DEV_SERVER_SSH_KEY" > ~/.ssh/id_rsa
chmod 0600 ~/.ssh/id_rsa
ansible-playbook deploy.yml -i inventory --extra-vars "target=dev-web-server" --private-key=~/.ssh/id_rsa