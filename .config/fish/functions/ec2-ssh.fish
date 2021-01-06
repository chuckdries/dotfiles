# Defined in - @ line 1
function ec2-ssh --description 'alias ec2-ssh ssh -i ~/keys/dev-sandbox-key-pair.pem bitnami@10.21.4.97'
	ssh -i ~/keys/dev-sandbox-key-pair.pem bitnami@10.21.4.53 $argv;
end
