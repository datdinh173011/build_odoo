# ********** BASE **********
FROM odoo:16 AS base
WORKDIR /etc/odoo
COPY ./DATN_ODOO_2 /mnt/extra-addons

# ********** DEVELOPER **********
FROM base AS dev

# create root user then add sudo command
USER root
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y git \
 && apt-get install -y sudo

# create vscode user then add to docker group
RUN useradd -s /bin/bash -m vscode \
 && groupadd docker \
 && usermod -aG docker vscode \
 && echo 'vscode:vscode' | sudo chpasswd