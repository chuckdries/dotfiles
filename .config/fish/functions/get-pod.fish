function get-pod --argument service
	echo (kubectl get pods | grep $service | cut -d " " -f 1)
end
