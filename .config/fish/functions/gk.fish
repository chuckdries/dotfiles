function gk --argument service
	echo $service
	if test -z "$service"
		echo "empty"
		cd /Users/chuckdries/Documents/axosoft/
	else
		cd /Users/chuckdries/Documents/axosoft/$service
	end
end
