# dotfiles
My configuration files, mostly leaving here for my own use

My home folder is a git repo with `*` in its `.gitignore`.


## Using this repo
### Adding new dotfiles
Use [this neat method I saw on hacker news](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

Install pathogen and necessary plugins

Install Oh My ZSH

Install powerline-status with --user

The powerline stuff is special because powerline stores its config files in a subdirectory of wherever pip installs it, so you need to symlink it. `rm -R powerlinedir/config_files && ln -s ~/.powerline powerlinedir/config_files`


