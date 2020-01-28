# Defined in - @ line 1
function up --description 'alias up docker-compose up -d && docker-compose logs -f'
	docker-compose up -d && docker-compose logs -f $argv;
end
