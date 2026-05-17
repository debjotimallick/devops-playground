# Ansible Scripts for DevOps Playground

## Docker Installation

### Usage

1. **Update the hosts inventory** (`hosts.ini`):

   ```ini
   [docker_servers]
   your-host ansible_host=192.168.1.100 ansible_user=ubuntu
   ```

2. **Run the playbook**:

   ```bash
   ansible-playbook -i hosts.ini install-docker.yml
   ```

3. **Or run with become password prompt**:

   ```bash
   ansible-playbook -i hosts.ini install-docker.yml -K
   ```

### Playbook Details

The `install-docker.yml` playbook:

- Updates apt cache
- Installs required packages (ca-certificates, curl)
- Creates the keyrings directory
- Downloads Docker's GPG key
- Detects Ubuntu version
- Adds Docker's official repository
- Installs Docker packages
- Ensures the target user is added to the docker group

> After the playbook runs, log out and log back in or run `newgrp docker` to apply group membership for the current shell.

### Requirements

- Ansible 2.9+
- SSH access to target hosts
- sudo privileges on target hosts
