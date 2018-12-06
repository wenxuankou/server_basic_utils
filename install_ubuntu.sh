#! /bin/sh

HOME_PATH=$HOME

update_apt() {
  sudo apt-get update -y
}

install_utils() {
  sudo apt-get install wget -y
  sudo apt-get install curl -y
  sudo apt-get install ctags -y
  sudo apt-get install htop -y
  sudo apt-get install tree -y
  sudo apt-get install gcc -y
  sudo apt-get install cloc -y
  sudo apt-get install tig -y
  sudo apt-get install cscope -y

  _install_ack
  _install_vim
  _install_tmux
  _install_clang_format
  _install_zsh
}

_install_ack() {
  sudo apt-get install ack-grep -y
  cp ./ackrc "${HOME_PATH}/"
}

_install_vim() {
  sudo apt-get install vim -y
  cp ./.vimrc "${HOME_PATH}/"
  cp -rf ./.vim "${HOME_PATH}/"
}

_install_tmux() {
  sudo apt-get install tmux -y
  cp ./.tmux.conf "${HOME_PATH}/"
}

_install_zsh() {
  sudo apt-get install zsh -y
  sudo chsh -s /bin/zsh
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  cp ./ruby-man.zsh-theme "${HOME_PATH}/.oh-my-zsh/themes/"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${HOME_PATH}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
  cp ./.zshrc "${HOME_PATH}/"
}

_install_clang_format() {
  sudo apt-get install clang-format -y
  cp ./clang-foramt "${HOME_PATH}/"
}

install_fonts() {
  sudo cp -rf ./UbuntuMono /usr/local/share/fonts
}

main() {
  update_apt
  install_fonts
  install_utils
}

main
