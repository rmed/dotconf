# Bash config

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
