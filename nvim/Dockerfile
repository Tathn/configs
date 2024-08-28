FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN useradd -m user
ENV USER_HOME="/home/user"

RUN pacman --noconfirm -S git curl less tree python3 python-pip

#Setup neovim
RUN pacman --noconfirm -S neovim pyright python-pynvim fzf 
RUN sh -c 'curl -fLo $USER_HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
COPY nvim_config $USER_HOME/.config/nvim

COPY bashrc_custom $USER_HOME/.bashrc_custom
RUN echo ". ~/.bashrc_custom" > $USER_HOME/.bashrc

RUN chown -R user $USER_HOME
USER user
RUN nvim +'PlugInstall --sync' +qa
