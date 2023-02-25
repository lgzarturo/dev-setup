#install homebrew
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew update
brew install wget
brew install zsh
brew install tree
brew install fzf
brew install ack
brew install bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
source ~/.bash_profile
brew install docker-completion

# install git
brew install git
git config --global user.name "Arturo Lopez"
git config --global user.email "lgzarturo@gmail.com"
git config --global credential.helper osxkeychain

# install vim
brew install vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# install python
brew install python
pip install --upgrade setuptools
pip install --upgrade pip
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
exec $SHELL
pyenv install --list
pyenv install 2.7.12
pyenv install 3.10
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
sudo python get-pip.py
pip install virtualenv
python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
pip install ipython
brew cleanup

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
source ~/.zshrc

# install node stable
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
command -v nvm
nvm install stable
nvm ls
nvm use node
nvm ls-remote
nvm alias default node
npm install -g lite-server eslint
curl -fsSL https://get.pnpm.io/install.sh | sh -
brew install corepack
corepack enable

# install java
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java

#install ruby
brew install rbenv ruby-build rbenv-default-gems rbenv-gemset
echo 'eval "$(rbenv init -)"' >> ~/Projects/config/env.sh
source ~/.zshrc # Apply changes
gem install bundler
echo 'bundler' >> "$(brew --prefix rbenv)/default-gems"
echo 'gem: --no-document' >> ~/.gemrc
gem update --system

# install rust
brew install rustup
rustup-init
rustc --version

# install go
brew install go
go version
export PATH=$PATH:$(go env GOPATH)/bin

# install docker
brew install docker docker-machine
brew install --cask virtualbox
docker-machine create --driver virtualbox default
docker-machine env default
docker run hello-world

mkdir ~/workspace
