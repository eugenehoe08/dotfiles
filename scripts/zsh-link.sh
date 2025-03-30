#!/bin/bash

change_shell() {
    echo "$(which zsh)" | sudo tee -a /etc/shells

    cat /etc/shells

    chsh -s $(which zsh)

    exec zsh

    echo $SHELL
}
