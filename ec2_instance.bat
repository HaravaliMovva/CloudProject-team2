aws ec2 create-vpc --cidr-block 192.168.1.0/26

aws ec2 create-subnet --vpc-id vpc-07bd3ca02e56c0ca8 --cidr-block 192.168.1.0/28

aws ec2 create-subnet --vpc-id vpc-07bd3ca02e56c0ca8 --cidr-block 192.168.1.16/28

aws ec2 create-subnet --vpc-id vpc-07bd3ca02e56c0ca8 --cidr-block 192.168.1.32/28

aws ec2 create-subnet --vpc-id vpc-07bd3ca02e56c0ca8 --cidr-block 192.168.1.48/28

aws ec2 create-internet-gateway

aws ec2 attach-internet-gateway --vpc-id vpc-07bd3ca02e56c0ca8 --internet-gateway igw-0

aws ec2 create-route-table --vpc-id vpc-07bd3ca02e56c0ca8

aws ec2 create-route --route-table-id rtb-0d16bded88545041a --destination-cidr-block 0.0.0.0/0 --gateway-id igw-041d241a8b6d40d8a

aws ec2 describe-route-tables --route-table-id rtb-0d16bded88545041a

aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpc-07bd3ca02e56c0ca8" --query "Subnets[*].{ID:SubnetId,CIDR:CidrBlock}"

aws ec2 associate-route-table --subnet-id subnet-0050f6afa73187d31 --route-table-id rtb-0d16bded88545041a

aws ec2 associate-route-table --subnet-id subnet-061d32d214d1c52a5 --route-table-id rtb-0d16bded88545041a

aws ec2 associate-route-table --subnet-id subnet-08599b92b6c884529 --route-table-id rtb-0d16bded88545041a

aws ec2 modify-subnet-attribute --subnet-id subnet-08599b92b6c884529 --map-public-ip-on-launch

aws ec2 associate-route-table --subnet-id subnet-087513e70680be417 --route-table-id rtb-0d16bded88545041a

aws ec2 modify-subnet-attribute --subnet-id subnet-087513e70680be417 --map-public-ip-on-launch

aws ec2 create-key-pair --key-name AWS-keypair --query "KeyMaterial" --output text > "C:\Users\siddharth.gopalan\Training\cloud project team 2\CloudTeam2_Project_Keypair.pem"

aws ec2 create-security-group --group-name sgcloudteam2project --description "welcome to cloud team 2 project" --vpc-id vpc-07bd3ca02e56c0ca8

aws ec2 authorize-security-group-ingress --group-id sg-066841f6b9b7336f9 --protocol tcp --port 22 --cidr 0.0.0.0/0

aws ec2 run-instances --image-id ami-05d18d9b512bb0b47 --count 1 --instance-type t2.micro --key-name AWS-keypair --security-group-ids sg-066841f6b9b7336f9 --subnet-id subnet-08599b92b6c884529

aws ec2 describe-instances --instance-id i-0ed0924a8bf7c8353