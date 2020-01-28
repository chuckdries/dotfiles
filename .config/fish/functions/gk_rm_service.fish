function gk_rm_service --argument service
	gk_rm $service{-public-api,-internal-api,-worker}
end
