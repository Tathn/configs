FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN useradd -m user
ENV USER_HOME="/home/user"

RUN pacman --noconfirm -S git curl less tree python3 python-pip make cmake gcc ripgrep go npm unzip

#Setup neovim
RUN pacman --noconfirm -S neovim python-pynvim nerd-fonts
COPY nvim_config $USER_HOME/.config/nvim

COPY bashrc_custom $USER_HOME/.bashrc_custom
RUN echo ". ~/.bashrc_custom" > $USER_HOME/.bashrc

RUN chown -R user $USER_HOME
USER user
RUN nvim --headless "+Lazy! sync" +qa

#Pretty slow, probably can just install languages on the go, cannot async as run command finishes without installing anything
#Related issue https://github.com/nvim-treesitter/nvim-treesitter/issues/2900
#RUN nvim --headless -c 'TSUpdate' -c 'TSInstallSync all' -c 'quitall'
