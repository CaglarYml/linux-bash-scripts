#!/bin/bash
echo ----------------------------------------------------------------------------
echo Bu betik CaglarYml tarafindan kullanilmasi adina hazirlanmistir.
echo ----------------------------------------------------------------------------
apt install -y wget apt-transport-https gpg
wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
apt update
apt install temurin-11-jdk
echo ----------------------------------------------------------------------------
echo JDK 11 KURULMUSTUR
echo ----------------------------------------------------------------------------
