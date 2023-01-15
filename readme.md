
# ansible-docker

<img src="https://avatars.githubusercontent.com/u/1507452?s=200&v=4" alt="Ansible Icon" align="right" height="40" width="40" hspace="20"/>

This Projects containerizes the [ansible](https://www.ansible.com/community) software, which is an open source automation tool for orchestration and general configuration and administration of computers.

For more informationen about ansible read the Ansible Community Guide [[here]](https://docs.ansible.com/ansible/latest/community/index.html).

***Example usage in a docker-compose file***

The docker-compose file contains various examples.

To use the ansible just type `docker-compose up` and you will get the response from the ansible commandline client.

```yaml
version: '3.9'
services:
  man:
    build: .
    container_name: man
    image: movative/ansible
  version:
    container_name: version
    image: movative/ansible
    command: [ "--version" ]
  hosts:
    container_name: hosts
    image: movative/ansible
    command: [ "all", "--list-hosts" ]
    volumes:
      - ${PWD}/example:/home/ansible
      - ~/.ssh:/root/.ssh:ro

```