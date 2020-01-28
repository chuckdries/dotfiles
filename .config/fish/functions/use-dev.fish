# Defined in - @ line 1
function use-dev --description 'alias use-dev cp config/config-dev.json config/config.json'
	cp config/config-dev.json config/config.json $argv;
	echo "config now points to dev"
end
