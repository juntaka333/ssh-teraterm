@echo of
cd /d %~dp0
aws ec2 --profile taka-windows describe-instances --filters "Name=tag:Name,Values=%1" --query "Reservations[*].Instances[*].PublicIpAddress" --output text > ip.txt
