FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN useradd -m user
ENV USER_HOME="/home/user"

RUN pacman --noconfirm -S git curl less tree python3 python-pip cmake make gcc ripgrep

#Setup neovim
RUN pacman --noconfirm -S neovim pyright python-pynvim
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
                        $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
COPY nvim_config $USER_HOME/.config/nvim

COPY bashrc_custom $USER_HOME/.bashrc_custom
RUN echo ". ~/.bashrc_custom" > $USER_HOME/.bashrc

RUN chown -R user $USER_HOME
USER user
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
