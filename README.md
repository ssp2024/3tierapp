Using a terraform to set three-tier architecture application deployment in AWS step by step process.

Project Overview :

Step 1: Create our own VPC for our project with a CIDR Range
Step 2: Set Internet Gateway to connect with VPC
Step 3: Create 3 subnet as one as public and 2 private subnets.
Step 4: Set route table with Table Association
Step 5: Create NAT Gateway for private instance to get Internet path from the public to private.
Step 6: Create RDS Storage to store the data of the application into the database. That database is called RDS.

