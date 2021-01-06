# Defined in - @ line 1
function use-stack-2 --description 'copy stack-2.json to appropriate file'
  if test -e config/default.json
    cp config/stack-2.custom.json config/local.json $argv;
  else if test -e config/config-template.json
    cp config/stack-2.custom.json config/config.json $argv;
  end
end
