
# AWS Security Group Updater

CLI replacement to replace having to update ingress/egress rules in AWS security groups via the web console.

## Usage
```
chmod +x awssech.sh
./awssech.sh 
```
(optional)
Setup an alias in your shell profile.
```
alias awssech="/Users/johndoe//aws-secgroup-helper/awssech.sh"
```

## Requirements
The AWS CLI needs to be [installed](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html). Make sure your intended zone is setup in the defaults.

## TODO
- Protocol setting needs to be implemented