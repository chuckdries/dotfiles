function gk_build_service -a service
	gk_build $service{-worker,-public-api,-internal-api}
end
