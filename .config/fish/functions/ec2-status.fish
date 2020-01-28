function ec2-status --description 'alias ec2-status aws ec2 describe-instances --instance-ids (ec2-get)'
	aws ec2 describe-instances --instance-ids (ec2-get) | jq ".Reservations[0].Instances[0].State.Name"
end
