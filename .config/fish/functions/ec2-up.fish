# Defined in - @ line 1
function ec2-up --description 'alias ec2-up aws ec2 start-instances --instance-ids (ec2-get)'
	aws ec2 start-instances --instance-ids (ec2-get) | jq $argv;
end
