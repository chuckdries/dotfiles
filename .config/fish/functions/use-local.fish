# Defined in - @ line 1
function use-local --description 'copy config-template -> config || default -> local'
  if test -e config/config-template.json
    cp config/config-template.json config/config.json;
  else if test -e config/default.json
    cp config/default.json config/local.json;
  end
end
