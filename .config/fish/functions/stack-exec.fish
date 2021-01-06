function stack-exec
  echo $argv[3..-1]
  kubectl exec -it (get-pod $argv[1]) -c $argv[2] -- $argv[3..-1]
end
