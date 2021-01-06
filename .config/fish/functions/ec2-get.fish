# Defined in - @ line 1
function ec2-get
	aws2 ec2 describe-instances --filters '[{"Name":"tag:Name","Values":["chuckd-skaffold-2"]},{"Name":"tag:Owner","Values":["chuckd"]}]'  --query 'Reservations[*].Instances[*].{Instance:InstanceId}' | jq -r '.[0][0].Instance' $argv;
end
