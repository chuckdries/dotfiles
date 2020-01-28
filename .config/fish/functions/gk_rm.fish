function gk_rm
	cd ~/Documents/axosoft/gk-docker
	docker-compose stop $argv
	docker-compose rm $argv
	cd -
end
