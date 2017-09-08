# dotfiles
My configuration files, mostly leaving here for my own use

my home folder is a git repo with `*` in `.gitignore`.

I use `git add -f <file>` to manually add dotfiles

To use this repo,  
`cd ~` simply cd to your home folder,  
`git clone ...` clone contents into `~/dotfiles`  
`mv dotfiles/* dotfiles/.* .` Move the stuff into your home folder to use it

The powerline stuff is special because powerline stores its config files in a subdirectory of wherever pip installs it, so you need to symlink it. `rm -R powerlinedir/config_files && ln -s ~/.powerline powerlinedir/config_files`

Eventually, I'll move to [this neater method I say on hacker news](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

