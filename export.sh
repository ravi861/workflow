export PS1='${debian_chroot:+($debian_chroot)}\h:\w$(__git_ps1 " (%s)")\$ '
alias superclean='git clean -fxd ; git submodule foreach --recursive git clean -fxd'
alias cs='cscope -R'
alias gs='git status'
