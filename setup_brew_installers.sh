#!/bin/bash

brew update
brew upgrade
BREW_PREFIX=$(brew --prefix)

# Terminal Applications
brew install ack
brew install htop
brew install wget
brew install tmux
brew install nmap
brew install watchman
brew install geoip
brew install watch
brew install ripgrep
brew install youtube-dl
brew install macvim --env-std
brew install neovim
brew install speedtest-cli
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install tree
brew install exa
brew install broot
brew install ncdu
brew install cmatrix
brew install figlet
brew install toilet
brew install cowsay
brew install fortune
brew install asciiquarium
brew install neofetch
brew install tty-clock
brew install jq
brew install ffmpeg
brew install ffmpeg2theora
brew install ffmpegthumbnailer
brew install findutils
brew install httpie
brew install hugo
brew install vegeta
brew install brotli
brew install openssh
brew install zstd
brew install xz
brew install zopfli
brew install zlib
brew install zip
brew install p7zip
brew install unzip
brew install libzip
brew install pigz
brew install pandoc
brew install john
brew install fcrackzip
brew install pango
brew install automake
brew install pcre2
brew install ldns
brew install ponysay
brew install binwalk
brew install qt
brew install libdnet
brew install coreutils
brew install readline
brew install libfido2
brew install curl
brew install curlie
brew install curl-loader
brew install rename
brew install rlwrap
brew install exiftool
brew install shared-mime-info
brew install snappy
brew install socat
brew install freetype
brew install gettext
brew install ghostscript
brew install libyaml
brew install little-cms2
brew install sdl2
brew install sdl2_image
brew install boost

# Console tools
brew install foremost
brew install ssh-copy-id
brew install openssl
brew install stunnel
brew install tcptrace
brew install thefuck
brew install tidy-html5
brew install gnuplot
brew install moreutils
brew install woff2
brew install goto
brew install wrk
brew install hydra
brew install ttab
brew install resolveip

# Liquidbase
brew install liquibase@3.5.3

# Server http
# brew install nghttp2
# brew install nginx

# PDF
brew install pdftk-java
brew install xpdf
brew install pdflib-lite
brew install diff-pdf
brew install diff-so-fancy

# iOS
brew install ios-deploy
brew install cocoapods
brew install libimobiledevice
brew install libplist
brew install ideviceinstaller

# Images
brew install imagemagick
brew install imageoptim-cli
brew install openjpeg
brew install jpeg
brew install webp
brew install jasper
brew install pixman
brew install pngcheck
brew install leptonica
brew install cairo
brew install choose-gui
brew install libpng
brew install libtiff
brew install gd
brew install giflib
brew install grep
brew install netpbm
brew install openexr
brew install ilmbase

# Video
brew install aom
brew install libbluray
brew install libde265
brew install rav1e
brew install dav1d
brew install libheif
brew install libvorbis
brew install theora
brew install x264
brew install x265
brew install xvid

# SQLite
brew install sqlite
brew install sqlite-analyzer
brew install sqlite-utils
brew install sqlmap

# Mongo
# brew tap mongodb/brew
# brew install mongodb-community@4.2

# Audio
brew install opus
brew install lame
brew install flac
brew install libsamplerate
brew install speex

# Swagger
brew install swagger2markup-cli
brew install swagger-codegen@2

# Node
# brew install node
brew install yarn

# Fonts
brew tap homebrew/cask-fonts
brew tap caskroom/fonts
brew cask install font-fantasque-sans-mono
brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-mono-for-powerline
brew cask install font-fira-sans
brew cask install font-hack-nerd-font
brew cask install font-source-code-pro
brew install graphite2

# ZSH
brew install zsh
brew install zsh-navigation-tools
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zsh-completions
brew install zsh-lovers
brew install zsh-you-should-use
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

# Bash
brew install bash
brew install bash-completion@2

# Git
brew install git
brew install git-flow
brew install git-lfs
brew install git-secrets
brew install git-utils
brew install hub
brew install hubflow
brew install bfg
brew install gh
brew install gitmoji

# Kubernetes
brew install kubectx
brew install kubernetes-cli
brew install krew
kubectl krew install ctx
kubectl krew install ns

# Kibana
# brew install kibana@6
# brew install elasticsearch@6

# Php
brew install php

# Ruby
brew install ruby
brew install rbenv
brew install ruby-build

# Python
brew install python@3.9
brew install pyenv-virtualenv

# Deno
brew install deno

# Heroku
brew tap heroku/brew
brew install heroku

# AWS
brew tap aws/tap
brew install aws-iam-authenticator
brew install aws-sam-cli
brew install awscli
brew install s3cmd

# Mysql
# brew install mysql-client@5.7
# brew install mysql@5.7

# GUI Applications
brew install --cask ksdiff
brew install --cask kdiff3
brew install --cask stats
brew install --cask menubar-stats
brew install --cask alfred
brew install --cask redis
brew install --cask cmake
brew install --cask ytmdesktop-youtube-music
brew install --cask knock
# brew install --cask 1password
# brew install --cask 1password-cli
brew cask install obs
brew cask install discord
brew cask install slack
# brew cask install spotify
brew install visual-studio-code
# brew cask install postman
brew cask install docker
brew install dive
brew install google-chrome
brew install brave-browser
# brew cask install firefox
# brew cask install balenaetcher
brew install ngrok
brew install ranger
# brew cask install lastpass
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install alacritty
brew cask install iterm2
brew install qlmarkdown
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install bash
brew install bash-completion2

brew install wget
brew install gnupg
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
