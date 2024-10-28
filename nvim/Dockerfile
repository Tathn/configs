FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN useradd -m user
ENV USER_HOME="/home/user"

RUN pacman --noconfirm -S git curl less tree python3 python-pip make cmake gcc ripgrep go npm unzip rust

#Setup neovim
RUN pacman --noconfirm -S neovim python-pynvim nerd-fonts
COPY nvim_config $USER_HOME/.config/nvim

#Setup user env
COPY bashrc_custom $USER_HOME/.bashrc_custom
RUN echo ". ~/.bashrc_custom" > $USER_HOME/.bashrc

RUN chown -R user $USER_HOME
USER user
#END

#Go webdev
RUN go install github.com/air-verse/air@latest
ENV PATH="$PATH:$USER_HOME/go/bin"
#END

RUN nvim --headless "+Lazy! sync" +qa

