function axo --argument service
  set toPath /Users/chuckdries/Documents/axosoft/$service
	echo $toPath
	if test -z "$service"
		echo "empty path arg"
		cd /Users/chuckdries/Documents/axosoft/
	else
		cd $toPath
	end
end
