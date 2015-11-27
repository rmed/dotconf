# Bash configs

## Bash custom color prompt

Custom command prompt that shows current directory, user/machine, git branch
(if any) and Python virtual environment (if any).

### Usage

Copy `.bash_cp` to `~/` and add to your `.bashrc` file:

~~~
# custom prompt
if [ -f ~/.bash_cp ]; then
    . ~/.bash_cp
fi
~~~

## readline configuration

Custom readline configuration for my bash.

### Tab completion

- Use `TAB` to show tab completion options
- Use `Shift+TAB` to cycle (forward) in the completion options list

### Usage

Copy `.inputrc` to `~/`.

