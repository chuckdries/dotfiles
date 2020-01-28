# Defined in - @ line 1
function config --description 'alias config git --git-dir=/Users/chuckdries/.cfg/ --work-tree=/Users/chuckdries'
	git --git-dir=/Users/chuckdries/.cfg/ --work-tree=/Users/chuckdries $argv;
end
