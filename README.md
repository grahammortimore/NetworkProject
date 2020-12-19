# NetworkProject
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting public access to the network.
What aspect of security do load balancers protect?:
Load balancers protect the webservers from being overloaded
What is the advantage of a jump box?:
With a jump box you can limit administrative privledges to a small few people on certain boxes. 
The purpose of a load balancer:
The purpose of the load balancer is to stand in front of the servers and redirect traffic in the case of a down or overload server.
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics
What does Filebeat watch for?:
Filebeat watches for any changes to the log files on the servers
What does Metricbeat record?:
Metricbeat records metrics from the OS and services running on the servers

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| TODO                             |                  |
| TODO     |          |            |                  |
| TODO     |          |            |                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the virtual jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
199.192.158.7

Machines within the network can only be accessed by the Jump Box Provisioner.


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because there is no room for human error, once you know it will configure correctly on one system you can do the same on any other.


The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web-1 - 10.0.0.6
Web-2 - 10.0.0.7
Web-3 - 10.0.0.10

We have installed the following Beats on these machines:
Filebeat


These Beats allow us to collect the following information from each machine:
Filebeat monitors the log and system files for changes and forwards them to your ELK server for you to view and monitor.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook file to roles.
- Update the hosts file to include IP addresses of the boxes you'd like to install on.
- Run the playbook, and navigate to https://ELK_Server_IP:5601/app/kibana to check that the installation worked as expected.
