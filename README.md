# dotfiles
My configuration files, mostly leaving here for my own use

This is probably a messy way to do dotfiles, but my home folder
is a git repo with `*` in `.gitignore`.

I use `git add -f <file>` to manually add dotfiles

To use,  
`cd ~` simply cd to your home folder,  
`git clone ...` clone contents into `~/dotfiles`  
`mv /* <repo-name>/.* .` Move the stuff into your home folder to use it

Eventually, I'll move to [this neater method I say on hacker news](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
