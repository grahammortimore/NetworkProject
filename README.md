# Azure Virtual Network Project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Diagram](..blob/Master/Images/docker_ps.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the configuration file may be used to install only certain pieces of it, such as Filebeat.

#### This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting public access to the network.  
#### What aspect of security do load balancers protect?:  
Load balancers protect the webservers from being overloaded by evenly routing traffic to the servers it is standing in front of.  
#### What is the advantage of a jump box?:  
With a jump box you can limit administrative privledges to a small few people on certain boxes.   
#### The purpose of a load balancer:  
The purpose of the load balancer is to stand in front of the servers and redirect traffic in the case of a down or overloaded server. For example if you had a load balancer in front of 3 web servers and one were to go down, the load balancer would then re route the traffic evenly amongst the two servers still standing automatically. 
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.    
#### What does Filebeat watch for?:  
Filebeat watches for any changes to the log or system files on the servers.    
#### What does Metricbeat record?:  
Metricbeat records metrics from the OS and services running on the servers.  

#### The configuration details of each machine may be found below.

|  Name                 | Function               | IP Address | Operating System    |
|----------------------|------------------------|------------|-------|
| Jump-Box-Provisioner | Gateway                | 10.0.0.4   | Linux |
| Web-1                | Web Server             | 10.0.0.6   | Linux |
| Web-2                | Web Server             | 10.0.0.7   | Linux |
| Web-3                | Web Server             | 10.0.0.10  | Linux |
| Elk-Server           | Data Processing Server | 10.1.0.5   | Linux |

### Access Policies

The machines on the internal network are not exposed to the public Internet.

#### Only the virtual jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:  
- 199.192.158.7

Machines within the network can only be accessed by the Jump Box Provisioner located at the IP address above.


#### A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses |
|----------------------|---------------------|----------------------|
| Jump-Box-Provisioner | No                  | 199.192.158.7/32     |
| Web-1                | No                  | 10.0.0.4/32          |
| Web-2                | No                  | 10.0.0.4/32          |
| Web-3                | No                  | 10.0.0.4/32          |
| Elk-Server           | No                  | 10.0.0.4/32          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because there is no room for human error, once you know it will configure correctly on one system you can do the same on any other.


#### The playbook implements the following tasks:
 - Install Docker  
- Install pip3  
- Install Docker python module
- Increase virtual memory  
- Download and install docker web container
- Enable docker service


#### The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Screenshot of docker ps output](/NetworkProject/blob/main/Diagrams/docker_ps.png)

### Target Machines & Beats
#### This ELK server is configured to monitor the following machines:  
Web-1 - 10.0.0.6  
Web-2 - 10.0.0.7  
Web-3 - 10.0.0.10  

#### We have installed the following Beats on these machines:  
- Filebeat  
- Metricbeat


#### These Beats allow us to collect the following information from each machine:  
Filebeat monitors the log and system files for changes and forwards them to Elasticsearch or to Logstash on your Elk server for you to view.  
Metricbeat collect metrics from the operating system and from services running on the server and sends them to Elasticsearch or to Logstash on your Elk Server for you to view.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

#### SSH into the control node and follow the steps below:
- Copy the filebeat-playbook file to roles.
- Update the hosts file to include IP addresses of the boxes you'd like to install on.
- Run the playbook, and navigate to https://ELK_Server_IP:5601/app/kibana to check that the installation worked as expected.
