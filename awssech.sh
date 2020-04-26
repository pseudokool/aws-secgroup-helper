#
# AWS Security Group Updater
#
# Author: pseudokool <https://github.com/pseudokool>
# License: MIT
# https://github.com/pseudokool/aws-secgroup-helper

# Config
SEC_GRP="my-security-group-name"
DESCRIPTION="my-description-no-spaces"
AWS_PROFILE="my-aws-profile-name-usually-default"

# Fetch WAN IP
IPV4=$(wget ipv4.icanhazip.com -q -O -)
echo "Current IPv4: $IPV4"

# Setup ingress rule via AWS CLI (replicate this for multiple ports, SSH, MySQL etc.)
IP_PERMS="IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges=[{CidrIp=$IPV4/32,Description=\"$DESCRIPTION\"}]"
aws ec2 authorize-security-group-ingress --group-name $SEC_GRP --ip-permissions $IP_PERMS --profile $AWS_PROFILE

# Setup ingress rule via AWS CLI (replicate this for multiple ports, SSH, MySQL etc.)
#IP_PERMS="IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges=[{CidrIp=$IPV4/32,Description=\"$DESCRIPTION\"}]"
#aws ec2 authorize-security-group-ingress --group-name $SEC_GRP --ip-permissions $IP_PERMS --profile $AWS_PROFILE

# Setup ingress rule via AWS CLI (replicate this for multiple ports, SSH, MySQL etc.)
#IP_PERMS="IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges=[{CidrIp=$IPV4/32,Description=\"$DESCRIPTION\"}]"
#aws ec2 authorize-security-group-ingress --group-name $SEC_GRP --ip-permissions $IP_PERMS --profile $AWS_PROFILE