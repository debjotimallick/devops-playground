# Initial Server Setup Guide

This guide provides a step-by-step process for the initial setup of a new Ubuntu server. It covers updating the system, installing essential packages, and configuring SSH for remote access.

## Update and upgrade packages

```sh
sudo apt update
sudo apt upgrade -y
```

## Install essential build tools

```sh
sudo apt install build-essential -y
```

## Setup SSH server for remote login

```sh
sudo apt install openssh-server -y
```

## Enable and start SSH service

```sh
sudo systemctl enable ssh
sudo systemctl start ssh
```

## Verify SSH service status

```sh
sudo systemctl status ssh
```

## (Optional) Configure UFW firewall to allow SSH

```sh
sudo ufw allow ssh
sudo ufw enable
```

## Verify UFW status

```sh
sudo ufw status
```

## Reboot the system to apply all changes

```sh
sudo reboot
```

## After reboot, verify SSH connectivity

```sh
ssh your_username@your_server_ip
```

Replace `your_username` and `your_server_ip` with your actual username and server IP address.

## Configure SSH key-based authentication (optional)

- Generate SSH key pair on your local machine:

```sh
ssh-keygen
```

We can give custom name to our key pair (eg. homelab_key) or keep pressing enter for default values (id_rsa)

- Copy the public key to the server:

```sh
ssh-copy-id your_username@your_server_ip
```
OR
```sh
ssh-copy-id -i ~/.ssh/homelab_key.pub your_username@your_server_ip
```

- Test SSH login without password:

```sh
ssh your_username@your_server_ip
```
OR
```sh
ssh -i ~/.ssh/homelab_key.pub your_username@your_server_ip
```

## Disable password authentication
