# Defined in - @ line 1
function ec2-down --description 'alias ec2-down aws ec2 stop-instances --instance-ids (ec2-get)'
	aws ec2 stop-instances --instance-ids (ec2-get) | jq $argv;
end
