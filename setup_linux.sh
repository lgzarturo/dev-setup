#!/bin/bash
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
cd ..
rm -rf powerline-shell

# clone
git clone https://github.com/powerline/fonts.git --depth=1

# install
cd fonts
./install.sh

# clean-up a bit
cd ..
rm -rf fonts

mkdir -p ~/.config/powerline-shell && \
powerline-shell --generate-config > ~/.config/powerline-shell/config.json

# make sure to add this to .bashrc
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Aplicaciones
sudo apt add-apt-repository multiverse
sudo apt update
sudo apt install -y curl
sudo apt install -y alsa-utils
sudo apt install -y pulseaudio
sudo apt install -y cmake
sudo apt install -y xbacklight
sudo apt install -y emacs
sudo apt install -y vim
sudo apt install -y compton
sudo apt install -y i3
sudo apt install -y i3blocks
sudo apt install -y htop
sudo apt install -y glances
sudo apt install -y calcurse
sudo apt install -y sl
sudo apt install -y cowsay
sudo apt install -y cmatrix
sudo apt install -y espeak
sudo apt install -y tmux
sudo apt install -y git
sudo apt install -y nitrogen
sudo apt install -y feh
sudo apt install -y scrot
sudo apt install -y redshift
sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo apt install -y openvpn
sudo apt install -y python3-pip
sudo apt install -y neofetch
sudo apt install -y screenfetch
sudo apt install -y ranger
sudo apt install -y unclutter
sudo apt install -y dunst
sudo apt install -y bluetooth
sudo apt install -y bluez
sudo apt install -y bluez-tools
sudo apt install -y bluez-utils
sudo apt install -y blueman
sudo apt install -y rfkill
sudo apt install -y terminator
sudo apt install -y apt-transport-https
sudo apt install -y openssh-server
sudo apt install -y ncdu
sudo apt install -y obs-studio
sudo apt install -y libc++abi1
sudo apt install -y libc++1
sudo apt install -y python3-tk
sudo apt install -y virtualenv
sudo apt install -y wicd-gtk
sudo snap install spotify
sudo snap install discord
sudo apt install -y python3-pip
pip3 install virtualenv
sudo /usr/bin/easy_install virtualenv
sudo apt update
sudo apt upgrade -y

# Docker install
sudo apt-get remove docker docker-engine docker.io

sudo apt update

sudo apt install -y apt-transport-https
sudo apt install -y ca-certificates
sudo apt install -y curl
sudo apt install -y gnupg2
sudo apt install -y software-properties-common

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -


printf "\nVerify you have the key will the following fingerprint: 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88\n"

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release;
echo "$ID") \
     $(lsb_release -cs) \
        stable"

sudo apt update

sudo apt install -y docker-ce

printf "run: <sudo docker run hello-world> to verify installation\n"

# This is to add docker as a group
sudo groupadd docker

# this is so you won't have to run sudo docker on every install
sudo usermod -aG docker $USER

printf "\nto enable Docker on startup run <sudo systemctl enable docker>\n\n to
disable replace 'enable' with 'disable' "

# Spotify

sudo apt install -y dirmngr
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update

sudo apt install spotify-client
