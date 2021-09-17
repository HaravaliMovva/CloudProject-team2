  **CLOUD PROJECT - TEAM 2**

  **(EDA with Python)**

  **Submitted by:Movva  Sri Sai Haravali,Gourav Meenia,Siddharth,Tanya Mishra,Ambika Sharma,Yashvi Malhan**

                        **Introduction**

Housing prices are an important reflection of the economy. Housing price ranges are of great interest for both buyers and sellers. In this project, house prices will be predicted 
given explanatory variables that cover many aspects of residential houses. The goal of this project is to visualize the given numerical data using EDA techniques with python.

                         ** Launching an EC2 instance using AWS CLI:**

1) CREATING A VPC : aws ec2 create-vpc --cidr-block 10.0.0.0/16

2) CREATING SUBNETS : aws ec2 create-subnet --vpc-id <vpcId> --cidr-block 10.0.0.0/24

3) CREATING INTERNET GATEWAY : aws ec2 attach-internet-gateway --vpc-id <vpcId>--internet-gateway-id <InternetGatewayId>

4) VIEWING THE ROUTE TABLES AND SUBNETS : 
                                                                                             aws ec2 describe-route-tables --route-table-id <RouteTableId>

                                                                                             aws ec2 describe-subnets --filters "Name=vpc-id,Values=<vpcId>" --query

                                                                                             "Subnets[\*].{ID:SubnetId,CIDR:CidrBlock}"

5) ASSOCIATING ROUTE TABLE AND MAPPING :
                                                                                            aws ec2 associate-route-table --subnet-id <SubnetId> 
                                                                                  
                                                                                           --route-table-id <RouteTableId>

                                                                                            aws ec2 modify-subnet-attribute --subnet-id <SubnetId>

                                                                                            --map-public-ip-on-launch

6)CREATING KEY PAIR AND SECURITY GROUPS: 
                                                                                            aws ec2 create-key-pair --key-name AWS-Keypair --query "KeyMaterial" --output text > "C:\AWS\AWS\_Keypair.pem"

                                                                                            aws ec2 create-security-group --group-name <security-group-name> --description "<description>" --vpc-id <vpcId>

                                                                                            aws ec2 authorize-security-group-ingress --group-id <GroupId> --protocol tcp --port 22 --cidr 0.0.0.0/0

7)RUNNING THE EC2 INSTANCE : aws ec2 run-instances --image-id <ami-id> --count 1 --instance-type t2.micro --key-name <Keypair-name> --security-group-ids <SecurityGroupId> --subnet-id <SubnetId>

8)VIEWING THE INSTANCE : aws ec2 describe-instances --instance-id <InstanceId>

                                                               **Methodology**

TOOLS USED:

● Python 3.7

● Pandas (Library)

● Numpy (Library)

● Matplotlib (Library)

● Seaborn(Library)

● Jupyter Notebook

● AWS CLI

● Git Bash

                                                        **GIT Commands **

GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code
management functionality of Git, plus its own features.

● Git commands to upload files in git repository using GitBash:

\1) git init

\2) git add .

\3) git commit -m "first commit"

\4) git branch -M main

\5) git remote add origin

<https://github.com/HaravaliMovva/Cloud-group2-project.git>

\6) git push -u origin main

● Git commands to clone the repository :

\1) git clone <https://github.com/HaravaliMovva/Cloud-group2-project.git>

\2) cd “projectname”/

\3) git pull

                                                    **EDA with python(Visualisation) **

In this we will load Bangalore home prices data into pandas dataframe and then handle NA values. We will then remove some unnecessary features and also normalize
property size. We will convert the range of property size (such as 2100-3250) into an average of min and max, We will then visualize the data.

a) IMPORT : import Pandas,numpy,matplotlib

b) READ THE DATASET : df1 = pd.read_csv("dataset name")

c) ANALYZE THE DATA FRAME : df1.shape()

d) DROP UNWANTED COLUMNS : df2 = df1.drop(["colums list",axis='colums'])

e) FURTHER DATA CLEANING : removing redundant values, retaining unique values. df3.total_sqft.unique()

f) FEATURE ENGINEERING : (i) Dimensionality Reduction 
                                                     (ii) Outliers Removal : def remove_pps_outliers(df)

g) VISUALIZATION : (i) Scatter plot Analysis(before removal of outliers) : def plot_scatter_chart(df,location) 
                                     (ii) Scatter plot Analysis(after removal of outliers) : def plot_scatter_chart(df,location) 
                                     (iii) Histogram

h) FINDING BEST MODEL :      (i)Using GRID SEARCH CV : from sklearn.model_selection import GridSearchCV
                                                                                                            from sklearn.linear_model import Lasso
                                                                                                            from sklearn.tree import DecisionTreeRegressor
                                                                                                            def find_best_model_using_gridsearchcv(X,y):

 -->  Linear Regression gives the best score among Linear Regression,Lasso and decision tree classifier


                                                   **Summary**

We have created an EC2 instance through the aws cli. We have written the source code for the data visualization with respect to pricing of houses in
Bengaluru. We have cloned the repository, downloaded the required dataset ( Bangalore House Dataset ). We have then executed the
EDA(.ipython) file and visualized the data.

