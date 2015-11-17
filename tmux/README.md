# tmux config

My tmux configuration file.

## Usage

Simply copy/link to ~/.tmux.conf, make sure
[tpm](https://github.com/tmux-plugins/tpm) is installed. Execute tmux
and then press:

~~~
ctrl + a + I
~~~

## Automatically launch tmux in terminal

Example using `gnome-terminal`: create new profile, in `Command` choose custom
command and write:

~~~
tmux -2 a
~~~

This will launch currently active tmux session or a new one if there are none.
