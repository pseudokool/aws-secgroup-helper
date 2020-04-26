
# AWS Security Group Updater

CLI replacement to replace having to update ingress/egress rules in AWS security groups via the web console.

## Usage
First configure the following in awssech.sh
```
SEC_GRP="my-security-group-name"
DESCRIPTION="my-description-no-spaces"
AWS_PROFILE="my-aws-profile-name-usually-default"
```
Make the script executable.
```
chmod +x awssech.sh
./awssech.sh 
```
(optional)
Setup an alias in your shell profile.
```
alias awssech="/Users/johndoe//aws-secgroup-helper/awssech.sh"
```
This makes **awssech** globally available.

## Requirements
The AWS CLI needs to be [installed](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html). Make sure your intended zone is setup in the defaults.

## TODO
- Protocol setting needs to be implemented