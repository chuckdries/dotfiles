function gk_restart
	cd ~/Documents/axosoft/gk-docker
	docker-compose restart $argv
	cd -
end
