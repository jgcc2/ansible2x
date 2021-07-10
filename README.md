### Run ansible
- `$ansible h_gcplap -m shell -a 'df -h' -i vhosts/vh_gcplap.yml`
### Run a playbook
- `$ansible-playbook -i vhosts/ihosts.yml docker_ubuntu_playbook.yml -l DataVserver --tags "r_docker"`
# --env-vars $XD
