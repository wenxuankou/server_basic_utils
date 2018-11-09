# ServerBasicUtils

包含了几个常用工具的安装以及配置，避免每次繁琐的安装操作

# util list

1. wget
2. curl
3. ctags
4. htop
5. tree
6. gcc
7. ack
8. vim
9. tmux
10. zsh
11. clang-format
12. UbuntuMono Fonts

# Install

```shell
cd ~
git clone git@github.com:wenxuankou/server_basic_utils.git
cd server_basic_utils
./install_ubuntu.sh
cd ~
rm -rf server_basic_utils
```

> Note: If you login with root, I think you need create a normal user

```shell
groupadd app
useradd -g app -G sudo -d /home/ubuntu -m -N ubuntu
```

# Part of shortcuts about vim/tmux

more shortcuts please refer config file `~/.vimrc`, `~/.tmux.conf`

### Vim

`leader` => `,`

`search file` => `<leader> + <leader> + p`

`directory` => `Ctrl + y`

`tagbar` => `Ctrl + i`

### tmux

`prefix key` => `Ctrl + e`

`create new window` => `prefix key + c`

`create new panel` => `prefix key + | or prefix key + -`

`close panel` => `prefix key + x`

`switch window` => `Shift + [Left|Right]`

`temporary exit session` => `prefix key + d`

`entry exist session` => `tmux a -t ${yourSessionName}`
