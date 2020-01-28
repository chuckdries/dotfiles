
eval (starship init fish)
function code
	set location "$PWD/$argv"
	open -n -b "com.microsoft.VSCode" --args $location
end

# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/chuckdries/Documents/gitamine/node_modules/tabtab/.completions/electron-forge.fish ]; and . /Users/chuckdries/Documents/gitamine/node_modules/tabtab/.completions/electron-forge.fish

status --is-interactive; and source (rbenv init -|psub)

