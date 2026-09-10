# Zurich IT Operations Management — ITOM Infra Services Workspace / ITOM Visibility reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2536–2685 of 4823 | Part 1 of 3

Sections: ITOM Infra Services Workspace (p2536); ITOM Visibility reference (p2541)

---

<!-- page 2536 -->
◦ Management group: Select this checkbox if the Account ID is a management account.
◦ Credentials: Select the AWS credentials configured for this account.
▪ Config aggregator account: Enter the Account ID where the aggregator is created.
▪ Config aggregator name: Enter the name of the AWS Config Aggregator.
▪ Config aggregator region: Enter the AWS Region where the aggregator is created.
◦ Activate: Enable this option.
4. Select Save and run license estimator.
The configuration is saved and the tool generates the report. You are redirected to the Report
page where the status of the report generation can be tracked.
5. From the Report page, select Download resource report to download a PDF of the report.
Related topics
Generate Cloud License Estimator Reports

Generate Cloud License Estimator Reports
Cloud License Estimator reports provide an overview of account information.
The downloaded PDF of the resource report contains an overview of the account’s information,
such as the Cloud Provider, Account Configuration name, and total resource count.
The report distinguishes between CCM Licensable Resources and ITOM Licensable Resources.
On the following pages, the report contains tables of the CCM and ITOM resources.

ITOM Infra Services Workspace
The dashboard integrates several tables so that issues can be monitored and resolved. The
workspace provides real-time monitoring, proactive alerts, automation of common tasks, and
centralized diagnostics to reduce downtime and support tickets.

Explore

Configure

Workspace applications

Learn about ITOM Infra
Services Workspace.

Set up your workspace.

Monitor your applications.

Explore ITOM Infra Services Workspace
The workspace provides real-time monitoring, proactive alerts, automation of common tasks, and
centralized diagnostics to reduce downtime and support tickets.
The ITOM Infrastructure Services dashboard to provide an overview of applications, such as your
active MID Servers and their issues. The dashboard enables you to drill into issues by category
and take corrective actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2536


<!-- page 2537 -->
For example, selecting a MID Server card shows a table of MID Servers. Then the Server Actions
drop-down menu enables you to perform any available action. These actions include Validating
or Rekeying the MID Servers. This Server Actions menu enables you to perform corrective
actions to multiple MID Servers at once from the overview.

Configure ITOM Infra Services Workspace
The dashboard provides real-time monitoring, proactive alerts, automation of common tasks, and
centralized diagnostics to reduce downtime and support tickets.
The ITOM Infra Services Workspace is available out of the box with the Australia family release,
and is available as a Store release in the Yokohama and Zurich family releases.
The ITOM Infra Services Workspace and MID Server workspace are provided by default.
Additional applications are installed if you have the corresponding plug-ins on the instance.

Use ITOM Infra Services Workspace
The dashboard integrates different applications to provide real-time monitoring, proactive alerts,
automation of common tasks, and centralized diagnostics to reduce downtime and support
tickets.
MID Server Workspace
See a concise overview of MID Server activity. The workspace provides real-time monitoring and
enables corrective actions across multiple MID Servers.

ITOM Infrastructure Services dashboard
The MID Server panel is displayed on the ITOM Infrastructure Services dashboard to provide an
overview of MID Server issues.
Selecting any of the cards in the MID Server panel, such as Servers down or Servers with
issues, takes you to that detailed table.
This page also provides a set-up link to Download a MID Server.

MID Servers tables
Navigate to the MID Servers workspace either by selecting its icon from the application list or by
selecting a card from the dashboard. Each of the cards on the dashboard corresponds to the
cards in this workspace view.
Selecting a card shows a table of MID Servers filtered by category. You can customize the filter by
selecting the filter icon, and save the filters with the Saved filters drop-down menu. Group and
sort the results by selecting the Show column filter row icon in the category row.
On the Total MID Servers table, a banner enables you to quickly filter for MID Servers that have
been created in the past week. Use this filter to monitor new MID Servers and diagnose any
issues from their deployment.

Server Actions
MID Servers can be selected by the check box on the table, then the Server Actions drop-down
menu enables you to perform any available action. These actions include Validating or Rekeying
the MID Servers. This Server Actions menu enables you to perform corrective actions to multiple
MID Servers at once from the overview.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2537


<!-- page 2538 -->
Detailed view
Selecting a MID Server's name navigates to a detailed view of that MID Server. On the Status,
Validated, and Unresolved Issues cards, relevant correction actions are shown such as
upgrading or validating the MID Server. If the MID Server has any alerts, they are shown in a
banner.
If the user has the SOAP ECC queue role, then the View ECC Queue button becomes visible,
which navigates to the ECC Queue table.
In the MID Server details view, selected from the context menu, you can edit the Purpose field
to save any notes about the MID Server's purpose. This field is only a text note and does not
change anything about the MID Server.
The Purpose field can be viewed from the dashboard tables by adding it to the Personalize
fields menu, accessed through the three-dot menu beside the Server Actions menu.
The MID Server configuration and Troobleshooting sections of the context menu show the
records assigned to this MID Server. You can access the MID Server properties or logs. Use the
Create button to create new records, or the Manage button to manage existing ones. You can
filter the list of records by selecting the filter icon.
Use the Agent Client Collector (ACC) admin workspace
Use the Agent Client Collector (ACC) admin workspace to monitor the status of your agents.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to Workspaces > ITOM Infra Services Workspace.
2. Select the ACC agents icon
.
The ACC agents page appears, displaying an overview of the agents in your system on the
Dashboard tab.
ACC agents dashboard

3. Select the Agents tab to view a list of the agents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2538


<!-- page 2539 -->
ACC agents page in Workspace

You can filter the displayed agents by selecting one of the boxes at the top of the page. For
example, select Agents down to filter the list by agents that are currently down.
4. Select an agent in the agents list to view details of the agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2539


<!-- page 2540 -->
Agent details page

5. Optional: Select the Agent actions button and select from actions to perform on the agent.
Agent actions
Agent action

Description

Test Check

On the resulting pop-up window, select a
check definition that you want to check on
the agents.

Validate ACC plugins

Validate plugins on the selected agent.

Pause data collection

Pause data collection run on the agent when
CPU consumption is getting too high.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2540


<!-- page 2541 -->
Agent action

Description

Upgrade

Upgrade the agent to a more recent version.

Clear ACC plugins

Clear plugins on the agent to remove
unwanted plugins.

Collect host data

Manually refresh host data.

Note: The Agent actions button displays only when you have installed Agent Client
Collector Framework version 6.0.0 or higher.

ITOM Visibility reference
Reference topics provide additional information about mapping and fine-tuning application
services using ITOM Visibility lists and forms.

Data collected by ITOM Visibility
ITOM Visibility collects unique data for each type of device and stores it in dedicated tables,
fields, and relationships.

Operating system

Operating system
Find servers and computers based on the machine's
operating system:
• Windows
• Solaris
• Linux
• Mac (OS/X) discovery
• HP-UX
• AIX

Virtualization

Virtualization
Collect information on deployments that include
virtualization:
• Hyper-V discovery
• IBM Virtualization
• Red Hat Virtualization
• Nutanix Acropolis
• VMware vCenter
• OpenStack Virtualization

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2541


<!-- page 2542 -->
Cloud

Cloud
• AWS
• Microsoft Azure
• Google Cloud Platform (GCP)
• IBM cloud
• VMware cloud

Containers

Containers
• Kubernetes and OpenShift
• Amazon ECS resource discovery with Patterns
• Pivotal Cloud Foundry discovery

Software

Software
Find a variety of software, including:
• Apigee Edge
• ColdFusion
• HP Operations Manager
• IBM Websphere DataPower
• JBOSS on Windows and Linux
• Web and email servers, including Microsoft IIS, Apache,
Tomcat, Exchange mailbox
• Puppet automation software
• Red Hat JBoss Fuse
• SAP applications
• WebLogic and WebSphere servers
• General software

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2542


<!-- page 2543 -->
Clustered applications

Clustered applications
• IBM PowerHA Cluster (HACMP)
• Linux Red Hat cluster
• Veritas Cluster Server discovery
• Windows server cluster

Databases

Databases
Discover databases, including:
• Oracle
• MySQL
• Microsoft SQL
• MongoDB
• SAP HANA
• PostgreSQL
• Sybase
• Amazon DynamoDB
• Oracle Database 12c

Network devices

Network devices
• Routers and switches
• Load balancers:
◦ A10
◦ F5 BIG-IP
◦ Cisco GSS
◦ Cisco CSS
◦ Citrix NetScaler
◦ HAProxy
◦ NGINX
◦ Alteon
◦ ACE
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2543


<!-- page 2544 -->
◦ Radware-appDirector
◦ AWS application ELB Service discovery with Patterns
• Firewalls
◦ Cisco firewall
◦ Fortinet firewall
◦ Juniper firewall
◦ Palo Alto firewall
• IP networks and specific IP addresses
• Cisco UCS devices
• Cisco Switch Wireless Access Point (WAP)
• Printers and power supplies
• IP services and daemons
You can also find devices based on TCP connections and
Layer-2, SNMP-level discovery.

Storage

Storage
Discover these types of storage devices:
• Pure Storage FlashBlade
• NetApp server
• Discovery of storage area networks (SAN)
• Direct Attached Storage (DAS)
• Network Attached Storage (NAS)
• Host bus adapters (HBA)
• EMC Isilon
Detailed information on products discovered by ITOM Visibility
Discovery and Service Mapping can discover a wide range of operating systems and
applications.
Discovery finds computers, servers, printers, a variety of IP-enabled devices, and the
applications that run on them. It can then update the CIs in your CMDB with the data it
collects. This discovery method is referred to as horizontal discovery. Service Mapping maps
dependencies, based on a connection between devices and applications. This method is
referred to as top-down mapping. The top-down mapping helps you immediately see the impact
of a problematic object on the rest of the service instance operation.
On top of hosts and applications supported by default, you can discover additional hosts
and applications by deploying patterns available on Store. For reference information on store
released patterns, see Available on-premise discovery patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2544


<!-- page 2545 -->
If your organization uses devices or applications, which are not supported by default or using
patterns available at ServiceNow Store, you can configure Discovery and Service Mapping to
discover them as described in Discovery patterns used by ITOM Visibility.
Cloud Discovery Patterns find the cloud resources of AWS, Azure, Google Cloud Platform (GCP),
IBM, and Oracle.
If you want to validate the necessary pattern commands before running discovery, use the
Command Validation Tool. For more information, see Validate commands used in pattern-based
discovery.
ITOM Content Service Provides visibility to your applications by using AI capabilities that cluster
and classify running application processes. For more information, see ITOM Content Service.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

.Net
Framework

Windows

1.x.x, 2.x.x,
3.x.x, 4.x.x

WMI

Top-down

.NET
Application

REST

Horizontal

A10 Load
Balancer

WMI

Horizontal and
top-down

WinRM
A10 load
balancer
Adobe JRun

A10
Windows

N/A
4.x

UNIX

WinRM

Jrun

SSH
Apache
Cassandra
database and
DataStax
Apache
HBase

UNIX

UNIX

N/A

N/A

SSH

Horizontal and Cassandra
top-down

SSH

Horizontal

Probes:
• HBase Version
• HBase Main Class
• HBase Configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2545


<!-- page 2546 -->
Name

Platform

Apache HTTP
Server

Windows

Version

2.x

UNIX

Protocol

Discovery type

WMI

Horizontal and
top-down

WinRM

Pattern (or
probe if
indicated)

Apache

SSH
Apache
Kafka and
Zookeeper
Apache
Tomcat
Servlet
container
HTTP web
server
Apigee Edge
Enterprise
edition

Apache

N/A

SSH

Horizontal

WMI

Horizontal and
top-down

Kafka and
Zookeeper

Kafka
Windows

6.x, 7.x, 8.x

UNIX

WinRM

Tomcat

SSH
Linux

4.x.x

SSH
HTTP

Avi Vantage
load balancer VMware
including Avi
AWS
Controller and
GSLB
Avi Networks

N/A

REST

Horizontal and
top-down

APIGee

Horizontal and AVI LB - Avi
top-down
Vantage load
balancer
AVI LB - AVI
Top Down
AVI Session Avi Controller
AVI GSLB
support

Alibaba Cloud Alibaba Cloud N/A
availability
zone

REST

Horizontal

Alibaba Availability
Zone (LP)

Alibaba
Alibaba Cloud N/A
Cloud cloud
hardware type

REST

Horizontal

Alibaba
- Cloud
Hardware
Type (LP)

Alibaba Cloud Alibaba Cloud N/A
cloud OS
images

REST

Horizontal

Alibaba Cloud OS
Image (LP)

Alibaba Cloud Alibaba Cloud N/A
datacenters

REST

Horizontal

Alibaba Datacenter
(LP)

Alibaba
Cloud service
accounts

REST

Horizontal

Alibaba
- Service

Alibaba Cloud N/A

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2546


<!-- page 2547 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Account
Validation
Alibaba
Alibaba Cloud N/A
Cloud storage
volume

REST

Horizontal

Alibaba Storage
Volume (LP)

Alibaba
Cloud virtual
machines

REST

Horizontal

Alibaba
- Virtual
Machine (LP)

REST

Horizontal and Amazon AWS
top-down
API Gateway

Amazon API
Gateway

Alibaba Cloud N/A

AWS

N/A

Amazon API
AWS
Gateway
Domain Name

N/A

Amazon
AWS
Application
Load Balancer
Service

N/A

Amazon
AWS
DB cluster
discovery with
Patterns

N/A

Amazon
DynamoDB

AWS

N/A

Amazon
DynamoDB
Cluster

AWS

Amazon EC2
Amazon EBS
Snapshot

AWS

Amazon EC2
Reserved
Instance

AWS

N/A

N/A

N/A

REST

Horizontal

Amazon AWS
- API Gateway
Domain Name
- Extended
Inventory (LP)
Amazon AWS
application
ELB service TD

REST

Top-down

REST

Horizontal and Amazon AWS
top-down
DB Cluster

REST

Amazon AWS
Horizontal and DynamoDB
top-down
(pattern)

REST

Horizontal

REST

Horizontal

REST

Horizontal

Amazon AWS
- DynamoDB
Cluster Extended
Inventory (LP)
Amazon
AWS - Elastic
Compute
Cloud EBS
Snapshot
- Extended
Inventory (LP)
Amazon
AWS - Elastic
Compute
Cloud
Reserved
Instance Extended
Inventory (LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2547


<!-- page 2548 -->
Name

Platform

Version

Amazon EC2
VPC Endpoint AWS
Service

N/A

Amazon EC2
VPC Peering
Connection

AWS

N/A

Amazon
ECS on AWS
Fargate

AWS

N/A

Amazon
AWS
Elastic File
System
(Amazon EFS)

N/A

Amazon
ElastiCache
Snapshot

AWS

N/A

Amazon
MWAA
Environment

AWS

Amazon
Relational
Database
Service
Amazon RDS
DB Snapshot

AWS

AWS

N/A

N/A

N/A

Protocol

Discovery type

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

REST

Pattern (or
probe if
indicated)

Amazon
AWS - Elastic
Compute
Cloud VPC
Endpoint
Service Extended
Inventory (LP)
Amazon
AWS - Elastic
Compute
Cloud VPC
Peering
Connection
- Extended
Inventory (LP)
AWS ECS/
Fargate
Amazon AWS
- Elastic File
System Extended
Inventory (LP)
Amazon AWS
- ElastiCache
Snapshot
- Extended
Inventory (LP)
Amazon AWS
- Managed
Workflows
for Apache
Airflow
Environment
- Extended
Inventory (LP)

Amazon AWS
Horizontal and Relational
top-down
Database
Service
Horizontal

Amazon AWS
- Relational
Database
Services DB
Snapshot
- Extended
Inventory (LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2548


<!-- page 2549 -->
Name

Amazon
Redshift
Serverless
Namespace

Amazon
Redshift
Serverless
Snapshot

Amazon
Redshift
Serverless
Workgroup

Platform

AWS

AWS

AWS

Amazon
SageMaker
Training Job

AWS

Amazon
Route53
Service

AWS

Version

N/A

N/A

N/A

N/A

N/A

Amazon
AWS
Simple
Storage
Service ( AWS
S3)

N/A

Amazon
Timestream
for InfluxDB
Database
Instance

N/A

AWS

Protocol

Discovery type

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal and
top-down

REST

Horizontal

Pattern (or
probe if
indicated)

Amazon AWS
- Redshift
Serverless
Namespace
- Extended
Inventory (LP)
Amazon AWS
- Redshift
Serverless
Snapshot
- Extended
Inventory (LP)
Amazon AWS
- Redshift
Serverless
Workgroup
- Extended
Inventory (LP)
Amazon AWS
- SageMaker
Training Job
- Extended
Inventory (LP)
Amazon AWS
Route53 HD
AWS S3

Amazon AWS
- Timestream
for InfluxDB
Database
Instance Extended
Inventory (LP)

AWS Auto
AWS
Scaling
groups
discovery with
Patterns

N/A

REST

Horizontal

AWS Auto
Scaling
groups (LP)
(pattern)

AWS Batch
Compute
Environment

N/A

REST

Horizontal

Amazon
AWS - Batch
Compute
Environment

AWS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2549


<!-- page 2550 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

- Extended
Inventory (LP)
AWS
CloudHSM
HSM

AWS

N/A

REST

Horizontal

Amazon AWS
- CloudHSM
HSM Extended
Inventory (LP)

AWS
CloudTrail
Trail

AWS

N/A

REST

Horizontal

Amazon AWS
- CloudTrail
Trail Extended
Inventory (LP)

AWS
DataSync
Task

AWS

N/A

REST

Horizontal

Amazon AWS
- DataSync
Task Extended
Inventory (LP)

AWS Global
Accelerator

AWS

N/A

REST

Horizontal

Amazon
AWS - Global
Accelerator
- Extended
Inventory (LP)

AWS Elastic
Load Balancer AWS
Service

N/A

REST

Top-down

AWS Kinesis
Discovery

N/A

REST

Horizontal

AWS

Amazon AWS
classic ELB
Service - TD
Patterns:
• Amazon
AWS Kinesis
Video
Stream
Services
(LP)
• Amazon
AWS Kinesis
Data Stream
Services
(LP)
• Amazon
AWS Kinesis
Firehose
Stream
Services
(LP)
• Amazon
AWS -

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2550


<!-- page 2551 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Kinesis Data
Analytics
Stream
Services
(LP)
AWS Lambda AWS
discovery with
Patterns

N/A

AWS
AWS
MemoryDB
for Redis
discovery with
Patterns

N/A

AWS Network
Firewall

AWS

N/A

AWS
AWS
Resource
Inventory
discovery with
Patterns

N/A

AWS Services AWS
discovery
using patterns

N/A

AWS Storage
Gateway File
Share

N/A

AWS

Azure App
Configuration
store

Microsoft
Azure

Azure App
Service App
Service Plan

Microsoft
Azure

Azure
Application
Insight
Component

Microsoft
Azure

N/A

N/A

N/A

REST

Amazon AWS
Horizontal and Lambda
top-down

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

AWS
MemoryDB
(pattern)

Amazon AWS
- Network
Firewall Extended
Inventory (LP)
AWS
Resource
Inventory

See the link

Amazon AWS
- Storage
Gateway
File Share
- Extended
Inventory (LP)
Azure - App
Configuration
Configuration
Store Extended
Inventory(LP)
Azure - App
Service App
Service Plan
- Extended
Inventory(LP)
Azure Application
Insight
Component

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2551


<!-- page 2552 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

- Extended
Inventory(LP)
Azure
Application
Insight Data
Collection
Rule

Microsoft
Azure

Azure
Application
Security
Group

Microsoft
Azure

Azure
Automation
Account

Microsoft
Azure

N/A

N/A

N/A

Azure
availability
sets

Microsoft
Azure

N/A

Azure
availability
zones

Microsoft
Azure

N/A

Azure
Compute
Gallery Image
Definition

Microsoft
Azure

Azure
Compute
Snapshot

Microsoft
Azure

Azure
Container
Registry

Microsoft
Azure

Azure Cosmos
Microsoft
DB for
Azure
PostgreSQL
Cluster

N/A

N/A

N/A

N/A

Azure Application
Insight Data
Collection
Rule Extended
Inventory(LP)

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure Availability
Set (LP)

REST

Horizontal

Azure Availability
Zones (LP)

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure Application
Security
Group Extended
Inventory(LP)
Azure Automation
Account Extended
Inventory(LP)

Azure Compute
Gallery Image
Definition
- Extended
Inventory(LP)
Azure Compute
Snapshot
- Extended
Inventory(LP)
Azure Container
Registry Extended
Inventory(LP)
Azure Cosmos
DB for
PostgreSQL
Cluster -

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2552


<!-- page 2553 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Extended
Inventory(LP)
Azure Data
Explorer
Cluster

Azure Data
Factory

Microsoft
Azure

Microsoft
Azure

Azure Data
Protection
Backup Vault

Microsoft
Azure

Azure
Database
Service

Microsoft
Azure

Azure
Databricks
Workspace

Microsoft
Azure

Azure Dev
Center

Azure Disk
Encryption
Set

Microsoft
Azure

Microsoft
Azure

Azure DNS
Microsoft
zones and
Azure
record sets
discovery
using Patterns

N/A

N/A

N/A

N/A

N/A

N/A

N/A

N/A

Azure - Data
Explorer
Cluster Extended
Inventory(LP)

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Azure
Horizontal and DataBase
top-down
(pattern)

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure - Data
Factory Extended
Inventory(LP)
Azure - Data
Protection
Backup Vault
- Extended
Inventory(LP)

Azure Databricks
Workspace
- Extended
Inventory(LP)
Azure - Dev
Center Extended
Inventory(LP)
Azure - Disk
Encryption
Set Extended
Inventory(LP)
Patterns:
Azure DNS
Zones HD
or
Azure DNS
Zones (LP)
Azure
DNS Zone
Recordsets
(LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2553


<!-- page 2554 -->
Name

Platform

Azure Event
Grid System
Topic

Microsoft
Azure

Azure
Event Hub
Namespace

Microsoft
Azure

Azure Firewall
Network
Security

Microsoft
Azure

Azure
Functions

Microsoft
Azure

Version

N/A

N/A

N/A

N/A

Protocol

Discovery type

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Pattern (or
probe if
indicated)

Azure Event Grid
System Topic
- Extended
Inventory(LP)
Azure Event Hub
Namespace
- Extended
Inventory(LP)
Azure Network
Security Azure
Firewall Extended
Inventory(LP)

Patterns:
Horizontal and
Azure
top-down
Functions TD
or
Azure
Functions (LP)

Azure
Inventory
resources
Azure Key
Vault

Microsoft
Azure
Microsoft
Azure

Microsoft
Azure
LoadBalancer
Service

Microsoft
Azure

Azure Log
Analytics
Workspace

Microsoft
Azure

Azure Logic
App

Azure
Managed
Identity User

Microsoft
Azure

Microsoft
Azure

N/A

N/A

N/A

N/A

N/A

N/A

Azure
Inventory and
tags

REST

Horizontal

REST

Horizontal

REST

Azure
Horizontal and LoadBalancer
top-down
TD

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure Key Vault Extended
Inventory(LP)

Azure - Log
Analytics
Workspace
- Extended
Inventory(LP)
Azure Logic App
- Extended
Inventory(LP)
Azure Managed
Identity User

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2554


<!-- page 2555 -->
Name

Platform

Version

Protocol

Discovery type

Assigned
Identity

Assigned
Identity Extended
Inventory(LP)

Azure
Networks IP
Group

Microsoft
Azure

Azure Private
Link Private
Endpoint

Microsoft
Azure

N/A

N/A

Azure
Microsoft
Recovery
Services Vault Azure

N/A

Azure
Microsoft
Recovery
Services Vault Azure
Backup Item

N/A

Azure
Service Bus
Namespace

N/A

Azure Service
Bus Queue

Azure Service
Bus Topic

Azure Service
Endpoint
Policy

Pattern (or
probe if
indicated)

Microsoft
Azure

Microsoft
Azure

Microsoft
Azure

Microsoft
Azure

N/A

N/A

N/A

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure Networks
IP Group Extended
Inventory(LP)
Azure - Private
Link Private
Endpoint Extended
Inventory(LP)
Azure Recovery
Services Vault
- Extended
Inventory(LP)
Azure Recovery
Services Vault
Backup Item
- Extended
Inventory(LP)
Azure Service Bus
Namespace
- Extended
Inventory(LP)
Azure Service Bus
Queue Extended
Inventory(LP)
Azure Service
Bus Topic
- Extended
Inventory(LP)
Azure Service
Endpoint
Policy Extended
Inventory(LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2555


<!-- page 2556 -->
Name

Azure SQL
Database
Azure Virtual
Machine
Scale Sets
(VMSS)
Instance
discovery

Platform

Microsoft
Azure

Version

N/A

Microsoft
Azure

N/A

Azure Web
Microsoft
Application
Firewall Policy Azure

N/A

Azure
WebSite
Service and
Database

N/A

Microsoft
Azure

Pattern (or
probe if
indicated)

Protocol

Discovery type

REST

Cloud
Horizontal and Database
top-down
Instance

REST

Horizontal

REST

Horizontal

REST

Horizontal

Azure VM
Scale Set
Instance

Azure - Web
Application
Firewall Policy
- Extended
Inventory(LP)
Patterns:
Azure
WebSite
Azure
WebSite (LP)
Collect Azure
Database
Tags and
WebSite tags

BMC ControlM

UNIX

6.x

Windows

WMI

Horizontal

WinRM

Cntl-M
Enterprise
Manager

SSH
Bring Your
Own License
(BYOL)

Amazon AWS
Cloud
Microsoft
Azure Cloud
Google Cloud
Platform
(GCP)

N/A

REST
Azure
Resource
Graph

Horizontal

The “Image
License”
shared
library is an
extension of
the patterns:
• Amazon
AWS Executable
Template
(LP)
• Amazon
AWS Owned
Template
(LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2556


<!-- page 2557 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

The "Azure
Virtual
Machine
License"
shared
library is an
extension of
the "Azure
- Virtual
Machine (LP)"
pattern.
The "Google
Cloud
Platform
(GCP) – VM
license"
shared
library is an
extension of
the "Google
Cloud
Platform
(GCP) - Virtual
Server"
pattern.
CA eTrust
Directory
server
CA Identity
Manager
Provisioning
Server

Windows

7.x, 8.x

WMI

Top-down

WinRM
Windows

11.x, 12.x

WMI

Top-down

WinRM

CA Introscope
Windows
Enterprise
Manager
Unix

8.x, 9.x

WMI

CA eTrust
Directory
server
CA Identity
Manager
Provisioning
Server for
Windows

Top-down

CA Introscope
Enterprise
Manager

Top-down

CA Policy
Server

WinRM
SSH

CA Policy
Server

Windows

11.x

Unix

WMI
WinRM
SSH

CA Site
Minder Agent

Windows
Unix

11.x

WMI
WinRM

CA Site
Horizontal and Minder Agent
top-down

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2557


<!-- page 2558 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

SSH
Cisco Content
ACE
Services
Switch Load
balancer

6.x

Cisco ACE
Application
Control
Engine

2.x

Cisco Call
Manager

ACE

Cisco

SNMP
SSH

3.x, 4.x

Cisco CSS
Horizontal and SNMP
top-down

SSH

ACE Load
Horizontal and Balancer
top-down

SNMP

Top-down

Cisco
CallManager

Top-down

Cisco Fibre
Connect

SSH
Cisco Fiber
Connect

Cisco

No data

SNMP
SSH

Cisco Global
ACE
Site Selector
Load Balancer

3.x

Cisco Unified
Computing
System

UCS

3.x

Citrix Delivery
Controller

Windows

SNMP
SSH

7.x>7.5, 8.x

Horizontal and
top-down

REST

Horizontal

WMI

Top-down

Cisco GSS

UCS - HD

Delivery
Controller

WinRM
Citrix
Netscaler
Global
Server Load
Balancing
(GSLB)

Netscaler

10.x

SNMP
SSH

Horizontal and
top-down

Netscaler GLB

NS.conf

Citrix
Netscaler
Netscaler
Load Balancer

9.x, 10.x

SNMP
SSH

Citrix
Horizontal and Netscaler
top-down

NS.conf
Citrix
Netscaler SDX Citrix
NetScaler
SDX

13

Citrix License
Server

7.x

Windows

SSH

Horizontal

Citrix
NetScaler
SDX

WMI

Horizontal

License
Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2558


<!-- page 2559 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Citrix Xen
Hyper-V

Xen Server

7.6

SSH

Horizontal

Citrix Xen
Hyper-V

Cloudian
Storage

Linux

7.x

SSH

Horizontal

Cloudian
Storage
discovery

WMI

Top-down

Connect-It
Service

Connect APK

Windows

1.x.x

WinRM
Container
Linux
image
scanning
for software
decomposition
Software Bill
of Material
(SBOM)

Docker
virtualization

Linux

REST

Horizontal

container
image scan

Horizontal

SBOM is an
extension
section of
the container
image scan
pattern

HTTP

N/A

REST
HTTP

Linux

N/A

N/A

Horizontal
Top-down

Epic Systems
Corporation

UNIX

2014.x.x,
2015.x.x

SSH

Database
Administrator
(DBA) report
discovery

N/A

N/A

N/A

Horizontal

Docker
(pattern)
EPIC Cache

DBA is an
extension
section of the
patterns:
• Cassandra
DB
• MSSQL DB
• MySQL DB
• Oracle DB

Dell
Dell EMC
PowerMax
storage
discovery with
Patterns

9 and 10

N/A

Horizontal

EMC PMAX
phase1
(pattern)
EMC PMAX
phase2
(pattern)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2559


<!-- page 2560 -->
Name

Platform

Dell Data
DD OS
Domain
storage
discovery
using Patterns
Dell EMC
XtremIO
storage array
discovery

Linux

EMC Isilon

OneFS

Pattern (or
probe if
indicated)

Version

Protocol

Discovery type

DD OS 7.3 or
later

REST

Horizontal

DELL EMC
Data Domain
(pattern)

6.3.0 and 6.3.1 REST

Horizontal

EMC XtremIO
(pattern)

8.0

SNMP

Horizontal

EMC Isilon

REST
F5 BIGIP Device
Service
Clustering

F5

11.x, 12.x

SNMP

Horizontal

F5 Cluster

SSH
REST

F5 BIG-IP

F5

11.x, 12.x

REST

F5 Load
Horizontal and Balancer, F5
top-down
Load Balancer
SSH

Fortinet
firewalls

Fortinet
Firewall
device

FortiOS 5.2.x,
FortiOS 5.4.x,
FortiOS 5.6.x,
FortiOS 6.2.x,
FortiOS 6.4.x,
FortiOS 7.2.x

SNMP

Horizontal

Next
Generation
Fortinet
Network
Firewall

Fortinet
firewalls and
FortiGate
VDOMs

Fortinet
Firewall
device

FortiOS 6.2.x,
FortiOS 6.4.x,
FortiOS 7.x

REST

Horizontal

Next
Generation
Fortinet
Network
Firewall REST

SSH

APIGee
Horizontal and Service
top-down

Google Cloud
Apigee API
Platform

Linux

4.x.x

Google Cloud
Platform
(GCP)
AlloyDB for
PostgreSQL

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) AlloyDB for
PostgreSQL

Google Cloud
Firebase

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) Firebase
Realtime DB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2560


<!-- page 2561 -->
Pattern (or
probe if
indicated)

Name

Platform

Version

Protocol

Discovery type

Google Cloud
FireStore

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) Firestore DB

Google Cloud
SQL

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) - Cloud
SQL DB

Google Cloud
BigQuery

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) BigQuery DB

Google Cloud
Bigtable

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) Bigtable DB

REST

Horizontal

Google Cloud
Platform

GCP

N/A

Google Cloud
Platform
(GCP)
Resource

Google Cloud
Platform
(GCP) Cloud
Functions

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP)- Cloud
Functions

Google Cloud
Platform
(GCP)
Memorystore

GCP

N/A

REST

Horizontal

Google Cloud
Platform
(GCP) Memorystore
DB

REST

Horizontal

REST

Horizontal

REST

Horizontal

SSH

Horizontal and
top-down

Google Cloud
Platform
(GCP)
Organization
Google Cloud
Platform
(GCP)
resource
inventory
Google Cloud
Spanner

HAProxy
Community
edition load
balancers

GCP

GCP

GCP

UNIX

N/A

N/A

N/A

1.5, 1.6, 1.7

GCP
Organization

Google Cloud
Platform
(GCP)
Resource
Inventory
Google Cloud
Platform
(GCP) Spanner DB
HA Proxy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2561


<!-- page 2562 -->
Name

Platform

HP
Operations
Manager

Windows

Version

9.x

Unix

Pattern (or
probe if
indicated)

Protocol

Discovery type

WMI

HP
Horizontal and Operations
top-down
Manager

WinRM
SSH

HP Quality
Center

Windows

10.x

WMI

Top-down

WinRM
HP Service
Manager

Windows

9.x

Unix

WMI
WinRM

HP Quality
Center on
Windows

HP Service
Horizontal and Manager
top-down
Application
Server

SSH
HP UCMDB

HP-UX UNIX
Server
IBM AIX
IBM CICS
Transaction
Gateway

Windows

HP-UX
UNIX
Windows

N/A

11i
6.x, 7.x
5.x

UNIX

WinRM

HP uCMDB on
Horizontal and Windows
top-down

SSH

Horizontal

SSH

Top-down

WMI

Top-down

WMI

HP-UX Server
AIX Server
CTG

WinRM
SSH

IBM Cloud
Platform

IBM Cloud
Platform

N/A

REST

Horizontal

IBM Cloud
Load
Balancer,
IBM Cloud
Location
Groups,
IBM Cloud
Network,
IBM Cloud
Organizations
and Spaces,
IBM Cloud
Resource
Groups,
IBM Cloud
SSH Key,
IBM Cloud
Storage, IBM
Cloud Virtual
Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2562


<!-- page 2563 -->
Name

Platform

Version

IBM Customer
Windows
Information
Control
UNIX
System

4.x, 5.x

IBM Db2 on
Unix

8.x, 9.x, 10.x,
11.x

UNIX

Protocol

Discovery type

WMI

Top-down

Pattern (or
probe if
indicated)

CICS

WinRM
WMI

Horizontal

DB2

WinRM
SSH
IBM Db2 on
Windows

Windows

8.x, 9.x, 10.x,
11.x

WMI

Horizontal

DB2

WinRM
SSH
IBM
Virtualization UNIX
and Hardware
Management
Console
(HMC)
components

N/A

IBM PowerHA
Cluster
(HACMP)

IBM

N/A

IBM Security
Access
Manager

ISAM

8.0.1

SSH

Horizontal

IBM HMC
Server

REST

Horizontal

IBM PowerHA
Cluster
(HACMP)

SNMP

Horizontal and ISAM Server
top-down

REST

IBM WebSEAL
ISAM
discovery

9.*,10.*.

IBM Tivoli
Access
Manager

6.x

Windows
UNIX

IBM WebSEAL

REST

Horizontal and
top-down

WMI

Top-down

ITAM - Asset
Center

Top-down

Webseal
(pattern)

WinRM
SSH

IBM Tivoli
WebSEAL

Windows

5.x, 6.x

UNIX

WMI
WinRM
SSH

IBM
Websphere

Windows

5.x, 6.x, 7.x,
8.x, 9.x

WMI
WinRM

Horizontal and
top-down

Websphere

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2563


<!-- page 2564 -->
Name

Platform

Application
server

UNIX

IBM
WebSphere
DataPower
SOA
Appliance
IBM
WebSphere
Message
Queue

DataPower

Version

Protocol

Pattern (or
probe if
indicated)

SSH
I40, I50

SNMP
REST

Windows

Discovery type

6.x, 7.x, 8.x, 9.x

UNIX

WMI
WinRM
SSH

Horizontal and
top-down

DataPower

The following
Horizontal and patterns:
top-down
• WMQ On
Unix
• WMQ On
Windows
• WMQ
Queue Unix
• WMQ
Queue
Windows

IBM App
Connect
Enterprise
and HTTP
listener
discovery
IBM
WebSphere
Portal

UNIX

Windows

6, 7, 8, 9, 10, 11, N/A
12.

WMB on UNIX
Horizontal and (pattern)
top-down

6.x, 7.x, 8.x

Websphere
Horizontal and Portal On
top-down
Windows

UNIX

WMI
WinRM
SSH

IBM Z
mainframe

Z/OS

Infini-Box

OS/390
5.0.x

SSH

Horizontal

REST

Horizontal

IBM zOS
Server
InfiniBox

HTTP
Interconnect
Web Service

Windows

2014

WMI

Top-down

Inter Connect

WinRM
Istio Service
Mash
Kubernetes

Kubernetes
Kubernetes

1.15 and later
1.21 - 1.30

HTTP

Horizontal

REST

Horizontal

ISTIO Service
mesh
Kubernetes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2564


<!-- page 2565 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

HTTP
Linux Server

Linux
Pacemaker
Cluster
Microsoft
BizTalk
Orchestration
Server

UNIX

Linux

Windows

Microsoft
Certificate
Authority

Microsoft

Microsoft
Dynamics
CRM

Windows

Ubuntu 16,
RHEL 5.x,
CentOS 7.x
N/A

2004, 2006,
2007, 2009,
2010
N/A

2003, 2005,
2007, 2010

SSH

Horizontal

SSH

Horizontal

WMI

Top-down

Microsoft
Internet
Information
Services

Windows

WMI

WMI

Horizontal

Top-down

Microsoft
Certificate
Authority
Dynamic CRM
Component

2005

WMI

2008, 2012,
2016

WMI

Horizontal and
top-down

Fast Search

Horizontal

Hyper-V
Server

Top-down

IIFP On
Windows
Pattern

WinRM
Windows

2003

WMI
WinRM

Windows

6.0, 7.x, 8.x

WMI
WinRM

Microsoft
Message
Queuing

Windows

Microsoft
SharePoint

Windows

3.x, 4.x, 5.x

WMI

Horizontal and
top-down

Top-down

IIS

MSMQ
(pattern)

WinRM
2003, 2007,
2010, 2013

WMI
WinRM

Microsoft
SQL Server
and Cluster
discovery

BizTalk server

WinRM

WinRM

Microsoft
Identity
Integration
Server

Pacemaker
Linux cluster

WinRM

Microsoft Fast
Windows
Search

Microsoft
Hyper-V
Server

Linux Server

Windows

2014, 2016,
2017, 2019,
2022

WMI
WinRM

Microsoft
Horizontal and SharePoint
top-down
Horizontal and MSSQL DB
top-down
On Windows
(pattern)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2565


<!-- page 2566 -->
Name

Microsoft
SQL Server
Analysis
Services
(SSAS)
Microsoft
SQL Server
Integration
Services
(SSIS)
discovery
Microsoft
SQL Server
Reporting
Services

Version

Protocol

Discovery type

Windows

2014, 2016,
2017, 2019,
2022

WMI

SSAS
Horizontal and (pattern)
top-down

2014, 2016,
2017, 2019,
2022

WMI

2014, 2016,
2017, 2019,
2022

WMI

Windows

Windows

Microsoft
Windows
Desktops

Windows

Microsoft
Windows
Server

Windows

MongoDB

Pattern (or
probe if
indicated)

Platform

2003, 2008,
2012,

WinRM

Top-down

SSIS (pattern)

WinRM

Top-down

SSRS
(pattern)

Horizontal

Windows OS Desktops

Horizontal

Windows OS Servers

WinRM

WMI
WinRM

Windows

2003,
2008,2012,2016,WMI
2022
WinRM
3.x.x

UNIX

WMI
WinRM

mongos
Horizontal and server
top-down

SSH
NetApp
Server and
Cluster
discovery

NetApp

7.x,8.x

SNMP

Horizontal

Patterns:
NetApp
Storage 7Mode
NetApp
Cluster SNMP

NetApp
Server and
Cluster
discovery

NetApp

7.x,8.x,9.x

HTTP

Horizontal

NetApp
Cluster HTTP
(pattern)

NetApp
SolidFire
storage
system

NetApp
SolidFire

Network
router

Windows

N/A

N/A

HTTP

SNMP

Horizontal

NetApp
SolidFire
storage
system

Horizontal

Network
Router

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2566


<!-- page 2567 -->
Name

Platform

Version

Protocol

Discovery type

N/A

SNMP

Horizontal

WMI

Top-down

Pattern (or
probe if
indicated)

UNIX
Network
switch

Windows

Network
Switch

UNIX
NGINX Web
Server

Windows

1.10, 1.10.1

UNIX

Nginx Pattern

WinRM
SSH

Nutanix
Acropolis
(AOS)

UNIX

Nutanix Prism
Central

UNIX

OpenText
Documentum

Windows

N/A

N/A
6.x, 7.x

UNIX

REST

Horizontal

Nutanix
Components

REST

Horizontal

Nutanix
Components

WMI

Top-down

Pattern for
license server

REST

Horizontal

OpenStack
(pattern)

WMI

Top-down

WinRM
SSH

OpenStack
resources
Oracle
Application
Server

OpenStack

Windows

N/A
9.x, 10.x

UNIX

Oracle iAS

WinRM
SSH

Oracle
Concurrent
Server

Windows

10.x, 11.x, 12.x

UNIX

Top-down

Concurrent
Server

REST

Horizontal

Oracle Cloud
Infrastructure

SSH

Horizontal

WMI

Horizontal and
top-down

WMI
WinRM
SSH

Oracle Cloud
Infrastructure

Oracle

N/A

Oracle
Clusterware

Linux

10.x, 11.x, 12.x

Windows

8.x.x, 9.x.x,
10.x.x, 11.x.x,
12.x.x

Oracle
Database

UNIX

WinRM

Oracle CRS
Oracle DB

SSH
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2567


<!-- page 2568 -->
Name

Oracle
Database
Advanced
Queuing

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Windows

9.x.x, 10.x.x,
11.x.x, 12.x.x

WMI

Top-down

Advanced
Queue Queue

UNIX

WinRM
SSH

Oracle
Database 12c

Windows

N/A

UNIX

WMI

Horizontal

PDB/CDB

WinRM
SSH

Oracle
Discover
Server

Windows

9.x, 10.x

UNIX

WMI

Top-down

Discoverer
Engine

Top-down

E-Business
Suite

WinRM
SSH

Oracle EBusiness
Suite

Windows

10.x, 11.x

UNIX

WMI
WinRM
SSH

Oracle Forms

Windows

9.x, 10.x

UNIX

WMI

Top-down

Forms Engine

WinRM
SSH

Oracle
Fulfillment
Server

Windows

9.x, 10.x

UNIX

WMI

Top-down

Fulfillment
Server

WinRM
SSH

Oracle
GoldenGate

Windows

N/A

UNIX
Oracle Linux
Virtualization
Manager
(OLVM) and
Red Hat
Virtualization
(RHV)

OLVM and
RHV

WMI
SSH

N/A

REST

Horizontal and
top-down

Horizontal

Oracle GG

Patterns:
• oVirt
Clusters
and Hosts
• oVirt
Discover
Logical
Datacenters

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2568


<!-- page 2569 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

• oVirt
Discover
Manager
Instance
• oVirt Virtual
Machines
• oVirt
Templates
Oracle Global
License
Advisory
Services
(GLAS)
Oracle Java
processes

N/A

JDK

N/A

All

SSH

N/A

Horizontal

Horizontal

Oracle
GLAS Data
Collection
(pattern)

Java
installation
pattern
ACC based
discovery

Oracle Solaris
Solaris
LDOM

10, 11

Oracle HTTP
Server

N/A

Windows
UNIX

SSH

Horizontal

WMI

Top-down

Solaris Logical
Domain
(LDOM)
infrastructure
HTTP Server

WinRM
SSH

Oracle iPlanet
Solaris
Web Server

4.x, 6.x, 7.x

Oracle Java
Enterprise
System(JES)

Solaris

7.x

Oracle
Listener

Linux

Oracle Metric
Server

Windows
UNIX

12.2.x.x
9.x, 10.x

SSH

Sun iPlanet
Horizontal and Webserver
top-down

SSH

Top-down

Sun JES
pattern

SSH

Horizontal

Oracle
Listener HD

WMI

Top-down

Metric Server

WinRM
SSH

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2569


<!-- page 2570 -->
Name

Platform

Oracle MySql
Server

Windows

Version

4.x, 5.x

UNIX

Protocol

WMI
WinRM

Discovery type

Pattern (or
probe if
indicated)

My SQL
Horizontal and server On
top-down
Windows and
Linux (pattern)

SSH
Oracle
Notification
Server

Windows

9.x, 10.x

UNIX

WMI

Top-down

Oracle
Notification
Server

Top-down

Peoplesoft
Application
Server

Top-down

Process
Manager

Top-down

App TNS
Service

WinRM
SSH

Oracle
Peoplesoft

Windows

8.x

/Unix

WMI
WinRM
SSH

Oracle
Process
Manager

Windows

9.x.x, 10.x.x

/Unix

WMI
WinRM
SSH

Oracle RAC

Windows

9.x.x, 10.x.x,
11.x.x, 12.x.x

UNIX

WMI
WinRM
SSH

Oracle Report
Windows
Server

9.x.x, 10.x.x

UNIX

WMI

Top-down

Report Server

WinRM
SSH

Oracle Solaris
Solaris
Server

9, 10, 11,
SPARC

Oracle Solaris Solaris
Logical
Domain
infrastructure

N/A

Oracle
Weblogic
Application
Server

8.x, 9.x, 10.x,
11.x, 12.x

Windows
UNIX

SSH

Horizontal

SSH

Horizontal

WMI

Horizontal and
top-down

WinRM

Solaris Server
Solaris LDOM

WebLogic

SSH

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2570


<!-- page 2571 -->
Name

Platform

Version

Pivotal Cloud
Foundry

PCF

N/A

Protocol

REST

Discovery type

Pattern (or
probe if
indicated)

Patterns:
Horizontal and
Pivotal cloud
top-down
foundry
Bosh

Pivotal
RabbitMQ

Windows

3.x.x

UNIX

WMI

Top-down

WinRM

RabbitMQ
Cluster Unix
pattern

SSH
PostgreSQL
DB

Windows

6.x, 7.x, 8.x

UNIX

WMI
WinRM

PostgreSQL
Horizontal and DB
top-down

SSH
Puppet

UNIX

N/A

SSH

Horizontal

Probes:
• Puppet –
Master Info
• Puppet –
Certificate
Requests
• Puppet –
Manifest
• Puppet –
Modules

Pure Storage
FlashArray
discovery

Pure Storage

N/A

Pure Storage
FlashBlade

Pure Storage

4.10.7

REST

Horizontal

REST

Horizontal

Pure Flash
Array Storage
(pattern)
Pure Storage

SSH
Radware
Alteon
Alteon
RadWare ADC

v31, v29.5

RadWare
Radware
AppDirector
Load Balancer

N/A

Red Hat
Cluster Suite

RH 5.x, 6.x, 7.x

Linux

SNMP

Alteon Load
Horizontal and Balancer
top-down

SNMP

AppDirector
Horizontal and Load Balancer
top-down

SSH

Horizontal

RH Cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2571


<!-- page 2572 -->
Name

Red Hat
JBoss
Application
Server

Platform

Windows

Version

6.x, 7.x

UNIX

Pattern (or
probe if
indicated)

Protocol

Discovery type

WMI

Jboss
Horizontal and (pattern)
top-down

WinRM
SSH

Red Hat
JBoss Fuse
discovery

Windows

N/A

SSH

Jboss Fuse
Horizontal and (pattern)
top-down

REST

Horizontal

HTTP

Horizontal

UNIX

Red Hat
RHEL
OpenShift
components
of Kubernetes

API 1.x

Rubrik cluster

N/A

Collect
OpenShift
info library
used as an
extension
section of the
Kubernetes
pattern
Multiple
patterns

HTTPS
SAP Business
Object XI
Scheduler

Windows

SAP Crystal
Management
Server

Windows

2004, 2005,
2008

WinRM

Windows

2015, 2016,
2017

WMI

SAP HANA

2004, 2005,
2008

WMI
WinRM

UNIX

WinRM

SAP BO
Horizontal and BOXIScheduleRouter
top-down
on Windows
Pat
SAP Business
Horizontal and Objects CMS
top-down
Server on
Windows
SAP HANA DB
Horizontal and (pattern)
top-down

SSH
SAP HANA
Catalog

UNIX

SAP Sybase
ASE discovery Windows

N/A

16

UNIX

N/A

WMI
WinRM

Horizontal

SAP Hana 2.0
DB Catalog
(pattern)

Sybase
Horizontal and (pattern)
top-down

SSH
SAP Sybase
UNIX
ASE discovery
catalog

16

SSH

Horizontal

Sybase
(pattern
extension)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2572


<!-- page 2573 -->
Name

Platform

Cisco Switch
Wireless
Access Point
(WAP)

Cisco Network N/A
Switch

Sun Directory
Proxy Server
Sun Java
System
Directory
Server
Thunder ADC

Tibco
ActiveMatrix
Adapter

Solaris
Solaris

A10

UNIX

Tibco
BusinessWorks Windows

Version

Pattern (or
probe if
indicated)

Protocol

Discovery type

SNMP

Horizontal

SSH

Top-down

Sun Directory
Proxy Server

SSH

Top-down

Sun Directory
Server

2.x, 4.x

SNMP/SSH

A10 Load
Horizontal and Balancer
top-down

7.1.0

SSH

4.0.8
6.3

5.7.2

UNIX

WMI

Top-down

Horizontal

WinRM

WAP

Tibco Adapter

ActiveMatrix
Business
Works

SSH
Tibco
Windows
Enterprise
Message
UNIX
Service (EMS)

5.x, 6.x

WMI
WinRM

Enterprise
Horizontal and Message
top-down
Service

SSH
Tibco
Windows
Enterprise
Message
UNIX
Service (EMS)
Queue

5.x, 6.x

Tibco Hawk

5.2.0

Veritas
Enterprise
Vault

UNIX
Windows

WMI
WinRM

Enterprise
Horizontal and Message
top-down
Service

SSH

14.1

SSH

Top-down

WMI

Top-down

TibcoHawk
Enterprise
Vault

WinRM

Veritas
Cluster Server UNIX

6.x.x

VMware NSX
VMware
Advanced
Load Balancer

1

SSH

Horizontal and
top-down

REST API

Horizontal and
top-down

Veritas Cluster

NSX

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2573


<!-- page 2574 -->
Cloud resource discovery references
ITOM Visibility discovers resources on cloud platforms.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Data collected for Amazon AWS Cloud Discovery
Discovery collects information about cloud resources in AWS datacenters. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns.
• CMDB CI Class Models.
• Visibility Content.
Configure a discovery schedule
Create a discovery schedule in Cloud Discovery Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Note: You can test the AWS REST APIs using Postman API platform. For more information,
see the How to test AWS REST API using POSTMAN [KB0782183]
Support Knowledge Base.

article in the Now

Data collected for AWS Cloud Discovery
The following tables show examples of data collected during AWS Cloud Discovery.
AWS Datacenter [cmdb_ci_aws_datacenter]
Label

Field Name

Name

name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2574


<!-- page 2575 -->
AWS Datacenter [cmdb_ci_aws_datacenter] (continued)
Label

Field Name

Region

region

Object ID

object_id

Availability Zone [cmdb_ci_availability_zone]
Label

Field Name

Name

name

Virtual Machine Instance [cmdb_ci_vm_instance]
Label

Field Name

Name

name

State

state

Object ID

object_id

CPUs

cpus

Disks

disks

Memory

memory

Network adapters

nics

VM Instance ID

vm_inst_id

Compute Security Groups [cmdb_ci_compute_security_group]
Label

Field Name

Name

name

Object ID

object_id

State

state

Images [cmdb_ci_os_template]
Label

Field Name

Name

name

Object ID

object_id

Guest OS

guest_os

Root device type

root_device_type

Image source

image_source

Image type

image_type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2575


<!-- page 2576 -->
Hardware Type [cmdb_ci_compute_template]
Label

Field Name

Name

name

vCPUs

vcpus

Memory MB

memory_mb

Local Storage GB

local_storage_gb

Storage Volume [cmdb_ci_storage_volume]
Label

Field Name

Name

name

State

state

Object ID

object_id

Storage type

storage_type

Size

size

Cloud Networks [cmdb_ci_network] and VMware vCenter Network
[cmdb_ci_vcenter_network]
Label

Field Name

Name

name

State*

state

CIDR*

cidr

*Not found on VMware vCenter networks.
Cloud Subnets [cmdb_ci_cloud_subnet]
Label

Field Name

Name

name

Status

status

CIDR

cidr

Cloud Management Network Interfaces [cmdb_ci_nic]
Label

Field Name

Name

name

Netmask

netmask

MAC Manufacturer

mac_manufacturer

Status

install_status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2576


<!-- page 2577 -->
Cloud Load Balancers [cmdb_ci_cloud_load_balancer]
Label

Field Name

Name

name

Object ID

object_id

State

state

Resource Groups [cmdb_ci_resource_group]
Label

Field Name

Name

name

Object ID

object_id

State

state

Public IP Addresses [cmdb_ci_cloud_public_ipaddress]
Label

Field Name

Name

name

Object ID

object_id

Public IP address

public_ip_address

Public DNS

public_dns

Storage Accounts [cmdb_ci_cloud_storage_account]
Label

Field Name

Name

name

Object ID

object_id

Sku Name

sku_name

State

state

DNS Alias [cmdb_ci_dns_alias] and DNS name [cmdb_ci_dns_name]
Label

Field name

DNS Alias [cmdb_ci_dns_alias]
Name

name

Category

category

Status

status

DNS name [cmdb_ci_dns_name]
Name

name

IP address

ip_address

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2577


<!-- page 2578 -->
Cloud DataBases [cmdb_ci_cloud_database]
Label

Field Name

Description

Name

name

The name of the database that you created in AWS.

Object ID

object_id

This is also the name of the database.

Type

Type

The type of database you created.

Fully qualified domain
name

fqdn

The FQDN that AWS assigned to your database. An
example format for AWS is as follows:
database-name.{random-number}.
{datacenter}.rds.amazonaws.com

State

state

The state of the database: whether it is Available or
Terminated.

TCP port(s)

tcp_port

The TCP port that the database communicates through.

Category

category

The instance class of the database, for example:
db.t2.micro.

Automated Backups

automated_backup
Indicates whether automated backups are enabled and
the retention period.

Cloud WebServer [cmdb_ci_cloud_webserver]
Label

Field Name

Name

name

Install status

install_status

Vendor

vendor

Fully qualified domain name

fqdn

Operational status

operational_status

State

state

Kubernetes Clusters [cmdb_ci_kubernetes_cluster]
Label

Field Name

Description

Name

name

The name of the kubecontroller-manager leader.

Port

port

The identifier for the
Kubernetes apiserver port.

Kubernetes UID

k8s_uid

The unique identifier for the
Kubernetes Cluster.

Vendor

vendor

The vendor of the Kubernetes
Cluster.

Fully qualified domain name

fqdn

The fully qualified domain
name of the Kubernetes
apiserver.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2578


<!-- page 2579 -->
Related topics
AWS discovery using patterns
Service Graph Connector for AWS
Agent Client Collector Discovery
Data collected for Microsoft Azure Cloud Discovery
Discovery collects information about cloud resources in Microsoft Azure datacenters.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
• Visibility Content
Create Azure cloud credentials
Create Microsoft Azure credentials that can access the Microsoft Azure account. For
more information, see Create Azure cloud credentials.
Configure a discovery schedule
Create a discovery schedule in Cloud Discovery Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

How Discovery finds Microsoft Azure resources
Discovery uses the Cloud Provisioning and Governance API and Discovery and Service Mapping
Patterns to find cloud resources.
Default patterns
Pattern

Azure DataBase (LP)

Description

Discovers database types of:
• Microsoft.sql/servers
• microsoft.sql/managedInstances
• microsoft.dbformysql

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2579


<!-- page 2580 -->
Default patterns (continued)
Pattern

Description

• microsoft.documentdb/databaseaccounts
• microsoft.cache/redis
• microsoft.dbforpostgresql/servers
• microsoft.dbformysql/servers
• microsoft.dbformysql/flexibleservers
• microsoft.dbforpostgresql/flexibleservers
Populates the [cmdb_ci_cloud_database] table.
Azure LoadBalancer TD

Retrieves Microsoft Azure load balancers and populates
the cmdb_ci_lb_service table. This pattern is only used
by Service Mapping for top-down discovery, not by the
Discovery application for horizontal discovery.

Azure WebSite (LP)

Retrieves Microsoft Azure web servers and populates
the Cloud WebServers [cmdb_ci_cloud_webserver] and
IP address [cmdb_ci_ip_address] tables.

Data collected by Discovery during horizontal discovery
Azure Datacenter [cmdb_ci_azure_datacenter]
Label

Field Name

Name

name

Region

region

Object ID

object_id

Availability Zone [cmdb_ci_availability_zone]
Label

Field Name

Name

name

Virtual Machine Instance [cmdb_ci_vm_instance]
Label

Field Name

Name

name

State

state

Object ID

object_id

CPUs

cpus

Disks

disks

Disks size (GB)

disks_size

Memory

memory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2580


<!-- page 2581 -->
Virtual Machine Instance [cmdb_ci_vm_instance] (continued)
Label

Field Name

Network adapters

nics

VM Instance ID

vm_inst_id

Compute Security Groups [cmdb_ci_compute_security_group]
Label

Field Name

Name

name

Object ID

object_id

State

state

Images [cmdb_ci_os_template]
Label

Field Name

Name

name

Object ID

object_id

Guest OS

guest_os

Image source

image_source

Storage Volume [cmdb_ci_storage_volume]
Label

Field Name

Name

name

State

state

Object ID

object_id

Storage type

storage_type

Size

size

Cloud Networks [cmdb_ci_network] and VMware vCenter Network
[cmdb_ci_vcenter_network]
Label

Field Name

Name

name

State*

state

CIDR*

cidr

*Not found on VMware vCenter networks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2581


<!-- page 2582 -->
Cloud Subnets [cmdb_ci_cloud_subnet]
Label

Field Name

Name

name

Status

status

CIDR

cidr

Cloud Provisioning and Governance Network Interfaces [cmdb_ci_nic]
Label

Field Name

Name

name

Netmask

netmask

MAC Address

mac_address

MAC Manufacturer

mac_manufacturer

Status

install_status

Cloud Load Balancers [cmdb_ci_cloud_load_balancer]
Label

Field Name

Name

name

Object ID

object_id

State

state

Azure Deployments [cmdb_ci_azure_deployment]
Label

Field Name

Name

name

Provisioning state

provisioning_state

Note: This table is only available for Discovery when the Cloud Provisioning and
Governance plugin is activated.
Resource Groups [cmdb_ci_resource_group]
Label

Field Name

Name

name

Object ID

object_id

State

state

Operational Status

operational_status

Install Status

install_status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2582


<!-- page 2583 -->
Note:
• When a resource group is discovered for the first time, the State field is set to Available,
operational_status=Operational, and Status=Installed; based on the response
mapping.
• When a resource group is terminated on Microsoft Azure, the CMPReconciler scripts
set the State field to Terminated, and operational_status=Non-Operational and
Status=Absent.
Public IP Addresses [cmdb_ci_cloud_public_ipaddress]
Label

Field Name

Name

name

Object ID

object_id

Public IP address

public_ip_address

Public DNS

public_dns

Storage Accounts [cmdb_ci_cloud_storage_account]
Label

Field Name

Name

name

Object ID

object_id

Sku Name

sku_name

State

state

Cloud Databases [cmdb_ci_cloud_database]
Label

Field Name

Fully qualified domain name

fqdn

Name

name

Object ID

object_id

Operational Status

operational_status

Type

type

State

state

Vendor

vendor

Version

version

Note: For NoSQL and MSSQL Managed Instances, the
API responses for these databases do not return version
data.
Category

category

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2583


<!-- page 2584 -->
Cloud WebServer [cmdb_ci_cloud_webserver]
Label

Field Name

Name

name

Install status

install_status

Vendor

vendor

Fully qualified domain name

fqdn

Operational status

operational_status

State

state

IP Address [cmdb_ci_ip_address]
Label

Field Name

Fully qualified domain name

fqdn

Install status

install_status

IP Address

ip_address

Name

name

Netmask

netmask

Operational status

operational_status

Vendor

vendor

Database [cmdb_ci_database]
Label

Field Name

Life-cycle Stage Status

life_cycle_stage_status

Name

name

Status

status

Serial Number

serial_number

Type

type

Compute Template [cmdb_ci_compute_template]
Label

Field Name

Name

name

Object ID

object_id

VCPUS

vcpus

Hardware Type [cmdb_ci_hardware_type]
Label

Field Name

Name

name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2584


<!-- page 2585 -->
Hardware Type [cmdb_ci_hardware_type] (continued)
Label

Field Name

Object ID

object_id

Provider

provider

vCPUs

vcpus

Related topics
Microsoft Azure Cloud discovery using patterns
Service Graph Connector for Microsoft Azure
Agent Client Collector Discovery
Data collected for GCP Cloud Discovery
Discovery collects information about cloud resources in Google Cloud Platform (GCP).
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns.
• CMDB CI Class Models.
• Visibility Content.
Configure a discovery schedule
Create a discovery schedule in Cloud Discovery Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

GCP data collected
Table

ServiceNow Field

GCP Field

Region
[cmdb_ci_google_datacenter]

object_id

items.id

name

name

short_description

description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2585


<!-- page 2586 -->
Table

Virtual Server
[cmdb_ci_vm_instance]

Storage Volume
(cmdb_ci_storage_volume)

ServiceNow Field

GCP Field

status

status

region

items.name

object_id

id

name

name

state

status

cpus

Not mapped

memory

Not mapped

disks

disks (array size)

disks_size

Not mapped

nics

networkInterfaces (array size)

termination_protection

deletionProtection

Not mapped

canIpForward

Not mapped

selfLink

sys_created_on

creationTimestamp

object_id

items.id

name

name

short_description

description

state

status

status

status

size

sizeGb

storage_type

storage_type

Cloud Public IP Address
object_id
[cmdb_ci_cloud_public_ipaddress]
name

Availablility Zone
[cmdb_ci_availability_zone]

Hardware Template
[cmdb_ci_compute_template]

items.id
name

public_ip_address

address

state

status

object_id

items.id

name

name

short_description

description

state

status

status

status

object_id

items.id

name

name

short_description

description

vcpus

guestCpus

memory_mb

memoryMb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2586


<!-- page 2587 -->
Table

Instance Template
[cmdb_ci_instance_template]

ServiceNow Field

GCP Field

local_storage_gb

imageSpaceGb

object_id

items.id

name

name

short_description

description

Storage Volume Snapshot
object_id
[cmdb_ci_storage_vol_snapshot]
name

Image [cmdb_ci_os_template]

name

state

status

volume_name

sourceDisk

capacity

storageBytes

No mapping

storageBytesStatus

No mapping

selfLink

No mapping

labelFingerprint

No mapping

diskSizeGb

Disk Type [cmdb_ci_disk_type] object_id

Subnet
[cmdb_ci_cloud_subnet]

items.id

zone:name

name

name@zone

short_description

description

valid_disk_size

validDiskSize

default_disk_size_gb

defaultDiskSizeGb

object_id

id

name

name

cidr

ipCidrRange

gateway

gatewayAddress

object_id

items.id

name

name

image_type

sourceType

No mapping

status

No mapping

archiveSizeBytes

No mapping

diskSizeGb

image_source

• sourceDisk
• sourceDiskId

Load Balancer
object_id
(cmdb_ci_cloud_load_balancer)
name

Load Balancer Service
(cmdb_ci_lb_service)

id
name

No mapping

defaultService

object_id

id

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2587


<!-- page 2588 -->
Table

ServiceNow Field

GCP Field

name

name

pool

backends

port

port

listener_protocol

protocol

No mapping

portName

No mapping

loadBalancingScheme

No mapping

sessionAffinity

No mapping

enableCDN

service_type

Backend/Frontend

object_id

id

name

name

monitor_type

type (tcp/http/https)

request_path

requestPath

port

port

unhealthy_threshold

unhealthyThreshold

healthy_threshold

healthyThreshold

timeout_sec

timeoutSec

check_interval_sec

checkIntervalSec

object_id

Instance ID from GCP

name

instance.substring after the
last'/'

Operational status

status

Load Balancer Pool
[cmdb_ci_lb_pool]

object_id

id

name

name

Network [cmdb_ci_network]

state

No mapping

cidr

IPv4Range

is_external

No mapping

name

name

object_id

items_id

description

description

object_id

id

name

name

short_description

description

is_outbound (True/False)

ac

dest_from_port

No mapping

dest_to_port

No mapping

Load Balancer Health Service
[cmdb_ci_lb_health_service]

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Network ACL
[cmdb_ci_network_acl]

Network ACL Rule
[cmdb_ci_network_acl_rule]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2588


<!-- page 2589 -->
Table

ServiceNow Field

GCP Field

src_from_port

No mapping

src_to_port

No mapping

source_ranges

sourceRanges

destination_ranges

destinationRanges

target_tags

targetTags

allowed_traffic

allowed

Kubernetes Clusters
IP address
[cmdb_ci_kubernetes_cluster]
Name

ip_address
name

Port

port

Kubernetes UID

k8s_uid

Vendor

vendor

Related topics
Google Cloud Platform (GCP) Cloud discovery using Patterns
Service Graph Connector for GCP
Agent Client Collector Discovery
Data collected for IBM Cloud Discovery
Discovery collects information about cloud resources in the IBM Cloud Platform and creates
relationships between the CIs it finds. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns.
• CMDB CI Class Models.
• Visibility Content.
Configure a discovery schedule
Create a discovery schedule in Cloud Discovery Workspace

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2589


<!-- page 2590 -->
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Load balancers
Data collected for load balancers
Table

Field Name / Description

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

object_id: The load balancer's unique identifier.
name: Name of the load balancer.
fqdn: Address (Host name) of the load balancer. This is
the fully qualified domain name of the load balancer.
dns_name: Address (Host name) of the load balancer.
short_description: Description of the load balancer.
operational_status: The operational status of the load
balancer, either ONLINE or OFFLINE.
location: References the load balancer's location with
type.
state: Provisioning status of the load balancer, either
Available or Terminated.

Load Balancer Service
[cmdb_ci_lb_service]

object_id: Unique identifier of the load balancer service.
name: Name created by the pattern that contains the
following:
• Load balancer name
• Protocol
• Port
• Resource type: -listener
port: Listener's protocol port number.
front_end_port: Listener's protocol port number.
listener_protocol: Listener's protocol, either TCP,
HTTP, or HTTPS.
operational_status: The provisioning status of the
listener.

Load Balancer Pool
[cmdb_ci_lb_pool]

object_id: Unique identifier of the load balancer pool.
name: Name created by the pattern that contains the
following:
• Load balancer name
• Protocol
• Port
• Resource type: -pool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2590


<!-- page 2591 -->
Data collected for load balancers (continued)
Table

Field Name / Description

port: Protocol port of the back end.
pool_status: Provisioning status of a load balancer pool.
load_balancing_method: Method used to load balance
the pool.
Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

object-id: Unique identifier of the pool member, created
from the ID of the member and the listener ID.
name: Name created by the pattern that contains the
following:
• Load balancer name
• Protocol
• Port
• Resource type: -member
• IP address of the pool member
ip_address: IP address of a load balancer member.
server_id: ID of the member in the IBM Cloud.
load_balancer: Name of the related load balancer.

Load Balancer Health Service
[cmdb_ci_lb_health_service]

object_id: Unique identifier of the healthservice check.
name: Name created by the pattern that contains the
following:
• Load balancer name
• Protocol
• Resource type: Health Check
• Resource ID
monitor_type: Type of health check. Valid values are
TCP, HTTP, or HTTPS.
timeout_sec: Timeout in seconds to wait for the health
check response.
check_interval_sec: Interval in seconds to perform the
health check.

Relationships created for load balancers
CI

Relationship

CI

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_availability_zone

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_load_balancer Contains::Contained by

cmdb_ci_lb_health_service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2591


<!-- page 2592 -->
Relationships created for load balancers (continued)
CI

Relationship

CI

cmdb_ci_cloud_load_balancer Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_availability_zone

Contains::Contained by

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_service

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_availability_zone

Contains::Contained by

cmdb_ci_lb_service

cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_service

Contains::Contained by

cmdb_ci_lb_pool

cmdb_ci_lb_pool

Owns::Owned by

cmdb_ci_lb_pool_member

Organizations and spaces
Data collected for organizations and spaces
Table

Fields

IBM Cloud Organizations
[cmdb_ci_cloud_org]

• guid: The organization's unique identifier.
• url: The organization's unique URL.
• billing_enabled: Indicates if the organization's billing
method is enabled or disabled.
• name: Unique name of the cloud organization.
• quota_definition_url: Resources that are available to
the organization.
• spaces_url: Unique URL of the space assigned to the
organization.
• operational_status: Operational status of the
organization.

IBM Cloud Space
[cmdb_ci_cloud_space]

• object_id: Unique identifier (GUID) of the space.
• name: Unique name of the space.
• url: Unique URL of the space.
• allow_ssh: The IP address of a storage resource.

Relationships created for organizations and spaces
CI

Relationship

CI

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_availability_zone

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_org

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_space

Hosted on::Hosts

cmdb_ci_cloud_org

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2592


<!-- page 2593 -->
Relationships created for organizations and spaces (continued)
CI

Relationship

CI

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_cloud_space

SSH Keys
Data collected for SSH keys
Table

Fields

Cloud Key Pairs [cmdb_ci_cloud_key_pair]

• object_id: ID of the SSH key record.
• name: Descriptive name used to identify the
SSH key.
• key: The SSH key.
• finger_print: Short sequence of bytes used
to authenticate or lookup a longer SSH key.
This is generated automatically when adding
or modifying the SSH key. This property is
read only. Changes made are ignored.
• created_date: Date the SSH key was added.
This property is read only. Changes made
are ignored.
• modify_date: Date the SSH key was
last modified. This property is read only.
Changes made are ignored.
• short_description: Brief note about the SSH
key.

Relationships created for SSH keys
CI

Relationship

CI

cmdb_ci_ibm_datacenter

Contained by::Contains

cmdb_ci_availability_zone

cmdb_ci_cloud_key_pair

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_key_pair

Hosted on::Hosts

cmdb_ci_cloud_service_account

IBM Cloud storage
Data collected for IBM Cloud storage
Table

Storage Volume [cmdb_ci_storage_volume]

Fields

• object_id: Unique identifier of the storage
account.
• size: Capacity of the storage account,
measured in gigabytes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2593


<!-- page 2594 -->
Data collected for IBM Cloud storage (continued)
Table

Fields

• size_bytes: Capacity of the storage account,
measured in bytes.
• name: Username used to access a nonEVault Storage volume. This username is
used to register the EVault server agent with
the vault backup system.
• label: Network resource name for the
storage.
• storage_type: Description of the storage
object.
• fqdn: IP address of the storage resource.
• device: Unique identification number of the
guest associated with the storage volume.
Storage Volume Snapshot
[cmdb_ci_storage_vol_snapshot]

• object_id: Unique identifier of the storage
account.
• name: Name of the storage's network
resource.
• capacity: The volume's configured snapshot
space size.
• fqdn: IP address of the storage resource.
• location: Unique availability zone where the
storage volume is located.

Relationships created for IBM Cloud storage
CI

Relationship

CI

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_availability_zone

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_storage_volume

Provisioned::Provisioned From cmdb_ci_storage_vol_snapshot

cmdb_ci_storage_vol_snapshot Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_storage_volume

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_storage_vol_snapshot Located in Zone::Zone
contains

cmdb_ci_availability_zone

cmdb_ci_availability_zone

cmdb_ci_storage_volume

Contains::Contained by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2594


<!-- page 2595 -->
IBM Cloud virtual servers
Data collected for IBM Cloud virtual servers
Table

Fields

Virtual Machine Instance
[cmdb_ci_vm_instance]

• name: Name of the virtual machine.
• object_id: ID of the virtual machine.
• dns_domain: Domain of the virtual machine.
• fqdn: IP address of the virtual machine.
• short_description: Notes attached to the virtual
machine on the IBM console.
• cpus: Number of CPUs on the virtual machine.
• memory: Amount of memory on the virtual machine.
• disks: Number of disks used by the virutal machine.
• state: The running state of the virtual machine. The
choices are:
◦ Running
◦ Halted
• placement_group_id: Name of the IBM placement
group containing the virtual machine.
• nics: Number of network interfaces on the virtual
machine.

Cloud Mgmt Network Interface
[cmdb_ci_nic]

• name: Name and port of the NIC, in the format
<name><port>.
• ip_address: IP address configured on the NIC.
• mac_address: MAC address of the NIC.
• netmask: Netmask of the NIC.
• object_id: ID of the NIC.
• status: State of the NIC - AVAILABLE.

Image [cmdb_ci_os_template]

• name: Long description of the template. For example:
CentOS 7.0-64 Minimal for VSI.
• version: Operating system version. For example,
7.0-64 Minimal for VSI.
• object_id: ID of the image.
• guest_os: Operating system of the virtual machine,
such as Windows, Ubuntu, or CentOS.

Cloud Key Pair
[cmdb_ci_cloud_key_pair]

• name: The key label.
• object_id: ID of the key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2595


<!-- page 2596 -->
Data collected for IBM Cloud virtual servers (continued)
Table

Fields

Compute Security Group
[cmdb_ci_compute_security_group]

• name: Security group name.
• object_id: ID of the security group
• short_description: Security group notes.
object_id: The storage volume ID.

Storage Volume
[cmdb_ci_storage_volume]

Relationships created for IBM Cloud virtual servers
CI

Relationship

CI

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_vm_instance

Located in::Houses

cmdb_ci_availability_zone

cmdb_ci_nic

Contained by::Contains

cmdb_ci_vm_instance

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_os_template

Provisioned by::Provisions

cmdb_ci_vm_instance

cmdb_ci_cloud_key_pair

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_key_pair

Used by::Uses

cmdb_ci_vm_instance

cmdb_ci_compute_security_group
Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_compute_security_group
Implement End Point
From::Implement End Point To

cmdb_ci_vm_instance

cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_storage_volume

Implement End Point
From::Implement End Point To

cmdb_ci_vm_instance

IBM Cloud service account
Data collected for IBM Cloud service account
Table

Cloud Service Account
[cmdb_ci_cloud_service_account]

Field

• name: Display name of the cloud service
account.
• account_id: Service account ID.
• object_id: Cloud ID of the service account.
This is the same as the account_id.
• datacenter_type: This is
cmdb_ci_ibm_datacenter.
• discovery_credentials: The sys_id of the
credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2596


<!-- page 2597 -->
Data collected for IBM Cloud service account (continued)
Table

Field

IBM Datacenter [cmdb_ci_ibm_datacenter]

• name: Display name of the cloud service
account.
• account_id: Service account ID.
• object_id: Cloud ID of the service account.
This is the same as the account_id.
• datacenter_type: This is
cmdb_ci_ibm_datacenter.

Relationships created for IBM Cloud service accounts
CI

Relationship

CI

cmdb_ci_cloud_service_accountContained by::Contains

cmdb_ci_availability_zone

cmdb_ci_cloud_service_accountContained by::Contains

cmdb_ci_ibm_datacenter

cmdb_ci_cloud_service_accountHosts::Hosted on

cmdb_ci_cloud_key_pair

cmdb_ci_cloud_service_accountHosts::Hosted on

cmdb_ci_vm_instance

cmdb_ci_cloud_service_accountHosts::Hosted on

cmdb_ci_lb_service

cmdb_ci_ibm_datacenter

Contained by::Contains

cmdb_ci_availability_zone

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Hosts::Hosted on

cmdb_ci_network

Data collected for VMware Cloud Discovery
Discovery collects information about VMware resources in your cloud service accounts.

Distributed Resource Scheduler (DRS) discovery
VMware Discovery collects these DRS settings and saves them to the DRS VM Config
[cmdb_ci_drs_vm_config] table:
• DRS settings of vCenter clusters.
• DRS settings of VMs configured to override cluster behavior.
DRS VM Config [cmdb_ci_drs_vm_config]
Field label and Name

Description

Cluster [cluster]

The vCenter cluster that the VM belongs to.

DRS behavior [drs_behavior]

The VM-level Distributed Resource Scheduler
behavior that overrides cluster defaults.

DRS enabled [drs_enabled]

Indicates whether DRS is active for the VM.

Virtual machine [virtual_machine]

The VM instance using these DRS settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2597


<!-- page 2598 -->
VMware tags
VMware Cloud Discovery finds VMware tags from vCenter and saves them to the Key Value
[cmdb_key_value] table.
Key Values [cmdb_key_value]
Field label and Name

Description

Configuration item [configuration_item]

Referenced VM with tag attached in vCenter.

Key [key]

Category name of the tag applied to the
resource in vCenter.

Tag [tag]

Source in vCenter from which tags are fetched.
In this case, the value is always Tags.

Value [value]

Tag name that's applied to the resource in
vCenter.

Data collected for VMware vCenter Server
Discovery identifies and classifies information and data about VMware vCenter servers.
The vCenter table schema is illustrated in the following diagram:
vCenter table schema

Several tables are cloud-agnostic tables, meaning that they can be populated for any cloud
resource, not just vCenter resources. Look in the sub tables that extend the cloud-agnostic
tables to find discovered configuration items (CIs).

Cloud-agnostic table

Look in this vCenter-specific table

Virtual Machine Instance
[cmdb_ci_vm_instance]

VMware Virtual Machine Instance
[cmdb_ci_vmware_instance]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2598


<!-- page 2599 -->
Cloud-agnostic table

Look in this vCenter-specific table

Operating System Template
[cmdb_ci_os_template]

VMware Virtual Machine Template
[cmdb_ci_vmware_template]

Logical Datacenter
[cmdb_ci_logical_datacenter]

VMware vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Cloud Networks [cmdb_ci_network]

VMware vCenter Network
[cmdb_ci_vcenter_network]

Datastore [cmdb_ci_datastore]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Host Cluster [cmdb_ci_host_cluster]

VMware vCenter Cluster [cmdb_ci_vcenter_cluster]

vCenter data
Discovery uses multiple vCenter probes to collect this data from vCenter. The data is saved in
tables extend from the Configuration item [cmdb_ci] table.
VMware vCenter Instance [cmdb_ci_vcenter]
Field label and Name

Description

Name [name]

The display name of the vCenter instance.

IP Address [ip_address]

The IP address of the vCenter server.

API version [api_version]

The version of the vCenter API in use.

Full name [fullname]

The full vCenter instance name returned by
VMware.

Instance UUID [instance_uuid]

A unique identifier assigned to the vCenter
instance.

URL [url]

The endpoint URL used to connect to vCenter.

Fully qualified domain name [fqdn]

The fully qualified domain name of the vCenter
server.

The combination of the vCenter instance in the cmdb_ci_vcenter table and the object ID in the
cmdb_ci_vm_object table identifies a specific vCenter.
The tables extend from the Virtual Machine Objects [cmdb_ci_vm_object] table, which holds
object IDs for all cloud-based resources, except virtualization servers.
DRS VM Config [cmdb_ci_drs_vm_config]
Field label and Name

Description

Cluster [cluster]

The vCenter cluster that the VM belongs to.

DRS behavior [drs_behavior]

The VM-level Distributed Resource Scheduler
behavior that overrides cluster defaults.

DRS enabled [drs_enabled]

Indicates whether DRS is active for the VM.

Virtual machine [virtual_machine]

The VM instance using these DRS settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2599


<!-- page 2600 -->
This table stores DRS behavior for the VMs that override the cluster behavior. For more
information on DRS, see VMware's documentation on Distributed Resource Scheduler

.

VMware vCenter VM Group [cmdb_ci_vcenter_vm_group]
Field label and Name

Description

Cluster [cluster]

The cluster that this VM group is associated
with.

The VMware vCenter VM group [cmdb_ci_vcenter_vm_group] table has Contains::Contained by
relationship with cmdb_ci_vmware_instance. This group has a set of VMs.
VMware vCenter Host Group [cmdb_ci_vcenter_host_group]
Field label and Name

Description

Cluster [cluster]

The cluster that this host group belongs to.

The VMware vCenter Host Group [cmdb_ci_vcenter_host_group] table has Contains::Contained
by relationship with cmdb_ci_vmware_instance. This group has a set of hosts.
VMware vCenter Cluster DRS Rule [cmdb_ci_vcenter_cluster_drs_rule]
Field label and Name

Description

Rule UUID [rule_uuid]

Unique identifier for the DRS rule in vCenter.

Active [active]

Whether the rule is currently enforced.

Cluster [cluster]

The cluster that the rule applies to.

VMware Virtual Machine Instance [cmdb_ci_vmware_instance]
Field label and Name

Description

Name [name]

VM name as discovered from vCenter.

Template [template]

Indicates whether this VM is based on a template.

CPUs [cpus]

Number of assigned virtual CPUs.

Disks [disks]

Number of virtual disks attached to the VM.

Disks size (GB) [disks_size]

Combined size of all VM disks.

Memory (MB) [memory]

Memory allocated to the VM.

Network adapters [nics]

Number of virtual NICs attached.

Image path [image_path]

Path to the VM's image on the datastore.

State [state]

Current VM power or operational state.

vCenter Instance UUID [vcenter_uuid]

Unique ID of the vCenter instance managing this VM.

vCenter Reference [vcenter_ref]

Reference to the vCenter record in CMDB.

BIOS UUID [bios_uuid]

Hardware-level VM UUID from VMware.

VM Instance UUID [vm_instance_uuid]

VMware-provided VM unique ID.

IP address [ip_address]

Primary IP detected for the VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2600


<!-- page 2601 -->
VMware Distributed Virtual Port Groups [cmdb_ci_vcenter_dv_port_group]
Field label and Name

Description

Name [name]

Name of the port group.

vCenter Instance UUID [vcenter_uuid]

vCenter instance that manages this port group.

Distributed Virtual Switch Reference
[dvs_ref]

Reference to the switch that the port group
belongs to.

VMware Virtual Machine Template [cmdb_ci_vmware_template]
Field label and Name

Description

Name [The template name from VMWare.]

Template name in vCenter.

CPUs [cpus]

Number of CPUs assigned when deployed.

Disks size (GB) [disks_size]

Disk size of the template.

Guest ID [guest_id]

VMware guest OS identifier.

Memory (MB) [memory]

Allocated template memory.

Image path [image_path]

Path to the template image.

vCenter Instance UUID [vcenter_uuid]

vCenter instance where the template resides.

vCenter Reference [vcenter_ref]

CMDB reference to vCenter record.

Network adapters [nics]

Number of NICs defined in the template.

Base name [base_name]

The base name used for naming VMs created
from this template.

VM namer [vm_namer]

VMware auto-naming method for derived VMs.

BIOS UUID [bios_uuid]

Template UUID.

VM Instance UUID [vm_instance_uuid]

Unique template instance ID.

VMware vCenter Object [cmdb_ci_vcenter_object]
Field label and Name

Description

Managed object reference ID [morid]

Unique Managed Object Reference ID in vCenter.

vCenter Instance UUID [vcenter_uuid]

vCenter that owns this object.

vCenter Reference [vcenter_ref]

CMDB reference to the vCenter record.

VMware vCenter Datacenter [cmdb_ci_vcenter_datacenter]*
Field label and Name

Description

Region [region]

Geographic or logical region of the datacenter.

Managed object reference ID [morid]

VMware Managed Object Reference ID.

vCenter Instance UUID [vcenter_uuid]

vCenter that manages this datacenter.

vCenter Reference [vcenter_ref]

CMDB reference back to vCenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2601


<!-- page 2602 -->
VMware vCenter Datacenter [cmdb_ci_vcenter_datacenter]* (continued)
Field label and Name

Description

Top-level folder for VMs [folder_moreid]

Top-level folder where VMs reside.

Top-level folder for hosts [host_morid]

Top-level folder for hosts.

*The VMware vCenter Datacenter [cmdb_ci_vcenter_datacenter] table is extended from the
[cmdb_ci_logical_datacenter] table.
VMware vCenter Network [cmdb_ci_vcenter_network]*
Field label and Name

Description

Managed object reference ID [morid]

Object reference ID in vCenter.

vCenter Instance UUID [vcenter_uuid]

Parent vCenter instance.

vCenter Reference [vcenter_ref]

CMDB reference to vCenter.

Network accessible by either hosts or virtual
machines [accessible]

Whether hosts or VMs can connect to the
network.

*The VMware vCenter Network [cmdb_ci_vcenter_network] table is extended from the
[cmdb_ci_network] table.
VMware Distributed Virtual Switch [cmdb_ci_vcenter_dvs]
Field label and Name

Description

VMCount [vm_count]

Number of VMs attached to the switch.

Host count [host_count]

Number of ESXi hosts connected.

VMware vCenter Folder [cmdb_ci_vcenter_folder]
Field label and Name

Description

Managed object reference ID [morid]

VMware folder identifier.

vCenter Instance UUID [vcenter_uuid]

vCenter managing the folder.

vCenter Reference [vcenter_ref]

CMDB reference to vCenter.

Full path [fullpath]

Full folder hierarchy path.

ESX Resource Pool [cmdb_ci_esx_resource_pool]
Field label and Name

Description

Managed object reference ID [morid]

VMware Managed Object Reference ID.

vCenter Instance UUID [vcenter]

vCenter that manages this pool.

vCenter Reference [vcenter_ref]

CMDB reference.

Owner [owner]

The VM or host that owns the pool.

Owner Managed Object Reference ID
[owner_morid]

Managed Object Reference of the owner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2602


<!-- page 2603 -->
ESX Resource Pool [cmdb_ci_esx_resource_pool] (continued)
Field label and Name

Description

CPU expandable [cpu_expandable]

Whether CPU resources can exceed limits.

CPU limit (MHz) [cpu_limit_mhz]

Max CPU allocation in MHz.

CPU reserved (MHz) [cpu_reserved_mhz]

CPU reserved for the pool.

CPU shares [cpu_shares]

CPU scheduling weight.

Full path [fullpath]

Location path in vCenter hierarchy.

Memory expandable [mem_expandable]

Whether memory can exceed the configured
maximum.

Memory limit (MB) [mem_limit_mb]

Memory limit in MB.

Memory reserved (MB) [mem_reserved_mb]

Memory guaranteed for the pool.

Memory shares [mem_shares]

Memory scheduling weight.

VMware vCenter Datastore [cmdb_ci_vcenter_datastore]
Field label and Name

Description

Managed object reference ID [morid]

ID of the datastore in vCenter.

vCenter Instance UUID [vcenter_uuid]

Parent vCenter ID.

Accessible [accessible]

Indicates if hosts can access it.

vCenter Reference [vcenter_ref]

CMDB reference.

Type [type]

Filesystem type (NFS, VMFS, etc.).

Capacity (GB) [capacity]

Total datastore capacity.

Free space (GB) [freespace]

Remaining space.

URL [url]

Unique locator.

Clustered [clustered]

Whether it belongs to a storage pod.

The VMware vCenter Datastore [cmdb_ci_vcenter_datastore] table is extended from the
[cmdb_ci_datastore] table.
VMware vCenter Cluster [cmdb_ci_vcenter_cluster]*
Field label and Name

Description

Managed object reference ID [morid]

Cluster ID.

vCenter Instance UUID [vcenter_uuid]

Parent vCenter ID.

Effective hosts [effectivehosts]

Number of functioning hosts.

vCenter Reference [vcenter_ref]

CMDB reference.

Effective CPU [effectivecpu]

Available CPU capacity.

Effective memory [effectivememory]

Available RAM.

Number of effective hosts [effectivehosts]

Count of hosts contributing resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2603


<!-- page 2604 -->
VMware vCenter Cluster [cmdb_ci_vcenter_cluster]* (continued)
Field label and Name

Description

Number of hosts [numhosts]

Total hosts.

Total CPU [totalcpu]

Total CPU capacity.

Total memory [totalmemory]

Total memory.

Number of CPU cores [numcpucores]

Total core count.

Number of CPU threads [numcputhreads]

Total thread count.

DRS Behavior [drs_behavior]

Cluster-level DRS settings.

DRS Enabled [drs_enabled]

Whether DRS is active.

DRS VMotion Rate [drs_vmotion_rate]

vMotion automation aggressiveness level.

*The VMware vCenter Cluster [cmdb_ci_vcenter_cluster] table is extended from the
[cmdb_ci_host_cluster] table.
Cluster VM Host Rule Info [cmdb_ci_cluster_vm_host_rule]
Field label and Name

Description

VM Group [vm_group]

VM group to which the rule applies.

Host Group [host_group]

Host group associated with the rule.

Mandatory [mandatory]

Indicates whether the rule must be strictly
enforced.

Affinity [affinity]

Whether VMs must run together or be
separated.

Cluster VM Affinity Rule Info [cmdb_ci_cluster_vm_affinity_rule]
Field label and Name

Description

Affinity [affinity]

Defines whether grouped VMs must stay
together.

The Cluster VM Affinity Rule Info [cmdb_ci_cluster_vm_affinity_rule] table has
Contains::Contained by relationship with cmdb_ci_vmware_instance. This group has a set of
VMs for which this affinity is applied.
VMWare Distributed Virtual Switch [cmdb_ci_vcenter_dvs]
Field label and Name

Description

Name [name]

The name of the distributed virtual switch as defined in vCenter.

VMCount [vm_count]

The number of virtual machines currently connected to this distributed
switch.

Host count
[host_count]

The number of ESXi hosts participating in this distributed switch.

Discovery also maps the relationships to VMs and to distributed virtual port groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2604


<!-- page 2605 -->
VMware Distributed Virtual Port Group [cmdb_ci_vcenter_dv_port_group]
Field label and Name

Description

Name [name]

The name of the port group that provides network
configuration for connected VMs.

vCenter Instance UUID
[vcenter_uuid]

The VMware-generated UUID of the vCenter instance that
manages this port group.

Distributed Virtual Switch
Reference [dvs_ref]

The switch to which this port group belongs.

Discovery also maps the relationship to the distributed virtual switch.
You can add these related lists to view additional discovered data:
•

Storage Volumes
The virtual disks for this virtual machine. This data is saved in the Storage Volume
[cmdb_ci_storage_volume] table with the value type=v Disk.
Storage Volume [cmdb_ci_storage_volume]

•

Field label and Name

Description

Name [name]

Name of the storage volume.

Size [size]

Size of the disk/volume.

Network Adapters
The virtual network adapters for the virtual disks. This data is saved in the Network
Adapter [cmdb_ci_network_adapter] table.
Network Adapter [cmdb_ci_network_adapter]
Field label and Name

Description

Name [name]

NIC name.

IP Address [ip_address]

Assigned IP.

MAC address [mac_address]

NIC MAC address.

Netmask [netmask]

Subnet mask.

vCenter discovery with Software Asset Management
If Software Asset Management is active, Discovery populates these vCenter tables using the
VMWare - vCenter ESX Hosts License probe.
VMWare License Key [samp_vmware_license_key]
Field label and Name

Description

vCenter Reference [vcenter_ref] The reference link to the vCenter instance that owns this
license.
Cost Unit [cost_unit]

The unit used by VMware to measure license cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2605


<!-- page 2606 -->
VMWare License Key [samp_vmware_license_key] (continued)
Field label and Name

Description

Edition [edition]

The edition level of the VMware product.

Features [features]

The list of capabilities enabled by this license.

License Key [license_key]

The VMware-issued alphanumeric software license key.

Product Name [product_name]

The VMware product that the license applies to.

Product Version
[product_version]

The version of the licensed product.

Rights Owned [rights_owned]

Total entitlements purchased under this license.

Rights Used [rights_used]

Entitlements currently consumed by vCenter hosts.

VMWare License Key Usage [samp_vmware_license_key_usage]
Field label and Name

Description

Rights Used [rights_used]

Number of license units currently in use.

Expiration Date [expiration_date]

The date the license expires.

Used Features [used_features]

The specific product features being used.

License Key [license_key]

The license key to which this usage record applies.

Software Install [software_install]

The installation record tied to the consumed license.

Used By [used_by]

The asset or component consuming the license.

vCenter relationships
Discovery automatically creates relationships for vCenter components using data from a key
class. Subsequent discoveries use the same key class to automatically validate and remove
relationships that are no longer valid.
vCenter CIs can be members of folders or clusters, which affect how Discovery creates their
relationships.
• If a CI is in a folder, Discovery creates a relationship between that CI and the folder. If that CI
isn’t in a folder, Discovery creates the relationship between the CI and the datacenter. These
vCenter CIs can be in a folder:
◦ VM Instance
◦ VM Template
◦ vCenter Network
◦ Datastore
◦ vCenter Folder
◦ vCenter Cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2606


<!-- page 2607 -->
• If an ESX server is in a cluster, Discovery creates a relationship between the ESX server and
the cluster. If an ESX server isn’t a member of a cluster, then Discovery creates a relationship to
the datacenter.
• If a resource pool is in a cluster, Discovery creates a relationship between the resource pool
and the cluster. If the resource pool isn’t a member of a cluster, then Discovery creates a
relationship to the ESX server.
This diagram illustrates vCenter relationships:
vCenter relationships

Parent class

Relationship type

Child class

Computer
[cmdb_ci_computer]

Virtualized
by::Virtualizes

ESX Server [cmdb_ci_esx_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2607


<!-- page 2608 -->
Parent class

Relationship type

Child class

Note: The relationship
created from ESX Server and
VM Instance to the Guest
are created by business rule
"Virtual Computer Check."
The guest machine must be
discovered after the VCenter
is discovered to trigger the
business rule and create such
relationships.
Computer
[cmdb_ci_computer]

Instantiates::Instantiated VM Instance
by
[cmdb_ci_vmware_instance]

Note: The relationship
created from ESX Server and
VM Instance to the Guest
are created by business rule
"Virtual Computer Check."
The guest machine must be
discovered after the VCenter
is discovered to trigger the
business rule and create such
relationships.
VMware Virtual
Machine Instance
[cmdb_ci_vmware_instance]

Registered on::Has
registered

ESX Server [cmdb_ci_esx_server]

VMware Virtual
Machine Instance
[cmdb_ci_vmware_instance]

Connected
by::Connects

VMware vCenter Network
[cmdb_ci_vcenter_network]

Virtual Machine Template
[cmdb_ci_vmware_template]

Connected
by::Connects

VMware vCenter Network
[cmdb_ci_vcenter_network]

VMware vCenter Network
[cmdb_ci_vcenter_network]

Provided by::Provides

ESX Server [cmdb_ci_esx_server]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Provides storage
for::Stored on

VMware Virtual Machine Instance
[cmdb_ci_vmware_instance]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Used by::Uses

ESX Server [cmdb_ci_esx_server]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Provides storage
for::Stored on

Virtual Machine Template
[cmdb_ci_vmware_template]

VMware vCenter Cluster
[cmdb_ci_vcenter_cluster]

Members::Member of

ESX Server [cmdb_ci_esx_server]

ESX Resource Pool
Defines resources
[cmdb_ci_esx_resource_pool] for::Get resources from

VMware vCenter Cluster
[cmdb_ci_vcenter_cluster]

ESX Resource Pool
Defines resources
[cmdb_ci_esx_resource_pool] for::Get resources from

ESX Server [cmdb_ci_esx_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2608


<!-- page 2609 -->
Parent class

Relationship type

Child class

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

Contains::Contained by

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

Contains::Contained by

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

Contains::Contained by

Virtual Machine Template
[cmdb_ci_vmware_template]

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

Contains::Contained by

VMware Virtual Machine Instance
[cmdb_ci_vmware_instance]

VMware vCenter datacenters Contains::Contained by
[cmdb_ci_vcenter_datacenter]

VMware vCenter Network
[cmdb_ci_vcenter_network]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

VMware Virtual Machine Instance
[cmdb_ci_vmware_instance]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

ESX Server [cmdb_ci_esx_server]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

VMware vCenter Folder
[cmdb_ci_vcenter_folder]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

VMware vCenter Cluster
[cmdb_ci_vcenter_cluster]

VMware vCenter Datacenter
Contains::Contained by
[cmdb_ci_vcenter_datacenter]

Virtual Machine Template
[cmdb_ci_vmware_template]

Cloud Management relationships
These additional relationships are created when Cloud Management (CMP) is active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2609


<!-- page 2610 -->
Parent class

Relationship type

Child class

ESX Server
[cmdb_ci_esx_server]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

vCenter Folder
[cmdb_ci_vcenter folder]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

vCenter Datacenter
Hosted on::Hosts
[cmdb_ci_vcenter_datacenter]

Cloud Service Account
[cmdb_ci_cloud_service_account]

vCenter Cluster
[cmdb_ci_vcenter_cluster]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Resource Pools
[cmdb_ci_esx_resource_pool]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

VM Instance
[cmdb_ci_vmware_instance]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

VM Template
[cmdb_ci_vmware_template]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

vCenter Network
[cmdb_ci_vcenter_network]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2610


<!-- page 2611 -->
Parent class

Relationship type

Child class

Distributed Virtual Switch
[cmdb_ci_vcenter_dvs]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Distributed Virtual Port Group Hosted on::Hosts
[cmdb_ci_vcenter_dv_port_group]

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Datastore
[cmdb_ci_vcenter_datastore]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Virtual Disk
[cmdb_ci_storage_volume]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

Virtual NIC
[cmdb_ci_vmware_nic]

Hosted on::Hosts

vCenter Datacenter
[cmdb_ci_vcenter_datacenter]

VM Template
[cmdb_ci_vmware_template]

Use End Point To::Use End
Point From

Block Endpoint
[cmdb_ci_endpoint_block]

VM Instance
cmdb_ci_vmware_instance

Use End Point To::Use End
Point From

Block Endpoint
[cmdb_ci_endpoint_block]

Virtual Disk
[cmdb_ci_storage_volume]

Implement End Point
To::Implement End Point From

Block Endpoint
[cmdb_ci_endpoint_block]

Virtual NIC
[cmdb_ci_vmware_nic]

Implement End Point
To::Implement End Point From

NIC Endpoint
[cmdb_ci_endpoint_nic]

VM Template
[cmdb_ci_vmware_template]

Use End Point To::Use End
Point From

NIC Endpoint
[cmdb_ci_endpoint_nic]

VM Instance
[cmdb_ci_vmware_instance]

Use End Point To::Use End
Point From

NIC Endpoint
[cmdb_ci_endpoint_nic]

VMware tags
You can attach tags to vSphere objects, such as virtual machines, through the vSphere interface.
The tags can then be grouped into categories. Objects with tags are sortable and searchable
based on the parameters that you give the tags and categories. The VMWare — vCenter VM Tags
probe discovers these tags. You can view the discovered tags by opening the virtual machine
record in cmdb_ci_vmware_instance. Then go to the Key Values tab.
Key Values [cmdb_key_value]
Field label and Name

Description

Configuration item [configuration_item]

Referenced VM with tag attached in vCenter.

Key [key]

Category name of the tag applied to the
resource in vCenter.

Tag [tag]

Source in vCenter from which tags are fetched.
In this case, the value is Tags.

Value [value]

Tag name that's applied to the resource in
vCenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2611


<!-- page 2612 -->
Datastore data collected by Discovery
Discovery identifies each datastore in the system and creates the relationships with the virtual
machines and the ESX servers that use these datastores. Discovery uses the VMWare - vCenter
Datastores probe to collect this data.

Field label and
Name

Table Name

Description

Accessible
[accessible]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Whether the datastore is collected or
not

Capacity (GB)
[capacity]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Amount of space provided by the
datastore.

Clustered
[clustered]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

When the datastore is clustered
(belongs to a storage pod).

Free space (GB)
[freespace]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

Amount of space still available on the
datastore.

Type [type]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

The type of file system volume, such
as WFS or NFS.

URL [url]

VMware vCenter Datastore
[cmdb_ci_vcenter_datastore]

The unique URL locator for the
datastore.

HostMounts
Discovery uses both the VMWare - vCenter ESX Hosts and VMWare - vCenter Datastores probes
to collect datastore host mount data.

Field label and Column

Table

Description

Accessible
[accessible]

VMware Datastore
Whether the ESXi host can access the
HostMount
datastore.
[vcenter_datastore_hostmount]

Access Mode
[access_mode]

VMware Datastore
The mode in which the ESXi host accesses the
HostMount
datastore.
[vcenter_datastore_hostmount]

VMware vCenter
Datastore [datastore]

VMware Datastore
The datastore mounted on this ESXi host.
HostMount
[vcenter_datastore_hostmount]

ESX Server
[esx_server]

VMware Datastore
The ESXi host that the datastore is mounted
HostMount
on.
[vcenter_datastore_hostmount]

vCenter Reference
[vcenter_ref]

VMware Datastore
The vCenter instance that manages this
HostMount
mount.
[vcenter_datastore_hostmount]

Datastore Discovery
A datastore is a collection of one or more physical disks, such as an iSCSI disk, and can be
used by more than one ESXi host. However, a physical disk can only connect to one datastore.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2612


<!-- page 2613 -->
Because ESXi hosts can share datastores, it's easy to move virtual machines between hosts that
have a common datastore.

Note: From the perspective of a virtual machine attached to a datastore, storage is
provided by a single disk.
The advantages to connecting a datastore to multiple disks are:
• The ability to mirror the disks for failover protection.
• The ease of adding storage to the datastore.
For information about the tables used by Discovery to store data for physical disks and their
relationship to datastores and ESXi hosts, see, ESXi server discovery.
In this example configuration, two ESXi hosts share a common datastore that uses different types
of storage.
Datastore Discovery with different storage types

Relationships
ServiceNow provides tables that contain the relationships between an ESXi host and its
datastore and the specific disks to which the datastore is connected.
ServiceNow Discovery establishes the relationships between a datastore, the disks attached
to the datastore, and the ESXi server that hosts the virtual machines using that datastore. From
the perspective of the ESXi host, iSCSI and fibre channel disks connected to the datastore are
treated as physical disks. Discovery doesn’t show the direct relationship of the storage disks to
the ESXi host.

Note: Storage can be hosted on computers that aren’t discovered by Discovery. ESXi
hosts are discovered through vCenter, and storage is discovered separately through CIM.
The system can only establish the relationship between the two when storage is discovered
before ESXi.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2613


<!-- page 2614 -->
Datastore tables
Table

Description

cmdb_ci_vcenter_datastore_disk Stores the relationship of the physical disk to the datastore.
vcenter_datastore_hostmount

Stores the relationship between the datastore and the ESXi
server to which it’s connected.

cmdb_ci_disk

Contains the physical disks connected directly to the
datastore. This table also contains a reference to the ESXi
host.

cmdb_ci_fc_disk

Contains the fibre channel disks in a storage area network
(SAN) connected to the datastore. This table also contains a
reference to the ESXi host.

cmdb_ci_iscsi_disk

Contains the iSCSI disks in an IP network connected to the
datastore. This table also contains a reference to the ESXi
host.

VM Instance state and status fields
These tables represent the state and status of the cmdb_ci_vm_instance in various flows such as
vCenter Discovery and vCenter Events and the business rules which are triggered.
vCenter Discovery that change various states and status fields related to Virtual Machine
Instance
Source

Script or Event
name

Field name

VM previous state

VM new state

Installed

vCenter
Discovery

VCenterVMsSensorInstall Status

Retired

vCenter
Discovery

VCenterDatacentersSensor
Install Status

Installed

Retired

State

Terminated

Operational
Status

Non-operational

vCenter Events that change various states and status fields related to Virtual Machine
Instance
Source

vCenter events

Script or Event
name

Field name

VM previous state

VM new state

VCenterVmStateUpdater
Installed status

Installed

Installed

powerOnEvtsToUseState
=
[ 'VmPoweredOffEvent',
'VmPowerOffOnIsolationEvent',
'VmShutdownOnIsolationEvent',
'VmSuspendedEvent' ],

Any

ON

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2614


<!-- page 2615 -->
vCenter Events that change various states and status fields related to Virtual Machine
Instance (continued)
Source

vCenter events

vCenter events

vCenter events

Script or Event
name

Field name

VM previous state

powerOffEvtsToUse
Installed status
Installed
=
[ 'VmPoweredOnEvent',
State
Any
'DrsVmPoweredOnEvent',
'VmRestartedOnAlternateHostEvent',
'VmSuspendedEvent' ],
suspendEvtsToUse
Installed status
Installed
=
[ 'VmPoweredOnEvent',
State
Any
'DrsVmPoweredOnEvent',
'VmRestartedOnAlternateHostEvent',
'VmPoweredOffEvent',
'VmPowerOffOnIsolationEvent' ]
VmRemovedEvent

VM new state

Installed
OFF

Installed
Paused

Installed status

Installed

Retired

State

Any

Terminated

Business rules that change various states and status fields related to Virtual Machine
Instance and related Server
Business rule

Field name

Plugin name

Cascade operational status to
VM Instance

Operational status

Pattern designer

Sync ops status for CMDB CI

Operational status

CMDB

Hardware status
Install status

ESXi server discovery
Discovery identifies and classifies information about ESXi servers and ESXi resource pools
through the discovery of vCenter and not from the direct discovery of any ESXi servers.

Important: ESXi server discovery is done through vCenter. Don’t specify the IP address
of the ESXi server in a Discovery Schedule. Instead, discover the vCenter through the
Discovery Schedule.

Required Roles
Users with the itil and asset roles can access ESXii and ESXi configuration item (CI) records.
To run discovery on vCenter servers, users must have the discovery_admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2615


<!-- page 2616 -->
Credentials
To run a complete Discovery of vCenter/ESXi servers, you need vCenter credentials. If the vmapp
port probe is turned off, you must use Windows credentials to access the Windows host on
which the vCenter server runs.

Note: Make sure to select a credential Type of VMware.
ESXi server Discovery Components
Discovery identifies ESXi servers based on the correlation ID (BIOS UUID), when the hardware
manufacturer is on a certified inclusion list. So if the manufacturer is in the compatible
manufacturers list, the correlation-id must be unique. If the manufacturer isn’t on the certified
inclusion list, we check for the Managed Object Reference ID (MORID) and Serial Number as
well. After running the vCenter classifier, Discovery launches the VMware - vCenter datacenters
probe, which launches the probes that explore the ESXi server. For the complete list of vCenter
probes, see List of Discovery probes.

Component and
Name

Description

Classifier
[vCenter]

Classifies standalone vCenter servers.

Probe [VMWare
- vCenter ESX
Hosts]

Creates records for ESXi servers and host mounts. Creates relationships
between ESXi servers and vCenter components. Triggers probes for
storage Discovery.

Probe [VMWare
- vCenter ESX
Hosts Storage]

Creates records for ESXi host hardware: network adapters, disks, HBAs, FC
ports, iSCSI, and FC disks. Creates relationships between DAS/iSCSI/FC
disks and datastore disks.

Data collected
Basic server data from ESXi hosts is collected by the VMware - vCenter ESX Hosts probe.
Data collected by Discovery on ESXi hosts
Field label and Name

Table Name

Description

Operating System [os]

cmdb_ci_esx_server

The OS version running on
the ESXi host.

OS Version [os_version]

cmdb_ci_computer

Detailed OS build or release
information.

Name [name]

cmdb_ci_esx_server

Hostname of the ESXi server.

DNS domain [dns_domain] cmdb_ci_esx_server

Domain associated with the
ESXi host.

Manufacturer
[manufacturer]

cmdb_ci_computer

Hardware vendor of the ESXi
host.

Serial number
[serial_number]

cmdb_ci_computer

Physical server hardware
serial number.

CPU type [cpu_type]

cmdb_ci_esx_server

The CPU model used by the
ESXi host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2616


<!-- page 2617 -->
Data collected by Discovery on ESXi hosts (continued)
Field label and Name

Table Name

Description

CPU speed (MHz)
[cpu_speed]

cmdb_ci_esx_server

Clock speed of the
processors.

CPU count [cpu_count]

cmdb_ci_esx_server

Number of physical CPUs.

CPU core count
[cpu_core_count]

cmdb_ci_computer

Total number of cores across
all CPUs.

CPU manufacturer
[cpu_manufacturer]

cmdb_ci_esx_server

Vendor of the CPU hardware.

Model ID [model_id]

cmdb_ci_computer

Hardware model identifier.

RAM (MB) [ram]

cmdb_ci_esx_server

Total physical memory
installed.

Disk space (GB)
[disk_space]

cmdb_ci_esx_server

Total disk capacity available.

Type [type]

cmdb_ci_disk

Type of disk.

Model ID [model_id]

cmdb_ci_disk

Hardware identifier for the
disk.

Disk space (GB)
[disk_space]

cmdb_ci_disk

Disk capacity of the individual
disk.

Name [name]

cmdb_ci_disk

Disk name as detected by
ESXi.

Name [name]

cmdb_ci_network_adapter

Network adapter name.

IP address [ip_address]

cmdb_ci_network_adapter

IP assigned to the NIC.

MAC address
[mac_address]

cmdb_ci_network_adapter

Hardware address of the NIC.

Netmask [netmask]

cmdb_ci_network_adapter

Subnet mask of the NIC.

Managed object reference Visualization Server
ID [morid]
[cmdb_ci_virtualization_server]

Managed Object Reference
ID.

Serial Number
[serial_number]

Serial number record for
CMDB correlation.

Serial Number
[cmdb_serial_number]

Relationships
Discovery collects the following relationship data for ESXi servers.

Base Class

Relationship

Dependent Class

ESXi Resource Pool
[cmdb_ci_esx_resource_pool]

Defines resources for:Gets
resources from

ESXi Server
[cmdb_ci_esx_server]

VM Instance
[cmdb_ci_vmware_instance]

Registered on:Has
registered

ESXi Server
[cmdb_ci_esx_server]

ESXi Server
[cmdb_ci_esx_server]

Provides storage for:Stored
on

VM Template
[cmdb_ci_vmware_template]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2617


<!-- page 2618 -->
Base Class

Relationship

Dependent Class

ESXi Server
[cmdb_ci_esx_server]

Provided by:Provides

Networks
[cmdb_ci_vcenter_network]

ESXi Server
[cmdb_ci_esx_server]

Members of:Members

Cluster
[cmdb_ci_vcenter_cluster]

ESXi Server
[cmdb_ci_esx_server]

Contains:Contained by

Datacenter
[cmdb_ci_vcenter_datacenter]

ESXi resource pools
Resource pools are configured in vCenter and define the maximum amount of resources that
virtual machines using that pool can consume. If the ESXi server has additional resources to
spare, an ESXi server property enables resource pools to expand. The Name and Owner fields of
each resource pool on the ESXi server must be configured within the ServiceNow AI Platform
in the ESXi Resource Pool [cmdb_ci_esx_resource_pool] table. When Orchestration for VMware
executes its manual provisioning tasks, the provisioner must select the proper resource pool for
the virtual server requested. Discovery finds resource pools on ESXi machines and populates the
fields on the ESXi Resource Pool form automatically. For more information, see Configure ESXi
resource pools.
ESXi resource pools require the Orchestration - VMware Support plugin.

Note: Confirm that vCenter and the ESXi server have been fully configured, including the
creation of the templates and resource pools.
Data collected
Field label and Name

Table

Source

Description

CPU expandable
[cpu_expendable]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Whether the resource
pool can exceed CPU
allocation limits.

CPU limit (MHz)
[cpu_limit_mhz]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Maximum CPU
allocation.

CPU reserved (MHz)
[cpu_reserved_mhz]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

CPU guaranteed to the
pool.

CPU shares
[cpu_shares]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

CPU priority weight.

Full path [fullpath]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

vCenter folder path.

Memory expandable
[mem_expandable]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter

Whether memory can
exceed the configured
maximum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2618


<!-- page 2619 -->
Data collected (continued)
Field label and Name

Table

Source

Description

Clusters
probe
Memory limit (MB)
[mem_limit_mb]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Maximum memory.

Memory
reserved (MB)
[mem_reserved_mb]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Memory guaranteed to
the pool.

Memory shares
[mem_shares]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Memory scheduling
weight.

Owner [owner]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

Host or VM owning the
pool.

Owner Managed
Object Reference ID
[owner_morid]

ESXi Resource Pool
VMWare
[cmdb_ci_esx_resource_pool] - vCenter
Clusters
probe

VMware reference ID of
the owner.

Standalone ESXi discovery
Standalone ESXi discovery supports discovery of individual ESXi servers that host virtual
machines (VMs) and related components without a vCenter. Various CIs and relationships are
discovered as part of a discovery schedule.
Required roles:
Users with the itil and asset roles can access ESXi configuration item (CI) records. To run a
standalone ESXi discovery, users must have the discovery_admin role.

VMware credentials
To run a standalone ESXi discovery, you need VMware credentials. Create the credentials by
navigating to Discovery > Credentials > VMware Credentials.
If you use a domain account to access the ESXi host, specify the domain with the user name in
the credential record in one of the supported formats, such as Domain\UserName.

Note: The VMware credentials must have a read-only role in the ESXi host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2619


<!-- page 2620 -->
Requirements
• Make sure the Discovery (com.snc.discovery) plugin is installed and activated and that you
have upgraded to Zurich or later.
• Activate the ESXi trigger probe. Navigate to the Trigger Probe [trigger_probe_m2m] table. The
esxi record is inactive by default. Mark Active as true to enable Standalone ESXi discovery.
• Create a new Discovery schedule for the host with the appropriate IP address of the ESXi host.

Note: If both SSH and ESXi are triggered, SSH is launched first and may cause Discovery
to complete with the message "ESX Discovery is only supported through the vCenter." In
this case, open the UNIX - Classify probe and set ESX - OS inactive.

ESXi server Discovery Components
Discovery identifies ESXi servers based on the correlation ID (BIOS UUID), when the hardware
manufacturer is on a certified inclusion list. If the manufacturer is on the list, the correlation ID
must be unique. If the manufacturer isn’t on the certified inclusion list, the Managed Object
Reference ID (MORID) and Serial Number are checked as well.
After Shazzam runs, it checks for the port probe esxi. Discovery then launches the VMWare Standalone ESXi Server probe, which then launches the probes that explore the ESXi server.
Other existing Discovery probes are also launched. For the complete list of probes, see List of
Discovery probes.
ESXi server Discovery Components
Component and Name

Description

IP Service [ESXi]

IP Service ESXi - VMWare VM console is
defined for the Port 902.

Port Probe [esxi]

ESXi Server Appliance web user interface. It’s
triggered by the IP Service ESXi and it triggers
the probe VMWare - Standalone ESXi Server.

Probe [VMWare - Standalone ESXi Server]

Probe to get information about an ESXi server.

Probe [VMWare - vCenter ESX Hosts]

Creates records for ESXi servers and host
mounts. Triggers other probes.
• VMware - vCenter ESX Hosts Storage
• VMware - vCenter Datastores
• VMware - vCenter Networks
• VMware -vCenter VMs

Probe [VMWare - vCenter ESX Hosts Storage]

Creates records for ESXi host hardware:
network adapters, disks, HBAs, FC ports,
iSCSI, and FC disks. Creates relationships
between DAS/iSCSI/FC disks and datastore
disks.

Basic server data from ESXi hosts is collected by the VMware - vCenter ESX Hosts probe.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2620


<!-- page 2621 -->
ESXi Standalone server data
Discovery uses multiple existing probes to collect this data from ESXi. The data is saved in
various tables. Some of the CIs, which have the "server" field have a reference to ESXi Host (for
example, cmdb_ci_esx_server).
VMware Virtual Machine Instance [cmdb_ci_vmware_instance]
Field label and Name

Description

Name [name]

VM name.

Memory (MB) [memory]

RAM assigned.

CPUs [cpus]

Number of vCPUs.

Disks [disks]

Number of VM disks.

Network adapters [nics]

Count of NICs.

Object ID [object_id]

Unique object ID.

Server [server]

ESXi host running the VM.

State [state]

Power state.

Correlation ID [correlation_id]

Unique VM identifier for correlation.

VM Instance UUID [vm_instance_uuid]

ESXi VM ID.

Status [install_status]

CMDB install status.

VMware vCenter Datastore [cmdb_ci_vcenter_datastore]
Field label and Name

Description

Name [name]

Datastore name.

Capacity (GB) [capacity]

Total storage size.

Free space (GB) [freespace]

Available storage.

Accessible [accessible]

Whether the datastore is reachable.

Type [type]

Filesystem type.

Object ID [object_id]

Unique datastore ID.

Server [server]

ESXi host providing the datastore.

URL [url]

Datastore path.

Status [install_status]

CMDB install status.

VMware vCenter Network [cmdb_ci_vcenter_network]
Field label and Name

Description

Name [name]

Network name.

Object ID [object_id]

Unique network ID.

Server [server]

ESXi host providing network connectivity.

Status [install_status]

CMDB install status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2621


<!-- page 2622 -->
VMware Network Adapter [cmdb_ci_vmware_nic]
Field label and Name

Description

Name [name]

NIC name.

MAC Address [mac_address]

NIC hardware address.

IP Address [ip_address]

Assigned IP.

Netmask [netmask]

Subnet mask.

Configuration Item [cmdb_ci]

CI that owns this NIC.

Object ID [object_id]

Unique NIC ID.

Mac manufacturer [mac_manufacturer]

Vendor of the NIC.

DHCP Enabled [dhcp_enabled]

Whether DHCP is active.

Status [install_status]

CMDB install status.

VMware Datastore HostMount [vcenter_datastore_hostmount]
Field label and Name

Description

VMware vCenter Datastore [datastore]

Mounted datastore.

ESX Server [esx_server]

Host using the datastore.

Accessible [accessible]

Whether the datastore is accessible.

Access Mode [access_mode]

Read/write permissions.

Datastore Disk [cmdb_ci_vcenter_datastore_disk]
Field label and Name

Description

Name [name]

Disk name.

Manufacturer [manufacturer]

Disk vendor.

Location [location]

Disk physical/virtual location.

Description [short_description]

Short description.

Class [sys_class_name]

CMDB class.

Updated [sys_updated_on]

Timestamp of last update.

Maintenance schedule
[maintenance_schedule]

Maintenance timing.

Correlation ID [correlation_id]

Identifier linking disk to datastore.

Datastore [datastore]

Associated datastore.

Status [install_status]

CMDB status.

ESX Resource Pool [cmdb_ci_esx_resource_pool]
Field label and Name

Description

Name [name]

Resource pool name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2622


<!-- page 2623 -->
ESX Resource Pool [cmdb_ci_esx_resource_pool] (continued)
Field label and Name

Description

CPU reserved (MHz) [cpu_reserved_mhz]

Guaranteed CPU.

CPU limit (MHz) [cpu_limit_mhz]

Maximum CPU.

CPU shares [cpu_shares]

CPU priority.

Memory reserved (MB) [mem_reserved_mb]

Guaranteed memory.

Memory limit (MB) [mem_limit_mb]

Maximum memory.

Memory shares [mem_shares]

Memory weight.

Object ID [object_id]

Unique pool ID.

Server [server]

ESXi host.

Managed object reference ID [morid]

Managed Object Reference ID.

Status [install_status]

CMDB install status.

ESX Server [cmdb_ci_esx_server]
Field label and Name

Description

Name [name]

ESXi hostname.

Manufacturer [manufacturer]

Vendor name.

Model ID [model_id]

Server hardware model.

Operating System [os]

OS version.

OS Version [os_version]

Detailed OS version.

Description [short_description]

Summary information.

Class [sys_class_name]

CMDB class.

Status [install_status]

CMDB status.

Network Adapter [cmdb_ci_network_adapter]
Field label and Name

Description

Name [name]

NIC name.

Mac Address [mac_address]

NIC hardware address.

Netmask [netmask]

Subnet mask.

Configuration Item [cmdb_ci]

The CI owning this adapter.

Mac manufacturer [mac_manufacturer]

NIC vendor.

DHCP Enabled [dhcp_enabled]

Whether DHCP is used.

Status [install_status]

CMDB install status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2623


<!-- page 2624 -->
Disk [cmdb_ci_disk]
Field label and Name

Description

Name [name]

Disk name.

Computer [computer]

System owning the disk.

Size [size]

Disk capacity.

Manufacturer [manufacturer]

Disk vendor.

Model ID [model_id]

Model identifier.

Status [install_status]

CMDB install status.

Storage HBA [cmdb_ci_storage_hba]
Field label and Name

Description

Name [name]

HBA name.

Model ID [model_id]

HBA model number.

Computer [computer]

ESXi host.

WWNN [wwnn]

Worldwide Node Name.

Status [install_status]

CMDB install status.

Fibre Channel Port [cmdb_ci_fc_port]
Field label and Name

Description

Name [name]

Port name.

WWNN [wwnn]

Node Name.

WWPN [wwpn]

Port Name.

Speed [speed]

Link speed.

Controller [controller]

HBA controller.

Computer [computer]

Host system.

Status [install_status]

CMDB status.

iSCSI Disk [cmdb_ci_iscsi_disk]
Field label and Name

Description

Name [name]

Disk name.

Computer [computer]

Host accessing the disk.

Size [size]

Disk size.

Provided by [provided_by]

Storage system provider.

IQN [iqn]

iSCSI Qualified Name.

Device LUN [device_lun]

Logical Unit Number.

Storage type [storage_type]

Storage type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2624


<!-- page 2625 -->
iSCSI Disk [cmdb_ci_iscsi_disk] (continued)
Field label and Name

Description

Status [install_status]

CMDB status.

Fibre Channel Disk [cmdb_ci_fc_disk]
Field label and Name

Description

Name [name]

Disk name.

Computer [computer]

Host using this disk.

Size [size]

Disk capacity.

Provided by [provided_by]

Storage array.

Device LUN [device_lun]

LUN identifier.

WWN [wwn]

Worldwide Name.

Status [install_status]

CMDB install status.

IP Address [cmdb_ci_ip_address]
Field label and Name

Description

IP Address [ip_address]

Assigned network address.

IP version [ip_version]

IPv4 or IPv6.

Netmask [netmask]

Subnet mask.

Nic [nic]

NIC owning the IP.

Status [install_status]

CMDB status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2625


<!-- page 2626 -->
Relationships
Standalone ESXi discovery relationships

Resource pools
Standalone ESXi discovery also fetches the resource pools on the host including the root
resource pool. This root resource pool is hidden for every ESXi host. The root resource pool may
not be visible in the VSphere web client for the ESXi host, but you can view it using the mob
browser.
Navigate to this URL: <domain name/or ip_address>/mob/?moid=ha-root-pool
The root resource pool groups the resources of that host. Other child resource pools can also
be created from the root resource pool. The root is identified in the ESXi host with the Managed
Object ID: ha-root-pool.

Forward migration
If you were using standalone ESXi discovery and now the same ESXi is part of vCenter, you can
use vCenter discovery instead. Create a vCenter discovery schedule and trigger it. Triggering a
vCenter discovery creates duplicate CIs in the following tables as the identifiers for the CIs are
different when ESXi is standalone or part of vCenter:
• VMware VCenter Network [cmdb_ci_vcenter_network]
• ESX Resource Pool [cmdb_ci_esx_resource_pool]
• VMware VCenter Datastore [cmdb_ci_vcenter_datastore]
• Datastore Disk [cmdb_ci_vcenter_datastore_disk]
To avoid duplicates, you must mark the CIs created by standalone ESXi discovery in the above
four tables as retired. When vCenter discovery is triggered, the vCenterESXHostsSensor script
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2626


<!-- page 2627 -->
include checks for all the ESXi servers whether they were previously discovered as standalone
ESXi server. If yes, it automatically triggers the ESXMigrationUtil script to mark all the previously
discovered duplicate CIs as retired.

Note: If you want to trigger migration manually, you can do so by executing the following
script from the background script: // @params esx_sys_ids – array of sys ids of all the ESXi
servers that must be migrated.
ESXMigrationUtil.
retireCIsForESXForwardMigration(esx_sys_ids)
Once an ESXi server is migrated to vCenter, triggering a standalone ESXi discovery schedule on
the same ESXi host results in an error. Discovery is aborted with an error message that “This ESXi
is part of vCenter <IP_address of Vcenter> discovery schedule. Aborting discovery”.
Operating systems discovery
Discovery identifies the following computers, clusters, and virtual machines.
AIX server discovery
Discovery identifies and classifies information about AIX servers.

Credentials
Configure SSH credentials

.

For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.
Use OpenSSH version 7.5.102 and above for AIX machines since lower versions of OpenSSH can
impact the discovered devices that are encountered with Discovery.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifier, probes, and pattern
Classifier

AIX (UNIX Classification)

Probes

• Horizontal discovery probe:
launches patterns

Pattern

AIX server

• AIX - Installed Software^
• AIX - ADM^
• AIX - Identity*
• AIX - CPU*
• AIX - Hardware Model*
• AIX - Memory*
• AIX - OS Patches*
• AIX - OS Release*
• AIX - OS Revision*
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2627


<!-- page 2628 -->
Classifier

Probes

Pattern

• UNIX - Find FQDN
• UNIX - OS Filesystems
• UNIX - OS Uptime

*These probes aren't active on the classifier, as Discovery uses patterns by default for these
discoveries.
^These probes remain active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table Name

Field Name

Source

Operating System

cmdb_ci_computer

os

uname

OS version

cmdb_ci_computer

os_version

oslevel

OS service pack

cmdb_ci_computer

os_service_pack

oslevel

Short description

cmdb_ci_aix_server

short_description

uname

Name

cmdb_ci_aix_server

name

DNS, NBT

Hostname

cmdb_ci_aix_server

host_name

DNS, NBT

DNS domain

cmdb_ci_aix_server

dns_domain

DNS

Start date

cmdb_ci_aix_server

start_date

uptime

CPU type

cmdb_ci_computer

cpu_type

lsdev, lsattr

CPU speed (MHz)

cmdb_ci_computer

cpu_speed

lsdev, lsattr

CPU count

cmdb_ci_computer

cpu_count

lsdev, lsattr

Manufacturer

cmdb_ci_aix_server

manufacturer

lsattr

Model ID

cmdb_ci_aix_server

model_id

lsattr

RAM (MB)

cmdb_ci_computer

ram

lsdev, lsattr

Name

cmdb_ci_file_system

name

df

Capacity (MB)

cmdb_ci_file_system

capacity

df

Available Space (MB)

cmdb_ci_file_system

available_space

df

Mount point

cmdb_ci_file_system

mount_point

df

Name

cmdb_ci_patches

name

instfix

Name

cmdb_running_process

name

ps

Command

cmdb_running_process

command

ps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2628


<!-- page 2629 -->
Label

Table Name

Field Name

Source

Connects to

cmdb_running_process

connects_to

lsof

Listening on

cmdb_running_process

listening_on

lsof

Type

cmdb_running_process

type

ps

PID

cmdb_running_process

pid

ps

Parameters

cmdb_running_process

parameters

ps

Name

cmdb_ci_network_adapter

name

ifconfig, netstat

IP address

cmdb_ci_network_adapter

ip_address

ifconfig, netstat

MAC address

cmdb_ci_network_adapter

mac_address

ifconfig, netstat

Netmask

cmdb_ci_network_adapter

netmask

ifconfig, netstat

Apache HBase instance discovery
Discovery creates or updates a CMDB record when it detects a running instance of HBase on a
UNIX server.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.
In the following table, the HBase Instance@hostname source may contain the information
on whether the instance is a primary or a secondary instance. The name contains Hmaster
if the instance is a primary instance. The name contains HRegionServer if the name is a
secondary instance.
Data collected
Label

Table Name

Field Name

Source

Name

cmdb_ci_db_hbase_instance name

HBase
Instance@hostname

Root Directory

cmdb_ci_db_hbase_instance root_dir

hbase-site.xml

TCP port

cmdb_ci_db_hbase_instance tcp_port

running process

Site XML

cmdb_ci_db_hbase_instance site_xml

hbase-site.xml

Version

cmdb_ci_db_hbase_instance version

HBase shell

HBase Home

cmdb_ci_db_hbase_instance hbase_home running process

ZooKeeper
Quorum

cmdb_ci_db_hbase_instance zookeeper

hbase-site.xml

HP-UX discovery
Discovery identifies and classifies information about HP-UX computers.

Credentials
Configure SSH credentials

.

For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2629


<!-- page 2630 -->
Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifier, probes, and pattern
Classifier

HP-UX
(Unix classifier)

Probes

Pattern

• Horizontal discovery probe:
launches patterns

HP-UX Server

• HP-UX - Installed Software^
• HP-UX - ADM^
• HP-UX - OS Patches*
• HP-UX - CPU Speed*
• HP-UX - Total Memory*
• HP-UX - Hardware Model*
• HP-UX - CPU Info*
• HP-UX - Identity*
• UNIX - Find FQDN*
• UNIX - OS Filesystems*
• UNIX - OS Uptime*

*These probes aren't active on the classifier, as Discovery uses patterns by default for these
discoveries.
^These probes remain active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table Name

Field Name

Source

Operating System

cmdb_ci_hpux_server

os

uname

Short description

cmdb_ci_hpux_server

short_description

uname

Name

cmdb_ci_hpux_server

name

DNS, NBT

Hostname

cmdb_ci_hpux_server

host_name

DNS, NBT

DNS domain

cmdb_ci_hpux_server

dns_domain

DNS

Start date

cmdb_ci_hpux_server

start_date

uptime

Manufacturer

cmdb_ci_computer

manufacturer

dmidecode

Serial number

cmdb_ci_hpux_server

serial_number

uname

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2630


<!-- page 2631 -->
Label

Table Name

Field Name

Source

CPU type

cmdb_ci_hpux_server

cpu_type

cpuinfo

CPU speed (MHz)

cmdb_ci_hpux_server

cpu_speed

adb

CPU count

cmdb_ci_hpux_server

cpu_count

cpuinfo

Model ID

cmdb_ci_hpux_server

model_id

model

RAM (MB)

cmdb_ci_hpux_server

ram

adb

Name

cmdb_ci_file_system

name

df

Capacity (MB)

cmdb_ci_file_system

capacity

df

Available Space (MB)

cmdb_ci_file_system

available_space

df

Mount point

cmdb_ci_file_system

mount_point

df

Name

cmdb_ci_patches

name

swlist

Name

cmdb_running_process

name

ps

Command

cmdb_running_process

command

ps

Type

cmdb_running_process

type

ps

PID

cmdb_running_process

pid

ps

Parameters

cmdb_running_process

parameters

ps

Name

cmdb_ci_network_adapter

name

hifconfig

IP address

cmdb_ci_network_adapter

ip_address

hifconfig

MAC address

cmdb_ci_network_adapter

mac_address

hifconfig

Netmask

cmdb_ci_network_adapter

netmask

hifconfig

Hyper-V discovery
The ServiceNow Discovery application finds Microsoft Hyper-V hypervisors in your environment.
Hyper-V is a hypervisor developed by Microsoft that enables you to create and manage virtual
machines (VMs) on a physical server or computer. It enables hardware virtualization, enabling
multiple virtual machines to run on a single physical machine while sharing the underlying
hardware resources, such as CPU, memory, storage, and networking.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.
Hyper-V supports the following functionality:
• Failover clustering: Failover is managed with Failover Cluster Manager.
• Live migration: Virtual machines can be moved between failover cluster nodes without bringing
down the virtual machine.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Supported versions
Discovery is supported for Hyper-V running on the following Windows Server versions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2631


<!-- page 2632 -->
• 2008
• 2012
• 2012 R2
• 2016
• 2019
• 2022
• 2025

Important: Discovery of Hyper-V running on Windows starting from version 2016
supports pattern discovery only. If you upgraded and are still using probes and sensors for
discovery, see KB0694773
for instructions on configuring Hyper-V probes.

Hyper-V data models
There are 2 types of Hyper-V:
• Hyper-V on Windows Server: This model, installed as a server role on Windows Servers, is
designed for enterprises needing both virtualization and other server roles (for example: file
servers, Active Directory, web servers) on the same machine.
• Hyper-V Server (Standalone): A free, lightweight version of Windows Server specifically
designed for virtualization. It includes only the Hyper-V hypervisor and no graphical user
interface (GUI) or additional server roles.
Discovery supports identifying and mapping both types of Hyper-V environments. However, the
CMDB data models differ between the two deployment types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2632


<!-- page 2633 -->
Example of Windows Server with Hyper-V role vs. Hyper-V Server (VM shown
with Windows OS)

Comparison between Windows Server with Hyper-V role and Hyper-V Server
Key aspects

Hyper-V Server CI

Windows Server with Hyper-V role

• Name of the CI includes the
@Hyper-V Server suffix. For
example: hyperv1@Hyper-V
Server.

Hyper-V Server

Name of the CI is the Hyper-V
Server.

• The Windows Host field
references the parent Windows
Servers table, which represents
the physical host of the HyperV Server.
Hyper-V Cluster has
Members::Member of
relationship with Hyper-V
Server

Yes

Yes

The Hyper-V Server table:

The Hyper-V Server table:

• Has Is virtual field set to true

• Has Is virtual field set to
false

• Doesn't have software
installation
Hyper-V Server has Runs
on::Runs relationship with
Windows Server

Yes

• Doesn't have software
installation
No

The Windows Server table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2633


<!-- page 2634 -->
Comparison between Windows Server with Hyper-V role and Hyper-V Server (continued)
Key aspects

Windows Server with Hyper-V role

Hyper-V Server

• Represents the physical host
• Has Is virtual field set to false
• Has Windows Server software
installation
Operating system (OS)
installed on the VM has
Virtualized by::Virtualizes
relationship with Hyper-V
Server

Yes

Yes

The OS table (for example:
Windows Server/Linux Server):

The OS table (for example:
Windows Server/Linux
Server):

• Represents the individual
virtual machines (VMs)
• Has Is virtual field set to true
• Has OS software installation,
such as Windows or Linux
Server
• Has other software installations
deployed on the VM

• Has Is virtual field set to
true
• Has OS software
installation, such as
Windows or Linux Server
• Has other software
installations deployed on
the VM

OS installed on the VM has Yes
Instantiates::Instantiated
by relationship with HyperV Virtual Machine Instance

Yes

CPU cores count

The parent Windows Servers
table reflects the physical
cores, while the Hyper-V
Server table displays the
virtual cores

Is identical between the physical
Windows Server host and the
Hyper-V Server

Credentials
Configure Windows credentials
with Domain administrator rights. You should also Enable
PowerShell for the MID Server used to discover Hyper-V servers and instances.

Classifier, probes, and pattern
Classifier

Hyper-V Server
The classification applies to
standalone Hyper-V servers
only (servers NOT running on
Windows 2008).

Probes

• Horizontal discovery probe:
Launches patterns

Pattern

Hyper-V Server

• Windows - ADM^
• Windows - Installed
Software^
• Hyper-V - Cluster*
• Hyper-V - Resource Pools*
• Hyper-V - Virtual Machines*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2634


<!-- page 2635 -->
Classifier

Probes

Pattern

• Hyper-V - Virtual Networks*
• Several other Windows
probes also run, such
as Windows - Identity,
Windows - software, and so
on.*

*These probes aren't active on the classifier, as Discovery uses patterns by default for these
discoveries.
^These probes remain active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected by Discovery during horizontal discovery
Virtual instances
Label

Field Name

Data Description

Stored in Table

Object ID ^

object_id

ID

cmdb_ci_hyper_v_instance

Name^

name

name

cmdb_ci_hyper_v_instance

State

state

• On

cmdb_ci_hyper_v_instance
*

• Off
CPUs

cpus

Count

cmdb_ci_hyper_v_instance
*

Memory

memory

Quantity in MB

cmdb_ci_hyper_v_instance
*

Network adapters

nics

Count

cmdb_ci_hyper_v_instance
*

Disks

disks

Count+

cmdb_ci_hyper_v_instance
*

Disks size

disks_size

Capacity in GB+

cmdb_ci_hyper_v_instance
*

Virtual Base Board
Serial Number

baseboard_serial Virtual serial
number

cmdb_ci_hyper_v_instance

BIOS Serial
Number

bios_serial

Virtual serial
number

cmdb_ci_hyper_v_instance

Chassis Serial
Number

chassis_serial

Virtual serial
number

cmdb_ci_hyper_v_instance

BIOS GUID

bios_guid

Globally unique
identifier (GUID)

cmdb_ci_hyper_v_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2635


<!-- page 2636 -->
*Attributes that are put in the cmdb_ci_hyper_v_instance table when using the HyperV Server pattern. For upgrades, probes and sensors continue to put these attributes in the
cmdb_ci_vm_instance table.
^Newly discovered attribute when using the Hyper-V Server pattern.
+Discovery can only return this information if the virtual machine is running.
Virtual servers
Label

Field

Store in table

Name

name

cmdb_ci_hyper_v_server

Chassis type

chassis_type

cmdb_ci_hyper_v_server

Description

short_description

cmdb_ci_hyper_v_server

OS Address Width (bits)

os_address_width

cmdb_ci_hyper_v_server

Operating System

OS

cmdb_ci_hyper_v_server

Host name

hostname

cmdb_ci_hyper_v_server

IP Address

ip_address

cmdb_ci_hyper_v_server

OS Version

os_version

cmdb_ci_hyper_v_server

OS Service Pack

os_service_pack

cmdb_ci_hyper_v_server

Is virtual

virtual

cmdb_ci_hyper_v_server

Virtual networks
Label

Field Name

Data Description

Stored in Table

Name name

Name of the virtual network

cmdb_ci_hyper_v_network *

ID

Globally unique identifier (GUID)

cmdb_ci_hyper_v_network *

object_id

*Attributes that are put in the cmdb_ci_hyper_v_network table when using the HyperV Server pattern. For upgrades, probes and sensors continue to put these attributes in the
cmdb_ci table (name) and the cmdb_ci_vm_object table (object_id).
Resource pools
Label

Field Name

Data Description

Stored in Table

Name^

name

Name of the resource cmdb_ci_hyper_v_resource_pool
pool.

ID

object_id

Globally unique
identifier (GUID)

cmdb_ci_hyper_v_rpool_comp

Capacity

capacity

Maximum amount
of the appropriate
allocation unit

cmdb_ci_hyper_v_rpool_comp

Allocation allocation_units Units of measurement cmdb_ci_hyper_v_rpool_comp
units
used (for example,
MB or GB)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2636


<!-- page 2637 -->
Resource pools (continued)
Label

Field Name

Resource resource_type
type

Data Description

Stored in Table

Type of resource
discovered (for
example, memory, or
hard drive space)

cmdb_ci_hyper_v_rpool_comp

Clusters
Label

Field Data
Name Description

Windows name Reference
Cluster
field
displaying
the
Windows
Cluster
on which
the HyperV cluster
resides.

Stored in Table

Reference Table

cmdb_ci_hyper_v_cluster cmdb_ci_win_cluster

Relationships
Discovery creates records in the CMDB for the host machine, the parent partition running
Windows Server 2008, and all the virtual machines running on the Hyper-V server. Discovery
finds the stored templates and maps all the relationships between components.
The instance modifies these tables for use with multiple virtualization products:

Table

Purpose

Virtualization Server
[cmdb_ci_virtualization_server]

Contains data on all discovered virtualization
servers.

Virtual Machine Instance
[cmdb_ci_vm_instance]

Contains data on all discovered virtual
machine instances.

Virtual Machine Object [cmdb_ci_vm_object]

Contains data about various objects
associated with a Hyper-V server, such as
partitions, networks, resource pools, and
clusters.

Parent table

Relationship

Child table

Hyper-V Virtual
Machine Instance
[cmdb_ci_hyper_v_instance]

Registered on::Has registered

Hyper-V Server
[cmdb_ci_hyper_v_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2637


<!-- page 2638 -->
Parent table

Relationship

Child table

Hyper-V Virtual
Machine Instance
[cmdb_ci_hyper_v_instance]

Connected by ::Connects

Hyper-V Network
[cmdb_ci_hyper_v_network]

Hyper-V Network
[cmdb_ci_hyper_v_network]

Provided::Provides

Hyper-V Server
[cmdb_ci_hyper_v_server]

Hyper-V Resource Pool
Defines resources for:Gets
[cmdb_ci_hyper_v_resource_pool]
resources from

Hyper-V Server
[cmdb_ci_hyper_v_server]

Hyper-V Resource
Contained by::Contains
Pool Components
[cmdb_ci_hyper_v_rpool_comp]

Hyper-V Resource Pool
[cmdb_ci_hyper_v_resource_pool]

Hyper-V Cluster
[cmdb_ci_hyper_v_cluster]

Members::Member of

Hyper-V Server
[cmdb_ci_hyper_v_server]

Hyper-V Server
[cmdb_ci_hyper_v_server]

Runs on::Runs

Windows Servers
[cmdb_ci_win_server]

Windows Servers
[cmdb_ci_win_server]

Instantiates::Instantiated by

Hyper-V Virtual
Machine Instance
[cmdb_ci_hyper_v_instance]

Windows Servers
[cmdb_ci_win_server]

Virtualized by::Virtualizes

Hyper-V Server
[cmdb_ci_hyper_v_server]

Clone Hyper-V virtual machines
When importing (cloning) Hyper-V virtual machines, make sure each virtual machine has a
unique ID. Discovery identifies virtual machines with duplicate IDs as the same machine.
1. Export the virtual machine from the Hyper-V server.
2. Import the virtual machine into a different server, making one of the these choices:
◦ Move or restore the virtual machine: This selection clones the image, using the same ID, and
moves it to another server. The original image remains on the Hyper-V server.
◦ Copy the virtual machine: This selection copies the virtual machine, using a different ID, and
moves it from the Hyper-V server. This is the best selection and does not require any further
action before you run Discovery.
3. If you import the Hyper-V clone using the Move or restore selection, be sure to delete the
original image from the Hyper-V server.
When Discovery encounters two virtual machines with the same equivalent serial numbers, it
creates only one configuration item (CI).
Red Hat JBoss server discovery
Discovery can detect JBoss application servers running on Linux and Windows systems.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Requirements
For JBoss application servers running on Linux systems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2638


<!-- page 2639 -->
• Set probe permissions to use these Bourne shell commands: find, cat, and dirname.
• Enable SSH on the JBoss application server. The SSH credential must also have read
permissions on the web.xml and jboss-service.xml files.
For JBoss application servers running on Windows systems, enable PowerShell on the MID
Server.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Credentials
• Applicative credentials
• Windows credentials
• SSH credentials
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifiers, patterns, and probes
Classifier

JBoss Server

Trigger probes

Patterns

• Horizontal Pattern: launches
patterns

JBoss pattern

• Windows - JBoss Find web.xml
List*
• Windows - JBoss Get jbossservice.xml*
• JBoss - Find web.xml List*
• JBoss - Get jboss-service.xml*

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected
Discovery populates the following fields in the JBoss [cmdb_ci_app_server_jboss] table:

Label

Field name

Name

name

Category

category

Version

version

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2639


<!-- page 2640 -->
Label

Field name

TCP port(s)

tcp_port

Discovery populates the following fields on the Web Service [cmdb_ci_web_service] and Web
Application [cmdb_ci_web_application] servers tables:

Label

Table name

Field name

Source

Name

cmdb_ci_web_service

name

jboss-service.xml

App server

cmdb_ci_web_service

app_server

Internal reference

Description

cmdb_ci_web_application

short_description

web.xml

Name

cmdb_ci_web_application

name

web.xml

Document base

cmdb_ci_web_application

document_base

web.xml

App server

cmdb_ci_web_application

app_server

web.xml

Servlet Name*

cmdb_ci_web_application

servlet_name

web.xml

Servlet Class*

cmdb_ci_web_application

servlet_class

web.xml

*Windows servers only

Relationships
Relationships created
Parent class

Relationship

Child class

cmdb_ci_web_service

Runs on::Runs

cmdb_ci_windows_server

cmdb_ci_app_server_jboss

Contains::Contained by

cmdb_ci_web_application

cmdb_ci_app_server_jboss

Runs:Runs on

cmdb_ci_web_application

cmdb_ci_app_server_jboss

Runs:Runs on

cmdb_ci_web_service

Legacy: JBoss probes and sensors
Discovery identifies a Linux JBoss application server using probes and sensors.

Linux
This process describes the use of probes, which are active on your instance if you upgrade. For
new instances, Discovery uses the JBoss pattern.
1. The UNIX - Active Processes probe detects a running process that matches an
org.jboss.main entry point parameter.
2. If there’s a match, a record is created in the JBoss Application Server
[cmdb_ci_app_server_jboss] table. The following probes are also triggered:
◦ JBoss - Find web.xml list: The sensor of this probe populates information in the Web
Application [cmdb_ci_web_application] table if applicable.
◦ JBoss - Get jboss-service.xml: The sensor of this probe populates information in the Web
Service [cmdb_ci_web_service] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2640


<!-- page 2641 -->
3. The JBoss - Find web.xml list probe searches for the web.xml files of JBoss application
server. The probe uses the classpath parameter in the running process, and then searches
in the related server\default\deploy directory for the JBoss installation.
4. If associated web applications reside in the server\default\deploy directory, the
JBoss - Get web.xml probe triggers for each application. This probe reads the web.xml file
for each web application and the sensor populates additional information to the Web Service
[cmdb_ci_web_service] table.
5. The Boss - Get jboss-service.xml probe uses the classpath parameter in the running
process to search for the jboss-service.xml file in the related server\default
\conf\ directory for the JBoss installation.
6. If the probe successfully finds the jboss-service.xml file in the server\default
\conf\ directory, the sensor reads the contents of the XML file. It then creates additional
records in the Web Service [cmdb_ci_web_service] table as necessary.

Windows
This process describes the use of probes, which are active on your instance if you upgrade. For
new instances, Discovery uses the JBoss pattern.
1. The Windows - Active Processes probe detects a running process that matches an
org.jboss.main entry point parameter.
2. If there’s a match, a record is created in the JBoss Application Server
[cmdb_ci_app_server_jboss] table. The following probes are also triggered:
◦ JBoss - Find web.xml list: The sensor of this probe populates information in the Web
Application [cmdb_ci_web_application] table if applicable.
◦ JBoss - Get jboss-service.xml: The sensor of this probe populates information in the Web
Service [cmdb_ci_web_service] table.
3. The JBoss - Find web.xml list probe searches for the web.xml files of JBoss application
server. The probe uses the classpath parameter in the running process, and then searches
in the related server\default\deploy directory for the JBoss installation.
4. If associated web applications reside in the server\default\deploy directory, the
JBoss - Get web.xml probe triggers for each application. This probe reads the web.xml file
for each web application and the sensor populates additional information to the Web Service
[cmdb_ci_web_service] table.
5. The Boss - Get jboss-service.xml probe uses the classpath parameter in the running
process to search for the jboss-service.xml file in the related server\default
\conf\ directory for the JBoss installation.
6. If the probe successfully finds the jboss-service.xml file in the server\default
\conf\ directory, the sensor reads the contents of the XML file. It then creates additional
records in the Web Service [cmdb_ci_web_service] table as necessary.
Linux discovery
Discovery and Service Mapping applications use probes and patterns to discover and map
information about Linux computers and servers. The information is populated in the CMDB.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Supportability details
The Linux server pattern can discover only English-based Linux.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2641


<!-- page 2642 -->
Supported Linux operating systems
For IPv4 discovery:
• Red Hat
• Oracle
• Fedora
• Debian
• SUSE
• CentOS
• Ubuntu
For IPv6 discovery:
• CentOS 7
• Ubuntu 20
The following operating systems or devices haven’t been verified for IPv6 discovery:
• Red Hat cluster
• Oracle Clusterware
• Linux Pacemaker cluster
• Network storage

Classifier, probes, and pattern
Classifier

Linux
(Unix classification)

Probes

• Horizontal discovery probe:
Launches patterns

Pattern

Linux Server

• Linux - Installed Software^
• Unix - ADM^
• Linux - Identity*
• Linux - CPU*
• Linux - Distribution*
• Linux - Find FQDN*
• Linux - Memory*
• Linux - Memory Modules*
• Linux - Network ARP Tables*
• Linux - Storage*
• Linux - Amazon EC2*
• Unix - OS Uptime*
• UNIX - OS Filesystems*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2642


<!-- page 2643 -->
Classifier

Probes

Pattern

• UNIX - Find FQDN*
• Unix - ADM Enhanced*

*These probes aren't active on the classifier, as Discovery uses patterns by default for these
discoveries.
^These probes remain active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Requirements for Linux discovery
Before running a discovery, you must verify that all the required configurations are complete.
Verify the plugins installation and activation
• Plugins or applications installed with ITOM Visibility
• Install Discovery and Service Mapping Patterns
• Install Visibility Content
Verify the required credentials configuration
Configure the credentials by the required SSH permissions. Discovering sensitive
Linux data may require a user with appropriate sudo privileges to run the sudu
commands. For more information about the commands that require a user with
elevated rights, refer to the following documents.
• Commands that require root privileges for Discovery, Orchestration, and
Integration Hub .
• For a list of privileged commands that you need for Discovery and Service
Mapping, see Service Mapping commands requiring a privileged user. This list
includes commands that require elevated rights to discover and map Unix-based
hosts in your organization.
• View Patterns commands through the Discovery Patterns module
• Validate commands used in pattern-based discovery
SSH private key credentials are preferable over SSH password credentials for
security reasons.
Verify the MID Server configuration
For detailed information, see:
• Test MID Server connectivity
• MID Server properties
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2643


<!-- page 2644 -->
Verify the configuration of the discovery schedule
For information on creating a discovery schedule, see Schedule a horizontal
discovery.
Defining IP ranges ensures that only the specified network adapters and their
primary IP addresses are used during Linux discovery. You can configure Quick
Ranges by entering comma-separated IPv4 address ranges or single IPv6 address.
Alternatively, you can use the network_adapter_exclusion_list property
to limit Linux discovery to specific network adapters and their primary IP addresses.
For more information, see Omit network adapter secondary IP addresses in Linux
discovery.

Data collected
The Linux classifier triggers probes that perform the discovery. Several probes are launched
during the discovery. See the classifier for a list of the trigger probes.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table Name

Field Name

Source

Operating
System

cmdb_ci_linux_server

os

uname -a

OS Version

cmdb_ci_computer

os_version

uname -a or cat /etc/
*release

Short
description

cmdb_ci_linux_server

short_description

uname -a

Name

cmdb_ci_linux_server

name

DNS, NBT

Hostname

cmdb_ci_linux_server

host_name

DNS, NBT

DNS domain

cmdb_ci_linux_server

dns_domain

DNS

Start date

cmdb_ci_linux_server

start_date

uptime

Manufacturer

cmdb_ci_computer

manufacturer

dmidecode

Serial number

cmdb_ci_computer

serial_number

dmidecode

CPU type

cmdb_ci_linux_server

cpu_type

/proc/cpuinfo

CPU speed
(MHz)

cmdb_ci_linux_server

cpu_speed

/proc/cpuinfo

CPU count

cmdb_ci_linux_server

cpu_count

/proc/cpuinfo

CPU core count

cmdb_ci_computer

cpu_core_count

/proc/cpuinfo

CPU core thread cmdb_ci_computer

cpu_core_thread

/proc/cpuinfo

CPU
manufacturer

cmdb_ci_linux_server

cpu_manufacturer /proc/cpuinfo

Model number

cmdb_ci_computer

model_number

dmidecode

Model ID

cmdb_ci_computer

model_id

dmidecode

RAM (MB)

cmdb_ci_linux_server

ram

meminfo

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2644


<!-- page 2645 -->
Label

Table Name

Field Name

Source

Disk space (GB)* cmdb_ci_linux_server

disk_space

/proc/ide, /proc/scsi, /var/
log/dmesg

Type

cmdb_ci_disk

type

/proc/ide, /proc/scsi, /var/
log/dmesg

Model ID

cmdb_ci_disk

model_id

/proc/ide, /proc/scsi, /var/
log/dmesg

Disk space (GB)

cmdb_ci_disk

disk_space

/proc/ide, /proc/scsi, /var/
log/dmesg

Name

cmdb_ci_disk

name

/proc/ide, /proc/scsi, /var/
log/dmesg

Name

cmdb_ci_file_system

name

df

Capacity (MB)

cmdb_ci_file_system

capacity

df

Free Space
Bytes (MB)

cmdb_ci_file_system

free_space_bytes

df

Mount point

cmdb_ci_file_system

mount_point

df

Name

cmdb_running_process

name

ps

Command

cmdb_running_process

command

ps

Type

cmdb_running_process

type

ps

PID

cmdb_running_process

pid

ps

Parameters

cmdb_running_process

parameters

ps

Name

cmdb_ci_network_adapter name

ifconfig or ip address show

IP address

cmdb_ci_network_adapter ip_address

ifconfig or ip address show

MAC address

cmdb_ci_network_adapter mac_address

ifconfig or ip address show

Netmask

cmdb_ci_network_adapter netmask

ifconfig or ip address show

Default gateway

cmdb_ci_hardware

route

default_gateway

* The value in the disk_space field is an aggregation of the total capacity (to include used space)
for all non-removable disks, including both directly attached and SAN storage.

Note: Make sure to define unique serial numbers for the RAMs on the Linux server.
Discovery also identifies and classifies information about Linux KVM. Discovery identifies Linux
kernel-based virtual machines (KVM) when the process classifier detects libvirtd running
on a Linux server. The classification triggers the creation of a cmdb_ci_kvm record and launches
the SSH Command probes to explore the Linux server with virsh, lbvert utility, and virtual
machine configuration data.
Discovery creates a [cmdb_ci_kvm_instance] record for each virtual machine on the server,
and then matches the [cmdb_ci_kvm_instance] record to a corresponding [cmdb_ci_computer]
record using the MAC addresses of installed network adapters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2645


<!-- page 2646 -->
Tables used by Discovery on Linux KVM
Table name

Extends

Description

Source

cmdb_ci_kvm

cmdb_ci_vm

A hypervisor
Process classifier
that manages
detects libvirtd running
kernel-based
on Linux servers
virtual machines
(KVMs)

cmdb_ci_kvm_vm_instance cmdb_ci_vm_instance A virtual
machine
instance on this
hypervisor

virsh list-all and
dumpxml command

cmdb_ci_kvm_object

cmdb_ci_vm_object

An object
connected to a
virtual machine
instance

<network>, <storage
pool>, and <storage
volume> elements
from the dumpxml
command

cmdb_kvm_device

Not applicable

A device
connected to a
virtual machine
instance

<devices> element
from the dumpxml
command

Data collected by Discovery on Linux KVM
Label

Table name

Field name

Source

Linux Host

cmdb_ci_kvm

linux_host

Reference to the
cmdb_ci_linux_server that is
running this virtual machine

Details

cmdb_ci_kvm

details_xml

dumpxml

Object ID

cmdb_ci_kvm_vm_instance object_id

virsh dumpxml

State

cmdb_ci_kvm_vm_instance state

virsh list-all

CPUs

cmdb_ci_kvm_vm_instance cpus

virsh dumpxml

Memory

cmdb_ci_kvm_vm_instance memory

virsh dumpxml

Disks

cmdb_ci_kvm_vm_instance disks

virsh dumpxml

Disks size

cmdb_ci_kvm_vm_instance disks_size

virsh domblkinfo

Network
adapters

cmdb_ci_kvm_vm_instance nics

virsh dumpxml

Name

cmdb_ci_kvm_vm_instance name

virsh dumpxml

Short
cmdb_ci_kvm_vm_instance short_description virsh desc
description
Details

cmdb_ci_kvm_object

details_xml

XML element from dumpxml

KVM
instance

cmdb_kvm_device

kvm_instance

Reference to
cmdb_ci_kvm_instance

Device

cmdb_kvm_device

device

disk, controller, interface, and so
on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2646


<!-- page 2647 -->
Data collected by Discovery on Linux KVM (continued)
Label

Table name

Field name

Source

Type

cmdb_kvm_device

type

depends on the device

Details

cmdb_kvm_device

details_xml

XML element from dumpxml

Data collected by Discovery on KVM Relationship
Relationship

Parent table

Child table

Registered On::Has
Registered

KVM [cmdb_ci_kvm]

KVM Virtual Machine instance
[cmdb_ci_kvm_vm_instance]

Provided By::Provides

KVM [cmdb_ci_kvm]

Network [cmdb_ci_kvm_network]

Defines resource
for::Gets resources
from

KVM [cmdb_ci_kvm]

Storage Pool
[cmdb_ci_kvm_storage_pool]

Connected
By::Connects

KVM Virtual Machine instance
[cmdb_ci_kvm_vm_instance]

Network [cmdb_ci_kvm_network]

Instantiated
By::Instantiates

KVM Virtual Machine instance
[cmdb_ci_kvm_vm_instance]

Computer [cmdb_ci_computer]

Virtualized
By::Virtualizes

Computer [cmdb_ci_computer]

KVM [cmdb_ci_kvm]

Provides storage
for::Stored on

Storage Pool
[cmdb_ci_kvm_storage_pool]

KVM Virtual Machine instance
[cmdb_ci_kvm_vm_instance]

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 2648 -->
Required credentials
Configure SSH credentials

.

Additional requirements
You also need permissions to read the /etc/hosts/ and /etc/cluster/cluster.conf
file, which associates host names with IP addresses.
The following commands are run for Oracle clusterware:

Command

ps -ef | grep corosync | grep -v grep
clustat -x
ifconfig | grep 'inet addr:' |awk '{print $1, $2 }'
hostname -s
hostname -s
Sudo permission to run: sudo /u01/app/12.1.0.2/grid/bin/ocrcheck | egrep
-v 'error|return code'

Classifier, probes, and pattern
Classifier

Probes

Linux

Horizontal discovery probe:
launches patterns

(Unix classification)

Pattern

These patterns are an
extension of the Linux Server
pattern:
• UNIX Cluster - Linux Red hat
cluster
• Linux - Red Hat Cluster
The pattern uses the
clustat -x command
and looks at this cluster
configuration file: /etc/
cluster/cluster.conf

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2648


<!-- page 2649 -->
Data collected
Table

Labels and field names

Unix Cluster [cmdb_ci_unix_cluster]

Name [name]
Cluster status [cluster_status]
Cluster type [cluster_type]
IP address [ip_address]
Cluster ID [cluster_id]
Cluster version [cluster_version]

Unix Cluster Node [cmdb_ci_unix_cluster_node]

Name [name]
Node state [node_state]
IP address [ip_address]
Node status [node_status]

Unix Cluster Resource [cmdb_ci_unix_cluster_resource]

Name [name]
Resource type [resource_type]
Resource status [resource_status]
Properties [properties]

Cluster Virtual IP [cmdb_ci_cluster_vip]

Name [name]
IP address [ip_address]
Cluster ID [cluster_id]

Relationships
CI

Relationship

CI

Unix Cluster
[cmdb_ci_unix_cluster]

Virtualizes::Virtualized by

Cluster Virtual IP
[cmdb_ci_cluster_vip]

Unix Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster Virtual IP
[cmdb_ci_cluster_vip]

Uses::Used by

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster of::Cluster

Unix Cluster
[cmdb_ci_unix_cluster]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Hosted on:Hosts

Unix Cluster
[cmdb_ci_unix_cluster]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2649


<!-- page 2650 -->
CI

Relationship

Unix Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from
Unix Cluster
[cmdb_ci_unix_cluster]
Unix Cluster Node
[cmdb_ci_unix_cluster_node]

CI

Unix Cluster
[cmdb_ci_unix_cluster]

Hosts::Hosted on

Linux Server
[cmdb_ci_linux_server]

Hosted on::Hosts

Linux Server
[cmdb_ci_linux_server]

Omit network adapter secondary IP addresses in Linux discovery
Limit Linux discovery to specific network adapters and their primary IP addresses to improve
performance by ignoring secondary IP addresses.

About this task
Configuring the network_adapter_exclusion_list system property ensures that only
specified network adapters and their primary IP addresses are used during Linux discovery.
Secondary IP addresses that are not named are automatically omitted.

Before you begin

Role required: admin

Procedure
1. In the navigation filter, enter sys_properties.list.
2. In the Name field, search for network_adapter_exclusion_list.
3. Select the network_adapter_exclusion_list property.
4. In the Value field, enter the network adapter associated with the NIC IP address to exclude it
from deletion.
The network adapter must be entered in one of the formats listed in the following table.

Format

Description

Single name

Single adapter name. For example: bond0.

Regular expression
matching multiple adapter
names

Regular expression that matches multiple adapter names
ending with one or more digits. For example: bond\d+.

Multiple adapter names

Multiple adapter names, separated by commas, including
regular expression. For example: nic1,bond\d+.

5. Select Update.

Result

When the predefined schedule triggers the Linux server discovery or a scheduled horizontal
discovery runs, only the specific network adapters and their primary IP addresses are included in
the discovery process.
For more information, see Schedule a horizontal discovery.
Related topics
Linux discovery
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2650


<!-- page 2651 -->
Netware discovery
Discovery identifies and classifies information about Netware.

Data collected

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table name

Field name

Source

Name

cmdb_ci_netware_server

name

snmp

Serial number

cmdb_ci_netware_server

serial_number

snmp

OS Version

cmdb_ci_netware_server

os_version

snmp

RAM

cmdb_ci_netware_server

ram

snmp

CPU count

cmdb_ci_netware_server

cpu_count

snmp

Mac (OS/X) discovery
Discovery identifies and classifies information about Mac (OS/X) computers.

Credentials
Configure SSH credentials

.

For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table Name

Field Name

Source

Operating System

cmdb_ci_computer

os

uname

OS Version

cmdb_ci_computer

os_version

system_profiler

OS Service pack

cmdb_ci_computer

os_service_pack

system_profiler

Short description

cmdb_ci_computer

short_description

uname

Name

cmdb_ci_computer

name

DNS, NBT

Hostname

cmdb_ci_computer

host_name

DNS, NBT

DNS domain

cmdb_ci_computer

dns_domain

DNS

Start date

cmdb_ci_computer

start_date

uptime

Manufacturer

cmdb_ci_computer

manufacturer

Assumed to be
Apple

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2651


<!-- page 2652 -->
Label

Table Name

Field Name

Source

Serial number

cmdb_ci_computer

serial_number

system_profiler

CPU type

cmdb_ci_computer

cpu_type

system_profiler

CPU speed (MHz)

cmdb_ci_computer

cpu_speed

system_profiler

CPU count

cmdb_ci_computer

cpu_count

system_profiler

Model ID

cmdb_ci_computer

model_id

system_profiler

RAM (MB)

cmdb_ci_computer

ram

system_profiler

Disk space (GB)

cmdb_ci_computer

disk_space

system_profiler

Volume name

cmdb_ci_disk

volume_name

system_profiler

Volume serial
number

cmdb_ci_disk

volume_serial_number system_profiler

Disk space (GB)

cmdb_ci_disk

disk_space

system_profiler

Name

cmdb_ci_disk

name

system_profiler

Device ID

cmdb_ci_disk

device_id

system_profiler

Free space (GB)

cmdb_ci_disk

free_space

system_profiler

File system

cmdb_ci_disk

file_system

system_profiler

Name

cmdb_running_process

name

ps

Command

cmdb_running_process

command

ps

Connects to

cmdb_running_process

connects_to

lsof

Listening on

cmdb_running_process

listening_on

lsof

PID

cmdb_running_process

pid

ps

Parameters

cmdb_running_process

parameters

ps

Name

cmdb_ci_network_adapter name

system_profiler

IP address

cmdb_ci_network_adapter ip_address

system_profiler

MAC address

cmdb_ci_network_adapter mac_address

system_profiler

Netmask

cmdb_ci_network_adapter netmask

system_profiler

MAC manufacturer

cmdb_ci_network_adapter mac_mfr

Assumed to be
Apple

DHCP enabled

cmdb_ci_network_adapter dhcp_enabled

system_profiler

Solaris discovery
Discovery identifies and classifies information about Solaris computers.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Supported operating systems
• Oracle Solaris 10
• Oracle Solaris 11
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2652


<!-- page 2653 -->
Prerequisites
Discovery stores data in the [cmdb_running_process] table with truncated command line
parameters up to 80 characters. This can cause multiple applications to be merged into one CI.
To get the full command line and prevent this issue, run pargs -a and parse the result.
For Discovery to use patterns to find Solaris computers, you must install SNEEP
Discovery cannot find the serial number.

. Otherwise,

If using Solaris zones, each zone should be configured to return a unique value for the serial
number. Otherwise, each zone will return the same number causing issues with CI identification.

Note: Solaris discovery only supports local zones installed on the same host as the global
zone. If the local zone is installed on a different host from the global zone, the zoneadm
list -cip command won't retrieve the UUID for the local zone.
Solaris - ADM probe requires installing the LSOF command.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Credentials
Configure SSH credentials

for the systems you want to discover.

For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifier, probes, and pattern
Classifier

Solaris
(UNIX Classification)

Probes

• Horizontal discovery probe:
launches patterns

Pattern

Solaris Server

• Solaris - Installed Software^
• Solaris - Identity*
• Solaris - CPU*
• Solaris - Hardware Model*
• Solaris - Memory*
• Solaris - Network ARP
Tables*
• Solaris - OS Patches*
• Solaris - Storage*
• Solaris - Zones*
• Solaris - Disks*
• DNS*

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2653


<!-- page 2654 -->
^This probe remains active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected
Label

Table name

Field name

Source

Operating System

cmdb_ci_computer

os

uname

Short description

cmdb_ci_solaris_server

short_description

uname

Name

cmdb_ci_solaris_server

name

DNS, NBT

Hostname

cmdb_ci_solaris_server

host_name

DNS, NBT

DNS domain

cmdb_ci_solaris_server

dns_domain

DNS

Start date

cmdb_ci_solaris_server

start_date

uptime

CPU type

cmdb_ci_computer

cpu_type

kstat

CPU speed (MHz)

cmdb_ci_computer

cpu_speed

kstat

CPU count

cmdb_ci_computer

cpu_count

kstat

CPU core count

cmdb_ci_computer

cpu_core_count

kstat

CPU core thread

cmdb_ci_computer

cpu_core_thread

kstat

Model number

cmdb_ci_solaris_server

model_number

suntype

Model ID

cmdb_ci_solaris_server

model_id

suntype

RAM (MB)

cmdb_ci_computer

ram

prtconf

Disk space (GB)

cmdb_ci_solaris_server

disk_space

iostat

Serial Number

cmdb_ci_solaris_server

serial_number

sneep *

Manufacturer

cmdb_ci_disk

manufacturer

iostat

Model ID

cmdb_ci_disk

model_id

iostat

Volume serial number

cmdb_ci_disk

volume_serial_number

iostat

Disk space (GB)

cmdb_ci_disk

disk_space

iostat

Name

cmdb_ci_disk

name

iostat

Name

cmdb_ci_file_system

name

df

Capacity (MB)

cmdb_ci_file_system

capacity

df

Available Space (MB)

cmdb_ci_file_system

available_space

df

Mount point

cmdb_ci_file_system

mount_point

df

Name

cmdb_ci_patches

name

showrev

Name

cmdb_running_process

name

ps

Command

cmdb_running_process

command

ps

Connects to

cmdb_running_process

connects_to

lsof

Listening on

cmdb_running_process

listening_on

lsof

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2654


<!-- page 2655 -->
Label

Table name

Field name

Source

Type

cmdb_running_process

type

ps

PID

cmdb_running_process

pid

ps

Parameters

cmdb_running_process

parameters

ps

Name

cmdb_ci_network_adapter

name

ifconfig

IP address

cmdb_ci_network_adapter

ip_address

ifconfig

MAC address

cmdb_ci_network_adapter

mac_address

ifconfig

Netmask

cmdb_ci_network_adapter

netmask

ifconfig

Default gateway

cmdb_ci_hardware

default_gateway

netstat

* To discover Fujitsu PRIMEPOWER devices, you must install Oracle SNEEP and run Solaris
discovery with root credentials.

Solaris zone discovery
Discovery maps the relationships between global and local Solaris zones upon detection.
In the following example, a Solaris global zone contains two local zones: zone01 and zone02.
Each local zone is represented by a physical Solaris CI record and a Virtual Machine Instance
record. Each of the local zones is tied to a Zone Server, demonstrating how virtualization relates
to the global zone (mmp1).
Solaris zone relationship map

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2655


<!-- page 2656 -->
The TCP connection and process information for local zone servers must be collected by running
commands on their parent global zone. The relationship path between the local and global zone
physical machines must be established before TCP connection and process information for local
zone servers can be collected.
Case 1: Global zone discovered first.
• The system creates the Solaris server CI for the global zone.
• Discovery detects the local zones, creates a hypervisor zone server record, and creates a
virtual machine instance record for each Solaris device in the local zone.
• Discovery creates the relationship between the hypervisor record and the VM instance record.
Case 2: Local zone discovered first.
• The system creates the Solaris server CI for the local zone.
• Discovery sets the correlation ID, so that it can be reconciled during later global zone
discoveries.
Case 3: Global zone discovered after creation of local zone Solaris server CIs.
• Global zone Discovery detects local zones.
• Discovery creates a hypervisor zone server record, and creates a virtual machine instance
record for each Solaris device in the local zone.
• Discovery creates the relationship between the hypervisor record and the VM instance record.
In addition, it creates the relationship between the physical local zone VM and its virtual
machine instance record.
• The global zone runs the Solaris - ADM probe on itself, filtering by the local zone, and updates
the physical local zone VMs with this data.
Case 4: The relationship path between physical local and global zone machines is established.
Subsequent discoveries of the global zone refresh the TCP connection and process information
for the contained local zones.
When the system discovers a global zone, the Solaris - Zones & ADM Launcher probe triggers
the Solaris - ADM probe to explore the global zone and each local zone found. Because the
Solaris - ADM probe must run on the global zone to detect TCP connection and process
information from its local zones, you might see multiple ECC queue records that appear identical.
ECC queue entries for a zone Discovery

Upon examining the payload, however, you will see that each probe is actually targeting a
different zone CI to filter on and update.
Local zone payload

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2656


<!-- page 2657 -->
Data collected on Solaris zones
Label

Table Name

Field Name

Source

Version

cmdb_ci_vm_zones

version

zoneadm,
zonename

Correlation
ID

cmdb_ci_vm_zones

correlation_id zoneadm,
zonename

Name

cmdb_ci_solaris_instance name

zoneadm,
zonename

Parent

cmdb_ci_solaris_instance parent

Internal

CMDB CI

cmdb_ci_solaris_instance cmdb_ci

Internal

Correlation
ID

cmdb_ci_solaris_instance correlation_id zoneadm,
zonename

Note: cmdb_ci_solaris_instance extends cmdb_ci_vm_instance.
Discovery for VMware vCenter
Discovery can explore the VMware vCenter process running on a Windows or Linux host. IPv6 is
supported for disocvery in VMware vCenter.

Note:
If a Windows or Linux server is running vCenter application, after creating the vCenter CI, a
"Runs on" relationship to the Windows or Linux server host is created.
When a vCenter application is running on a dedicated vCenter appliance, a "Runs on"
relationship to the vCenter CI isn’t created.

Tested vCenter versions
®

The ServiceNow platform supports vCenter API versions 4.0 and higher. The following versions
were tested with the Zurich release:
• vCenter versions 8.0 and earlier
• vCenter appliance version 6.7 and earlier
For installations based on the vCenter appliance, a server CI is created for the vCenter appliance
and the following fields are populated:
• NameIP
• AddressMAC
• AddressDiscovery
• Source

Note: If you're discovering SUSE Linux hosts for vCenter appliances, version 6.0 and
earlier, observe these SSH restrictions

.

See Data collected for VMware Cloud Discovery for a description of the VMware architecture and
component relationships.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2657


<!-- page 2658 -->
vCenter discovery process
After classifying vCenter, Discovery launches the VMware - vCenter Datacenters probe, which in
turn launches specific probes that return information about ESX machines, virtual machines, and
other vCenter objects. The vmapp port probe is also configured to launch the VMware - vCenter
Datacenters probe.

Note: For accurate relationship mapping between server CIs and vCenter resources (such
as ESX hosts and datastores), you should initiate discovery of the vCenter environment
before discovering Server CIs. This approach helps Discovery associate servers with their
corresponding vCenter-managed infrastructure more effectively.

VMWare credentials
To access vCenter with a domain account, specify the domain with the user name in the
credential record using a supported format, such as Domain\UserName. The VMware
credentials must have a read-only role in vCenter. For Software Asset Management (SAM)
tracking, the credentials also require the "Assign license" privilege in vCenter, also known as the
License Admin privilege.

Important: Windows credentials aren't necessary for vCenter Discovery when valid
VMware credentials

are used.

Updating the CMDB with vCenter event collector
In addition to finding vCenter data through the standard discovery process, Discovery can
also update the CMDB by detecting vCenter events through a MID Server extension called the
vCenter event collector .
The event collector allows the CMDB to be updated with changes to virtual machines (VMs),
in addition to the updates detected by Discovery. A change to a VM is sent as an event from
the vCenter server to the vCenter event collector. When an event is received, the CMDB is
updated accordingly. Full vCenter Discovery does not need to rerun. For some events, such
as powered on and powered off events, Discovery does not need to run again at all. For most
events, Discovery runs only on the necessary vCenter resource.
For instructions on configuring vCenter events, see Configure and run the vCenter event
collector extension .

VM deleted from vCenter
If the VM is deleted from vCenter, the cmdb_ci_vm_instance state changes to terminated and the
Status field changes to retired.

CIs removed from vCenter
When a vCenter CI, such as a virtual machine, is removed, the ServiceNow instance marks it as
"stale" in the CMDB, using either of these procedures:
• When Discovery runs, it creates an audit record in the Components installed with CMDB
Health
table for the missing CI and marks the CI "stale".
• If the instance is configured to collect vCenter events, the system can also create a "stale"
audit record for the CI in the CMDB Health Result [cmdb_health_result] table from the
VmRemovedEvent event, without having to run Discovery.

Note: When the Staleness setting is configured, the dependency view (BSM map) grays
out stale CIs in its relationship diagram to indicate that they were removed from vCenter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2658


<!-- page 2659 -->
To avoid stale CI health indicators from being generated during VMware discovery, set the
system property glide.cmdb.health.src.cmdb_health_audit_only to true. This
disables stale CI reporting from the VMware discovery source, enabling you to manage the CI life
cycle through other means. For more information, see CMDB Health system properties .
VMware Virtual Machine marked as "stale"

You have the option of creating a CMDB remediation rule
to automatically execute a
remediation workflow that can, for example, delete stale CIs. For more information on stale CIs,
see CMDB Health Metrics .

vCenter Discovery on Windows host
Windows credentials aren't necessary for vCenter Discovery, when valid VMware credentials are
used.
Discovery for VMware virtual machines
Discovery gathers information about virtual machines managed by VMware vCenter.
The Discovery product can extract information from VMware configuration items (CI), including
their relationships. Discovery is configured to work with the Orchestration VMware Support
Plugin, which enables the automatic cloning of virtual machines by an ESX server managed by
vCenter. For information about data collected by Discovery on vCenter, see Data collected for
VMware Cloud Discovery.
Windows discovery
Discovery identifies and classifies information about Windows computers that use IPv4
addresses, IPv6 addresses, or both.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Note: admin$ share access is required for Windows discovery from Madrid P3 and later. A
Remote Access role must be configured in the target Windows Server to allow connectivity
with ServiceNow Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2659


<!-- page 2660 -->
Supported Windows versions
For IPv4 discovery:
• Windows Workstation 7, 8, 10
• Windows Server versions:
◦ 2008
◦ 2008R2
◦ 2012R2
◦ 2016
◦ 2019
◦ 2022
◦ 2025
For IPv6 discovery:
• Windows 2019 (10.0.17763)
• Windows Server 2016
• Windows Desktop 10
• Windows 2019 Datacenter

Note: For fiber channel discovery on a Windows 2008 host, the Microsoft Fibre Channel
Information Tool (fcinfo.exe) must be installed on that machine. The fcinfo
executable should be available on the environment path. The Microsoft Fibre Channel
Information Tool tool is available for download at http://www.microsoft.com .

IPv6 supportability limitations
The following device types have not been verified for IPv6 discovery:
• Printers
• Network Storage (NFS, CIFS, NAS, FC, ISCSI)
• Azure virtual machines (IPv6 native mode is not supported by Microsoft)

PowerShell requirements
ServiceNow now supports PowerShell 3.0 up to 5.1.

Credentials
Configure Windows credentials . The user configured in the credentials must have local admin
access to the Windows machine.
The credential that you configure must have the following:
• Access to the WMI service to the current namespace and sub-namespaces.
• Access to the Powershell service.
• Membership in the Distributed COM Users local security group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2660


<!-- page 2661 -->
Classifiers, probes, and patterns
Classifiers

Probes

Patterns

• Windows

• Horizontal discovery probe:
launches patterns

• Windows OS - Server

• Windows 2008 Server

• Windows OS - Desktops

• WMIRunner-Windows Installed Software^

• Windows 2012 Server
• Windows 2016 Server
• Windows 2025 Server

• MultiProbe-Windows ADM^
• Windows - Identity*
• Windows - Network ARP
Table*
• Windows - Network NDP
Table*
• Windows - OS Information*
• Windows - Cluster*
• Windows - CPU/Memory*
• Windows - Installed
Software*
• Windows - Printers*
• Windows - Storage 2008*
• Windows - Storage 2012*
• Windows - Amazon EC2*
• Windows - Azure*
• DNS*
• SNMP - Routing*

Windows 2019 Server

N/A

Windows OS - Server

*These probes aren't active on the classifier, as Discovery uses patterns by default for these
discoveries.
^These probes remain active by default, even when Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.

Label

Table name

Field name

Source

Assigned to

cmdb_ci_win_server

assigned_to

wmi

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2661


<!-- page 2662 -->
Label

Table name

Field name

Source

Chassis type

cmdb_ci_win_server

chassis_type

wmi

Command

cmdb_running_process

command

wmi

Connects to

cmdb_running_process

connects_to

wmi

CPU core count*

cmdb_ci_computer

cpu_core_count

wmi

CPU core thread*

cmdb_ci_computer

cpu_core_thread

wmi

CPU count*

cmdb_ci_computer

cpu_count

wmi

CPU manufacturer

cmdb_ci_computer

cpu_manufacturer

wmi

CPU name

cmdb_ci_computer

cpu_name

wmi

CPU speed (MHz)

cmdb_ci_computer

cpu_speed

wmi

Default gateway

cmdb_ci_win_server

default_gateway

wmi

Description

cmdb_ci_disk

short_description

wmi

Disk space (GB)

cmdb_ci_computer

disk_space

wmi

Disk space (GB)

cmdb_ci_disk

disk_space

wmi

DHCP enabled

cmdb_ci_network_adapter

dhcp_enabled

wmi

DNS domain

cmdb_ci_win_server

dns_domain

DNS

Free space (GB)

cmdb_ci_file_system

free_space

wmi

Hostname

cmdb_ci_win_server

host_name

DNS, NBT

IP address

cmdb_ci_network_adapter

ip_address

wmi

Listening on

cmdb_running_process

listening_on

wmi

MAC address

cmdb_ci_network_adapter

mac_address

wmi

Manufacturer

cmdb_ci_win_server

manufacturer

wmi

Model ID

cmdb_ci

model_id

wmi

Name

cmdb_ci_win_server

name

DNS, NBT

Name

cmdb_ci_disk

name

wmi

Name

cmdb_running_process

name

wmi

Name

cmdb_ci_network_adapter

name

wmi

Netmask

cmdb_ci_network_adapter

netmask

wmi

Operating System

cmdb_ci_computer

os

wmi

OS domain

cmdb_ci_computer

os_domain

NBT

OS service pack

cmdb_ci_computer

os_service_pack

wmi

OS version

cmdb_ci_computer

os_version

wmi

Parameters

cmdb_running_process

parameters

wmi

PID

cmdb_running_process

pid

wmi

RAM (MB)

cmdb_ci_computer

ram

wmi

Serial number

cmdb_ci_win_server

serial_number

wmi

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2662


<!-- page 2663 -->
Label

Table name

Field name

Source

Short description

cmdb_ci_win_server

short_description

wmi

Type

cmdb_ci_disk

type

wmi

* Core counts and threads per core might not be accurate, due to issues with Microsoft reporting.
** The value in the disk_space field is an aggregation of the total capacity (to include used
space) for all non-removable disks, including both directly attached and SAN storage.

The Windows registry
Discovery can find software that has been installed on a Windows machine by looking at the
Windows Registry. Discovery can find the following attributes of discovered software:
• Product Name: Combination of name and version, such as Windows Imaging Component 3.0.
• Name: Name of the product only without the version.
• Version: Version of the product.
• Uninstall String: Path to the uninstaller, such as C:\Program Files\Notepad++
\uninstall.exe.
• Part of: Update for which this is a part, such as Windows Internet Explorer 8 - Software U.
• Install Date: Date the software was installed. The Windows - Installed Software sensor
appends a timestamp of 00:00:00 to the install_date retrieved from the registry. The
installation time of all Windows software is independent of the time zone and is set to midnight
of the day it was installed. For example, an install date of 2.19.2017 in the Windows registry
appears as 2.19.2017 00:00:00 in the CMDB.
• Installed on: Name of the asset on which the software is installed.
Related topics
Windows probes and permissions
Windows server cluster discovery
Discovery establishes the relationships between a Windows server cluster and its nodes.
When a Windows server is found, and Discovery detects that it is part of a cluster, the system
launches the Windows - Cluster probe. Navigate to Discovery Definition > Probes and open the
record for the Windows - Cluster probe to see the specific data Discovery collects.

Note: Discovery collects cluster resources based on the MSCluster_ResourceType WMI
class. To see a list of default cluster resources, see Resource Types . To understand how
cluster resources are related to process classifiers, see Relate the process classifier to
Windows cluster resources.

Cluster data tables
Discovery creates CIs for clusters in these tables:
• Windows Cluster [cmdb_ci_win_cluster]
• Windows Cluster Resource(s) [cmdb_ci_win_cluster_resource]
• Windows Cluster Node(s) [cmdb_ci_win_cluster_node]
• Cluster Node Resource(s) [cmdb_ci_cluster_node_resource]
• Cluster Virtual IP(s) [cmdb_ci_cluster_vip]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2663


<!-- page 2664 -->
Cluster relationships
Discovery creates a CI Relationship [cmdb_rel_ci] record for each node, using these
relationships:
• Cluster of::Cluster: Relationship between the cluster nodes and the cluster. Service Mapping
uses this relationship to map the Windows cluster and it's nodes.
• Members::Member of: Relationship between the cluster and the cluster node.
• Hosted on::Hosts: Relationship between the cluster nodes and the Windows server.
• Uses::Used by: Cluster VirtualIP and Windows Cluster Node.
• Defines resources for::Gets resources from: Windows Cluster Resources and Windows
Cluster.
• Defines resources for::Gets resources from: Windows Cluster Resources and Windows
Cluster Node.
Windows cluster map

Windows cluster node relationships

Cluster references
Discovery creates the following cluster references:
• From Windows Cluster Nodes to the associated Windows Cluster.
• From Windows Cluster Resources to the associated Windows Cluster.
• From Cluster Virtual IPs to the associated Windows Cluster.
• From Cluster Node Resources to the associated Windows Cluster Node.
• From Cluster Virtual IPs to the associated Windows Cluster Node.

Note: References are maintained in Discovery to provide backward compatibility for
systems that use them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2664


<!-- page 2665 -->
z/OS discovery
Discovery and Service Mapping Patterns finds computers running the z/OS operating system
using the IBM zOS Server pattern. Discovering some of these resources may require updating
to the latest version of the Discovery and Service Mapping Patterns application from the
ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

The IBM zOS Server pattern performs infrastructure-level discovery for z/OS servers. To
discover applications on z/OS, use application patterns, such as DB2 on Linux, WMQ On
Unix, or Websphere On Unix. For more information, see IBM z/OS Discovery requirements and
expectations [KB0623031]
article in the Now Support Knowledge Base.

Prerequisites
Verify that the UNIX System Services (USS) is running on port 22
Verify that the USS service is running on port 22 on z/OS.
Verify the required commands on the host machine
Verify that you can run the following commands on the host machine:
• uname
• hostname
• sysvar SYSNAME
• netstat
• df
• ls
• cat
• grep
• ps
• cut
Verify required permissions
Verify that you have the following permissions:
• Write permission to /tmp
• Read access to all user processes
• Ability to run REXX scripts
Create SSH credentials
For more information, see SSH credentials

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2665


<!-- page 2666 -->
Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the IBM zOS Server pattern. The
pattern discovers USS-mounted file systems.
IBM zOS server [cmdb_ci_ibm_zos_server]
Field

Description

Name [name]

Hostname of the z/OS system.

OS Version
[os_version]

z/OS operating system version. For example: V2R5 or 3.1.

Operating System
[os]

Operating system type. The value is set to IBM_ZOS.

Manufacturer
[manufacturer]

Hardware manufacturer. The value is set to IBM.

Serial number
[serial_number]

Hardware chassis serial number.

Model ID [model_id]

Hardware model display name based on model code lookup. For
example: z14, z15, or zEnterprise 196.
If the model code isn’t in the lookup table, this field remains empty.

IP Address
[ip_address]

Management IP address used for discovery connection.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IPv4 or IPv6 address.

Netmask [netmask]

Network mask for the IP address. The value is set to 0.0.0.0.

MAC Address
[mac_address]

Hardware MAC address. If unavailable, the value is set to
NOT_FOUND.

Nic [nic]

References the Network Adapter [cmdb_ci_network_adapter]
table.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

Name [name]

Network interface name. If unavailable, the value is set to VIP.

IP Address
[ip_address]

IPv4 or IPv6 address assigned to this network adapter.

Netmask [netmask]

Network mask for the adapter. The value is set to 0.0.0.0.

MAC Address
[mac_address]

Hardware MAC address for the network adapter. If unavailable, the
value is set to NOT_FOUND.

Configuration Item
[cmdb_ci]

References the IBM zOS server [cmdb_ci_ibm_zos_server] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2666


<!-- page 2667 -->
File System [cmdb_ci_file_system]
Field

Description

Name [name]

Name of the USS file system set to the mount point path. For
example: /, /tmp, or /u.

Volume ID [volume_id]

Volume identifier, set to the mount point path.

Mount point
[mount_point]

Directory path where the file system is mounted in the USS
hierarchy.

File system [file_system]

USS dataset name of the zFS file system. For example:
OMVS.ROOT.ZFS or OMVS.TMP.ZFS.

Size bytes [size_bytes]

Total capacity of the file system in kilobytes (KB), as retrieved by the
df -Pkv command.

Free space bytes
[free_space_bytes]

Available free space in the file system in KB, as retrieved by the df
-Pkv command.

Computer [computer]

References the IBM zOS server [cmdb_ci_ibm_zos_server] table.

CI relationships
CI

Relationship

CI

IBM zOS server
[cmdb_ci_ibm_zos_server]

Owns::Owned by

Network Adapter
[cmdb_ci_network_adapter]

IBM zOS server
[cmdb_ci_ibm_zos_server]

Owns::Owned by

IP Address [cmdb_ci_ip_address]

IBM zOS server
[cmdb_ci_ibm_zos_server]

Contains::Contained File System [cmdb_ci_file_system]
by

IP Address [cmdb_ci_ip_address]

References

Network Adapter
[cmdb_ci_network_adapter]

Network Adapter
[cmdb_ci_network_adapter]

References

IBM zOS server
[cmdb_ci_ibm_zos_server]

Serial Number
[cmdb_serial_number]

References

IBM zOS server
[cmdb_ci_ibm_zos_server]

File System [cmdb_ci_file_system]

References

IBM zOS server
[cmdb_ci_ibm_zos_server]

Related topics
IBM Db2 on Linux database discovery
IBM MQ discovery
IBM WebSphere Application Server discovery using patterns
Operating system-level virtualization discovery
Discovery can collect image and container information from Operating system-level virtualization
(OS-level virtualization) engines.
Discovery can determine container status and size and identify images and their tags provided
by operating-system-level virtualization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2667


<!-- page 2668 -->
Note: Currently, the ServiceNow® platform supports the discovery of Docker virtualization
containers only.

Table schema
Table

Description

cmdb_ci_oslv_engine

Base table for all OSLV engines.

cmdb_ci_oslv_image

Base table for globally unique OSLV images.

cmdb_ci_oslv_local_image

Base table for local instances of OSLV images.

cmdb_ci_oslv_image_tag

Base table for tags on OSLV images.

cmdb_ci_oslv_container

Base table to store containers found on the
host.

Data collected
Table

Fields

Operating System Level Virtualization Engine
[cmdb_ci_oslv_engine]

Server [server]

Operating System Level Virtualization Image
[cmdb_ci_oslv_image]

• Image ID [image_id]
• Image digest [image_digest]
• Image created [image_created_at]
• Size (bytes) [size_bytes]

Operating System Level Virtualization Local
Image [cmdb_ci_oslv_local_image]
Operating System Level Virtualization Image
Tag [cmdb_ci_oslv_image_tag]

Image ID [image_id]

• Image ID [image_id]
• Repository [repository]
• Tag [tag]

Operating System Level Virtualization
Container [cmdb_ci_oslv_container]

• Container ID [container_id]
• Status [status]
• Size (bytes) [size_bytes]
• Image ID [image_id]

Docker virtualization
Discovery uses the Docker Pattern to collect data about specific objects in a Docker
engine, running on a Linux host.
®

The ServiceNow platform supports the discovery of Docker

release 1.11.0 or later.

Discovery runs the Docker Engine process classifier in the network. If the classifier identifies
the dockerd or docker daemon process, the classifier triggers the Horizontal Pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2668


<!-- page 2669 -->
(HorizontalDiscoveryProbe) probe, which launches the Docker Pattern and begins collecting data
from Docker components.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Prerequisites
User privileges
The user whose credentials are used to perform Docker Discovery must have
privileges defined by one of these methods:
• Provide a user with elevated rights for running commands, since the Docker
daemon runs as the root user. The Docker pattern supports the use of privileged
commands , such as sudo or pbrun, to run as the root user.
• Assigned to a group named docker, which has special privileges for running
Docker commands. For instructions on setting up a group, see documentation on
Docker .
Latest patterns
Deploy the latest Discovery and Service Mapping Patterns application from
ServiceNow Store.

Docker restrictions and considerations
When using Docker virtualization, consider the following:
• The initial Discovery process scan can identify an application in a container and classify it
correctly. However, subsequent probes launched to explore that application cannot see inside
the container and cannot return details about the application.
• Discovery scans all containers it finds, including inactive containers, which can slow down
Discovery. You should delete containers that are not running.
• Before setting sn_itom_pattern.manifest_digest_image_id property to true and
running discovery: prevent duplicate Docker records from being created by deleting all Docker
image records.
• Only one Docker engine is permitted per computer (on either a physical or virtual machine).

Data collected by Discovery during horizontal discovery
These attributes are discovered, in addition to the attributes derived from the parent OSLV
tables.

Table and fields

Description

Docker Engine [cmdb_ci_docker_engine]
Name [name]
OS Arch [os_arch]

Stores information about instances of the
Docker engine.

GIT Commit [git_commit]
Build Date [build_date]
Version [version]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2669


<!-- page 2670 -->
Table and fields

Description

API Version [api_version]
Go Version [go_version]
Is Clustered [is_clustered]
Running Process [running_process]
Running Process Command
[running_process_command]
Running Process Key Parameters
[running_process_key_parameters]
Docker Image [cmdb_ci_docker_image]
Name [name]
Image id [image_id]

Stores information on the globally unique
representation of Docker images.

Image digest [image_digest]
Size (byte) [size_byte]
Image created [Image_created_at]
Docker Local Image [cmdb_ci_docker_local_image]
Name [name]

Stores local instances of Docker images.

Image id [image_id]
Docker Image Tag [cmdb_ci_docker_image_tag]
Name [name]

Stores tags from local Docker images.

Image id [image_id]
Repository [repository]
Tag [tag]
Docker Container [cmdb_ci_docker_container]
Name [name]

Stores Docker containers found on the host.

Image id [image_id]

In cases where duplicate records are created,
deduplication tasks appear once discovery
runs. For information on how to resolve these
tasks, see the Making docker container
identifier independent [KB1443042]
article in
®
the ServiceNow Knowledge Base.

Container id [container_id]
Size (bytes) [size_bytes]
Command [command]
Container created [container_created]
Status [status]

The Collect Container Repository extension section discovers this information.

Table and field

Description

Container Repository [cmdb_ci_container_repository]
Name [name]

The name of the container repository.

Container Repository Entry [cmdb_ci_container_repository_entry]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2670


<!-- page 2671 -->
Table and field

Description

Name [name]

The name of the container repository entry.

Category [category]

The category of the container repository entry.

CI relationships
The Docker Pattern identifies the following relationships between discovered CIs.

CI

Relation

CI

cmdb_ci_server

Runs::Runs On

cmdb_ci_docker_engine

cmdb_ci_docker_engine

Manages::Managed By

cmdb_ci_docker_container

cmdb_ci_docker_engine

Manages::Managed By

cmdb_ci_docker_local_image

cmdb_ci_docker_image

Instantiates::Instantiated By

cmdb_ci_docker_container

cmdb_ci_docker_local_image

Instantiates::Instantiated By

cmdb_ci_docker_container

cmdb_ci_docker_image_tag

Registered On::Has
Registered

cmdb_ci_docker_local_image

cmdb_ci_docker_local_image

Instantiates::Instantiated By

cmdb_ci_docker_image

Note: The direction
of this relation is the
opposite for all store
versions earlier than
1.0.99, February 2023.

The Collect Container Repository extension section of the Docker Pattern identifies
these relationships.

CI

Relationship

Docker Image
[cmdb_ci_docker_image]

Provisioned
Container Repository Entry
From::Provisioned [cmdb_ci_container_repository_entry]

Container Repository Entry
Hosted on::Hosts
[cmdb_ci_container_repository_entry]

CI

Container Repository
[cmdb_ci_container_repository]

Identification, containment, and hosting rules
Discovery uses an application rule identifier to find the Docker engine and then applies other
rules to identify specific Docker objects.
Application rule identifier
The system creates the cmdb_ci_docker_engine configuration item (CI) during
process classification. Based on this, Discovery uses the Application Rule identifier
on the Application [cmdb_ci_appl] table to identify the particular Docker engine
encountered. After establishing this identity, Discovery uses the relationships
defined in the containment and hosting rules to accurately create and update the
individual Docker component CIs related to that engine.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2671


<!-- page 2672 -->
Identifiers

Name

Table

Attributes

Docker Container

Docker Container
container_id
[cmdb_ci_docker_container]

Docker Global Image

Docker Image
[cmdb_ci_docker_image]

Docker Local Image

Docker Local Image
image_id
[cmdb_ci_docker_local_image]

Docker Image Tag

Docker Image Tag
repository, tag
[cmdb_ci_docker_image_tag]

image_id

Containment and hosting rules
Docker Discovery uses these Create or edit a collection of containment rules
and
Create or edit a collection of hosting rules
rules to create configuration items (CI)
from the data returned by the Docker Pattern. After Discovery identifies the Docker
engine by its relationship to the Application [cmdb_ci_appl] table, it uses these
rules to identify the specific CIs connected to that engine from their relationships to
one another. By connecting the components to one another in this fashion, from the
application down, starting with the engine, Discovery avoids creating duplicate CIs
for components from other Docker engines that use the same name or image_id.
Containment rule
Parent

Child

Relationship

Docker Local Image

Docker Image Tag

Has registered

Parent

Child

Relationship

Docker Container

Docker Engine

Managed by

Docker Local Image

Docker Engine

Managed by

Hosting rules

Software discovery
Discovery identifies several types of software.
Active Directory Domain Controller discovery
The Discovery and Service Mapping Patterns application uses the Active Directory Domain
Controller On Windows pattern to find active directory domain controllers running on a Windows
server. Discovering some of these resources may require updating to the latest version of the
Discovery and Service Mapping Patterns application from the ServiceNow Store.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Active Directory Domain Controller
On Windows pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2672


<!-- page 2673 -->
Active Directory Domain Controller [cmdb_ci_ad_controller]
Label

Field Name

Name

name

Domain name

domain_name

Domain Controller name

domain_controller_name

Forest name

forest_name

Class

sys_class_name

TCP port(s)

tcp_port

Adobe JRun discovery
Discovery creates or updates a CMDB record when it detects a running instance of Adobe JRun.
By default, Discovery uses the Jrun pattern to perform the Discovery.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Privileged commands
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Data collected for Adobe JRun
The following data is collected in the Jrun [cmdb_ci_app_server_jrun] table:

Label

Field Name

Name

name

Version

version

Installation directory

install_directory

Configuration directory

config_directory

Configuration file

config_file

Apache web server discovery
Discovery identifies and classifies information about Apache web servers on both Windows and
Linux computers.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
• Applicative credentials
• Windows credentials
• SSH credentials
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2673


<!-- page 2674 -->
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifier, patterns, and probes
Classifier

Trigger probes

Patterns

• Horizontal discovery probe:
Launches patterns

• Apache On Windows
Pattern

• Apache - Version*

• Apache On Unix Pattern

Apache Server

• Apache - Get Configuration*
• Apache - Get JK
ModuleApache - Get Proxy
Module*

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected using probes
Discovery collects the following data on the Apache [cmdb_ci_apache_web_server] table for
both Unix and Windows:

Label

Field name

Name

name

Version

version

Description

description

TCP port(s)

tcp_port

Connections found by Service Mapping during top-down discovery
Service Mapping uses discovery patterns to discover the following connections:
• Any application using java
• Any application using the LDAP port
• Oracle WebLogic Module Oracle, and WebLogic Server (version 10.3)
• (On Windows only) Jiva applications
• (On Windows only) Tomcat server
• (On UNIX only) Applications discovered using the mod_jk process
• (On UNIX only) Hosts to which the Apache web server is connecting in the load balancing
mode
• (On UNIX only) Epic application
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2674


<!-- page 2675 -->
Apache mod_jk and mod_proxy discovery
Discovery uses SSH to find Apache connectors mod_jk and mod_proxy.
Discovery uses the Unix - Active Processes probe to identify an Apache web server process by
matching one of the following criteria: the name of the process is:
• httpd, or
• apache, or
• httpd2, or
• httpd2-prefork
• httpd.worker
If there is a match on one of these criteria, a record is created in the Web Server
[cmdb_ci_web_server] table if one does not already exist for that running process.
The following probes are triggered after classification:
Apache web server probes
Probe

Description

Commands

Apache –
Version

The sensor of this probe populates the Apache version
information in the Web Server record.

httpd

Apache
This probe contains a Bourne shell script and an argument
– Get
that determines the path of the Apache configuration
Configuration file. The sensor of this probe populates some additional
information in the Web Server record.

echo, sed, httpd,
cut, grep, egrep
(within the Borne
shell script)

The sensor processing of the Apache – Get Configuration probe identifies whether either the
mod_jk or mod_proxy modules are present and triggers the appropriate probe.
Apache module probes
Probe

Description

Commands

Apache
– Get
JK
Module

If the mod_jk module is running as a load balancer on the server, the
sensor of this probe populates the information in the Load Balancer
Service [cmdb_ci_lb_service], Load Balancer Pool [cmdb_ci_lb_pool]
and Load Balancer Pool Member [cmdb_ci_lb_pool_member] tables.

echo, sed,
httpd, cut,
grep, egrep
(within the
Borne shell
script)

Apache
– Get
Proxy
Module

If the mod_proxy module is running as a load balancer on the
server, the sensor of this probe populates the information in
the Load Balancer Service [cmdb_ci_lb_service], Load Balancer
Pool [cmdb_ci_lb_pool] and Load Balancer Pool Member
[cmdb_ci_lb_pool_member] tables.

grep, egrep
(within the
Borne shell
script)

In addition to data population, the following relationships are created in the CI Relationship
[cmdb_rel_ci] table:
• The records in the cmdb_ci_lb_appl table run on the cmdb_ci_web_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_lb_pool table are used by the cmdb_ci_service table record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2675


<!-- page 2676 -->
• The records in the cmdb_ci_lb_pool table are members of the cmdb_ci_lb_pool_member table.
• The records in the cmdb_ci_lb_pool_member table are members of the cmdb_ci_lb_pool table.
Legacy: Add sudo access for the Unix - Active Processes probe
For an Apache web server the Unix - Active Processes probe requires sudo privileges.

Before you begin

Role required: admin

About this task

You can configure the Unix - Active Processes probe to elevate privileges.

Procedure
1. Navigate to All > Discovery > Probes.
2. In the Search field, search for Unix - Active Processes.
3. Click field, search for Unix - Active Processes probe.
4. In the Probe Parameters related list, clickNew.
5. Click New
6. Use the following information to fill out the form:

Probe

Commands

Name

must_sudo

Value

true

7. Click Submit
Data collected by Mod_jk module
The Apache mod_jk module forwards requests from the Apache web server to a Servlet
container, such as Tomcat.
Additional mod_jk directives can also manage load balancing. Discovery populates the CMDB
when it detects an Apache Server. When the Apache Web Server process is detected, if
the mod_jk module is running on the web server as a load balancer, the related information
populates to the CMDB.
• The MID Server user account to explore the target server must have access to the httpd.conf
configuration file in the /etc/httpd/conf/ folder.
• Discovery uses secure shell (SSH) commands to identify the following associated elements:
◦ Apache Get Configuration
◦ Apache Version
◦ Apache Get JK Module
• The following probes require execute privileges to run commands:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2676


<!-- page 2677 -->
Probes that require execute privileges
Probe

Command

Apache – Get Configuration echo, sed, httpd, cut, grep, egrep (within the Borne shell script)
Apache – Version

httpd

Apache – Get JK Module

echo, sed, httpd, cut, grep, egrep (within the Borne shell script)

Probes and sensors
Discovery uses the Unix - Active Processes probe to identify an Apache server that contains the
mod_jk module:
1. The Unix - Active Processes probe detects a running process that matches one of the following
criteria:
◦ The name of the process is httpd.
◦ The name of the process is apache.
2. If there is a match on one of these criteria, a record is created in the Web Server table
[cmdb_ci_web_server] if one does not already exist for that running process. The following
probes are also triggered:
◦ Apache – Version: the sensor of this probe populates the Apache version information in the
Web Server record.
◦ Apache – Get Configuration: this probe contains a Bourne shell script and an argument that
determines the path of the Apache configuration file. The sensor of this probe populates
some additional information in the Web Server record.
3. The sensor processing of Apache – Get configuration probe results triggers the following
probes if the mod_jk module is running on the web server:
Apache – JK Module: if the mod_jk module is running as a load balancer on the server,
the sensor of this probe populates the information in the Load Balancer Service
[cmdb_ci_lb_service], Load Balancer Pool [cmdb_ci_lb_pool] and Load Balancer Pool Member
[cmdb_ci_lb_pool_member] tables.

Data Collected
For the mod_jk module with no load balancer, the following data is collected by default:
Default Data Collected by Discovery
Table Name

Field and Label Name

Probe

cmdb_ci_web_server

Name [name]

Apache – Get Configuration

cmdb_ci_web_server

Version [version]

Apache – Version

cmdb_ci_web_server

Description [short_description]

Apache – Version

If the mod_jk module is enabled for load balancing, Discovery connects the following data:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2677


<!-- page 2678 -->
Data Collected by Discovery When the mod_jk Module is Identified as a Load Balancer
Table Name

Field and Label Name

Probe

cmdb_ci_lb_appl

Name [name]

Apache – Apache - Get JK
Module

cmdb_ci_lb_appl

IP Address [ip_address]

Apache – Apache - Get JK
Module

cmdb_ci_lb_appl

Last Discovered [last_discovered]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool_member Name [name]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool_member Last Discovered [last_discovered]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool_member IP Address [ip_address]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool_member Load Balancer [load_balancer]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool_member Port [port]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

Input URL [Input_url]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

Last Discovered [last_discovered]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

IP Address [ip_address]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

Name [name]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

Load Balancer [load_balancer]

Apache – Apache - Get JK
Module

cmdb_ci_lb_service

Port [port]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool

Last Discovered [last_discovered]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool

Load balancing Method
[load_balancing_method]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool

Load Balancer [load_balancer]

Apache – Apache - Get JK
Module

cmdb_ci_lb_pool

Name [name]

Apache – Apache - Get JK
Module

Relationships
In addition to data population, the following relationships are created in the CI Relationship
[cmdb_rel_ci] table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2678


<!-- page 2679 -->
• The records in the cmdb_ci_lb_appl table run on the cmdb_ci_web_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_lb_pool table are used by the cmdb_ci_service table record.
• The records in the cmdb_ci_lb_pool table are members of the cmdb_ci_lb_pool_member table.
• The records in the cmdb_ci_lb_pool_member table are members of the cmdb_ci_lb_ pool
table.
Data collected by Mod_proxy module
The Apache mod_proxy module implements a proxy, gateway, or cache for the Apache web
server.
An additional mod_proxy_balancer can also manage load balancing. Discovery populates the
CMDB when it detects an Apache server. When the Apache Web Server process is detected, if
the mod_proxy module is running on the web server as a load balancer the related information
populates to the CMDB.
Consider the following requirements for discovering an Apache server that contains the
mod_proxy module:
• The MID Server user account to explore the target server must have access to the [httpd.conf]
configuration file in the /etc/httpd/conf/ folder.
• Discovery uses secure shell (SSH) commands to identify the following associated elements:
◦ Apache Get Configuration
◦ Apache Version
◦ Apache Get Proxy Module
• The following probes require execute privileges to run commands:
Data collected from the mod_jk module
Probe

Commands

Apache – Get Configuration echo, sed, httpd, cut, grep, egrep (within the Borne shell script)
Apache – Get Proxy Module grep, egrep (within the Borne shell script)
Apache – Version

httpd

Probes and sensors
Discovery uses the Unix - Active Processes probe to identify an Apache server that contains the
mod_proxy module. The probes and sensors operate in the following manner:
1. The Unix - Active Processes probe detects a running process that matches one of the following
criteria:
◦ The name of the process is httpd.
◦ The name of the process is apache2.
2. If there is a match on one of these criteria, a record is created in the Web Server table
[cmdb_ci_web_server] if one does not already exist for that running process. The following
probes are also triggered:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2679


<!-- page 2680 -->
◦ Apache – Version: the sensor of this probe populates the Apache version information in the
Web server [cmdb_ci_web_server] record.
◦ Apache – Get Configuration: this probe contains a Bourne shell script and an argument that
determines the path of the Apache configuration file. The sensor of this probe populates
some additional information in the Web server [cmdb_ci_web_server] record.
3. The sensor processing of the Apache – Get configuration probe results triggers the following
probes if the mod_proxy module is running on the web server:
Apache - Get Proxy Module: if the mod_proxy module is running as a load balancer on the
server, the sensor of this probe populates the information in the Load Balancer Service
[cmdb_ci_lb_service], Load Balancer Pool [cmdb_ci_lb_pool] and Load Balancer Pool Member
[cmdb_ci_lb_pool_member] tables.

Data Collected
For the mod_proxy module with no load balancer, the following data is collected by default:
Data collected by Discovery by default
Table Name

Field and Label Name

Probe

cmdb_ci_web_server

Name [name]

Apache – Get Configuration

cmdb_ci_web_server

Version [version]

Apache – Version

cmdb_ci_web_server

Description [short_description]

Apache – Version

If the mod_proxy module is enabled for load balancing, Discovery connects the following data:
Data collected by Discovery if the mod_proxy module is identified as a load balancer
Table Name

Field and Label Name

Probe

cmdb_ci_lb_appl

IP Address [ip_address]

Apache - Get Proxy
Module

cmdb_ci_lb_appl

Last Discovered [last_discovered]

Apache - Get Proxy
Module

cmdb_ci_lb_pool_member Name [name]

Apache - Get Proxy
Module

cmdb_ci_lb_pool_member Last Discovered [last_discovered]

Apache - Get Proxy
Module

cmdb_ci_lb_pool_member IP Address [ip_address]

Apache - Get Proxy
Module

cmdb_ci_lb_pool_member Load Balancer [load_balancer]

Apache - Get Proxy
Module

cmdb_ci_lb_pool_member Port [port]

Apache - Get Proxy
Module

cmdb_ci_lb_service

Apache - Get Proxy
Module

Input URL [Input_url]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2680


<!-- page 2681 -->
Data collected by Discovery if the mod_proxy module is identified as a load balancer
(continued)
Table Name

Field and Label Name

Probe

cmdb_ci_lb_service

Last Discovered [last_discovered]

Apache - Get Proxy
Module

cmdb_ci_lb_service

IP Address [ip_address]

Apache - Get Proxy
Module

cmdb_ci_lb_service

Name [name]

Apache - Get Proxy
Module

cmdb_ci_lb_service

Load Balancer [load_balancer]

Apache - Get Proxy
Module

cmdb_ci_lb_service

Port [port]

Apache - Get Proxy
Module

cmdb_ci_lb_pool

Last Discovered [last_discovered]

Apache - Get Proxy
Module

cmdb_ci_lb_pool

Load balancing Method
[load_balancing_method]

Apache - Get Proxy
Module

cmdb_ci_lb_pool

Load Balancer [load_balancer]

Apache - Get Proxy
Module

cmdb_ci_lb_pool

Name [name]

Apache - Get Proxy
Module

Relationships
In addition to data population, the following relationships are created in the CI Relationship
[cmdb_rel_ci] table:
• The records in the cmdb_ci_lb_appl table run on the cmdb_ci_web_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_lb_pool table are used by the cmdb_ci_service table records.
• The records in the cmdb_ci_lb_pool are members of the cmdb_ci_lb_pool_member table
records.
• The records in the cmdb_ci_lb_pool_member is a member of the cmdb_ci_lb_pool table
records.
Application Mapping for UNIX discovery
To perform the mapping that establishes application relationships, Discovery must be able to
detect TCP connections.
The best way to accomplish this is to run the lsof
command on target machines. For AIX
machines, Discovery is configured to use the active connection probe for AIX targets. However,
the user that executes the shell script on AIX machines might require additional privileges to
execute commands, such as kdb, employed in the script.
On Linux machines, Discovery uses the lsof command (installed by default on Linux) to detect
TCP connections. The Linux classification probe triggers the Linux - Active Connections probe,
which uses lsof to discover application relationships and does not produce any pauses. The

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2681


<!-- page 2682 -->
lsof command is the recommended method of returning active TCP connections and can be
installed on Solaris and AIX target machines to eliminate any issues produced by the shell script.

Note: Discovery of active connections on HP-UX is not supported.
Using the lsof Command
Use the ls of command to return active TCP connections and can be installed on Solaris and AIX
target machines.

Before you begin

Role required: admin

Procedure
1. Install lsof on the Solaris and AIX machines on which you want to gather application
relationship data.
2. In the instance, navigate to Discovery Definition > CI Classification > UNIX.
3. Select Solaris from the list.
4. In the UNIX Classification form for Solaris, select the Triggers probes related list, and then
click Edit.
5. Move Linux - Active Connections from the Collections list to the Triggers probe List.
This probe is configured to use lsof.
Example
Solaris Active Connections lsof

6. Click Save.
7. Repeat this procedure for the AIX classification probe.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2682


<!-- page 2683 -->
Citrix License Server and Delivery Controller discovery
Discovery can find Citrix License Server instances and Delivery Controller components that run
on Windows machines.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Requirements
• Configure Windows administrative credentials

to access the host machine.

• Make sure that PowerShell for Discovery is installed on your MID Servers. The patterns used
for Citrix discovery require the ability to run PowerShell commands.
• For OS users, make sure you can execute “Get-XDSite.” The Citrix Studio Admin should provide
permissions.
• (Optional) For top-down discovery with Service Mapping, on Citrix Delivery Controller, install
the Citrix.Broker module.
• (Optional) For top-down discovery with Service Mapping, a user with permission to run
PowerShell commands.
• (Optional) (Optional) For discovering using the WinRM protocol, see Configure WinRM trusted
hosts on MID Server .

Patterns
Discovery uses these patterns to perform horizontal discovery:

Pattern

Process detected

Citrix License Server

lmadmin.exe

Delivery Controller

BrokerService

Data collected and relationships
Table

Citrix License Server [cmdb_ci_appl_license_server]

Fields

Name [name]
TCP ports [tcp_port]
Operational status
[operational_status]

Citrix Delivery Controller
[cmdb_ci_appl_delivery_controler]

Name [name]
Version [version]
Operational status
[operational_status]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2683


<!-- page 2684 -->
CI

Relationship CI

Citrix License Server
[cmdb_ci_appl_license_server]

Runs
on::Runs

Windows Server
[cmdb_ci_win_server]

Citrix Delivery Controller
[cmdb_ci_appl_delivery_controler]

Runs
on::Runs

Windows Server
[cmdb_ci_win_server]

Clustered application discovery on Windows
A process and its corresponding resource information can be used to determine whether the
process is a clustered process.
The Microsoft SQL Server process classifier that comes with your instance identifies clustered
SQL Servers. You can leverage the same technique to detect other clustered applications on
Windows using Discovery.
To detect Windows clustered applications with Discovery, you create a process classifier that
detects whether a process is a clustered process. Perform the following steps:
Create a classifier for clustered processes
To detect Windows clustered applications, create a process classifier for that CI type.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery Definition > CI Classification > Processes.
2. Click New.
3. Fill out the form using the fields from the table.
4. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2684


<!-- page 2685 -->
Process Classification form

Process classification form
Field

Description

Name

A unique name for the process classifier.

Table

Select Application.

Relation
type

Select the CI relationship type for this classification. The relationship field is only
available for Process and Scan Application classifications. Discovery process
classifications typically use one of these relationship types:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2685


