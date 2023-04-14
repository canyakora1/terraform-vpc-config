Description 

AWS networking consists of multiple components, and understanding the relationship between the networking components is a key part of understanding the overall functionality and capabilities of AWS. In this hands-on lab, we will create a VPC with an internet gateway, as well as create subnets across multiple Availability Zones. 

Objectives 

Successfully complete this lab by achieving the following learning objectives: 

Create a VPC 

    Create a VPC named VPC1 from scratch (without using the VPC wizard). 

    Set the VPC CIDR to 172.16.0.0/16. 

Create a Public and Private Subnet in Different Availability Zones 

    Create a public and private subnet in different Availability Zones using the following IP CIDR addresses:  

    Public1 subnet in us-east-1a: 172.16.1.0/24 

    Private1 subnet in us-east-1b: 172.16.2.0/24 

Create Two Network Access Control Lists (NACLs), and Associate Each with the Proper Subnet 

    Create a public NACL named Public_NACL with inbound rules allowing HTTP and SSH traffic, as well as an outbound rule allowing traffic on port range 1024-65535. 

    Associate the public NACL with the public subnet. 

    Create a private NACL named Private_NACL with an inbound rule allowing SSH traffic with a source of 172.16.1.0/24, as well as an outbound rule allowing traffic on port range 1024-65535. 

    Associate the private NACL with the private subnet. 

Create an Internet Gateway, and Attach It to the VPC 

    Create an internet gateway named IGW, and attach it to the VPC. 

Create Two Route Tables, and Associate Them with the Correct Subnet 

    Create two route tables:  

    One for the public subnet with an internet gateway route, named PublicRT 

    One for the private subnet without an internet gateway route, named PrivateRT 

    For the public route table, create a default route to the internet using the 0.0.0.0/0 CIDR notation. 
