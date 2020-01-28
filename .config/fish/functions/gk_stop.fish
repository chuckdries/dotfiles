function gk_stop
	cd ~/Documents/axosoft/gk-docker
	docker-compose stop $argv
	cd -
end
