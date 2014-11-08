This ansible playbook repo sets up my home cloudstack lab for development and testing
ansible-playbook -i hosts cloudstack.yml -K

Peppercorn assumes you're using Ubuntu 14.04LTS or above with KVM. The IPs are assumed
from hosts file in a 192.168.0.0/16 network but can be changed. Once run it will
do a all-in-one CloudStack, KVM, NFS and MySQL setup on one machine.
