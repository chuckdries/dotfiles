function stack-reload
  stack-exec $argv[1] $argv[2] pm2 reload 0
end
