# Zurich IT Operations Management — Discovery patterns used by ITOM Visibility

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2162–2311 of 4823 | Part 3 of 5

Sections: Discovery patterns used by ITOM Visibility (p1862)

---

<!-- page 2162 -->
CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_vm_instance]

Use End Point
To::Use End Point
From

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

Cloud Subnet
[cmdb_ci_cloud_subnet]

Contains::Contained NIC [cmdb_ci_nic]
by

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

Implement End
Point To::Implement
End Point From

NIC [cmdb_ci_nic]

NIC [cmdb_ci_nic]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Dependency Views displaying the cloud load balancer and
connected components

Relationships discovered using the Amazon AWS - Organizational Units (LP) pattern

CI

Relationship

CI

Cloud Organization
[cmdb_ci_cloud_org]

Contains::Contained AWS Organizational Unit
by
[cmdb_ci_aws_org_unit]

AWS Organizational Unit Contains::Contained Cloud Service Account
[cmdb_ci_aws_org_unit] by
[cmdb_ci_cloud_service_account]
Key Value
[cmdb_key_value]

Reference only

AWS Organizational Unit
[cmdb_ci_aws_org_unit]

Relationships discovered using the Amazon AWS - Owned Template (LP) pattern

CI

Relationship

CI

Image
[cmdb_ci_os_template]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - Public IP Address (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2162


<!-- page 2163 -->
CI

Relationship CI

Cloud Public IP Address
[cmdb_ci_cloud_public_ipaddress]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - Route Table (LP) pattern

CI

Relationship

CI

Network
[cmdb_ci_network]

Contains::Contained
by

Route Table
[cmdb_ci_route_table]

Cloud Subnet
Use End Point To::Use Route Table Endpoint
[cmdb_ci_cloud_subnet] End Point From
[cmdb_ci_endpoint_route_table]
Route Table
[cmdb_ci_route_table]

Implement End Point
To::Implement End
Point From

Route Table Endpoint
[cmdb_ci_endpoint_route_table]

Relationships discovered using the Amazon AWS - Security Group (LP) pattern

CI

Relationship

CI

Network [cmdb_ci_network]

Contains::Contained Compute Security Group
by
[cmdb_ci_compute_security_group]

Compute Security Group
Hosted on::Hosts
[cmdb_ci_compute_security_group]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - SSM Cloud Agents (LP) pattern

CI

Relationship CI

Cloud System Management Agent
Extends
[cmdb_ci_cloud_system_management_agent] from

Virtual Machine Object
[cmdb_ci_vm_object]

Cloud System Management Agent
Runs
[cmdb_ci_cloud_system_management_agent] on::Runs

Virtual Machine
Instance
[cmdb_ci_vm_instance]

Relationships discovered using the Amazon AWS - Storage (LP) pattern

CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_instance]

Use End Point To::Use
End Point From

Block Endpoint
[cmdb_ci_endpoint_block]

Block Endpoint
[cmdb_ci_endpoint_block]

Implement End Point
To::Implement End Point
From

Storage Volume
[cmdb_ci_storage_volume]

Availability Zone
Contains::Contained by
[cmdb_ci_availability_zone]

Storage Volume
[cmdb_ci_storage_volume]

Storage Volume
[cmdb_ci_storage_volume]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Hosted on::Hosts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2163


<!-- page 2164 -->
Relationships discovered using the Amazon AWS - Subnet (LP) pattern

CI

Relationship

CI

Network [cmdb_ci_network]

Contains::Contained Cloud Subnet
by
[cmdb_ci_cloud_subnet]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Cloud Subnet
by
[cmdb_ci_cloud_subnet]

Relationships discovered using the Amazon AWS - Virtual Server (LP) pattern

CI

Relationship

CI

Network
[cmdb_ci_network]

Contains::Contained
by

Cloud Subnet
[cmdb_ci_cloud_subnet]

Cloud Subnet
[cmdb_ci_cloud_subnet]

Implement End Point
To::Implement End
Point From

Subnet Endpoint
[cmdb_ci_endpoint_subnet]

Availability Zone
Contains::Contained
[cmdb_ci_availability_zone] by

Virtual Machine Instance
[cmdb_ci_vm_instance]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Use End Point To::Use Subnet Endpoint
End Point From
[cmdb_ci_endpoint_subnet]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Contains::Contained
by

Storage Mapping
[cmdb_ci_storage_mapping]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Hardware Type
[cmdb_ci_compute_template]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Image
[cmdb_ci_os_template]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Contains::Contained
by

DNS Name
[cmdb_ci_dns_name]

Image
[cmdb_ci_os_template]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Dependency Views displaying components connected to the cloud
network in the AWS environment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2164


<!-- page 2165 -->
Dependency Views showing Virtual Machine and connected
components in the AWS environment

Relationships discovered using the Amazon AWS - VPN Connections (LP) pattern

CI

Relationship

CI

Customer Gateway
[cmdb_ci_customer_gateway]

Contains::Contained VPN Connection
by
[cmdb_ci_vpn_connection]

Virtual Private Gateway
[cmdb_ci_virtual_pvt_gateway]

Contains::Contained VPN Connection
by
[cmdb_ci_vpn_connection]

VPN Connection
[cmdb_ci_vpn_connection]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - VPN Gateway (LP) pattern

CI

Relationship

CI

Virtual Private Gateway
Hosted on::Hosts
[cmdb_ci_virtual_pvt_gateway]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Virtual Private Gateway
Implement End Point
[cmdb_ci_virtual_pvt_gateway] To::Implement End
Point From

Virtual Private
Gateway Endpoint
[cmdb_ci_endpoint_vpg]

Network [cmdb_ci_network]

Use End Point To::Use Virtual Private
End Point From
Gateway Endpoint
[cmdb_ci_endpoint_vpg]

Relationships discovered using the Amazon AWS - Web ACL (LP) pattern

CI

Relationship

CI

Web ACL
[cmdb_ci_web_acl]

Extends from

Virtual Machine Object
[cmdb_ci_vm_object]

Web ACL
[cmdb_ci_web_acl]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2165


<!-- page 2166 -->
Note: Security Operations users can leverage the integration with Discovery
to import web ACL rules and load balancers with attached web ACLs. For
more information on setting ACL rules and using the Mitigation Controls
Monitoring app, see Configure the AWS WAF integration for mitigation controls
monitoring .

Services discovered by patterns
Horizontal discovery finds EC2 and VPC services running on AWS resources.
Services discovered by Discovery using patterns
Service name

CI class

Pattern

AWS::EC2::SecurityGroup

Compute Security Group
Amazon AWS Security Group
[cmdb_ci_compute_security_group]
Events

AWS::EC2::Subnet

Cloud Subnet
[cmdb_ci_cloud_subnet]

Amazon AWS Subnet Events

AWS::EC2::VPC

Cloud Network
[cmdb_ci_network]

Amazon AWS Network Events

AWS::EC2::Instance

Virtual Machine Instance
[cmdb_ci_vm_instance]

Amazon AWS Virtual Server
Events

EQS::EC2::Volume

Storage Volume
[cmdb_ci_storage_volume]

Amazon AWS Elastic Block
Storage

AWS::ElasticLoadBalancingV2::LoadBalancer
Cloud Load Balancer
Amazon AWS Application and
[cmdb_ci_cloud_load_balancer] Network LBs Events
AWS::ElasticLoadBalancing::LoadBalancer
Cloud Load Balancer
Amazon AWS Classic LBs
[cmdb_ci_cloud_load_balancer] Events

Data collected by Service Mapping during tag-based discovery
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.

CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Related topics
Kubernetes discovery using patterns
AWS Certificate Manager discovery
Amazon API Gateway discovery with Patterns
The ServiceNow Discovery and Service Mapping applications use the Amazon AWS API Gateway
pattern to find Amazon API Gateways and connections to other entities. Discovering some of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2166


<!-- page 2167 -->
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Starting with Discovery and Service Mapping Patterns version 1.29.0, the Amazon AWS API
Gateway pattern data model has changed.
New Amazon AWS API Gateway pattern data model

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the AWS prerequisites
For more information, see the prerequisite section in AWS discovery using patterns.
Retire legacy data model CIs to avoid duplicates
To avoid duplicate CIs, activate a schedule job to mark legacy data model CIs as
retired. For more information, see Retire legacy AWS API Gateway data model CIs.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Amazon AWS API Gateway pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2167


<!-- page 2168 -->
AWS API Gateway [cmdb_ci_aws_api_gateway]
Field

Description

Name [name]

Concatenate of "aws-gateway-" + account ID + region.
For example: aws-gateway-000000000000-us-east-1.

ID [id]

Concatenate of "aws-gateway-" + account ID + region.
For example: aws-gateway-000000000000-us-east-1.

Install Status [install_status]

Install status of the AWS gateway. Default value is Installed.

Operational status
[operational_status]

Operational status of the AWS gateway. Default value is
Operational.

Managed API [cmdb_ci_managed_api]
Field

Description

ID [id]

Concatenate of "https://" + API ID + ".execute-api." + region +
".amazonaws.com".
For example: https://a1b2c3d4e5.execute-api.useast-1.amazonaws.com.

Name [name]

Name of the API.

Description
[short_description]

Description of API.

Install Status [install_status]

Install status of the API. Default value is Installed.

Operational status
[operational_status]

Operational status of the API. Default value is Operational.

Type [type]

Type of API: REST.

Version [version]

Version of API.

Fully qualified domain name
[fqdn]

Concatenate of API ID + ".execute-api." + region +
".amazonaws.com".
For example: a1b2c3d4e5.execute-api.useast-1.amazonaws.com.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Unique name or IP address of the DNS host.

IP Address [ip_address]

IP address of the DNS host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2168


<!-- page 2169 -->
Amazon API gateway dependency view

Relationships
Discovery creates these relationships to support Amazon API Gateway discovery.

CI

Relationship

CI

AWS API Gateway
[cmdb_ci_aws_api_gateway]

Provides::Provided Managed API
by
[cmdb_ci_managed_api]

Managed API
[cmdb_ci_managed_api]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Managed API
[cmdb_ci_managed_api]

Uses::Used by

DNS Name [cmdb_ci_dns_name]

DNS Name [cmdb_ci_dns_name]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Key Value [cmdb_key_value]

References

Managed API
[cmdb_ci_managed_api]

Tag discovery
The Amazon AWS API Gateway pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2169


<!-- page 2170 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Managed API [cmdb_ci_managed_api]
table.

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the AWS API Gateways in the context of
application services. It discovers outgoing connections of the AWS API Gateways:
• AWS Lambda
• VPC Link for Virtual Private Cloud
• HTTP endpoint defined as the configured URL on the API Gateway
Test patterns for discovering AWS API Gateway and AWS Lambda
Run the horizontal and top-down discovery using Amazon AWS API Gateway
[cmdb_ci_cloud_gateway] and Amazon AWS Lambda [cmdb_ci_cloud_function] patterns. Verify
that the result is as expected.

Before you begin

Make sure that your deployment complies with all the prerequisites for Amazon API Gateway
discovery with Patterns and AWS Lambda discovery with Patterns.
Role required: admin

Procedure
1. Create an application service using the following properties for its entry point.

Field

Description

CI type

HTTPS

URL

The URL for invoking the API Gateway.
Typically, the API GW has the following
format:
https://{restapi_id}.execute-api.
{region}.amazonaws.com/{stage_name}/
For example, https://k40o0l3af6.executeapi.us-east-1.amazonaws.com/prod/.
For information about the URL format, see
https://docs.aws.amazon.com/apigateway/
latest/developerguide/how-to-call-api.html

.

Note: The default stage_name
parameter is prod.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2170


<!-- page 2171 -->
2. Click Discover.
Service Mapping runs the top-down discovery using the Amazon AWS API Gateway
[cmdb_ci_cloud_gateway] pattern.
After Service Mapping completes identifying the API Gateway configuration item (CI), it runs
the Connection to APIs connection section and discovers connection to the AWS Lambda. It
then runs the Amazon AWS Lambda [cmdb_ci_cloud_function] pattern and identifies the AWS
Lambda CI.
3. After Service Mapping finishes to discover this application service, verify that it discovered and
identified AWS components correctly.
Check that the following actions happen:
◦ Service Mapping correctly resolves the URL, finds all IP addresses behind it and creates an
entry point for each IP address.

◦ Service Mapping identifies the AWS API Gateway and creates an application cluster for IP
address.
◦ The Properties pane shows the properties for the AWS API Gateway: Cloud Gateway
[cmdb_ci_cloud_gateway].
◦ Service Mapping discovers the AWS Lambda connected to the application cluster for API
Gateway.
◦ Service Mapping discovers the databases connected to AWS Lambda.
Retire legacy AWS API Gateway data model CIs
Avoid duplicate AWS API Gateway configuration items (CIs) by retiring legacy data model CIs
through a scheduled job.

Before you begin
• Verify you have at least version 1.29.0 of Discovery and Service Mapping Patterns.
• Run an AWS discovery to populate the CIs in the managed API data model. For more
information, see Create discovery schedules for cloud resources.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2171


<!-- page 2172 -->
Role required: admin

About this task

Starting with Discovery and Service Mapping Patterns December release, the Amazon AWS API
Gateway pattern data model has changed. To avoid duplicate CIs, activate a schedule job to
mark legacy data model CIs as retired.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. In the Name column, search for Retire Cloud Gateways migrated to Managed
API.
3. Select the Retire Cloud Gateways migrated to Managed API scheduled job.
4. Select Execute Now.
Amazon API Gateway Domain Name pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - API Gateway Domain Name - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2172


<!-- page 2173 -->
AWS API Gateway - Domain Name [cmdb_aws_api_gateway_domain_name]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the domain.

Name [name]

The custom domain name associated with an
API Gateway.

Certificate Name [certificate_name]

The name of the secure sockets layer and
transport layer security (SSL/TLS) certificate
used for the domain.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Domain Name Status [domain_name_status]

The status of the custom domain name.

Endpoint Type [endpoint_type]

The type of API endpoint. For example: EDGE
or REGIONAL.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - API Gateway Domain Name - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the domain.

Name [name]

The custom domain name associated with an
API Gateway.

Resource type [resource_type]

Type of resource. The value is set to AWS::API
Gateway::Domain Name.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - API Gateway Domain Name - Extended Inventory (LP) pattern creates these
relationships to support Amazon API Gateway Domain Name discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS API Gateway
References
- Domain Name
[cmdb_aws_api_gateway_domain_name]

Cloud Resource
[cmdb_ci_cmp_resource]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2173


<!-- page 2174 -->
AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon DB cluster discovery with Patterns
ServiceNow Discovery uses the AWS DB cluster discovery pattern to find and map Aurora
DB clusters, Aurora Serverless resources, Amazon Neptune DB instances, and Amazon
DocumentDB instances. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
The discovered DB clusters form new relationships with the DB Instances discovered by the AWS
Relational Database Service pattern. Therefore, the AWS DB cluster pattern is triggered after the
AWS Relational Database Service pattern during discovery. For further information, see Amazon
Relational Database Service (Amazon RDS) discovery with Patterns.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Install the Discovery and Service Mapping Patterns application (version 1.0.75) from the
ServiceNow Store.
• On the ServiceNow AI Platform, configure AWS credentials, using a secret key and an access
key.
• Create a service account. Set the Account ID to the Amazon account ID to which RDS belongs.
Use the Account ID as it appears in the AWS Management Console.
• Set read-only permissions for these REST APIs:
◦ https://rds.<REGION>.amazonaws.com/?Action=DescribeDBInstances
◦ https://rds.<REGION>.amazonaws.com/?Action=DescribeDBClusters
◦ https://rds.<REGION>.amazonaws.com/?
Action=DescribeDBInstances&DBInstanceIdentifier=<input_object_id> for events discovery
◦ https://tagging.<REGION>.amazonaws.com/ for tags discovery
• For Cloud Discovery, download the Discovery and Service Mapping Patterns from the
ServiceNow Store.
• When installing the MID Server, ensure that the host machine meets or exceeds the MID
Server system requirements
published on the ServiceNow documentation site.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2174


<!-- page 2175 -->
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Note: You can test the AWS REST APIs using Postman API platform. For more information,
see the How to test AWS REST API using POSTMAN [KB0782183]
Support Knowledge Base.

article in the Now

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Cloud Database Cluster [cmdb_ci_cloud_db_cluster]
Cluster ID [cluster_id]

Contains a user-supplied DB cluster identifier.
This identifier is the unique key that identifies
a DB cluster.

Name [name]

Contains the name of the initial database of
the DB cluster that was provided on creation. If
a name was not specified, the cluster identifier
is used as the name. This name is returned for
the life of the DB cluster.​

FQDN [fqdn]

Specifies the connection endpoint for the
primary instance of the DB cluster.​

TCP Port [tcp_port]

Port of the database endpoint.​

Vendor [vendor]

The vendor, Amazon.

Cluster Status [cluster_status]

Specifies the current state of this DB cluster.​

Operational Status [operational_status]

Status of the database, ”available” if
operational.

Cloud Database [cmdb_ci_cloud_database]
Object ID [object_id]

The instance identifier for this member of the
DB cluster.​

Note: For Database Instances, this
table is populated with only the object_id
attribute. This attribute is required for
identification of the Cloud Database CIs,
to ensure relationships between the CIs
and the Cloud Database Clusters can be
made.​
Name [name]

Contains the name of the initial database of
the DB cluster that was provided on creation. If
a name was not specified, the cluster identifier
is used as the name. This name is returned for
the life of the DB cluster.​

FQDN [fqdn]

Specifies the connection endpoint for the
primary instance of the DB cluster.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2175


<!-- page 2176 -->
Table and field

Description

TCP Port [tcp_port]

Port of the database endpoint.

Vendor [vendor]

The vendor, Amazon.

Operational Status [operational_status]

Status of the database, ”available” if
operational.

IP Address [cmdb_ci_ip_address]
IP Address [ip_address]

IP address of the Cloud DB Cluster Writer
endpoint.

Name [name]

The IP address.

Fully qualified domain name [fqdn]

Address of the database endpoint. The DNS
name.

Netmask [netmask]

IP netmask [0.0.0.0].​

CI relationships
CI

Relationship

CI

cmdb_ci_cloud_db_cluster

Cluster off::Cluster​

cmdb_ci_cloud_database

cmdb_ci_cloud_database​

Hosted on::Hosts​

cmdb_ci_aws_datacenter

cmdb_ci_cloud_db_cluster​

Owns::Owned by​

cmdb_ci_ip_address​

cmdb_ci_cloud_database

Owns::Owned by​

cmdb_ci_ip_address​

cmdb_key_value

Reference only​

cmdb_ci_cloud_db_cluster​

cmdb_key_value

Reference only​

cmdb_ci_cloud_database

Amazon DynamoDB discovery using Patterns
The ServiceNow Discovery and Service Mapping applications use the Amazon AWS DynamoDB
pattern to find components of DynamoDB. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
The Amazon AWS DynamoDB pattern deploys REST APIs for fetching information about
DynamoDB. You can also configure Service Mapping and Discovery to discover AWS DynamoDB
components using AWS events.
The ServiceNow AI Platform supports Amazon Commercial Cloud Services (C2S) for discovery
and cloud governance. C2S is the government program that brings AWS into the Intelligence
Community.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
User access
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2176


<!-- page 2177 -->
On the AWS Console, provide a user with the following permissions:
AmazonDynamoDBReadOnly Access and AWSLambdaInvocation-DynamoDB.
Cloud Service Account
®

On the ServiceNow AI Platform , set up the service account with these properties:
• An Account ID, which is the Amazon account ID to which DynamoDB belongs.
Use the Account ID as it appears in the AWS Management Console.
• The appropriate AWS credentials required for the account ID to reach the AWS
cloud.
AWS Credentials
®

On the ServiceNow AI Platform , configure AWS credentials, using a secret key and
an access key.
Entry point for service containing DynamoDB
Use AWS Resource Name Endpoint as the Entry Point Type when creating a service
containing DynamoDB. Provide the Amazon Resource Name (ARN) and host for the
entry point.
(For top-down discovery by Service Mapping) Run horizontal discovery of the Logical
Datacenters
Discover Logical Datacenters hosting DynamoDBs as described in Run Discovery
on an AWS cloud service account in the ServiceNow Cloud Provisioning and
Governance documentation.
Cloud Discovery
For Cloud Discovery, download the Discovery and Service Mapping pattern from the
ServiceNow Store.
MID Server
When installing the MID Server, ensure that the host machine meets or exceeds the
MID Server system requirements .
Discovery schedule
Create a schedule for the relevant AWS service account as described in Schedule
Discovery on a service account in the ServiceNow Cloud Provisioning and
Governance documentation.
Configure AWS event service
To enable alert-based discovery, configure the AWS event service as described in
Set up AWS event processing for Discovery and Service Mapping in the ServiceNow
Cloud Provisioning and Governance documentation.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2177


<!-- page 2178 -->
Data collected by Discovery during horizontal discovery
Table and field

Description

DynamoDB Global Table [cmdb_ci_dynamodb_global_table]
Object ID [object_id]

The Amazon Resource Name
(ARN), expressed in this format:

arn:aws:dynamodb::xxxxxxxxxxxx:table:<table
name>
DynamoDB Table [cmdb_ci_dynamodb_table]
Name [name]

Table name.

Creation date [creation date]

Creation date of DynamoDB according to the
time zone of the MID Server that discovers this
DynamoDB.

Cloud provider [cloud_provider]

Amazon AWS

Object ID [object_id]

The Amazon Resource Name
(ARN), expressed in this format:

arn:aws:dynamodb:<region>:xxxxxxxxxxxx:table
name>
Global ARN [global_arn]

The global ARN of the table for the global
DynamoDB table. This field is empty if the
DynamoDB is not global.

Stream ARN [stream_arn]

The choices are:
• Stream ARN
• Disabled

Service name [service_name]

Set to DynamoDB by default.

Encryption [encryption]

Encryption configuration on DynamoDB. The
choices are:
• Enabled
• Disabled

Replication group [replication_group]

Table ARN of the connected global DynamoDB
tables.

Read Autoscaling [read_autoscaling]

The choices are:
• Enabled
• Disabled

Read Units [read_units]

The number of read units on the DynamoDB
table.

Read Max Units [read_max_units]

The maximum allowed number of read units
on the DynamoDB table.

Read Min Units [read_min_units]

The minimum allowed number of read units on
the DynamoDB table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2178


<!-- page 2179 -->
Table and field

Description

Write Units [write_units]

The number of write units on the DynamoDB
table.

Write Max Units [write_max_units]

The maximum allowed number of write units
on the DynamoDB table.

Write Min Units [write_min_units]

The minimum allowed number of write units on
the DynamoDB table.

Table Size [table_size]

The currently provisioned size of the
DynamoDB table in bytes.

Write Autoscaling [write_autoscaling]

The choices are:
• Enabled
• Disabled

Point-in-Time [point_in_time]

The choices are:
• Enabled
• Disabled

The graphic illustrates CIs that are part of DynamoDB discovery.
Dependency Views showing DynamoDB components

CI relationships
The Amazon AWS DynamoDB pattern creates the following CI relationships:

CI

Relationship

DynamoDB Global Table
Cluster of::Cluster
[cmdb_ci_dynamodb_global_table]

CI

DynamoDB Table
[cmdb_ci_dynamodb_table]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2179


<!-- page 2180 -->
Data collected by Service Mapping during top-down discovery
The Amazon AWS DynamoDB pattern identifies connections from the DynamoDB to AWS
Lambda functions.

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

Related topics
Define a Cloud REST Query for cloud computing devices
Define a Cloud REST Query for cloud computing devices
As part of creating or modifying a discovery pattern, you can use the Cloud REST Query
operation to extract information from configuration items (CIs) of the PaaS (Platform as a Service)
type, such as Microsoft Azure or Amazon Web Services.

Before you begin
• Verify that the operating system of the CIs for which you want to use the Cloud REST Query
operation extends the Logical Data Center OS type [cmdb_ci_logical_datacenter]:
1. Navigate to Pattern Designer > Discovery Patterns.
2. Double-click the relevant pattern to open it in the Pattern Designer.
3. Click the Basic tab.
4. Note the operating system for this CI.
5. Navigate to System Definition > Tables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2180


<!-- page 2181 -->
6. Set the search field to Label and enter the name of the operating system as stated on the
Basic tab of the pattern.
7. Find the operating system in the list and verify that Logical Datacenter appears in the
Extends table column.
• Navigate to the relevant pattern step:
1. On the pattern form, select the relevant identification section for Discovery.
Alternatively, select the relevant identification or connection section for Service Mapping.
2. Select the relevant pattern step or click the Add a step above icon to add a step.
Basic knowledge of programming is desirable.
Role required: pd_admin

About this task

Deploy the Cloud REST Query operation in patterns used for discovery of PaaS CIs. This Javascript based custom operation is available only after downloading patterns version 1.0.24 or later
from ServiceNow Store. Use this operation instead of the Cloud REST Call operation available in
the base system.
Refer to the official API-related documentation provided by manufacturers to obtain the query
syntax for the device you want to query using the Cloud REST Query operation. For example:
• http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html
• https://docs.microsoft.com/en-us/rest/api/apimanagement/

Procedure
1. Select Cloud REST Query from the Operation list.
2. Define query parameters as necessary:

Note: If you customized this operation, the query parameters may be different.
Field

Description

URL

Specify the URL as described in the official
Microsoft Azure or Amazon Web Services
documentation.
You can use variables. You can also enter
a value from the specific field in a tabular
variable.

Method

Enter the method value as a string using all
capital letters, for example "GET". Supported
methods are:
◦ GET
◦ POST
◦ PUT

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2181


<!-- page 2182 -->
Field

Description

Refer to the relevant API guide for
information. If the API documentation does
not specifically mention the HTTP query
method, use the GET method.
Body

(Optional) Enter a request body as a string.
If the string contains quotation marks, use
the backslash mark in front of the quotation
marks to indicate that the string does not end
at the quotation marks.

Headers

(Optional) If the relevant API documentation
states that HTTP headers must be sent, enter
these headers in the following format:
Header_name1:header_value1,header_name2:header_value2
For example, Content-Type:xml.

Formatted

Formatted JSON or not

3. To save the command output in its entirety as a variable, select NONE from the Define Parsing
list and define the variable.
4. Select the parsing strategy from the Define Parsing list.
5. If working in the Debug Mode, define the parsing criteria as follows:
a. Click Run Operation to see the result in the Output pane.
b. In the Output pane, mark text or symbols that you want a variable to contain.
c. In the variable name box, enter the name for the new variable, for example 'process_name'.

d. Press Enter.
The new variable is added in the Variables pane.
6. If you are not working in Debug Mode, define the parsing criteria as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2182


<!-- page 2183 -->
a. In the Variables pane, click Add Variable and enter the name for the new variable.
b. Click the Advanced icon.

c. Click Add Column Label.
d. Enter the parsing query.
e. Enter a value for the delimiter.
f. Enter a value for the position.
7. Select Terminate to stop discovery if no results are found.

Example:
This operation is used in

This item

Hierarchy

Application

CI Type

Cloud Object Storage
[cmdb_ci_cloud_object_storage]

Pattern

Amazon AWS S3

Section

Identification of AWS S3

Step number and Name

3. List buckets

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2183


<!-- page 2184 -->
Use the Cloud REST Query operation to extract information about AWS buckets, their names and
creation dates.
Amazon DynamoDB Cluster pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2184


<!-- page 2185 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - DynamoDB Cluster - Extended Inventory (LP) pattern.
Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster]
Field

Description

Name [name]

The name assigned to the DynamoDB
Accelerator (DAX) cluster.

Cluster ID [cluster_id]

The Amazon Resource Name (ARN) uniquely
identifying the DAX cluster.

Cluster Status [cluster_status]

The current operational status of the DAX
cluster.

Cluster Type [cluster_type]

Cluster type: DynamoDB Cluster.

Fully qualified domain name [fqdn]

The endpoint address used to connect to the
DAX cluster.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Node Count [node_count]

The total number of nodes in the DAX cluster.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Description of the cluster: DynamoDB Cluster.

Vendor [vendor]

Name of the vendor: Amazon.

Cluster Node [cmdb_ci_cluster_node]
Field

Description

Name [name]

The unique identifier of the DAX node within
the cluster.

Serial Number [serial_number]

Unique identifier of the node in the following
format: <cluster_arn>/node/<node_id>.

Node Status [node_status]

The current operational status of the node. For
example: available, joining, or deleting.

Fully qualified domain name [fqdn]

The endpoint address used to connect to the
specific DAX node.

Install Status [install_status]

Install status of the node. Default value is
Installed.

Operational Status [operational_status]

Operational status of the node. Default value is
Operational.

Cluster [cluster]

References the Cloud Database Cluster
[cmdb_ci_cloud_db_cluster] table.

Description [short_description]

Description of the node: DynamoDB Cluster
Node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2185


<!-- page 2186 -->
CI relationships
The Amazon AWS - DynamoDB Cluster - Extended Inventory (LP) pattern creates these
relationships to support Amazon DynamoDB Cluster discovery.

CI

Relationship

CI

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Cluster Node
[cmdb_ci_cluster_node]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Cluster Node
[cmdb_ci_cluster_node]

Cluster of::Cluster

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Cluster Node
[cmdb_ci_cluster_node]

References

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Elastic Compute Cloud (EC2) Amazon Elastic Block Store (EBS) Snapshot patternbased discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2186


<!-- page 2187 -->
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Elastic Compute Cloud EBS Snapshot - Extended Inventory (LP) pattern.
Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot]
Field

Description

Object ID [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the EBS Snapshot.
The ARN consists of the AWS region, account
ID, and snapshot ID in the following format:
arn:aws:ec2:<region>:<accountId>:snapshot/
<snapshot_id>.

Name [name]

The unique identifier for the EC2 snapshot.

State [state]

The current state of the snapshot. For
example: pending or completed.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Encrypted [is_encrypted]

Indicates whether the snapshot is encrypted.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::Elastic Compute Cloud::EBS Snapshot.

Size (GB) [size]

The size of the resource expressed in
gigabytes (GB).

Size bytes [size_bytes]

The size of the snapshot in bytes.

Volume Name [volume_name]

The identifier of the volume associated with
the snapshot.

CI relationships
The Amazon AWS - Elastic Compute Cloud EBS Snapshot - Extended Inventory (LP) pattern
creates these relationships to support Amazon EC2 Amazon EBS Snapshot discovery.

CI

Relationship

Storage Volume Snapshot
Hosted on::Hosts
[cmdb_ci_storage_vol_snapshot]

CI

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2187


<!-- page 2188 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Elastic Compute Cloud (EC2) Reserved Instance pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Elastic Compute Cloud Reserved Instance - Extended
Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Elastic Compute Cloud - Reserved Instance
[cmdb_aws_elastic_cloud_compute_reserved_instance]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the Reserved Instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2188


<!-- page 2189 -->
AWS Elastic Compute Cloud - Reserved Instance
[cmdb_aws_elastic_cloud_compute_reserved_instance] (continued)
Field

Description

The ARN consists of the region, account
ID, and instance ID in the following format:
arn:aws:ec2:<region>:<accountId>:reservedinstances/<instance_id>.
Name [name]

The unique identifier assigned to the EC2
instance.

State [state]

The current status or lifecycle state of the EC2
instance.

Configuration Item [configuration_item]

References the Virtual Machine Instance
[cmdb_ci_vm_instance] table.

Instance Type [instance_type]

The type of EC2 instance. For example:
t2.micro or m5.large.

Scope [scope]

The reservation scope. For example: Regional
or Availability Zone.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Elastic Compute Cloud Reserved Instance - Extended Inventory (LP) pattern.
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the Reserved
Instance.
The ARN consists of the region, account
ID, and instance ID in the following format:
arn:aws:ec2:<region>:<accountId>:reservedinstances/<instance_id>.

Name [name]

The unique identifier assigned to the EC2
instance.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::Elastic Compute Cloud::Reserved
Instance.

CI relationships
The Amazon AWS - Elastic Compute Cloud Reserved Instance - Extended Inventory (LP) pattern
creates these relationships to support Amazon EC2 Reserved Instance discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2189


<!-- page 2190 -->
CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_vm_instance]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Elastic Compute
References
Cloud - Reserved Instance
[cmdb_aws_elastic_cloud_compute_reserved_instance]

Virtual Machine Instance
[cmdb_ci_vm_instance]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Elastic Compute Cloud (EC2) virtual private cloud (VPC) Endpoint Service patternbased discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2190


<!-- page 2191 -->
Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Elastic Compute Cloud VPC Endpoint Service - Extended
Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Elastic Compute Cloud - VPC Endpoint Service
[cmdb_aws_elastic_cloud_compute_vpc_endpoint_service]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the VPC Endpoint Service.
The ARN consists of the AWS region, account
ID, and service ID in the following format:
arn:aws:ec2:<region>:<accountId>:vpcendpoint-service/<service_id>.

Name [name]

The name assigned to the VPC endpoint
service.

Configuration Item [configuration_item]

References the Cloud Gateway
[cmdb_ci_cloud_gateway] table.

Is Customer Managed [is_customer_managed] Indicates whether the VPC Endpoint Service is
managed by a customer or AWS.
Service ID [service_id]

The unique identifier for the VPC endpoint
service.

Service Type [service_type]

The type of the VPC endpoint service. For
example: Interface or Gateway.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Elastic Compute Cloud VPC Endpoint Service - Extended Inventory (LP)
pattern.
Cloud Gateway [cmdb_ci_cloud_gateway]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the VPC
Endpoint Service.
The ARN consists of the AWS region, account
ID, and service ID in the following format:
arn:aws:ec2:<region>:<accountId>:vpcendpoint-service/<service_id>.

Name [name]

The name assigned to the VPC endpoint
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2191


<!-- page 2192 -->
Cloud Gateway [cmdb_ci_cloud_gateway] (continued)
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::Elastic Compute Cloud::VPC Endpoint
Service.

CI relationships
The Amazon AWS - Elastic Compute Cloud VPC Endpoint Service - Extended Inventory (LP)
pattern creates these relationships to support Amazon EC2 VPC Endpoint Service discovery.

CI

Relationship

CI

Cloud Gateway
[cmdb_ci_cloud_gateway]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Elastic Compute Cloud
References
- VPC Endpoint Service
[cmdb_aws_elastic_cloud_compute_vpc_endpoint_service]

Cloud Gateway
[cmdb_ci_cloud_gateway]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Elastic Compute Cloud (EC2) virtual private cloud (VPC) Peering Connection patternbased discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2192


<!-- page 2193 -->
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Elastic Compute Cloud VPC Peering Connection - Extended
Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Elastic Compute Cloud - VPC Peering Connection
[cmdb_aws_elastic_compute_cloud_vpc_peering_connection]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the VPC Peering Connection.
The ARN consists of the region, account
ID, and VPC ID in the following format:
arn:aws:ec2:<region>:<accountId>:vpcpeering-connection/<vpc_id>.

Name [name]

The unique identifier of the VPC involved in
the peering connection.

Status [status]

The current status of the VPC peering
connection.

Configuration Item [configuration_item]

References the Cloud Gateway
[cmdb_ci_cloud_gateway] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Elastic Compute Cloud VPC Peering Connection - Extended Inventory (LP)
pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2193


<!-- page 2194 -->
Cloud Gateway [cmdb_ci_cloud_gateway]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the VPC Peering
Connection.
The ARN consists of the region, account
ID, and VPC ID in the following format:
arn:aws:ec2:<region>:<accountId>:vpcpeering-connection/<vpc_id>.

Name [name]

The unique identifier of the VPC involved in
the peering connection.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::EC2::VPCPeeringConnection.

CI relationships
The Amazon AWS - Elastic Compute Cloud VPC Peering Connection - Extended Inventory (LP)
pattern creates these relationships to support Amazon EC2 VPC Peering Connection discovery.

CI

Relationship

CI

Cloud Gateway
[cmdb_ci_cloud_gateway]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Elastic Compute Cloud
References
- VPC Peering Connection
[cmdb_aws_elastic_compute_cloud_vpc_peering_connection]

Cloud Gateway
[cmdb_ci_cloud_gateway]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon ECS resource discovery with Patterns
The ServiceNow Discovery application uses the Amazon AWS - ECS pattern to find resources
managed by the Amazon Elastic Container Service (Amazon ECS). This includes resources
that are run on the Fargate launch type. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2194


<!-- page 2195 -->
Amazon ECS is a highly scalable, fast, container management service that makes it easy to run,
stop, and manage Docker containers. AWS Fargate is a compute engine for Amazon ECS that
enables AWS customers to run containers without having to manage servers or clusters.
Discovery uses the Amazon AWS - ECS pattern to run horizontal discovery.
Starting with Discovery and Service Mapping Patterns version 1.18.0, the Amazon AWS - ECS
pattern supports the discovery of Amazon Elastic Container Registry (Amazon ECR) images. For
more information on container scanning, see Scan container images.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Create AWS credentials with ECS resources viewing privileges
In the AWS console, create AWS credentials with privileges to view ECS resources.
For more information, see: https://docs.aws.amazon.com/en_pv/AmazonECS/
latest/userguide/get-set-up-for-amazon-ecs.html .

Note: The API requests use AWS Signature Version 4 to authenticate. When
the correct credentials are provided, authentication is done internally for the
Cloud API Call pattern steps.
Create AWS cloud credential records or use temporary credentials
In the ServiceNow AI Platform, create AWS credential records. You can also use a
temporary credential generated by the AWS Security Token Service (AWS STS) for
IAM roles. For more information, see Cloud credentials
Create AWS cloud service accounts
• In the ServiceNow AI Platform, create AWS cloud service accounts using
permanent or temporary AWS credentials. For more information, see Setting up
AWS service accounts.
• In the Cloud Service Account record, select Discover Datacenters to find AWS
Datacenters (LDCs) for the configured AWS cloud service account.
Schedule an AWS discovery
In the ServiceNow AI Platform, schedule either a full AWS pattern discovery or only
an ECS pattern discovery.
• For more information on scheduling a cloud discovery, see Create a discovery
schedule in Cloud Discovery Workspace.
• For more information about creating a serverless schedule for Amazon ECS
discovery, see Create a serverless schedule for Amazon ECS discovery.
Verify configuration of VM Object record to find the resource Tags
To enable the pattern to find the resource Tags, the parent ECS table (VM Object)
must have a related entry for the cmdb_key_value table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2195


<!-- page 2196 -->
1. In the ServiceNow AI Platform navigation bar, navigate to All > Configuration >
Identification/Reconciliation, and select CI Identifiers.
2. Search for and open the VM Object record.
3. Select the Related Entries tab and make sure it’s configured as shown in the VM
Object Related Entry figure. If it isn’t, specify a new related entry: In the Related
Entries related list, select New, fill out the form, and then select Submit.
VM Object Related Entry

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

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Amazon AWS - ECS pattern.
AWS Cloud ECS Cluster [cmdb_ci_cloud_ecs_cluster]
Field

Description

Object ID [object_id]

The Amazon Resource Name (ARN) that identifies the
cluster.

Name [name]

A user-generated string used to identify the cluster.

Registered Container Instances Count The number of container instances registered to the
[registered_container_instances_count] cluster. The status of these container instances can
be either ACTIVE or DRAINING.
AWS Cloud ECS TaskDefinition [cmdb_ci_cloud_ecs_task_definition]
Field

Description

Object ID [object_id] The full ARN of the task definition.
Name [name]

The name of the family to which this task definition is registered.

Revision [revision]

The revision of the task in a particular family. This is the version number
of the task definition in a family.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2196


<!-- page 2197 -->
AWS Cloud ECS TaskDefinition [cmdb_ci_cloud_ecs_task_definition] (continued)
Field

Description

Network Mode
[network_mode]

The Docker networking mode to use for the containers in the task. Valid
values: None, bridge, awsvpc, host.

CPU [cpu]

The number of CPU units used by the task.

Memory [memory]

The amount of memory, in mebibyte (MiB), used by the task.

AWS Cloud ECS Task [cmdb_ci_cloud_ecs_task]
Field

Description

Object ID [object_id]

The ARN that identifies the task.

Name [name]

A user-generated string used to identify the task.

Launch Type [launch_type]

The launch type on which the task runs.

Operational status
[operation_status]

The health status of the task, determined by the health of the
essential containers in it.

CPU [cpu]

The number of CPU units used by the task, as stated in the task
definition.

Memory [memory]

The amount of memory, in MiB, used by the task, as stated in the
task definition.

AWS Cloud ECS Service [cmdb_ci_cloud_ecs_service]
Field

Description

Object ID [object_id]

The ARN that identifies the service.

Name [name]

The name of the service.

Launch Type [launch_type]

The launch type on which the service runs.

Scheduling Strategy [scheduling_strategy]

The scheduling strategy to use for the service.

Docker Container [cmdb_ci_docker_container]
Field

Description

Container id [container_id]

The ARN of the container.

Name [name]

The name of the container.

Status [status]

The last-known status of the container.

Operational status [operational_status] The health status of the container.
CPU [cpu]

The number of CPU units set for the container.

Memory [memory]

The hard limit of memory, in MiB, set for the container.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2197


<!-- page 2198 -->
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Object ID The ARN that identifies the virtual machine (VM) instance.
[object_id]
Note: Complete Virtual Machine Instance information is discovered in a
different EC2 cloud pattern. In Amazon ECS resource discovery, only the
object_id is parsed to aid with the unique identification of the CI.

Key Value [cmdb_key_value]
Field

Description

Key [key]

The Tag key.

Value [value]

The Tag value.

Docker Image [cmdb_ci_docker_image]
Field

Description

Name [name]

Name of the Docker image.

Image Digest [image_digest]

Unique identifier for the Docker image.

Image ID [image_id]

12-character length unique identifier for the Docker image.

Container Repository [cmdb_ci_container_repository]
Field

Description

Name [name]

Fully qualified name of the repository containing the Docker image.

Container Repository Entry [cmdb_ci_container_repository_entry]
Field

Description

Name [name]

The Docker image tag.

Category [category]

Fully qualified name of the repository containing the Docker image.

On the Dependency Views map, you can see all discovered resources in your organization that
are managed by Amazon ECS, and the relationships between them.
In this example, the AWS Cloud ECS Cluster CI is hosted on an AWS Datacenter. It runs two AWS
Cloud ECS Tasks and two AWS Cloud ECS Services, and uses three Docker Containers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2198


<!-- page 2199 -->
Dependency Views sample map

CI relationships
These relationships are created to support Amazon ECS resource discovery.

CI

Relationship

CI

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Uses::Used by

Virtual Machine Instance
[cmdb_ci_vm_instance]

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Runs::Runs on

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Runs::Runs on

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Hosted on::Hosts

AWS datacenters

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Extends from

Virtual Machine Object
[cmdb_ci_vm_object]

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

Uses::Used by

AWS Cloud ECS
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

Hosted on::Hosts

AWS Datacenters

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

Runs on::Runs

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

Extends from

Virtual Machine Object
[cmdb_ci_vm_object]

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Runs on::Runs

Virtual Machine Instance
[cmdb_ci_vm_instance]

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Runs on::Runs

Docker Container
[cmdb_ci_docker_container]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2199


<!-- page 2200 -->
CI

Relationship

CI

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Uses::Used by

AWS Cloud ECS
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Hosted on::Hosts

AWS Datacenters

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Runs on::Runs

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Extends from

Virtual Machine Object
[cmdb_ci_vm_object]

AWS Cloud ECS
Used by::Uses
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

AWS Cloud ECS Service
[cmdb_ci_cloud_ecs_service]

AWS Cloud ECS
Used by::Uses
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

AWS Cloud ECS
Hosted on::Hosts
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

AWS Datacenters

AWS Cloud ECS
Extends from
TaskDefinition
[cmdb_ci_cloud_ecs_task_definition]

Virtual Machine Object
[cmdb_ci_vm_object]

Container Repository
Hosted on::Hosts
[cmdb_ci_container_repository]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Container Repository Entry
Hosted on::Hosts
[cmdb_ci_container_repository_entry]

Container Repository
[cmdb_ci_container_repository]

Docker Container
[cmdb_ci_docker_container]

Hosted on::Hosts

AWS Datacenters

Docker Container
[cmdb_ci_docker_container]

Runs::Runs on

AWS Cloud ECS Task
[cmdb_ci_cloud_ecs_task]

Docker Container
[cmdb_ci_docker_container]

Used by::Uses

AWS Cloud ECS Cluster
[cmdb_ci_cloud_ecs_cluster]

Docker Image
[cmdb_ci_docker_image]

Provisioned From::Provisioned Container Repository Entry
[cmdb_ci_container_repository_entry]

Docker Image
[cmdb_ci_docker_image]

Instantiates::Instantiated by

Docker Container
[cmdb_ci_docker_container]

Create a serverless schedule for Amazon ECS discovery
Create a serverless schedule to discover Amazon Elastic Container Service (Amazon ECS) and
Amazon Elastic Container Registry (ECR) resources in a standalone discovery.

Before you begin

Verify you have an AWS service account ID and have created AWS credentials. For more
information, see the prerequisites section in Amazon ECS resource discovery with Patterns.
Role required: discovery_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2200


<!-- page 2201 -->
About this task

Discovering ECR resources requires running the Amazon AWS - ECS pattern before using Aqua
Trivy to scan container images. To discover only ECS and ECR resources without performing a
full AWS pattern discovery, create a serverless discovery schedule using the Amazon AWS - ECS
pattern.

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. Create the discovery schedule record.
a. Select New.
b. On the form, fill in the fields.
Discovery Schedule New record form
Field

Description

Name

Unique name for this discovery schedule.

Discover

Scan type, which should be Serverless.

MID server

Name of the MID Server to use for this schedule.

Active

Enables this schedule for discovery.

Run

Determines the run schedule of the discovery.

c. Select Submit.
3. Create the execution pattern.
a. In the Discovery Schedules page, select the record you created.
b. In the Serverless Execution Patterns tab, select New.
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.

Pattern Pattern to be used for this schedule, which should be Amazon AWS - ECS.
Proxy
Host

Fully qualified domain name of the machine on which you're installing the proxy
server, which should be Global.

Active

Enables this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2201


<!-- page 2202 -->
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.

Parameter

Value

cloud_account_id

AWS cloud service account ID.

cloud_cred_id

Sys_id of the AWS credentials you created on the ServiceNow AI
Platform.

cloud_datacenter_type Name of the AWS Datacenter table, which should be
cmdb_ci_aws_datacenter.
c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
Related topics
Amazon ECS resource discovery with Patterns
Scan container images
Amazon Elastic File System (Amazon EFS) pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2202


<!-- page 2203 -->
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Elastic File System - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Elastic File System [cmdb_aws_elastic_file_system_file_system]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) for the file
system.

Name [name]

The assigned name of the Amazon EFS file
system.

Configuration Item [configuration_item]

References the Cloud Directory
[cmdb_ci_cloud_directory] table.

File System ID [file_system_id]

The unique identifier of the Amazon EFS file
system.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Elastic File System - Extended Inventory (LP) pattern.
Cloud Directory [cmdb_ci_cloud_directory]
Field

Description

Object ID [object_id]

The ARN for the file system.

Name [name]

The assigned name of the Amazon EFS file
system.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::Elastic File System::File System.

CI relationships
The Amazon AWS - Elastic File System - Extended Inventory (LP) pattern creates these
relationships to support Amazon EFS discovery.

CI

Relationship

CI

Cloud Directory
[cmdb_ci_cloud_directory]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2203


<!-- page 2204 -->
CI

Relationship

CI

AWS Elastic File System
References
[cmdb_aws_elastic_file_system_file_system]

Cloud Directory
[cmdb_ci_cloud_directory]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon ElastiCache discovery with Patterns
®

The ServiceNow Discovery application uses the Amazon ElastiCache discovery pattern to find
Redis clusters deployed as part of the ElastiCache service. ElastiCache is compatible with both
Redis and Memcached, but the pattern collects information only for Redis.
Amazon ElastiCache is a fully managed, in-memory caching service available on AWS.

Prerequisites
• Install the Discovery and Service Mapping Patterns application from the ServiceNow Store.
• Configure an AWS Service Account with valid credentials on the ServiceNow instance with
permission to run the following APIs:
◦ https://elasticache.{region}.amazonaws.com?
Action=DescribeReplicationGroups&Version=2015-02-02
◦ https://tagging.{region}.amazonaws.com {"ResourceTypeFilters":
[]}

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

Data collected by Discovery during horizontal discovery
Replication groups are stored in the Cloud Database Clusters [cmdb_ci_cloud_db_cluster] table
and node group members are stored in the Cloud Databases [cmdb_ci_cloud_database] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2204


<!-- page 2205 -->
Field

Description

Amazon resource name

Name of the resource for each replication
group and each node group member.

FQDN

Fully qualified domain name for each node
group member.

Port

Port used by each node group member.

Amazon ElastiCache Snapshot pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - ElastiCache Snapshot - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS ElastiCache - Snapshot [cmdb_aws_elasticache_snapshot]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the ElastiCache snapshot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2205


<!-- page 2206 -->
AWS ElastiCache - Snapshot [cmdb_aws_elasticache_snapshot] (continued)
Field

Description

Name [name]

The name of the snapshot.

Status [status]

The current status of the snapshot.

Cache Cluster ID [cache_cluster_id]

The identifier of the cache cluster from which
the snapshot was taken.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Engine [engine]

The type of caching engine used. For example:
Redis or Memcached.

Engine Version [engine_version]

The version of the cache engine used for the
snapshot.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - ElastiCache Snapshot - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the ElastiCache
snapshot.

Name [name]

The name of the snapshot.

Resource type [resource_type]

Type of resource. The value is set to
AWS::ElastiCache::Snapshot.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - ElastiCache Snapshot - Extended Inventory (LP) pattern creates these
relationships to support Amazon ElastiCache Snapshot discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS ElastiCache - Snapshot
References
[cmdb_aws_elasticache_snapshot]

Cloud Resource
[cmdb_ci_cmp_resource]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2206


<!-- page 2207 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Managed Workflows for Apache Airflow (MWAA) Environment pattern-based
discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Managed Workflows for Apache Airflow Environment Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2207


<!-- page 2208 -->
AWS Managed Workflows for Apache Airflow Environment
[cmdb_aws_managed_workflows_for_apache_airflow_environment]
Field

Description

Name [name]

The display name or identifier for the Airflow
environment.

Airflow Version [airflow_version]

The specific version of Apache Airflow running
in the environment.

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the Airflow environment.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Managed Workflows for Apache Airflow Environment - Extended Inventory
(LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Name [name]

The display name or identifier for the Airflow
environment.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Object ID [object_id]

The ARN uniquely identifying the Airflow
environment.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::MWAA::Environment.

CI relationships
The Amazon AWS - Managed Workflows for Apache Airflow Environment - Extended Inventory
(LP) pattern creates these relationships to support Amazon MWAA Environment discovery.

CI

Relationship

CI

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Managed Workflows for
References
Cloud App Server
Apache Airflow Environment
[cmdb_ci_cloud_appserver]
[cmdb_aws_managed_workflows_for_apache_airflow_environment]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2208


<!-- page 2209 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Relational Database Service (Amazon RDS) discovery with Patterns
Discovery and Service Mapping Patterns uses the Amazon AWS Relational Database Service
pattern to find Amazon RDS components in your environment. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Amazon RDS is a managed relational database service by Amazon Web Services (AWS). Amazon
RDS enables you to create and manage relational database instances in the cloud.
The ServiceNow AI Platform supports Amazon Commercial Cloud Services (C2S) for discovery
and cloud governance. C2S is the government program that brings AWS into the Intelligence
Community.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites section in AWS discovery using patterns.

Support for AWS services in the China region
The latest version of Discovery and Service Mapping Patterns supports discovering AWS
services in the China region. You can discover these services on the ServiceNow AI Platform,
starting from Xanadu Patch 3 and Washington DC Patch 9 instances.
Discovering AWS services in the China region requires using a datacenter URL when
setting up an AWS service account. For example: https://organizations.cnnorthwest-1.amazonaws.com.cn.
• To learn more about AWS master account and sub-account support in the China region, see
KB1704526 .
• To identify AWS patterns supported in the China region, refer to the Cloud Discovery patterns
spreadsheet. The AWS China Region Support column has a Yes value for supported patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Amazon AWS Relational Database
Service pattern.
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Object ID [object_id]

Unique identifier for the RDS database instance, assigned by
AWS.

Name [name]

Name of the database. If no database name is provided, the
value is the same as the Object ID.

Fully qualified domain name
[fqdn]

Fully qualified domain name (FQDN) endpoint used to connect
to the database instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2209


<!-- page 2210 -->
Cloud DataBase [cmdb_ci_cloud_database] (continued)
Field

Description

TCP port(s) [tcp_port]

Port number on which the database instance accepts
connections.

Type [type]

Database engine type.
For example: mysql, postgres, or aurora.

Version [version]

Database engine version number.

Category [category]

DB instance class that specifies the compute and memory
capacity.
For example: db.t3.micro or db.m5.large.

IP Address [ip_address]

IP address resolved from the FQDN.

State [state]

State of the database instance.
For example: Available or Terminated.

Automated Backups
[automated_backup]

Indicates whether automated backups are enabled and
the retention period. Possible values are either Disabled or
Enabled (X Days), where X represents the backup retention
period in days.

Deletion Protection Enabled
Indicates whether deletion protection is enabled for the
[deletion_protection_enabled] database instance. Possible values are true or false.
• true: Deletion protection is enabled and the database can't
be deleted
• false: Deletion protection is disabled
IAM Authentication Enabled
Indicates whether AWS Identity and Access Management
[iam_authentication_enabled] (IAM) database authentication is enabled. Possible values are
true or false.
• true: IAM authentication is enabled and you can use IAM
credentials to authenticate to the database
• false: IAM authentication is disabled
Storage Encrypted
[storage_encrypted]

Indicates whether the database storage is encrypted.

Multiple Availability Zones
[multi_az]

Indicates whether the database instance is deployed across
multiple Availability Zones for high availability.

Publicly Enabled
[publicly_enabled]

Indicates whether the database instance is publicly accessible
from the internet.

Vendor [vendor]

Database vendor.
Value is set to Amazon.

Install Status [install_status]

Install status of the database instance. Default value is
Installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2210


<!-- page 2211 -->
Cloud DataBase [cmdb_ci_cloud_database] (continued)
Field

Description

Operational status
[operational_status]

Operational status of the database instance. Default value is
Operational.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address resolved from the database instance FQDN.

Netmask [netmask]

Network mask for the IP address.
Value is set to 0.0.0.0.

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Object ID [object_id]

Availability Zone identifier.

Name [name]

Availability Zone name.

Cloud Network [cmdb_ci_network]
Field

Description

Object ID
[object_id]

Virtual Private Cloud (VPC) identifier for the network containing the
database instance.

CI relationships
The Amazon AWS Relational Database Service pattern creates these relationships to support
Amazon RDS discovery.

CI

Relationship

CI

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Cloud DataBase
by
[cmdb_ci_cloud_database]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Cloud DataBase
[cmdb_ci_cloud_database]

Owns::Owned by

IP Address [cmdb_ci_ip_address]

Cloud DataBase
[cmdb_ci_cloud_database]

Uses::Used by

Cloud Network [cmdb_ci_network]

Cloud Network [cmdb_ci_network]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Key Value [cmdb_key_value]

References

Cloud DataBase
[cmdb_ci_cloud_database]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2211


<!-- page 2212 -->
AWS Tag discovery
The Amazon AWS Relational Database Service pattern collects tags and populates them in the
Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud DataBase
[cmdb_ci_cloud_database] table.

Amazon Relational Database Services (RDS) DB Snapshot pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Relational Database Services DB Snapshot - Extended
Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2212


<!-- page 2213 -->
AWS Relational Database Services - DB Snapshot
[cmdb_aws_relational_database_services_db_snapshot]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) that
uniquely identifies the database snapshot.

Name [name]

A unique identifier for the RDS database
snapshot.

Availability Zone [availability_zone]

The availability zone where the database
snapshot was created.

Status [status]

The current state or progress of the database
snapshot.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

DB Instance Identifier [db_instance_identifier]

The identifier of the RDS DB instance
associated with the snapshot.

Engine [engine]

The database engine used for the snapshot.
For example: MySQL or PostgreSQL.

Engine Version [engine_version]

The version of the database engine for the
snapshot.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Relational Database Services DB Snapshot - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The ARN that uniquely identifies the database
snapshot.

Name [name]

A unique identifier for the RDS database
snapshot.

Resource type [resource_type]

Type of resource. The value is set to
AWS::RDS::DBSnapshot.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - Relational Database Services DB Snapshot - Extended Inventory (LP) pattern
creates these relationships to support Amazon RDS DB Snapshot discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2213


<!-- page 2214 -->
CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Relational Database
References
Services - DB Snapshot
[cmdb_aws_relational_database_services_db_snapshot]

Cloud Resource
[cmdb_ci_cmp_resource]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Redshift discovery with Patterns
®

The ServiceNow Discovery application uses the Amazon AWS Redshift pattern to find Redshift
data warehouse services available on Amazon Web Services (AWS). Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Redshift runs as a cluster of compute nodes with an additional leader node. The leader node
acts as an interface with client applications and coordinates communication between the
compute nodes.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites section in AWS discovery using patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Amazon AWS Redshift pattern.
Amazon Redshift [cmdb_ci_aws_redshift]
Field

Description

Name [name]

Name of the Redshift cluster.

Object ID [object_id]

A unique identifier constructed from the
Redshift namespace Amazon Resource Name
(ARN) and the cluster name in the following
format:
arn:aws:redshift:<region>:<accountid>:cluster:<cluster-name>.

Start date [start_date]

Timestamp when the Redshift cluster was
created.

Cluster Availability Status
[cluster_availability_status]

Current availability status of the Redshift
cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2214


<!-- page 2215 -->
Amazon Redshift [cmdb_ci_aws_redshift] (continued)
Field

Description

For example: Available, Unavailable, or
Maintenance.
VPC ID [vpc_id]

ID of the virtual private cloud (VPC) in which
the Redshift cluster is deployed.

Node Count [node_count]

Total number of compute nodes in the
Redshift cluster.

Node Type [node_type]

Type of compute nodes used in the Redshift
cluster.

Fully qualified domain name [fqdn]

Fully qualified domain name (FQDN) of the
Redshift cluster endpoint.

TCP port(s) [tcp_port]

TCP port used by the Redshift cluster for client
connections.

IP Address [ip_address]

IP address associated with the Redshift cluster
endpoint.

Availability Zone [availability_zone]

References the Availability Zone
[cmdb_ci_availability_zone] table.

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Name of the avaiability zone.

Object ID [object_id]

Name of the avaiability zone.

CI relationships
Discovery creates these relationships to support the Amazon Redshift discovery.

CI

Relationship

CI

Amazon Redshift
[cmdb_ci_aws_redshift]

References

Availability Zone
[cmdb_ci_availability_zone]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Key Value [cmdb_key_value]

References

Amazon Redshift
[cmdb_ci_aws_redshift]

Tag discovery
The Amazon AWS Redshift pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2215


<!-- page 2216 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Amazon Redshift [cmdb_ci_aws_redshift]
table.

Amazon Redshift Serverless Namespace pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Redshift Serverless Namespace - Extended Inventory (LP)
pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2216


<!-- page 2217 -->
AWS Redshift Serverless - Namespace [cmdb_aws_redshift_serverless_namespace]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the namespace.

Name [name]

The name assigned to the Redshift Serverless
namespace.

Configuration Item [configuration_item]

References the Cloud DataBase
[cmdb_ci_cloud_database] table.

DB Name [db_name]

The name of the database associated with the
namespace.

Namespace ID [namespace_id]

The unique identifier assigned to the Redshift
Serverless namespace.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Redshift Serverless Namespace - Extended Inventory (LP) pattern.
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the namespace.

Name [name]

The name assigned to the Redshift Serverless
namespace.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::Redshift Serverless::Namespace.

CI relationships
The Amazon AWS - Redshift Serverless Namespace - Extended Inventory (LP) pattern creates
these relationships to support Amazon Redshift Serverless Namespace discovery.

CI

Relationship

CI

Cloud DataBase
[cmdb_ci_cloud_database]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Redshift
References
Serverless - Namespace
[cmdb_aws_redshift_serverless_namespace]

Cloud DataBase
[cmdb_ci_cloud_database]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2217


<!-- page 2218 -->
AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon Redshift Serverless Snapshot pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Redshift Serverless Snapshot - Extended Inventory (LP)
pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2218


<!-- page 2219 -->
AWS Redshift Serverless - Snapshot [cmdb_aws_redshift_serverless_snapshot]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the resource.

Name [name]

The user-defined name of the resource.

Status [status]

The current state or condition of the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Redshift Serverless Snapshot - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the resource.

Name [name]

The user-defined name of the resource.

Resource type [resource_type]

Type of resource. The value is set to
AWS::Redshift Serverless::Snapshot.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - Redshift Serverless Snapshot - Extended Inventory (LP) pattern creates
these relationships to support Amazon Redshift Serverless Snapshot discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Redshift
References
Serverless - Snapshot
[cmdb_aws_redshift_serverless_snapshot]

Cloud Resource
[cmdb_ci_cmp_resource]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2219


<!-- page 2220 -->
Key Value [cmdb_key_value] (continued)
Field

Description

Value [value]

Tag value.

Amazon Redshift Serverless Workgroup pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Redshift Serverless Workgroup - Extended Inventory (LP)
pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Redshift Serverless - Workgroup [cmdb_aws_redshift_serverless_workgroup]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) that
uniquely identifies the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2220


<!-- page 2221 -->
AWS Redshift Serverless - Workgroup [cmdb_aws_redshift_serverless_workgroup]
(continued)
Field

Description

Name [name]

The name assigned to the resource or
workgroup.

Status [status]

The current operational status of the resource
or workgroup.

Configuration Item [configuration_item]

References the Cloud DataBase
[cmdb_ci_cloud_database] table.

Workgroup ID [workgroup_id]

The unique identifier for the Redshift
Serverless workgroup.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Redshift Serverless Workgroup - Extended Inventory (LP) pattern.
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Object ID [object_id]

The ARN that uniquely identifies the resource.

Name [name]

The name assigned to the resource or
workgroup.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::Redshift Serverless::Workgroup.

CI relationships
The Amazon AWS - Redshift Serverless Workgroup - Extended Inventory (LP) pattern creates
these relationships to support Amazon Redshift Serverless Workgroup discovery.

CI

Relationship

CI

Cloud DataBase
[cmdb_ci_cloud_database]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Redshift
References
Serverless - Workgroup
[cmdb_aws_redshift_serverless_workgroup]

Cloud DataBase
[cmdb_ci_cloud_database]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2221


<!-- page 2222 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Amazon SageMaker Training Job pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - SageMaker Training Job - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS SageMaker - Training Job [cmdb_aws_sagemaker_training_job]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the training job.

Name [name]

The user-defined name for the training job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2222


<!-- page 2223 -->
AWS SageMaker - Training Job [cmdb_aws_sagemaker_training_job] (continued)
Field

Description

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

Secondary Status [secondary_status]

The additional status information providing
more detail about the training job's progress.

Training Job Status [training_job_status]

The current status of the training job.

Training Plan ARN [training_plan_arn]

The ARN of the training plan associated with
the job.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - SageMaker Training Job - Extended Inventory (LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the training job.

Name [name]

The user-defined name for the training job.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::SageMaker::Training Job.

CI relationships
The Amazon AWS - SageMaker Training Job - Extended Inventory (LP) pattern creates these
relationships to support Amazon SageMaker Training Job discovery.

CI

Relationship

CI

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS SageMaker - Training Job References
[cmdb_aws_sagemaker_training_job]

Cloud App Server
[cmdb_ci_cloud_appserver]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2223


<!-- page 2224 -->
Key Value [cmdb_key_value] (continued)
Field

Description

Value [value]

Tag value.

Amazon Simple Storage Service (Amazon S3) discovery with Patterns
The ServiceNow Discovery application uses the Amazon AWS S3 pattern to find public and nonpublic storage buckets of Amazon Simple Storage Service. The pattern uses a set of REST API
calls to find these resources. Discovering some of these resources may require updating to the
latest version of the Discovery and Service Mapping Patterns application from the ServiceNow
Store.
In addition to the discovery schedule, the ServiceNow instance triggers the Amazon AWS S3
pattern when AWS Config sends an event to the ServiceNow instance. Config is a service that
continuously monitors AWS resources and sends events to the ServiceNow every time it senses
that a resource configuration has changed.
Amazon AWS S3 pattern can also discover AWS S3 buckets located in the AWS GovCloud (US)
region. For AWS S3 located in the AWS GovCloud (SU), the pattern cannot discover AWS S3
outgoing connections to other cloud resources like Lambda function. Discovery of outgoing
connections for AWS S3 will be supported in future releases.
You can use this pattern on the ServiceNow platform using Jakarta Patch 10, Kingston Patch 8, or
London Patch 1.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• If you use Identity and Access Management (IAM) to manage users in Amazon Web Services
(AWS) platform, ensure that you created a user policy for the AWS user. For more information,
refer to Create an IAM user policy for Cloud Provisioning and Governance in the ServiceNow
Cloud Provisioning and Governance documentation.
• Configure the AWS service account.
• Configure AWS credentials, using a secret key and an access key.
• AmazonS3ReadOnlyAccess policy user permissions.
• Discover Logical Datacenters hosting S3 buckets as described in Run Discovery on an AWS
cloud service account in the ServiceNow Cloud Provisioning and Governance documentation.
• Create a schedule for the relevant AWS service account as described in Schedule Discovery
on a service account in the ServiceNow Cloud Provisioning and Governance documentation.
• To enable alert-based discovery, configure the AWS event service as described in Set up AWS
event processing for Discovery and Service Mapping in the ServiceNow Cloud Provisioning
and Governance documentation.
• For Cloud Discovery, download the Discovery and Service Mapping Patterns from the
ServiceNow Store.
• When installing the MID Server, ensure that the host machine meets or exceeds the MID
Server system requirements
published on the ServiceNow documentation site.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2224


<!-- page 2225 -->
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

Data collected by Discovery during horizontal discovery
Table and field

Description

Cloud Object Storage [cmdb_ci_cloud_object_storage]
Bucket name [bucket_name]

The name of the AWS S3 bucket. You can
discover all buckets hosted on a Logical
Datacenter during one discovery process.

Creation date [creation date]

Creation date of the AWS S3 bucket.

Cloud provider [cloud_provider]

Amazon AWS

Object ID [object_id]

The Amazon Resource Name
(ARN), expressed in this format:

arn:aws:s3:::<bucket name>
Service name [service_name]

Set to S3 by default.

Owner [owner]

Name of the AWS S3 bucket owner.

Encryption type [encryption_type]

Type of encryption for this bucket. The choices
are:
• None
• AES-256
• AWS-KMS

ACL access type [acl_access_type]

The choices for access control types are:
• Public
• Not Public

Policy access type [policy_access_type]

The choices for policy access types are:
• Public
• Not Public

Replication destination
[replication_destination]

Bucket ARN of the Replication Destination
bucket.

On the Dependency Views map you can see all discovered S3 buckets in your organization,
including S3 buckets that you configured as replicas. In this example, Cloud Object Storage 1,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2225


<!-- page 2226 -->
Cloud Object Storage 2, and Cloud Object Storage 3 replicate Cloud Object Storage 2. In its turn,
Cloud Object Storage 2 replicates Cloud Object Storage 1.
Dependency Views showing AWS S3 components

CI relationships
These relationships are created to support AWS S3 discovery:

CI

Relationship

CI

cmdb_ci_cloud_object_storage Replicates to::Replicated By

cmdb_ci_cloud_object_storage

cmdb_ci_cloud_object_storage Hosted on::Hosts

cmdb_ci_logical_datacenter

Data discovered by Service Mapping during top-down discovery
Service Mapping can discover AWS S3 outgoing connections to cloud resources, for example
Lambda function.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2226


<!-- page 2227 -->
Application service map showing an S3 bucket CI

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

parameter.

MID Server and run discovery
again.

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.
Increase the value of this

parameter on the relevant
mid.sa.cloud.request_timeout

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2227


<!-- page 2228 -->
Amazon Timestream for InfluxDB Database Instance pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Timestream for InfluxDB Database Instance - Extended
Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Timestream for InfluxDB Database Instance
[cmdb_aws_timestream_for_influxdb_database_instance]
Field

Description

Name [name]

The name assigned to the InfluxDB database
instance.

Status [status]

The current state or health of the InfluxDB
database instance.

Configuration Item [configuration_item]

References the Cloud DataBase
[cmdb_ci_cloud_database] table.

DB Instance Type [db_instance_type]

The compute and memory configuration type
for the InfluxDB instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2228


<!-- page 2229 -->
AWS Timestream for InfluxDB Database Instance
[cmdb_aws_timestream_for_influxdb_database_instance] (continued)
Field

Description

DB Storage Type [db_storage_type]

The storage class or type used for the InfluxDB
instance.

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the InfluxDB instance.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Timestream for InfluxDB Database Instance - Extended Inventory (LP) pattern.
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Name [name]

The name assigned to the InfluxDB database
instance.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Object ID [object_id]

The ARN uniquely identifying the InfluxDB
instance.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::Timestream::InfluxDBInstance.

CI relationships
The Amazon AWS - Timestream for InfluxDB Database Instance - Extended Inventory (LP) pattern
creates these relationships to support Amazon Timestream for InfluxDB Database Instance
discovery.

CI

Relationship

CI

Cloud DataBase
[cmdb_ci_cloud_database]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Timestream for
References
InfluxDB Database Instance
[cmdb_aws_timestream_for_influxdb_database_instance]

Cloud DataBase
[cmdb_ci_cloud_database]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2229


<!-- page 2230 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS application ELB Service discovery with Patterns
Discovery uses the Amazon AWS application ELB Service discovery pattern to show all load
balancers in your environment in a map.
Elastic Load Balancing (ELB) automatically distributes incoming application traffic across multiple
targets.
The Amazon AWS application ELB Service discovery pattern supports top-down discovery. This
pattern discovers all load balancers with these characteristics:
• Use ultra-high performance, TLS offloading at scale, and centralized certificate deployment
• Support UDP and static IP addresses for your application
For top-down discovery, the entry point is HTTP(s) Endpoint. Outgoing relations are to Amazon
EC2 instances.
The ServiceNow AI Platform supports Amazon Commercial Cloud Services (C2S) for discovery
and cloud governance. C2S is the government program that brings AWS into the Intelligence
Community.
You can use this pattern on the ServiceNow platform using Kingston or later releases.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Run a horizontal discovery, using Cloud API (CAPI). This is necessary because this discovery
pattern supports top-down discovery only. For Cloud Discovery, you can run the horizontal
discovery as usual.
• When the load balancers data has been stored in the Configuration Management Database
(CMDB), create an application service for each load balancer.
• Set read-only permissions for these REST APIs:
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeLoadBalancers&LoadBalancerArns.member.1=<LB_ARN>&Version=2015-12-01
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeLoadBalancers&Version=2015-12-01
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeListeners&LoadBalancerArn=<LB_ARN>&Version=2015-12-01
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeRules&ListenerArn=<LISTENER_ARN>&Version=2015-12-01

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2230


<!-- page 2231 -->
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeTargetHealth&TargetGroupArn=<TARGET_GROUP_ARN>&Version=2015-12-01
◦ https://ec2.<REGION>.amazonaws.com/?
Action=DescribeInstances&Version=2016-11-15&Filter.1.Name=instance-statename&Filter.1.Value=running&Filter.2.Name=instance-id&Filter.2.Value=<INSTANCE_ID>
• For Cloud Discovery, download the Discovery and Service Mapping Patterns from the
ServiceNow Store.
• When installing the MID Server, ensure that the host machine meets or exceeds the MID
Server system requirements
published on the ServiceNow documentation site.

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

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Load Balancer Services [cmdb_ci_lb_service]
Fully qualified domain name [fqdn]

Fully Qualified Domain Name (FQDN) of the
load balancer. The DNS name.

Name [name]

Name of the load balancer, in the following
format: <LB name>:<LB port>.

Serial Number [serial_number]

Serial number of the load balancer, in the
following format:
Object_ID=<LB_ARN>.

Port [port]

Port of the load balancer.

Object ID [object_id]

Unique identifier of the load balancer.

IP Address [ip_address]

IP address of the FQDN.

AWS Auto Scaling groups discovery with Patterns
®

The Discovery application uses the Amazon AWS - AutoScaling Groups (LP) pattern and Auto
Scaling extensions to find AWS Auto Scaling groups. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
Starting with Discovery and Service Mapping Patterns version 1.0.95, the pattern extension is
automatically displayed and collects the Auto Scaling tags.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2231


<!-- page 2232 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Configure AWS Credentials
On your instance, configure credentials of type AWS Credentials and set them to
Active. For more information, see Access setup for AWS service accounts.
Configure a Cloud service account
Configure the AWS service account valid in the ServiceNow instance. For more
information, see Set up AWS service accounts.
Configure user permissions to execute the list AWS Auto Scaling groups API call
Provide the user permission to run the following
API: https://autoscaling.amazonaws.com/?
Action=DescribeAutoScalingGroups&Version=2011-01-01
For more information, see Amazon AWS Cloud components discovery using
patterns.
Configure Cloud Discovery schedule
Create a cloud application schedule for discovering AWS Auto Scaling groups
and configure the attributes. Set Discovery to Cloud application. For more
information, see Create schedules for discovering cloud resources in Cloud
Discovery Workspace
Configure AWS Auto Scaling groups
Navigate to the Instance Scale Set table and verify that the configurations are set as
follows:
New fields for table- [cmdb_ci_instance_scale_set]
Element Name

Type

Label

Max Length

desired_capacity

integer

Desired Capacity

32

min_size

integer

Minimum Size

32

max_size

integer

Maximum Size

32

health_check_type string

Health Check Type 128

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2232


<!-- page 2233 -->
Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Amazon AWS - AutoScaling Groups
(LP) pattern.
Instance Scale Set [cmdb_ci_instance_scale_set]
Field

Description

Name [name]

The Amazon Resource Name (ARN) of the Auto Scaling
group.

Object ID [object_id]

The ARN of the Auto Scaling group.

Install Status [install_status]

The install status of Auto Scaling group. Default value is
Installed.

Operational status
[operational_status]

The operational status of Auto Scaling group. Default value is
Operational.

Desired Capacity
[desired_capacity]

The desired size of the group.

Maximum Size [max_size]

The maximum size of the group.

Minimum Size [min_size]

The minimum size of the group.

Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Object ID [object_id]

The Instance ID of the Virtual Machine.

AWS EC2 Auto Scaling– Class model

Relationships
Discovery creates these relationships to support the AWS Auto Scaling groups discovery.

CI

Relationship

CI

AWS Datacenter
[cmdb_ci_aws_datacenter]

Hosted on::Hosts

Service Account
[cmdb_ci_cloud_service_account]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2233


<!-- page 2234 -->
CI

Relationship

CI

Instance Scale Set
[cmdb_ci_instance_scale_set]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Instance Scale Set
[cmdb_ci_instance_scale_set]

*Managed by::Manages

VM Instance
[cmdb_ci_vm_instance]

Note: EC2 VM
Key Value [cmdb_key_value]

References

Instance Scale Set
[cmdb_ci_instance_scale_set]

*Starting with Discovery and Service Mapping Patterns version 1.29.0, the relationship between
Instance Scale Set and VM Instance has changed from Members::Member of to Managed
by::Manages.

Tag discovery
The Amazon AWS - AutoScaling Groups (LP) pattern collects tags and populates them in the Key
Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

The key of the resource tag.

Value [value]

The value of the resource tag.

Configuration item
[configuration_item]

References the Instance Scale Set
[cmdb_ci_instance_scale_set] table.

Related topics
Detailed information on products discovered by ITOM Visibility
AWS discovery using patterns
AWS Batch Compute Environment pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2234


<!-- page 2235 -->
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Batch Compute Environment - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Batch - Compute Environment [cmdb_aws_batch_compute_environment]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the compute environment.

Name [name]

The name of the compute environment.

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

ECS Cluster ARN [ecs_cluster_arn]

The ARN of the Amazon ECS cluster
associated with the compute environment.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Batch Compute Environment - Extended Inventory (LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the compute
environment.

Name [name]

The name of the compute environment.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::Batch::ComputeEnvironment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2235


<!-- page 2236 -->
CI relationships
The Amazon AWS - Batch Compute Environment - Extended Inventory (LP) pattern creates these
relationships to support AWS Batch Compute Environment discovery.

CI

Relationship

CI

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Batch - Compute
References
Environment
[cmdb_aws_batch_compute_environment]

Cloud App Server
[cmdb_ci_cloud_appserver]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS classic ELB Service discovery with Patterns
Discovery uses the Amazon AWS classic ELB Service discovery pattern to find all load balancers
that use HTTP and HTTPS traffic.
Elastic Load Balancing (ELB) automatically distributes incoming application traffic across multiple
targets.
The Amazon AWS classic ELB Service discovery pattern supports top-down discovery. The
two possible entry points for top-down discovery are the HTTP(s) Endpoint and TCP Endpoint.
Outgoing relations are to Amazon EC2 instances.
The ServiceNow AI Platform supports Amazon Commercial Cloud Services (C2S) for discovery
and cloud governance. C2S is the government program that brings AWS into the Intelligence
Community.
You can use this pattern on the ServiceNow platform using Jakarta or later releases.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Run a horizontal discovery, using Cloud API (CAPI). This is necessary because this discovery
pattern supports top-down discovery only. For cloud discovery, you can run the horizontal
discovery as usual.
• When the load balancers data has been stored in the Configuration Management Database
(CMDB), create an application service for each load balancer.
• Set read-only permissions for these REST APIs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2236


<!-- page 2237 -->
◦ https://elasticloadbalancing.<REGION>.amazonaws.com/?
Action=DescribeLoadBalancers&Version=2012-06-01&LoadBalancerNames.member.1=<LB_NAME>
◦ https://ec2.<REGION>.amazonaws.com/?
Action=DescribeInstances&Version=2016-11-15&Filter.1.Name=instance-statename&Filter.1.Value=running&Filter.2.Name=instance-id&Filter.2.Value=<INSTANCE_ID> (to
create relation between LB and EC2 instance)
• For Cloud Discovery, download the Discovery and Service Mapping Patterns from the
ServiceNow Store.
• When installing the MID Server, ensure that the host machine meets or exceeds the MID
Server system requirements
published on the ServiceNow documentation site.

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

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Load Balancer Services [cmdb_ci_lb_service]
Fully qualified domain name [fqdn]

Fully Qualified Domain Name (FQDN) of the
load balancer. The DNS name.

Name [name]

Name of the load balancer, in the following
format: <LB name>:<LB port>.

Back End Port [back_end_port]

Port of the instance.

Server Port [server_port]

Port of the instance.

Port [port]

Port of the load balancer.

Front End Port [front_end_port]

Port of the load balancer.

Object ID [object_id]

LB port.

IP Address [ip_address]

IP address of the FQDN.

Server Protocol [server_protocol]

Protocol of the instance.

IP Address [cmdb_ci_ip_address]
IP Address [ip_address]

IP address of the load balancer FQDN.

Name [name]

Name of the load balancer, in the following
format: <LB name>:<LB port>.

Netmask [netmask]

0.0.0.0

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2237


<!-- page 2238 -->
AWS CloudHSM hardware security module (HSM) pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - CloudHSM HSM - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS CloudHSM HSM [cmdb_aws_cloudhsm_hsm]
Field

Description

Name [name]

The unique identifier of the HSM within the
cluster.

Availability Zone [availability_zone]

The AWS availability zone where the HSM is
deployed.

Status [status]

The current operational status of the HSM.

Cluster Id [cluster_id]

The unique identifier of the HSM cluster.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2238


<!-- page 2239 -->
AWS CloudHSM HSM [cmdb_aws_cloudhsm_hsm] (continued)
Field

Description

Hsm Type [hsm_type]

The type or model specification of the HSM
device.

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the AWS CloudHSM HSM.
The ARN consists of the discovered
region, account ID, and HSM
ID in the following format:
arn:aws:cloudhsm:<region>:<account_id>:hsm/
<hsm_id>.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - CloudHSM HSM - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Name [name]

The unique identifier of the HSM within the
cluster.

Resource type [resource_type]

Type of resource. The value is set to
AWS::CloudHSM::HSM.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Object ID [object_id]

The ARN uniquely identifying the AWS
CloudHSM HSM.
The ARN consists of the discovered
region, account ID, and HSM
ID in the following format:
arn:aws:cloudhsm:<region>:<account_id>:hsm/
<hsm_id>.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - CloudHSM HSM - Extended Inventory (LP) pattern creates these
relationships to support AWS CloudHSM HSM discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS CloudHSM HSM
[cmdb_aws_cloudhsm_hsm]

References

Cloud Resource
[cmdb_ci_cmp_resource]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2239


<!-- page 2240 -->
AWS CloudTrail Trail pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - CloudTrail Trail - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the CloudTrail trail.

Name [name]

The name of the CloudTrail trail.

Resource type [resource_type]

Type of resource. The value is set to
AWS::CloudTrail::Trail.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - CloudTrail Trail - Extended Inventory (LP) pattern creates these relationships
to support AWS CloudTrail Trail discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2240


<!-- page 2241 -->
CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS Cognito discovery with Patterns
The ServiceNow Discovery and Service Mapping applications use the Amazon AWS Cognito
pattern to provide authentication, authorization, and user management functions for AWS
customers. Discovering some of these resources may require updating to the latest version of
the Discovery and Service Mapping Patterns application from the ServiceNow Store.
You can use this pattern on the ServiceNow AI Platform using London Patch 8, Madrid Patch 2, or
later releases.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
User permissions
Provide user with read-only permission to run the following API:
• https://cognito-idp.<region>.amazonaws.com
• Method: POST
• Body: {\"MaxResults\": 10}
• Headers: X-AmzTarget:AWSCognitoIdentityProviderService.ListUserPools,ContentType:application/x-amz-json-1.0
AWS Credentials
On your instance, configure credentials of type AWS Credentials and set to Active.
Cloud service account
On your instance, configure the cloud service account of type AWS Datacenter
and set to AWS account ID. Use the credentials defined in the preceding AWS
Credentials.
Discovery schedule
Create a cloud application schedule for discovering AWS Cognito and configure the
attributes. Set Discovery to Cloud application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2241


<!-- page 2242 -->
Execution pattern
Create and define the serverless execution pattern for cloud application discovery.
1. Create new Cloud Execution Patterns.
2. Define Name.
3. Verify that Active is true.
4. Verify that Domain is global.
5. Choose the AWS pattern you want to run.
6. Create multiple records if you want to run more than one pattern.
Discovery schedule for full AWS discovery
Create a discovery schedule from your Cloud service account created in the earlier
procedure.
1. Click on Discover Datacenter and wait for it to finish.
2. Click Create Discovery Schedule.
3. This new schedule is created under the Discovery Schedule and runs all AWS
patterns.

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

Data collected by Discovery and Service Mapping during horizontal and topdown discovery
The AWS Cognito pattern collects data.
Collected information from the AWS Cognito pattern
Field

Description

Main CI: cmdb_ci_cloud_authentication
name

A descriptive name used to identify the user pool.

object_id This is equal to the account_id and used by IRE identification rules.
Fqdn

Example of an ARN: arn:aws:cognito-idp:eu-west-1:751200741520:userpool/euwest-1_fim5E2mix

Tags are also being collected by an extension section that runs following the pattern. The tagging
API for AWS specifies the resource type Cognito.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2242


<!-- page 2243 -->
Collected information from the AWS Cognito tags
Field

Description

cmdb_key_value
key

The actual tag key.

value

The tag value.

configuration_item The unique resource ID (ARN) that identifies the resource in the AWS
console.

CI relationships
The AWS Cognito pattern creates the following CI relationship.

CI

Relationship

CI

Cloud authentication
[cmdb_ci_cloud_authentication]

Hosts:Hosted Logical datacenter
on
[cmdb_ci_logical_datacenter]

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2243


<!-- page 2244 -->
AWS DataSync Task pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - DataSync Task - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS DataSync - Task [cmdb_aws_datasync_task]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the DataSync task.

Name [name]

The name assigned to the AWS DataSync task.

Status [status]

The current operational status of the DataSync
task.

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

Task Mode [task_mode]

The execution mode of the DataSync task. For
example: one-time or scheduled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2244


<!-- page 2245 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - DataSync Task - Extended Inventory (LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the DataSync
task.

Name [name]

The name assigned to the AWS DataSync task.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
AWS::DataSync::Task.

CI relationships
The Amazon AWS - DataSync Task - Extended Inventory (LP) pattern creates these relationships
to support AWS DataSync Task discovery.

CI

Relationship

CI

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS DataSync - Task
[cmdb_aws_datasync_task]

References

Cloud App Server
[cmdb_ci_cloud_appserver]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS Global Accelerator pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2245


<!-- page 2246 -->
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Global Accelerator - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Global Accelerator [cmdb_aws_global_accelerator_accelerator]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the Global Accelerator resource.

Name [name]

The name assigned to the AWS Global
Accelerator resource.

Status [status]

The current operational state of the Global
Accelerator.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Is Enabled [is_enabled]

Indicates whether the Global Accelerator is
enabled or disabled.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Global Accelerator - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the Global
Accelerator resource.

Name [name]

The name assigned to the AWS Global
Accelerator resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2246


<!-- page 2247 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Resource type [resource_type]

Type of resource. The value is set to
AWS::GlobalAccelerator::Accelerator.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - Global Accelerator - Extended Inventory (LP) pattern creates these
relationships to support AWS Global Accelerator discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

AWS Global Accelerator
References
[cmdb_aws_global_accelerator_accelerator]

Cloud Resource
[cmdb_ci_cmp_resource]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS Keyspaces discovery with Patterns
®

The ServiceNow Discovery application uses the Amazon Keyspaces discovery pattern to find
Amazon Keyspaces managed Apache Cassandra–compatible database service.
Amazon Keyspaces is a managed Apache Cassandra–compatible database service. A keyspace
groups related tables that are relevant for one or more applications. It contains one or more
tables and defines the replication strategy for all the tables it contains.

Prerequisites
• Install the Discovery and Service Mapping Patterns application from the ServiceNow Store.
• Configure an AWS Service Account with valid credentials on the ServiceNow instance with
permission to run the following APIs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2247


<!-- page 2248 -->
◦ https://cassandra.{region}.amazonaws.com {ContentType:application/x-amz-json-1.0, , X-Amz-Target:
KeyspacesService.ListKeyspaces}
◦ https://tagging.{region}.amazonaws.com {"ResourceTypeFilters":
[]}

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

Data collected by Discovery during horizontal discovery
Keyspaces are stored in Cloud Databases [cmdb_ci_cloud_database] table.

Field

Description

Amazon resource name

Name of the keyspace.

FQDN

Fully qualified domain name of the region
where the keyspace is located.

Port

Port used for incoming TLS connections
(9142).

AWS Kinesis discovery with Patterns
®

The ServiceNow Discovery application uses the Amazon Kinesis discovery pattern to find
Kinesis services available on Amazon Web Services (AWS).
Kinesis is a managed, scalable, AWS cloud-based service that allows real-time processing of
streaming large amount of data per second. AWS Kinesis contains four types of services:
• Kinesis Video Streams - capture, process, and store video streams for analytics and machine
learning.
• Kinesis Data Streams - a fully-managed streaming data service.
• Kinesis Data Firehose - load data streams into AWS data stores.
• Kinesis Data Analytics- process and analyze streaming data.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Install the Discovery and Service Mapping Patterns application from the ServiceNow Store.
• Verify the following plugin versions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2248


<!-- page 2249 -->
◦ Discovery and Service Mapping Patterns 1.0.93 or later (sn_itom_pattern)
◦ CMDB CI Class Models version 1.40.0 or later (sn_cmdb_ci_class)

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

Data collected by Discovery during horizontal discovery
The discovered data includes the following fields in the Cloud Database [cmdb_ci_aws_kinesis]
table.

Field

Description

Object ID

Stream resource name.

Name

The name of the stream.
• Kinesis Data - cmdb_ci_aws_kinesis_data
• Kinesis Video - cmdb_ci_aws_kinesis_video
• Kinesis Firehose cmdb_ci_aws_kinesis_firehose
• Kinesis Data Analytics cmdb_ci_aws_kinesis_data_analytics

Status

The status of the stream.

Configuration item (CI) relationships
CI

Relationship

CI

AWS Kinesis Data

Hosted on::Hosts

AWS Datacenter

AWS Kinesis Video

Hosted on::Hosts

AWS Datacenter

AWS Kinesis Firehose

Hosted on::Hosts

AWS Datacenter

AWS Kinesis Data Analytics

Hosted on::Hosts

AWS Datacenter

AWS Lambda discovery with Patterns
The ServiceNow Discovery and Service Mapping applications can find and map Lambda
functions that run in your AWS cloud. Discovering some of these resources may require updating
to the latest version of the Discovery and Service Mapping Patterns application from the
ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2249


<!-- page 2250 -->
Discovery and Service Mapping use the Amazon AWS Lambda pattern to run horizontal and
top-down discovery. When you run cloud discovery, your instance queries your AWS service
account using the necessary credentials, and then runs a query to obtain Lambda information.
The pattern parses this information and then it is saved in the CMDB.
You can use this pattern on the ServiceNow platform using Jakarta Patch 10, Kingston Patch 8, or
London Patch 1.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Update set
If your instance is on the Jakarta or Istanbul versions, import the update set
provided in KB0679927 : AWS Lambda top-down discovery update set. This update
set is required for Service Mapping.
User policy for AWS user
If you use Identity and Access Management (IAM) to manage users in Amazon Web
Services (AWS) platform, ensure that you created a user policy for the AWS user. For
more information, refer to Control AWS access and permissions using policies in the
ServiceNow Cloud Provisioning and Governance documentation.
AWS service account with credentials
You must set up your service account with the appropriate AWS credentials. You run
discovery from the service account form.
Refer to Service accounts for Discovery and Service Mapping in product
documentation.
Service account
On the ServiceNow platform, create a service account. Set the Account ID to
the Amazon account IT to which AWS Lambda belongs. Use the Account ID as it
appears in the AWS Management Console. Ensure to place the MID Server on the
virtual machine that is part of the service account that you are planning to discover.
Discover logical datacenters using horizontal discovery
Click Discover datacenters under Related Links on the Cloud Service Account
form.
User permissions
Provide a user with permissions to run the ListFunctions API with the Resource:
arn:aws:lambda:region:account-id: function:function-name. Provide a user with
permissions to run the GetFunction API with the Resource: ‘*’.
Amazon Resource Name (ARN)
(Optional for application services using ARN as an entry point) Ensure that you
know the ARN for the AWS Lambda you need to discover. ARNs serve as the
resource identifiers for Amazon Web Services.
Host
If your instance is on the Jakarta or Istanbul versions, use the following host:
127.0.0.1.
Cloud Discovery
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2250


<!-- page 2251 -->
For Cloud Discovery, download the Discovery and Service Mapping Patterns from
the ServiceNow Store.
MID Server
When installing the MID Server, ensure that the host machine meets or exceeds the
MID Server system requirements
published on the ServiceNow documentation
site.

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

Data collected by Discovery during horizontal discovery
Horizontal discovery populates this data in the CMDB:

Table and field

Description

Cloud Function [cmdb_ci_cloud_function]
Name [name]

The name of the function.

Object ID [object_id]

The ID (Amazon Resource Name)
of the AWS Lamdba function, for
example: arn:aws:lambda:
{datacenter}1:751200741520:function:
{function-name}

Version [version]

The version of the function. For example,
$Latest represents the most recent
published version.

Language [language]

The runtime environment, or language and
version, that the function is written in, for
example: Node.js6.10 for JavaScript
version 6.10.

Code Location URL [code_location_url]

The URL of the function that you built from the
API Gateway console.

CodeSha256 [codesha256]

The cryptographic hash signature for the
function.

Code Size [code_size]

The size of the function code in MB.

Function Last Modified
[function_last_modified]

The date the function last changed in your
AWS Lamdba environment.

Note: To see all of these fields, you need to configure the form layout as described in
product documentation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2251


<!-- page 2252 -->
CI relationships
These relationships are created to support AWS Lambda discovery:

CI

Relationship

CI

Cloud Function

Uses:Used by

Cloud DataBase

[cmdb_ci_cloud_function]

[cmdb_ci_cloud_database]
Hosted on:Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]
The AWS datacenter has
relationships to other AWS
CIs, such as availability zones,
service accounts, and so
on. Refer to AWS and Azure
cloud discovery in product
documentation.

Provides:Is provided by

Cloud Event Source
[cmdb_ci_cloud_event_source]
This CI could be any event
source that triggers the cloud
function or the API Gateway.

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the AWS Lambda in the context of
application services. It discovers outgoing connections of the AWS Lambda:
• AWS API Gateway
• Amazon Relational Database Service (RDS)
• Other instance of AWS Lambda inside or outside the current region using ARN

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2252


<!-- page 2253 -->
Symptom

Cause

Solution

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

Related topics
Test patterns for discovering AWS API Gateway and AWS Lambda
Define a Cloud REST Query for cloud computing devices
AWS MemoryDB for Redis discovery with Patterns
®

The Discovery application uses the AWS MemoryDB for Redis pattern and extensions to find
AWS MemoryDB for Redis. Discovering some of these resources requires installing the Discovery
®
and Service Mapping Patterns application from the Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Configured AWS Credentials
On your instance, configure credentials of type AWS Credentials. For more
information, see Access setup for AWS service accounts.
Configured Cloud service account
Configure the AWS service account valid in the ServiceNow instance. For more
information, see Set up AWS service accounts.
Configured user permissions to execute the list AWS MemoryDB for Redis API calls
Provide the user permission to run the following API:
• https://memory-db.{region}.amazonaws.com?
Action=DescribeClusters&ShowShardDetails=true
• https://memory-db.{region}.amazonaws.com? Action=ListTags&ResourceArn={arn}
For more information, see Amazon AWS Cloud components discovery using
patterns.
Configured Cloud Discovery schedule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2253


<!-- page 2254 -->
Create a cloud application schedule for discovering AWS datacenters. Set
Discovery to Cloud discovery. For more information, see: Create schedules for
discovering cloud resources in Cloud Discovery Workspace

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

Data collected during AWS MemoryDB for Redis horizontal discovery

Field

Description

Main CI [cmdb_ci_cloud_database]
ARN

The Amazon Resource Name of a single node
in the cluster. The values are populated in the
Object ID [object_id] column.

Name

The name of a single node in the cluster.

FQDN

The Fully Qualified Domain Name of each
node in the cluster.

TCP _Port

The TCP port that a single node in the cluster
is getting traffic from.

Type

The type of database is MemoryDB.

Database Cluster [cmdb_ci_cloud_db_cluster]
ARN

The Amazon Resource Name of the cluster.
The values are populated in the Object ID
[object_id] column.

Name

The name of the cluster.

FQDN

The Fully Qualified Domain Name of the
cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2254


<!-- page 2255 -->
Field

Description

TCP _Port

The TCP port that the cluster is getting traffic
from.

Pattern Relations
CI

Relationship Type

[cmdb_ci_appl]
[cmdb_ci_cloud_database]
[cmdb_ci_cloud_db_cluster]
[cmdb_ci_cloud_db_cluster]

Extends from
Extends from
Cluster::Cluster of

Reference only

CI

[cmdb_ci]
[cmdb_ci_db_instance]
[cmdb_ci_cloud_db_cluster]
[cmdb_key_value]

(configuration_item)
Related topics
Detailed information on products discovered by ITOM Visibility
AWS discovery using patterns
AWS Network Firewall pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2255


<!-- page 2256 -->
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Network Firewall - Extended Inventory (LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the network firewall resource.

Name [name]

The display name of the network firewall
resource.

Resource type [resource_type]

Type of resource. The value is set to
AWS::NetworkFirewall::Firewall.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Amazon AWS - Network Firewall - Extended Inventory (LP) pattern creates these
relationships to support AWS Network Firewall discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

AWS OpenSearch discovery with Patterns
®

The ServiceNow Discovery application uses the Amazon OpenSearch discovery pattern to find
Amazon OpenSearch service domains.
OpenSearch is an open-source search and analytics engine for use cases such as log analytics,
real-time application monitoring, and clickstream analysis. OpenSearch operates as a cluster
of nodes that are abstracted from the end user. An OpenSearch service domain is synonymous
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2256


<!-- page 2257 -->
with an OpenSearch cluster. Domains are clusters with settings, instance types, instance counts,
and storage resources.

Prerequisites
• Install the Discovery and Service Mapping Patterns application from the ServiceNow Store.
• Configure an AWS Service Account with valid credentials on the ServiceNow instance with
permission to run the following APIs:
◦ https://es.{region}.amazonaws.com/2021-01-01/domain
◦ https://es.{region}.amazonaws.com/2021-01-01/opernsearch/
domain-info{"DomainNames":[]}
◦ https://tagging.{region}.amazonaws.com {"ResourceTypeFilters":
[]}

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

Data collected by Discovery during horizontal discovery
OpenSearch service domains are stored in Cloud Databases [cmdb_ci_cloud_database] table.

Field

Description

Amazon resource name

Name of the service domain.

FQDN

Fully qualified domain name of the region
where the keyspace is located.

AWS Resource Inventory discovery with Patterns
The ServiceNow Discovery and Service Mapping applications can find and map the AWS
resources available by AWS Config Service. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
Discovery uses the AWS Resource Inventory pattern to discover the resources available through
AWS. Use this pattern for AWS resources which do not have a dedicated pattern, such as AWS
Lambda or EC2. This pattern is limited to resources that are available from AWS Config Service,
as described in the AWS Config Developer Guide .
You can use this pattern on the ServiceNow platform using London (Patch 8), Madrid (Patch 2), or
later releases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2257


<!-- page 2258 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Create AWS credentials.
• Create an AWS cloud service account.
You can use only the AWS management service account for discovery, not its sub-accounts.

Note: The Cloud Discovery user interface refers to member accounts as sub-accounts.
• Discover AWS Datacenters (LDC)
• Schedule a full AWS discovery or use a specific inventory pattern
• Fine-tune AWS resource discovery using the Resource Inclusion List.
If your deployment has custom patterns for AWS discovery, ensure that you do not discover
AWS resources twice.
1. Ensure that the application scope is Discovery and Service Mapping Patterns:
a. Navigate to Settings > Developer.
b. Select Discovery and Service Mapping Patterns from the Application list.
2. Navigate to System Definitions > Tables.
3. Open the Cloud Inventory Resource Inclusion List [sa_cloud_inventory_resource_whitelist]
table.
4. Under Related Links, click Show List.
5. Select resource types for which you have custom patterns, and select Delete from the
Actions on selected rows list.
The Cloud Inventory Resource Inclusion List is predefined with common services. You can
expand the list with additional resource types that you want the pattern to discover. The names
of these resource types must conform to the appropriate vendor naming conventions.

Note: When you modify the out-of-the-box inclusion list, it is no longer updated
automatically in application updates. You need to maintain the customized list on your
own.
1. Open the Cloud Inventory Resource Inclusion List [sa_cloud_inventory_resource_whitelist]
table.
2. Click New.
3. Fill in the form, and then click Submit.

Field

Description

Cloud Vendor

The vendor of the resource type: AWS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2258


<!-- page 2259 -->
Field

Description

Resource Type

The AWS resource type value. For example,
AWS::CloudWatch::Alarm.

Application

The application scope: Discovery and Service Mapping
Patterns.

The changes are applied the next time you run the pattern.
• To discover the resources that support the AWS Config service, the pattern uses API:
https://config.[AWS region].amazonaws.com. It specifies the resource type in
the API request using the following format: {"resourceType":"AWS::[RESOURCE]::
[TYPE]"}
The POST method requires the following headers:
◦ X-Amz-Target - StarlingDoveService.ListDiscoveredResources​
◦ Accept - application/json​
◦ Content-Type - application/x-amz-json-1.1​
• To discover the resource tags for resources that support tags, the pattern uses API:
https://tagging.[AWS region].amazonaws.com. It specifies the resource
type in the API request using the following format: {"ResourceTypeFilters":
[“[resource]:[type]"]}
The POST method requires the following headers:
◦ X-Amz-Target - ResourceGroupsTaggingAPI_20170126.GetResources​
◦ Accept - application/json​
◦ Content-Type - application/x-amz-json-1.1​

Data collected by Discovery during horizontal discovery
Table and field

Description

Main CI [cmdb_ci_cmp_resource]
object_id

The ID of the item. This is typically the Amazon
Resource Name (ARN).

name

Name of the resource.

resource_type

The asset resource type, based on the
contents of the JSON file.

description

Short description of how the CI is populated.

CI relationships
The AWS Resource Inventory pattern creates the following CI relationship:

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on ::
Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2259


<!-- page 2260 -->
The following is a dependency view of the collected data flow.
AWS Resource Inventory dependency view

AWS Services discovery using patterns
Discovery and Service Mapping Patterns application uses Amazon AWS service patterns
to discover Amazon AWS Services during horizontal discovery. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
The latest version of Discovery and Service Mapping Patterns supports discovering the following
Amazon AWS Services:
• AppSync API
• Athena workgroup
• Backup plan
• Backup vault
• CloudFront distribution
• CloudWatch Logs
• CodeDeploy deployment
• CodePipeline pipeline
• Database Migration Service (DMS) endpoints
• Elastic BeanStalk Application
• EMR cluster (running on EC2)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2260


<!-- page 2261 -->
• EventBridge Event Bus
• FSx backup
• FSx file system
• Glue database
• IAM policy
• IAM role
• IAM user
• KMS key
• MQ Broker
• MQ configuration
• S3 Glacier Vault
• SageMaker notebook instance
• Secrets Manager secret
• Simple Email Service (SES) Identity
• SQS Queue
• Step Functions State Machine
• Storage Gateway gateway
• Systems Manager Document
• Systems Manager Parameter Store
• Transfer Family server
• VPC Flow Log
• VPC-managed prefix list
• X-Ray sampling rule
Discovery and Service Mapping Patterns supports AWS GovCloud (US) accounts for the
following services:
• AppSync API
• Elastic BeanStalk Application
• EventBridge Event Bus
• MQ Broker
• SQS Queue
• Step Functions State Machine
• Storage Gateway gateway
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when setting up an
AWS service account. For more information, see Setting up AWS service accounts.

Prerequisites
Verify Amazon AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2261


<!-- page 2262 -->
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The Discovery and Service Mapping Patterns for these services are disabled by
default. Starting with Visibility Content version 6.28.0, activating or deactivating
a pattern won't be considered a customization, and it will continue to receive
updates. Patterns that were previously activated or deactivated will reset to the
latest predefined version after upgrading while retaining the last active field value.
For more information on enabling patterns, see Activate a disabled pattern.

Data collected by Discovery during horizontal discovery
Discovery populates data for each of the patterns in non-CMDB tables. These tables are listed
under All > Configuration > AWS. You can also search the navigation filter for the specific
pattern name.
Navigation example for non-CMDB table AWS Athena Workgroup

Discovery populates data in the Cloud Resource [cmdb_ci_cmp_resource] CMDB table when
running the following patterns:
• Amazon AWS - Athena Workgroup - Extended Inventory (LP)
• Amazon AWS - Backup Backup Plan - Extended Inventory (LP)
• Amazon AWS - Backup Backup Vault - Extended Inventory (LP)
• Amazon AWS - CloudFront Distribution - Extended Inventory (LP)
• Amazon AWS - CloudWatch Log - Extended Inventory (LP)
• Amazon AWS - CodeDeploy Deployment - Extended Inventory (LP)
• Amazon AWS - CodePipeline Pipeline - Extended Inventory (LP)
• Amazon AWS - DMS Endpoint - Extended Inventory (LP)
• Amazon AWS - EMR Cluster - Extended Inventory (LP)
• Amazon AWS - FSx Backup - Extended Inventory (LP)
• Amazon AWS - FSx File System - Extended Inventory (LP)
• Amazon AWS - Glue Database - Extended Inventory (LP)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2262


<!-- page 2263 -->
• Amazon AWS - IAM Policy - Extended Inventory (LP)
• Amazon AWS - IAM Role - Extended Inventory (LP)
• Amazon AWS - IAM User - Extended Inventory (LP)
• Amazon AWS - KMS Key - Extended Inventory (LP)
• Amazon AWS - MQ Configuration - Extended Inventory (LP)
• Amazon AWS - S3 Glacier Vault - Extended Inventory (LP)
• Amazon AWS - SageMaker Notebook Instance - Extended Inventory (LP)
• Amazon AWS - Secrets Manager Secret - Extended Inventory (LP)
• Amazon AWS - Simple Email Service Identity - Extended Inventory (LP)
• Amazon AWS - Systems Manager Document - Extended Inventory (LP)
• Amazon AWS - Systems Manager Parameter Store - Extended Inventory (LP)
• Amazon AWS - Transfer Family Server - Extended Inventory (LP)
• Amazon AWS - VPC Flow Log - Extended Inventory (LP)
• Amazon AWS - VPC Managed Prefix List - Extended Inventory (LP)
• Amazon AWS - XRay Sampling Rule - Extended Inventory (LP)
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Name [name]

Name of the AWS resource.

Object ID [object_id]

Amazon Resource Name (ARN) for the AWS resource.

Resource type
[resource_type]

Type of resource, in the following format—
Vendor::Service::Component.
For example, for the DMS endpoint resource, the value is set to
AWS::DMS::Endpoint.

Install Status [install_status]

Install status of the resource. Default value: Installed.

Operational status
[operational_status]

Operational status of the resource. Default value: Operational.

Discovery populates the data in various CMDB tables when running the following patterns.
Amazon AWS - AppSync API - Extended Inventory (LP)
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Name [name]

Name of the AWS AppSync API, which is the GraphQL
interface.

Object ID
[object_id]

ARN for the API.

Type [type]

Type of resource, in the following format—
Vendor::Service::Component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2263


<!-- page 2264 -->
Cloud Messaging Service [cmdb_ci_cloud_messaging_service] (continued)
Field

Description

The value is set to AWS::AppSync::API.
Amazon AWS - Elastic BeanStalk Application - Extended Inventory (LP)
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Name [name]

Name of the application.

Object ID [object_id]

ARN of the application.

Amazon AWS - EventBridge Event Bus - Extended Inventory (LP)
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Name [name]

Name of the event bus.

Object ID
[object_id]

ARN of the event bus.

Type [type]

Type of resource, in the following format—
Vendor::Service::Component.
The value is set to AWS::EventBridge::EventBus.

Amazon AWS - MQ Broker - Extended Inventory (LP)
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Name
[name]

Name of the MQ Broker.
This value must be unique in the AWS account, between 1-50
characters long, and contain only letters, numbers, dashes, and
underscores. For example: MyActiveMQBroker.

Object ID ARN of the MQ Broker.
[object_id]
Type
[type]

Type of broker engine. For example: ACTIVEMQ or RABBITMQ.

Version
[version]

Version of the broker engine.

Amazon AWS - SQS Queue - Extended Inventory (LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2264


<!-- page 2265 -->
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Name [name] Name of the queue for which you want to fetch the URL. The name
can be up to 80 characters long.
Object ID
[object_id]

ARN of the queue.

Type [type]

Type of resource, in the following format—
Vendor::Service::Component.
The value is set to AWS::SQS::Queue.

Amazon AWS - Step Functions State Machine - Extended Inventory (LP)
Cloud Function [cmdb_ci_cloud_function]
Field

Description

Name [name]

Name of the state machine.

Object ID
[object_id]

ARN of the state machine.

Edition [edition]

Edition of the state machine. Possible values: STANDARD or
EXPRESS.

Amazon AWS - Storage Gateway Gateway - Extended Inventory (LP)
Cloud Gateway [cmdb_ci_cloud_gateway]
Field

Description

Name [name]

Name you configured for your gateway.

Object ID [object_id]

ARN of the gateway.

Environment
[environment]

Type of hardware or software platform on which the
gateway runs.

CI relationships
Discovery creates these relationships to support the Amazon AWS Services discovery.
These relationships support the discovery of AWS Services when running the following patterns.
• Amazon AWS - Athena Workgroup - Extended Inventory (LP)
• Amazon AWS - Backup Backup Plan - Extended Inventory (LP)
• Amazon AWS - Backup Backup Vault - Extended Inventory (LP)
• Amazon AWS - CloudFront Distribution - Extended Inventory (LP)
• Amazon AWS - CloudWatch Log - Extended Inventory (LP)
• Amazon AWS - CodeDeploy Deployment - Extended Inventory (LP)
• Amazon AWS - CodePipeline Pipeline - Extended Inventory (LP)
• Amazon AWS - DMS Endpoint - Extended Inventory (LP)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2265


<!-- page 2266 -->
• Amazon AWS - EMR Cluster - Extended Inventory (LP)
• Amazon AWS - FSx Backup - Extended Inventory (LP)
• Amazon AWS - FSx File System - Extended Inventory (LP)
• Amazon AWS - Glue Database - Extended Inventory (LP)
• Amazon AWS - IAM Policy - Extended Inventory (LP)
• Amazon AWS - IAM Role - Extended Inventory (LP)
• Amazon AWS - IAM User - Extended Inventory (LP)
• Amazon AWS - KMS Key - Extended Inventory (LP)
• Amazon AWS - MQ Configuration - Extended Inventory (LP)
• Amazon AWS - S3 Glacier Vault - Extended Inventory (LP)
• Amazon AWS - SageMaker Notebook Instance - Extended Inventory (LP)
• Amazon AWS - Secrets Manager Secret - Extended Inventory (LP)
• Amazon AWS - Simple Email Service Identity - Extended Inventory (LP)
• Amazon AWS - Systems Manager Document - Extended Inventory (LP)
• Amazon AWS - Systems Manager Parameter Store - Extended Inventory (LP)
• Amazon AWS - Transfer Family Server - Extended Inventory (LP)
• Amazon AWS - VPC Flow Log - Extended Inventory (LP)
• Amazon AWS - VPC Managed Prefix List - Extended Inventory (LP)
• Amazon AWS - XRay Sampling Rule - Extended Inventory (LP)
Regional services
CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Global services
CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted
on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

These relationships support the discovery of AWS Services when running the following patterns.
Amazon AWS - AppSync API - Extended Inventory (LP)

CI

Relationship CI

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - Elastic Beanstalk Application - Extended Inventory (LP)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2266


<!-- page 2267 -->
CI

Relationship

CI

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - EventBridge Event Bus - Extended Inventory (LP)

CI

Relationship CI

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - MQ Broker - Extended Inventory (LP)

CI

Relationship CI

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - SQS Queue - Extended Inventory (LP)

CI

Relationship CI

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - Step Functions State Machine - Extended Inventory (LP)

CI

Relationship

CI

Cloud Function
[cmdb_ci_cloud_function]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Amazon AWS - Storage Gateway Gateway - Extended Inventory (LP)

CI

Relationship

CI

Cloud Gateway
[cmdb_ci_cloud_gateway]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2267


<!-- page 2268 -->
AWS Storage Gateway File Share pattern-based discovery
Discovery and Service Mapping Patterns finds AWS services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the AWS discovery prerequisites
For more information, see the prerequisites section in AWS discovery using
patterns.
Remove resources from the Resource Inclusion List table
Verify that the relevant resource isn't listed in the Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table to avoid duplicate discovery. For
more information on removing resources from the Resource Inclusion List, see AWS
Resource Inventory discovery with Patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering AWS GovCloud (US) accounts requires using a datacenter URL when
setting up an AWS service account. For more information, see Create AWS service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Amazon AWS - Storage Gateway File Share - Extended Inventory (LP) pattern.
You can review the non-CMDB AWS tables by navigating to All > Configuration > AWS. You can
also search the navigation filter for the specific pattern name.
AWS Storage Gateway - File Share [cmdb_aws_storage_gateway_file_share]
Field

Description

Object Id [object_id]

The Amazon Resource Name (ARN) uniquely
identifying the resource.

Name [name]

The name assigned to the resource or file
share.

Configuration Item [configuration_item]

References the Cloud Gateway
[cmdb_ci_cloud_gateway] table.

File Share Type [file_share_type]

The type of file share provided by the Storage
Gateway. For example: NFS or SMB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2268


<!-- page 2269 -->
AWS Storage Gateway - File Share [cmdb_aws_storage_gateway_file_share] (continued)
Field

Description

Gateway Arn [gateway_arn]

The ARN of the AWS Storage Gateway
associated with the resource.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Amazon AWS - Storage Gateway File Share - Extended Inventory (LP) pattern.
Cloud Gateway [cmdb_ci_cloud_gateway]
Field

Description

Object ID [object_id]

The ARN uniquely identifying the resource.

Name [name]

The name assigned to the resource or file
share.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
AWS::StorageGateway::FileShare.

CI relationships
The Amazon AWS - Storage Gateway File Share - Extended Inventory (LP) pattern creates these
relationships to support AWS Storage Gateway File Share discovery.

CI

Relationship

CI

Cloud Gateway
[cmdb_ci_cloud_gateway]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

AWS Storage
References
Gateway - File Share
[cmdb_aws_storage_gateway_file_share]

Cloud Gateway
[cmdb_ci_cloud_gateway]

AWS tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2269


<!-- page 2270 -->
AWS tag discovery with Patterns
The ServiceNow Discovery and Service Mapping applications can use patterns to discover
the tags for AWS resources and configuration item (CI) types, and then populate the CMDB
with these discoveries. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
This tag-specific discovery pattern is in addition to the other AWS patterns available on the
ServiceNow Store.This pattern extends the ones used for discovering the respective AWS
resources.
Discovery populates the CMDB with tags for the following AWS patterns and CI types:
• Amazon AWS - ACL (LP) [cmdb_ci_network_acl]
• Amazon AWS API Gateway [cmdb_ci_cloud_gateway]
• Amazon AWS - Application and Network LB (LP) [cmdb_ci_cloud_load_balancer]
• Amazon AWS Application and Network LBs Events
• Amazon AWS - Classic LB (LP) [cmdb_ci_cloud_load_balancer]
• Amazon AWS Classic LB Events
• Amazon AWS Cognito [cmdb_ci_cloud_authentication]
• Amazon AWS - Customer Gateway (LP) [cmdb_ci_customer_gateway]
• Amazon AWS DB Cluster
• Amazon AWS DynamoDB [cmdb_ci_dynamodb_table]
• Amazon AWS ElastiCache
• Amazon AWS - ECS [cmdb_ci_cloud_service_account]
• Amazon AWS - Executable Template (LP) [cmdb_ci_os_template]
• Amazon AWS - Host (LP)
• Amazon AWS - Internet Gateway (LP)
• Amazon AWS keyspace
• Amazon AWS - Key Pair (LP)
• Amazon AWS Lambda [cmdb_ci_cloud_function]
• Amazon AWS - LB Pool (LP)
• Amazon AWS - NAT Gateway (LP)
• Amazon AWS - Network (LP)
• Amazon AWS Network Events
• Amazon AWS - NIC (LP)
• Amazon AWS - Owned Template (LP)
• Amazon AWS - Public IP Address (LP)
• Amazon AWS Redshift
• Amazon AWS Relational Database Service [cmdb_ci_cloud_database]
• Amazon AWS Resource Inventory
• Amazon AWS - Route Table (LP)
• Amazon AWS S3 [cmdb_ci_cloud_object_storage]
• Amazon AWS - Security Group (LP)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2270


<!-- page 2271 -->
• Amazon AWS Security Group Events
• Amazon AWS Serverless Database
• Amazon AWS - Storage (LP)
• Amazon AWS Storage Events
• Amazon AWS sub account discovery
• Amazon AWS - Subnet (LP)
• Amazon AWS - Virtual Server (LP)
• Amazon AWS Virtual Server Events
• Amazon AWS - VPN Connections (LP)
• Amazon AWS - VPN Gateway (LP)

Note: For more information about the tags and patterns for each of these resources, see
the documentation for the specific AWS resource.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
AWS Credentials
• On the ServiceNow AI Platform, configure AWS credentials, using a secret key
and an access key.
• Have an Amazon Account ID. Use the Account ID as it appears in the AWS
Management Console. You can run Discovery from the service account form.
• Set read-only permissions for the following URL: https//
tagging.<region>.amazonaws.com.
Discovery schedule
Create a schedule for the relevant AWS service account. For more information, see
Create a discovery schedule in Cloud Discovery Workspace.

Pattern tasks
When discovering AWS tags, the pattern completes the following high-level tasks:
• Sets the Resource Type filter: Filters the tags to only those tags related to the pattern CI type.
• Initiates the Cloud API call: The API call to the cloud environment that collects the tags and
parses their attributes in the Tags table.
• Parses the resource name from the Amazon Resource Name (ARN). Each Amazon resource is
assigned a name and a unique identifier.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2271


<!-- page 2272 -->
Note: Parsing the resource name is needed only for patterns where the main
identification section does not work with the ARN of the AWS resource. When that is the
case, a relation attribute has to be parsed from the AWS ARN.
• Includes references to cloud resource type. Establishes the relationship between the tag and
the cloud resource type.

Cloud Rest Call
The pattern includes an API called "Cloud Rest Call” Post Call used to collect the following data:
• API URL used to retrieve the data — "https://tagging." + $ldc[1].object_id + ".amazonaws.com/“
• API Body — "{\"ResourceTypeFilters\":[\"" + $resource_type + "\"]}“
• Headers — "Content-Type:application/x-amz-json-1.1,X-AmzTarget:ResourceGroupsTaggingAPI_20170126.GetResources"
This data displays as shown in the following window.
Data from Cloud Rest Call

Data collected by Discovery during horizontal discovery
The pattern collects the following data during horizontal discovery:

Table and field

Additional information

CI type [cmdb_key_value]
Key

Tag key

Value

Tag value

Object_id

Unique resource ID that identifies the resource
in the AWS console.

Class model [cmdb_key_value]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2272


<!-- page 2273 -->
Table and field

Additional information

Extends table

Not applicable

Identifier – Object_id

Related entries to cloud resources

Metadata rules

Not applicable

This data is displayed as shown in the following window:
Data collected during horizontal discovery

AWS discovery pattern uses the following EVAL:
var rtrn;
var name = ${cmdb_key_value[].object_id}
name =
name.substring(name.lastIndexOf("restapis/")+9,name.lastIndex);
name = name.substring(0,name.indexOf("/"));
rtrn = name;
Similar EVALS are available for patterns where the main identification section does not include
ARN information in the main CI type table. When this information is not available, the Tag
Extension section must parse a unique ARN used to establish the relationship to the related
cloud resource.
Enable AWS Application Load Balancer target discovery
Enable the sn_itom_pattern.discover_aws_app_pool_members MID Server
property to discover AWS Application Load Balancer targets.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Mid Server > Properties.
2. In the Name field, search for
sn_itom_pattern.discover_aws_app_pool_members.
3. Select the sn_itom_pattern.discover_aws_app_pool_members property.
4. In the Value field, enter true.
5. Select Update.
Related topics
AWS discovery using patterns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2273


<!-- page 2274 -->
Limit AWS discovery to datacenters with resources
Optimize AWS discovery by limiting it to datacenters with resources.

Before you begin

Verify that you have installed Discovery and Service Mapping Patterns, starting with version
1.29.0.
Role required: discovery_admin

About this task

Starting with version 1.29.0, Discovery and Service Mapping Patterns introduces a new AWS
datacenter discovery model that focuses discovery on datacenters with resources and excludes
datacenters that don't contain resource. To limit discovery to datacenters that contain resources,
set the mid.cloud.discovery.sonar.discover_all_aws_datacenters MID
Server property to false. For more information, see AWS discovery using patterns.

Procedure
1. Navigate to All > MID Server > Properties.
2. In the Name column, search for the
mid.cloud.discovery.sonar.discover_all_aws_datacenters property.
3. Select the mid.cloud.discovery.sonar.discover_all_aws_datacenters
property.
4. In the Value field, enter false.
5. Select Update.
Related topics
AWS discovery using patterns
Google Cloud Platform (GCP) Cloud discovery using Patterns
Discovery and Service Mapping Patterns uses patterns to discover components of the Google
Cloud Platform (GCP) deployment during horizontal discovery. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns starting version 1.8.0 (September 2023)
• CMDB CI Class Models starting version 1.49.0 (September 2023)
• Visibility Content starting version 6.13.0 (September 2023)
Verify the MID Server requirements

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2274


<!-- page 2275 -->
• Use a dedicated MID Server for cloud discovery. The MID Server must have
16 Cores, 8 GB with 4 GB Java Memory Model (JVM) memory allocation. For
information on verifying MID Server specifications, see KB article KB2156327

.

• Deploy and connect the dedicated MID Server with internet access.
• For more information on the MID Server configurations, see Install and configure
MID Servers to access cloud environments.
Verify Google Cloud BigQuery and Google Cloud Bigtable requirements
To discover Google Cloud BigQuery and Google Cloud Bigtable, navigate
to All > Discovery > MID Server > Properties and ensure that the
sn_itom_pattern.google_dbservice_table_collection property is
set to True.
Verify user role settings
Set the user permission for the Google Cloud Platform member to Viewer:
1. In the Google Cloud Platform console, navigate to IAM.
2. Select the relevant member from the list and click the Edit icon.
3. In the Edit permissions window, select Viewer from the Role list.
4. Click Save.
Configure Google API Credentials
For more information, see Configure the Google API credentials for Cloud
Discovery.
Create a Google Cloud Platform service account
For more information, see Create GCP service accounts.
Enable collecting cloud logging events
The Google Cloud Platform patterns can collect cloud logging events generated by
the native Google Cloud APIs. Configure the Google Cloud Logging service to autoupdate the CMDB.
Activate the cloud-related CI relationships
To include discovered components into service instances, enable CI relationships
used in tag-based discovery by Service Mapping. These CI relationships are
available from the 1.0.68 release on the ServiceNow Store. For operational steps,
see Tag-based discovery configuration.
Verify that a Discovery schedule is configured
For more information, see Create a discovery schedule in Cloud Discovery
Workspace.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
Resources discovered by all patterns designed to discover GCP products
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2275


<!-- page 2276 -->
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account Id [account_id]

Name of the project used for the discovery.

Object ID [object_id]

Name of the project used for the discovery.

Datacenter Type
[datacenter_type]

Datacenter type: Google Datacenter
[cmdb_ci_google_datacenter].

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Name of the availability zone.

Description
[short_description]

Description of the availability zone.

State [state]

State of the Availability Zone. Possible values are
Available or Terminated.

Google Datacenter [cmdb_ci_google_datacenter]
Field

Description

Name [name]

Datacenter or region name.

Region [region]

Datacenter or region name.

Object ID [object_id]

Unique identifier allocated by GCP for this
resource.

Description
[short_description]

Datacenter or region description.

Resources discovered by the Google Cloud Platform Discovery Compute Pillar
Virtual Machine [cmdb_ci_vm_instance]
Field

Description

Name [name]

Name of the Virtual Machine (VM).

Object ID
[object_id]

Unique identifier, allocated by Google Cloud for this
resource.

State [state]

VM state. One of the following:
• On
• Running
• Off
• Terminated
• Paused

Disks [disks]

Number of disks assigned to this VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2276


<!-- page 2277 -->
Virtual Machine [cmdb_ci_vm_instance] (continued)
Field

Description

Netwrk adapters
[nics]

Number of Network Interface Controllers (NICs) assigned to
this VM.

CPUs [cpus]

Number of CPU cores assigned to this VM.

Memory (MB)
[memory]

Number of memory size assigned to this VM.

Instance Template [cmdb_ci_instance_template]
Field

Description

Name [name]

Name of the instance template.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Description
[short_description]

Description of the instance template.

Cloud Mgmt Network Interface [cmdb_ci_nic]
Field

Description

Name [name]

Name of the NIC.

Object ID
[object_id]

Unique identifier, made up of a concatenation of vm_id + ”:”
+ nic_name.

IP Address
[ip_address]

NIC primary internal IP address.

State [state]

Field with the same value as the GCP state field.

Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Name of the disk.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Size [size]

Disk size in GB.

Description
[short_description]

Description that you provide for easy identification.

State [state]

State of the Disk. The state is always “available”, since it
was returned on discovery.

Install Status
[install_status]

Installed.

Storage type
[storage_type]

Disk type. For example, pd-standard or local SSD.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2277


<!-- page 2278 -->
Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name of the image.

Object ID [object_id] Unique identifier, allocated by Google Cloud for this
resource.
Image Type
[image_type]

Image type.

Image Source
[image_source]

Source of the image, such as, source disk/snapshot + “/” +
source disk/snapshot ID.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
Hardware Type [cmdb_ci_compute_template]
Field

Description

Name [name]

Name of the image.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for
this resource.

vCPUs [vcpus]

Number of CPU cores assigned to this template.

Memory MB [memory_mb]

Memory size assigned to this template.

Local Storage GB
[local_storage_gb]

Storage assigned to this template.

Note: When using the Hardware Type [cmdb_ci_compute_template] table
to store the hardware types, you may notice an unusually large number of
records. To avoid this issue, you can store the discovered hardware types in
the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table. For more
information, see Enable the Cloud Hardware Type class extension.
Resources discovered by the Google Cloud Platform Discovery External IP Pillar
Cloud Public IP Address [cmdb_ci_cloud_public_ipaddress]
Field

Description

Name [name]

Name of the external IP.

Public IP Address
[public_ip_address]

Address of the public IP.

State [state]

State of the external IP Address. One of the following:
• In Use
• Available

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2278


<!-- page 2279 -->
Cloud Public IP Address [cmdb_ci_cloud_public_ipaddress] (continued)
Field

Description

Use ”In Use” if the external IP is in use or ”Available” if
reserved for later use.
Resources discovered by the Google Cloud Platform Discovery Load Balancer
Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
Field

Description

Name [name]

Name of the load_balancer.

Object ID
[object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Load Balancer Services [cmdb_ci_lb_service]
Field

Description

Name [name]

Name of the load balancer service.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for
this resource.

Service Type [service_type]

Service type. One of:
• User interface (HTTP/TCP/UDP LB)
• Backend (HTTP LB only).

Port [port]

Listeners protocol port number (Backend).

Front End Port
[front_end_port]

Listeners protocol port number (Frontend).

Listener Protocol
[listener_protocol]

Listeners protocol. One of
• TCP
• HTTP
• HTTPS

Pool [pool]

Pool used by the LB service.

Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Name
[name]

Pool name. For TCP/UDP LB without pools, the name containing the
LB name -Pool.

Object ID
[object_id]

The unique identifier of the LB Pool. For TCP/UDP LB without pools,
the name containing the LB name -Pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2279


<!-- page 2280 -->
Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Name [name]

Name of the pool member.

Object ID
[object_id]

Unique identifier of the Pool Member, created from the ID of the
instance object_id.

Cloud Load Balancer Health Service [cmdb_ci_lb_health_service]
Field

Description

Name [name]

Name of the health service.

Object ID [object_id]

Unique identifier of the Health Service Check.

Monitor type protocol Type of health check. One of:
[monitor_type]
• TCP
• HTTP
• HTTPS
Timeout in seconds
[timeout_sec]

Timeout in seconds to wait for health checks response.

Interval in seconds
[check_interval_sec]

Interval in seconds to perform health check.

Healthy threshold
[healthy_threshold]

Number of sequential successful probe results for a VM
instance to be considered healthy.

Unhealthy threshold Number of sequential failed probe results for a VM
[unhealthy_threshold] instance to be considered unhealthy.
Request path
[request_path]

URL path to which GCP sends health check probe
requests. If omitted, GCP sends probe requests to the root
path.

Port [port]

Protocol and port to determine how GCP health check
systems contact the VMs.

Resources discovered by Google Cloud Platform Discovery using labels
When Google Cloud Platform Discovery uses labels during discovery, the following
data is collected from the Key Value form:
• Key
• Value
• Configuration item

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2280


<!-- page 2281 -->
Key Value form

This data is identified in the Related Entry form for the following CMDB tables:
• Virtual Machine [cmdb_ci_vm_instance]
• Image [cmdb_ci_os_template]
• Storage Volume [cmdb_ci_storage_volume]
• Storage Snapshot [cmdb_ci_storage_vol_snapshot] as inherited from the parent
Related Entry form

Resources discovered by the Google Cloud Platform Discovery Network Pillar
Cloud Network [cmdb_ci_network]
Field

Description

Name [name]

Name of the Virtual Private Cloud (VPC) network.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Default Gateway
[default_gateway]

Gateway address for default routing out of the network.

State [state]

State of the network. The state is always “available”, since
it was returned on discovery.

Cloud subnet [cmdb_ci_cloud_subnet]
Field

Description

Name [name]

Name of the instance template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2281


<!-- page 2282 -->
Cloud subnet [cmdb_ci_cloud_subnet] (continued)
Field

Description

Object ID [object_id] Unique identifier, allocated by Google Cloud for this
resource.
CIDR [cidr]

Combination of the subnet CIDR, secondary CIDR and IPV6
CIDR.
For example, 10.0.0.0/16,10.2.0.0/
16,fd20:957:65cb:bc00:0:0:0:0/64,10.1.0.0/
16,fd20:957:65cb:bc00:0:0:0:0/64

Subnet Mask
[subnet_mask]

Dotted representation of the subnet mask. For example,
255.255.255.0

Gateway [gateway]

Gateway address for default routing out of the network.

Broadcast Address
Broadcast address of the subnet.
[broadcast_address]
Available IP Count
[available_ip_count]

Number of IPs that are available in the subnet. This amount
does not include network and broadcast addresses.

Network ACL [cmdb_ci_network_acl]
Field

Description

Name [name]

Name of the access control list (ACL).

Object ID [object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Description
[short_description]

ACL description that you provide.

Network ACL Rule [cmdb_ci_network_acl_rule]
Field

Description

Name [name]

ACL rule name. This name is the same as the name of the
cmdb_ci_network_acl.

Allow Deny
[allow_deny]

ACL rule behavior. One of:
• Allowed
• Denied

Outbound
[is_outbound]

Rule for outbound traffic. Use one of the following:
• True if the rule is for outbound traffic
• False if the rule is for inbound traffic

Source Ranges
[source_ranges]

JSON blob service that contains sources that are
Classless Inter-Domain Routing (CIDR) representations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2282


<!-- page 2283 -->
Network ACL Rule [cmdb_ci_network_acl_rule] (continued)
Field

Description

that the rule either allows or blocks the traffic from the
service.
Destination Ranges
[destination_ranges]

JSON blob service that contains destinations that are
CIDR representations that the rule either allows or blocks
the traffic from the service.

Target Tags
[target_tags]

JSON blob service that represents a list of tags that
controls which instances the firewall rule applies to.

Allowed/
JSON blob service that contains the rules that are either
Denied Traffic
allowed or denied by this ACL rule.
[allowed_deny_traffic]
Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name of the image.

Object ID [object_id] Unique identifier, allocated by Google Cloud for this
resource.
Image Type
[image_type]

Image type.

Image Source
[image_source]

Source of the image, such as, source disk/snapshot + “/” +
source disk/snapshot ID.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
Hardware Type [cmdb_ci_compute_template]
Field

Description

Name [name]

Name of the image.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for
this resource.

vCPUs [vcpus]

Number of CPU cores assigned to this template.

Memory MB [memory_mb]

Memory size assigned to this template.

Local Storage GB
[local_storage_gb]

Storage assigned to this template.

Note: When using the Hardware Type [cmdb_ci_compute_template] table
to store the hardware types, you may notice an unusually large number of
records. To avoid this issue, you can store the discovered hardware types in
the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table. For more
information, see Enable the Cloud Hardware Type class extension.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2283


<!-- page 2284 -->
Resources discovered by the Google Cloud Platform Discovery Storage Pillar
Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Name of the storage disk.

Object ID
[object_id]

Unique identifier, allocated by Google Cloud for this resource.

Size [size]

Disk size in GB.

State [state]

State of the network. The state is always “available”, since it
was returned on discovery.

Status [status]

Disk status: Installed

Storage type
[storage_type]

Disk type. For example, pd-standard or local-ssd.

Cloud Disk Type [cmdb_ci_disk_type]
Field

Description

Name [name]

Name of the disk, in the format: <disk type
name>@<zone name>

Object ID [object_id]

Disk type is unique per zone. Format used:
<zone>:<disk type name>

Description [short_description]

Disk type description. For example, Local-SSD.

Valid Disk Size (GB)
[valid_disk_size]

Disk sizes that are valid for this disk type.

Default Disk Size (GB)
[default_disk_size_gb]

Default disk size (in GB) for this disk type.

Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot]
Field

Description

Name [name]

Name of the snapshot.

Object ID [object_id]

Unique identifier, allocated by Google Cloud for this
resource.

Description
[short_description]

ACL description that you provide.

State [state]

Field with the same value as the GCP state.

Volume Name
[volume_name]

Name of the source disk:

Capacity [capacity]

Number of bytes stored in the snapshot.

Storage Volume [cmdb_ci_storage_volume]

Resources discovered for Google Cloud BigQuery, Google Cloud Bigtable, Google Cloud
Spanner, and Google Cloud SQL
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2284


<!-- page 2285 -->
Cloud Database [cmdb_ci_cloud_database]
Field

Description

Name [name]

Name of the database you created in GCP.

Object ID [object_id]

Identification name of the database.

Install Status [install_status]

Install status of the database. Default is
Installed.

Operational status
[operational_status]

Operational status of the database. Default
is Operational.

State [state]

Whether the database is available or
terminated.

Type [type]

Type of database.

Processing Units [processing_units]
(for Cloud Spanner only)

Number of compute processing units
allocated to each Spanner instance

Database [cmdb_ci_database]
Field

Description

Name [name]

Name of the database.

Type [type]

Type of the database.

Install Status [install_status]

Install status of the database.

Resources discovered for Google Cloud Firebase
Cloud Database [cmdb_ci_cloud_database]
Name [name]

Name of the database you created in GCP.

Object ID [object_id]

Identification name of the database.

Install Status [install_status]

Install status of the database. Default is
Installed.

Operational status
[operational_status]

Operational status of the database. Default is
Operational.

State [state]

Whether the database is available or
terminated.

Type [type]

Type of database.

Resources discovered for Google Cloud Firestore and Datastore
Database [cmdb_ci_database]
Field

Description

Name [name]

Name of the database.

Type [type]

Type of the database.

Install Status [install_status]

Install status of the database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2285


<!-- page 2286 -->
Resources discovered by the Virtual Google Cloud Platform (GCP) – VM license and
Google Cloud Platform (GCP) - Virtual Server patterns
These patterns extension sections discover Bring Your Own License (BYOL) or the
included licenses for Windows VMs and RHEL VMs.
Key value [cmdb_key_value]
Field

Description

Key [key]

The key is one of the options:
• Windows_OS_License_Type_automatic
• RHEL_OS_License_Type_automatic
• SQL_Server_License_Type_automatic

Value [value]

The value is one of the options:
• BYOL
• License Included

Configuration item
[configuration_item]

Reference to the Virtual Machine Instance
record.

Class

The Class is Virtual Machine
Instance.

CI Relationships
These relationships are created to support Google Cloud Platform discovery.
Relationships for resources that Google Cloud Platform Compute Pillar discovers

CI

Relationship

Google Datacenter
Hosted On::Hosts
[cmdb_ci_google_datacenter]

CI

Cloud Service Account
[cmdb_ci_cloud_service_account]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Google Datacenter
By
[cmdb_ci_google_datacenter]

Virtual Machine
[cmdb_ci_vm_instance]

Hosted On::Host

Virtual Machine
[cmdb_ci_vm_instance]

Contains::Contained Availability Zone
By
[cmdb_ci_availability_zone]

Google Datacenter
[cmdb_ci_google_datacenter]

Instance Template
Host::Hosted On
[cmdb_ci_instance_template]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Instance Template
Uses::Used by
[cmdb_ci_instance_template]

Hardware Type
[cmdb_ci_compute_template]

Instance Template
Uses::Used by
[cmdb_ci_instance_template]

Image [cmdb_ci_os_template]

NIC [cmdb_ci_nic]

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted On::Host

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2286


<!-- page 2287 -->
CI

Relationship

CI

NIC [cmdb_ci_nic]

implement endpoint VNIC Endpoint
to
[cmdb_ci_endpoint_vnic]

NIC [cmdb_ci_nic]

implement endpoint Virtual Machine
from
[cmdb_ci_vm_instance]

Storage Volume
[cmdb_ci_storage_volume]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Storage Volume
[cmdb_ci_storage_volume]

implement endpoint Block Endpoint
to
[cmdb_ci_endpoint_block]

Storage Volume
[cmdb_ci_storage_volume]

implement endpoint Virtual Machine
from:
[cmdb_ci_vm_instance]

Image
[cmdb_ci_os_template]

Hosted On::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Hardware Type
Hosted On::Host
[cmdb_ci_compute_template]

Google Datacenter [cmdb_ci_
google_datacenter]

Hardware Type
provisioned from
[cmdb_ci_compute_template]

Hardware Type
[cmdb_ci_compute_template]

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
Relationships for resources that Google Cloud Platform IP Pillar discovers

CI

Relationship

CI

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted On::Host

Cloud Service Account
[cmdb_ci_cloud_service_account]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Google Datacenter
By
[cmdb_ci_google_datacenter]

Public IP Addresses
Hosted On::Host
[cmdb_ci_cloud_public_ipaddress]

Google Datacenter
[cmdb_ci_google_datacenter]

Public IP Addresses
Hosted On::Host
[cmdb_ci_cloud_public_ipaddress]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Relationships for resources that Google Cloud Platform Load Balancer discovers

CI

Relationship

CI

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted On::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Google Datacenter
[cmdb_ci_google_datacenter]

Contains::Contained Availability Zone
By
[cmdb_ci_availability_zone]

Cloud Load Balancer
Hosted On::Hosts
[cmdb_ci_cloud_load_balancer]

Google Datacenter
[cmdb_ci_google_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2287


<!-- page 2288 -->
CI

Relationship

CI

Cloud Load Balancer
Hosted On::Hosts
[cmdb_ci_cloud_load_balancer]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Load Balancer Pool
[cmdb_ci_lb_pool]

Hosted On::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Load Balancer Pool
[cmdb_ci_lb_pool]

Owns::Owned by

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Load Balancer Services
[cmdb_ci_lb_service]

Hosted On::Host

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Load Balancer Services
[cmdb_ci_lb_service]

Uses::Used by

Load Balancer Pool
[cmdb_ci_lb_pool]

Cloud Load Balancer
Uses::Used by
[cmdb_ci_cloud_load_balancer]

Load Balancer Pool
[cmdb_ci_lb_pool]

Health Service
[cmdb_ci_lb_health_service]

Uses::Used by

Load Balancer Services
[cmdb_ci_lb_service]

Health Service
[cmdb_ci_lb_health_service]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Health Service
[cmdb_ci_lb_health_service]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Health Service
[cmdb_ci_lb_health_service]

Uses::Used by

Load Balancer Pool
[cmdb_ci_lb_pool]

Relationships for resources that Google Cloud Platform Network Pillar discovers

CI

Relationship

Google Datacenter
Hosted On::Host
[cmdb_ci_google_datacenter]

CI

Cloud Service Account
[cmdb_ci_cloud_service_account]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Google Datacenter
[cmdb_ci_google_datacenter]

Cloud Network
[cmdb_ci_network]

Hosted On::Host

Cloud Subnet
[cmdb_ci_cloud_subnet]

Contains::Contained Cloud Network
[cmdb_ci_network]

Cloud Subnet
[cmdb_ci_cloud_subnet]

Contains::Contained Google Datacenter
[cmdb_ci_google_datacenter]

Network ACL
[cmdb_ci_network_acl]

Contains::Contained Cloud Network
[cmdb_ci_network]

Network ACL Rule
[cmdb_ci_network_acl_rule]

Contains::Contained Network ACL
[cmdb_ci_network_acl]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Relationships for resources that Google Cloud Platform Storage Pillar discovers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2288


<!-- page 2289 -->
CI

Relationship

CI

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted On::Host

Cloud Service Account
[cmdb_ci_cloud_service_account]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Google Datacenter
[cmdb_ci_google_datacenter]

Storage Volume
[cmdb_ci_storage_volume]

Contains::Contained Availability Zone
[cmdb_ci_availability_zone]

Storage Volume
[cmdb_ci_storage_volume]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Disk Type [cmdb_ci_disk_type]

Host::Hosted On

Availability Zone
[cmdb_ci_availability_zone]

Disk Type [cmdb_ci_disk_type]

Host::Hosted On

Google Datacenter
[cmdb_ci_google_datacenter]

Storage Volume Snapshot
Hosted On::Hosts
[cmdb_ci_storage_vol_snapshot]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Storage Volume Snapshot
Provisioned
[cmdb_ci_storage_vol_snapshot] From::Provisioned
with

Storage Volume
[cmdb_ci_storage_volume]

Storage Volume Snapshot
Replicates
[cmdb_ci_storage_vol_snapshot] to::Replicated by

Storage Volume
[cmdb_ci_storage_volume]

This relationship means that
this disk was created by this
snapshot.

This relationship means that this
snapshot was created from this
disk.
Relationships discovered for the virtual machine (VM) instance

CI

Relationship

CI

Servers
[cmdb_ci_server]

Virtualized by::
Virtualizes

Virtual Machine Instance
[cmdb_ci_instance]

Relationships discovered for Google Cloud BigQuery, Google Cloud SQL, Google Cloud
Spanner, and Google Cloud Bigtable

CI

Relationship

Google Datacenter
Hosted on::Hosts
[cmdb_ci_google_datacenter]

CI

Cloud Service Account
[cmdb_ci_cloud_service_account]

Google Datacenter
Contains::Contained Availability zone
[cmdb_ci_google_datacenter] by
[cmdb_ci_availability_zone]
Cloud Database
[cmdb_ci_cloud_database]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2289


<!-- page 2290 -->
CI

Relationship

CI

Cloud Database
[cmdb_ci_cloud_database]

Replicates
to::Replicated by

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud Database
[cmdb_ci_cloud_database]

Contains::Contained Database [cmdb_ci_database]
by

Key Value [cmdb_key_value]

Reference only

Cloud Database
[cmdb_ci_cloud_database]

Relationships discovered for Google Cloud Platform Firebase

CI

Relationship

CI

Google Datacenter
Hosted on::Hosts
[cmdb_ci_google_datacenter]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Google Datacenter
Contains::Contained by
[cmdb_ci_google_datacenter]

Availability zone
[cmdb_ci_availability_zone]

Cloud Database
Hosted on::Hosts
[cmdb_ci_cloud_database]

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud Database
Replicates to::Replicated
[cmdb_ci_cloud_database] by

Google Datacenter
[cmdb_ci_google_datacenter]

Relationships for Google Cloud Platform Firestore

CI

Relationship

Ci

Google Datacenter
Hosted on::Hosts
[cmdb_ci_google_datacenter]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Google Datacenter
Contains::Contained by
[cmdb_ci_google_datacenter]

Availability zone
[cmdb_ci_availability_zone]

Cloud Database
Hosted on::Hosts
[cmdb_ci_cloud_database]

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud Database
Replicates to::Replicated
[cmdb_ci_cloud_database] by

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud Database
Hosted on::Hosts
[cmdb_ci_cloud_database]

Cloud Service Account
[cmdb_ci_cloud_service_account]

Related topics
Kubernetes discovery using patterns
GCP Certificate Manager discovery
Google Cloud Platform (GCP) AlloyDB for PostgreSQL discovery using patterns
Discovery and Service Mapping Patterns uses the Google Cloud Platform (GCP) - AlloyDB for
PostgreSQL pattern to discover AlloyDB for PostgreSQL during horizontal discovery. Discovering
some of these resources may require updating to the latest version of the Discovery and Service
Mapping Patterns application from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2290


<!-- page 2291 -->
Pattern-based discovery and mapping requirements
Verify the GCP discovery prerequisites section in Google Cloud Platform (GCP) Cloud discovery
using Patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Google Cloud Platform (GCP) AlloyDB for PostgreSQL pattern.
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account Id [account_id]

Name of the project used for the discovery.

Object ID [object_id]

Name of the project used for the discovery.

Datacenter Type
[datacenter_type]

Datacenter type: Google Datacenter
[cmdb_ci_google_datacenter].

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Name of the availability zone.

Description
[short_description]

Description of the availability zone.

State [state]

State of the Availability Zone. Possible values are Available or
Terminated.

Google Datacenter [cmdb_ci_google_datacenter]
Field

Description

Name [name]

Datacenter or region name.

Region [region]

Datacenter or region name.

Object ID [object_id]

Unique identifier allocated by GCP for this resource.

Description [short_description]

Datacenter or region description.

Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster]
Field

Description

Cluster ID [cluster_id]

The GCP system-generated unique identifier (UID) of the
resource.

Name [name]

Name of the cluster resource.

Automated Backups
[automated_backup]

Determines whether automated backups are enabled.

Install Status [install_status]

Install status of the cluster. Default value is Installed.

Possible values are Enabled or Disabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2291


<!-- page 2292 -->
Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster] (continued)
Field

Description

Operational status
[operational_status]

Operational status of the cluster. Default value is
Operational.

Cluster Status [cluster_status]

Current state of this cluster.​
For example: READY or STOPPED.

Cluster Version [cluster_version] Optional field that displays the database engine's major
version.
Cluster Type [cluster_type]

Type of cluster.
Possible values are AlloyDB – Primary cluster or AlloyDB –
Secondary cluster.

Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Object ID [object_id]

The GCP system-generated UID of the resource.

Name [name]

Name of the instance resource.

Install Status [install_status]

Install status of the database. Default value is Installed.

Operational status
[operational_status]

Operational status of the database. Default value is
Operational.

State [state]

State of the database.
Possible values are Available or Terminated.

CPU Count [cpu_count]

Number of central processing units (CPUs) in the virtual
machine (VM) instance.

Type [type]

Type of database: AlloyDB – PostgreSQL.

Replication Type
[replication_type]

Type of the instance specified at creation time.

IP Address [ip_address]

IP address for the Instance, which is the endpoint for an enduser application.

For example: Primary instance, Read pool instance, or
Secondary instance.

On the Dependency Views map, you can view all discovered AlloyDB for PostgreSQL resources
in your organization and the relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2292


<!-- page 2293 -->
AlloyDB for PostgreSQL instance dependency view

AlloyDB for PostgreSQL Cluster dependency view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2293


<!-- page 2294 -->
CI relationships
Discovery creates these relationships to support the AlloyDB for PostgreSQL discovery.

CI

Relationship

CI

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained
by

Cloud DataBase
[cmdb_ci_cloud_database]

Cloud DataBase
[cmdb_ci_cloud_database]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Cluster of::Cluster

Cloud DataBase
[cmdb_ci_cloud_database]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Replicates::Replicated Cloud DataBase Cluster
by
[cmdb_ci_cloud_db_cluster]

Key Value [cmdb_key_value]

References

Cloud DataBase
[cmdb_ci_cloud_database]

Key Value [cmdb_key_value]

References

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Tag discovery
The Google Cloud Platform (GCP) - AlloyDB for PostgreSQL pattern collects tags and populates
them in two entries in the Key Value [cmdb_key_value] table. One entry references the Cloud
DataBase table, the other entry references the Cloud DataBase Cluster table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud DataBase [cmdb_ci_cloud_database]
table

Configuration item
[configuration_item]

References the Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster] table

Google Cloud Platform (GCP) Cloud Functions discovery using patterns
Discovery and Service Mapping Patterns uses the Google Cloud Platform (GCP) - Cloud
Functions pattern to discover Cloud Functions in a Google Cloud Platform (GCP) deployment
during horizontal discovery. Discovering some of these resources may require updating to the
latest version of the Discovery and Service Mapping Patterns application from the ServiceNow
Store.

Pattern-based discovery and mapping requirements
Verify the GCP discovery prerequisites
For more information, see the prerequisites section in Google Cloud Platform (GCP)
Cloud discovery using Patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2294


<!-- page 2295 -->
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Google Cloud Platform (GCP) Cloud Functions pattern.
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account Id [account_id]

Name of the project used for the discovery.

Object ID [object_id]

Name of the project used for the discovery.

Datacenter Type
[datacenter_type]

Datacenter type: Google Datacenter
[cmdb_ci_google_datacenter].

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Name of the availability zone.

Description
[short_description]

Description of the availability zone.

State [state]

State of the Availability Zone. Possible values are Available or
Terminated.

Google Datacenter [cmdb_ci_google_datacenter]
Field

Description

Name [name]

Datacenter or region name.

Region [region]

Datacenter or region name.

Object ID [object_id]

Unique identifier allocated by GCP for this resource.

Description [short_description]

Datacenter or region description.

Cloud Function [cmdb_ci_cloud_function]
Field

Description

Version [version]

Version ID of the function, available only for Gen1 Cloud Functions.

Object ID [object_id]

Name fetched from the API response.
For example: projects/automation-226410/
locations/us-central1/functions/auto-labeller.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2295


<!-- page 2296 -->
Cloud Function [cmdb_ci_cloud_function] (continued)
Field

Description

Name [name]

Name parsed from the API response.
For example: auto-labeller.

Function Last Modified
[function_last_modified]

Timestamp indicating the last time the function was updated.

CodeSha256
[codesha256]

SHA-256 hash algorithm of the function's code used to verify the
integrity of the build.
For example: 273a583f-ef1c-49c2-9bae-7d21bf3b5f7a.

Language [language]

Runtime environment or programming language used for the
function.

Install Status
[install_status]

Install status of the function. Default value is Installed.

Operational status
[operational_status]

Operational status of the function. Default value is Operational.

On the Dependency Views map, you can view all discovered GCP Cloud Functions resources in
your organization and the relationships between them.
GCP Cloud Functions dependency view

CI relationships
Discovery creates these relationships to support the GCP Cloud Functions discovery.

CI

Relationship

CI

Google Datacenter
[cmdb_ci_google_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Cloud Function
[cmdb_ci_cloud_function]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2296


<!-- page 2297 -->
CI

Relationship

CI

Key Value [cmdb_key_value]

References

Cloud Function
[cmdb_ci_cloud_function]

Tag discovery
The Google Cloud Platform (GCP) - Cloud Functions pattern collects tags and populates them in
the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud Function [cmdb_ci_cloud_function]
table.

Google Cloud Platform (GCP) Memorystore discovery using patterns
Discovery and Service Mapping Patterns uses the Google Cloud Platform (GCP) - Memorystore
DB pattern to discover Memorystore for Memcached and Memorystore for Redis during
horizontal discovery. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the GCP discovery prerequisites section in Google Cloud Platform (GCP) Cloud discovery
using Patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Google Cloud Platform (GCP) Memorystore DB pattern.
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account Id [account_id]

Name of the project used for the discovery.

Object ID [object_id]

Name of the project used for the discovery.

Datacenter Type
[datacenter_type]

Datacenter type: Google Datacenter
[cmdb_ci_google_datacenter].

Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Name of the availability zone.

Description
[short_description]

Description of the availability zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2297


<!-- page 2298 -->
Availability Zone [cmdb_ci_availability_zone] (continued)
Field

Description

State [state]

State of the Availability Zone. Possible values are Available or
Terminated.

Google Datacenter [cmdb_ci_google_datacenter]
Field

Description

Name [name]

Datacenter or region name.

Region [region]

Datacenter or region name.

Object ID [object_id]

Unique identifier allocated by GCP for this resource.

Description [short_description]

Datacenter or region description.

Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster]
Field

Description

Name [name]

Name of the cluster.

Cluster ID [cluster_id]

ID of the cluster.

Install Status [install_status]

Install status of the cluster. Default value is Installed.

Operational status [operational_status]

Operational status of the cluster. Default value is
Operational.

Cluster Status [cluster_status]

Current state of this cluster.​
For example: READY or STOPPED.

Cluster Type [cluster_type]

Type of the cluster: Redis Cluster.

Disk Space (GB) [disk_space]

Disk space in gigabytes (GB).

IAM Authentication Enabled
[iam_authentication_enabled]

Determines whether the IAM authentication is
enabled.
Possible values are true or false.

Node Count [node_count]

Number of replica nodes per shard.

Deletion Protection Enabled
[deletion_protection_enabled]

Determines whether the deletion protection is
enabled.
Possible values are true or false.

Asset tag [asset_tag]

NodeType of a Redis cluster node.
For example: REDIS_SHARED_CORE_NANO or
REDIS_HIGHMEM_MEDIUM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2298


<!-- page 2299 -->
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Object ID [object_id]

Unique name of the resource in this scope, including the project
and location.

Name [name]

Unique name of the resource, parsed from the Object ID.

Type [type]

Type of database.
Possible values are memcache-instance or redis-instance.

Install Status [install_status] Install status of the database. Default value is Installed.
Operational status
[operational_status]

Operational status of the database. Default value is Operational.

State [state]

State of the database.
Possible values are Available or Terminated.

Fully qualified domain
name [fqdn]

Fully qualified domain name (FQDN) for the resource type.

IP Address [ip_address]

Hostname or IP address of the exposed endpoint used by clients
to connect to the service.

On the Dependency Views map, you can view all discovered Memorystore for Memcached or
Memorystore for Redis resources in your organization and the relationships between them.
Memorystore for Memcached or Memorystore for Redis instance dependency
view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2299


<!-- page 2300 -->
Memorystore for Redis Cluster dependency view

CI relationships
Discovery creates these relationships to support the Memorystore discovery.

CI

Relationship

CI

Cloud DataBase
[cmdb_ci_cloud_database]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Cloud DataBase
[cmdb_ci_cloud_database]

Replicates
to::Replicated by

Availability Zone
[cmdb_ci_availability_zone]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Extends from

Cluster [cmdb_ci_cluster]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Hosted on::Hosts

Google Datacenter
[cmdb_ci_google_datacenter]

Google Datacenter
[cmdb_ci_google_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Google Datacenter
[cmdb_ci_google_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Key Value [cmdb_key_value]

References

Cloud DataBase
[cmdb_ci_cloud_database]

Tag discovery
The Google Cloud Platform (GCP) - Memorystore DB pattern collects tags and populates them in
the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2300


<!-- page 2301 -->
Key Value [cmdb_key_value] (continued)
Field

Description

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud DataBase
[cmdb_ci_cloud_database] table.

Google Cloud Platform (GCP) Organization discovery with Patterns
The ServiceNow Discovery application uses the Discover Google Organization discovery pattern
to find GCP Organization projects and resources. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
For details on system requirements and family compatibility, view the application listing on the
ServiceNow Store
website.
GCP Organization structure
Verify that a GCP Organization resource is structured correctly, with projects
underneath it in a miscellaneous hierarchy.
Ensure that all projects under the GCP Organization resource have the Compute
Engine API enabled.
Service Account user settings
Check that Service Account users have access to the GCP Organization resource
node.
Verify that Service Account users are members of all other projects located under
the GCP Organization resource node.
Ensure that Service Account users have the following Cloud Identity and Access
Management credentials for projects under the GCP Organization resource:
• resourcemanager.folders.list
• resourcemanager.organizations.get
• resourcemanager.projects.get
• resourcemanager.projects.list
Credentials for API elements
During the discovery, the pattern uses the following API elements. The user that
was added to the credentials in the instance must have permissions to send these
queries.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2301


<!-- page 2302 -->
• https://cloudresourcemanager.googleapis.com/v1/{name=organizations/*}
• https://cloudresourcemanager.googleapis.com/v1/projects
• https://cloudresourcemanager.googleapis.com/v2/folders:search
Credentials for creating a discovery schedule
Configure the following credentials:
1. Create GCP credentials.
2. Create a GCP Service Account:
a. Credentials: The GCP credentials.
b. Account ID: The Google Service Account ID.
c. Datacenter type: Select cmdb_ci_google_datacenter.
3. Create a discovery schedule.
(Optional) Create a serverless discovery schedule
Create a discovery schedule to perform targeted discovery of GCP Organization
resources.
1. Navigate to Discovery > Discovery Schedules.
2. Click New and then fill in the form.
Discovery Schedule form
Field

Description

Name

Name for the Discovery schedule.
For example, Discover GCP
Organization.

Discover

Discover type.
Select Serverless.

MID Server

Name of the MID Server.

Active

Option for enabling this schedule for
discovery. Select this check box to enable
discovery.

3. Right-click the header of the Discovery Schedule form and select Save.
4. Click the Serverless Execution Patterns tab, click New, and then fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2302


<!-- page 2303 -->
Serverless Execution Pattern form
Field

Description

Name

Name for this Serverless Execution
Pattern. For example, Discover GCP
Organization.

Pattern

Name of the pattern to run: Discover
Google Organization.

Proxy Host

Fully qualified domain name of the
machine on which you are installing
the proxy server. Specify Global.

Active

Option for enabling this schedule for
discovery. Select this check box to
enable discovery.

5. Under Discovery Pattern Launcher Parameters, configure the following
parameters with the relevant values:

Parameter

Value

cloud_account_id

The Project ID within GCP.

cloud_cred_id

The sysid of the GCP credentials.

cloud_datacenter_type

cmdb_ci_google_datacenter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2303


<!-- page 2304 -->
Customers with early access to the GCP Organization pattern
Verify that the Discover-GCP-SubAccounts scheduled job is not enabled in your
instance.
1. Navigate to System Definition > Scheduled Jobs.
2. Click the Discover-GCP-SubAccounts scheduled job.
3. Clear the Active check box, and then click Update.

Data collected by Discovery during horizontal discovery
Table and field

Description

Organization [cmdb_ci_cloud_org]
name

The name of the organization resource.

object_id

The ID of the organization resource.

time

The time the organization resource was created in GCP.

operational_status

Current operational status. One of the following:
• Operational
• Non-Operational
• Repair in Progress
• DR Standby
• Ready
• Retired

Folder [cmdb_ci_gcp_folder]
name

The name of the organization folder.

parent_id

The ID of the parent resource.

parent_type

The type of the parent resource. Can be organization or folder.

time

The time the resource was created in GCP.

status

The status of the folder according to the lifecycleState status in
GCP.

object_id

The ID of the organization folder.

Project [cmdb_ci_gcp_project]
name

The name of the project.

project_id

The ID of the project.

parent_id

The ID of the parent folder resource.

parent_type

The type of the parent resource. Can be organization or folder.

time

The time the resource was created in GCP.

operational_status

The status of the folder according to the lifecycleState status in
GCP.

object_id

The ID of the project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2304


<!-- page 2305 -->
Table and field

Description

discovery_credentials GCP account credentials.
Resource [cmdb_key_value]
key

The key, or label, associated with the GCP project. For example,
country.

value

The project label value assigned to the GCP project. For example, ca.

configuration_item

The URL or path of the CI.

CI relationships
CI

Relationship

CI

Cloud Organization
[cmdb_ci_cloud_org]

Contained
by::Contains

Google Project
[cmdb_ci_gcp_project]

Cloud Organization
[cmdb_ci_cloud_org]

Contained
by::Contains

Service Account

Cloud Organization
[cmdb_ci_cloud_org]

Contained
by::Contains

Google Folder
[cmdb_ci_gcp_folder]

Service Account

Owns::Owned by

Google Project
[cmdb_ci_gcp_project]

Google Folder [cmdb_ci_gcp_folder] Contained
by::Contains

Google Project
[cmdb_ci_gcp_project]

Google Folder [cmdb_ci_gcp_folder] Contained
by::Contains

Sub Google Folder

Sub Google Folder

Google Project
[cmdb_ci_gcp_project]

Contained
by::Contains

Google Cloud Platform (GCP) resource inventory discovery with Patterns
The ServiceNow Discovery application uses the Google Cloud Platform (GCP) asset inventory
pattern to find GCP resources and policies. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
The pattern provides visibility for services supported by the Asset Inventory API, as well as
collecting inventory data on the deployed GCP services and updating the CMDB.
The pattern collects inventory data either for all GCP-supported resources or for a preconfigured
inclusion list of resources. The Cloud Inventory Resource Inclusion List contains all resource
types supported by GCP Cloud Asset Inventory, except for Compute Engine resources and IAM
policies. You can expand the inclusion list with additional resource types per your requirements.
For more information about Google Cloud assets, see https://cloud.google.com/resourcemanager/docs/cloud-asset-inventory/overview .

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2305


<!-- page 2306 -->
Starting with Discovery and Service Mapping Patterns version 1.18.1, you can discover the GCP
storage by two types of discovery: Serverless and Cloud Discovery. Running Cloud Discovery
schedules enables you to run one schedule per all your GCP projects without manually
configuring separate schedules. You can also continue using Serverless discovery as before.
The enhanced Google Cloud Platform (GCP) asset inventory pattern runs queries to check the
configurations on your system and trigger a discovery according to your configurations. The
queries by order:
1. If you have the Discovery Pattern Launcher Parameters configured, the pattern triggers a
Serverless discovery schedule.
2. If the former query carries no results, the pattern continues to query if you have the
mid.gcp_resource_inventory_bucketpath MID Server property configured. If you
do, the pattern runs a Cloud Discovery schedule by cloud accounts.
3. If the former query carries no results, the pattern continues to query if you have the
mid.gcp_resource_inventory_bucketpath.default MID Server property
configured. If you do, the pattern triggers a default Cloud Discovery schedule.
4. If none of these properties are configured, the pattern terminates gracefully.

Prerequisites
Verify the store apps are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
GCP authorization for Discovery to use the Cloud Asset API
• API endpoint: https://cloudasset.googleapis.com/

v1/projects/<account_id>:exportAssets

• Required one or more of the following IAM permissions on the specified resource
parent:
◦ cloudasset.assets.exportResource
◦ cloudasset.assets.exportIamPolicy
Service Account user for the cloud storage API
The ServiceNow Cloud Service Account need to have a read-only permission from
GCP to access the API endpoint - https://www.googleapis.com/storage/v1.

Note: You can use the headers on the Encryption page to do the following:
• Download an object that is encrypted by a customer-supplied encryption
key.
• Get object metadata with content hashes.
Permission to read and write to a Cloud Storage Bucket
• Storage Object Creator
• Storage Object Viewer
• Storage Object Admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2306


<!-- page 2307 -->
Create a cloud storage bucket using Google Cloud console
1. Go to the Google Cloud console.
2. From the Navigation menu, select Cloud Storage > Buckets.
3. To create a new bucket, select + Create.
4. On the Create a bucket page, fill in the bucket information.

Field

Description

Name your bucket

Enter a globally unique name for your
bucket.

Choose where to store your data

Select a Location type and Location
where the bucket data will be
permanently stored.
◦ Location type: Multi-region, for
global storage (for example, us, eu,
asia).
◦ Location: List of the Cloud Storage
locations available for storing your
data.

Choose a storage class for your data

Select the appropriate storage class
for your needs (for example, Standard,
Nearline, Coldline, or Archive).

Choose how to control access to
objects

Select whether or not your bucket
enforces public access prevention.

Choose how to protect object data

Configure protection tools, if required.

5. Select Create.

Note: For more information, see Google Cloud Storage documentation

.

Retention Policy for the storage bucket
Ensure that the Retention Policy for the storage bucket is not active. If the Retention
Policy is active, the auto-generated inventory data file cannot be deleted by the
pattern.
Create a Serverless discovery schedule
Create a discovery schedule to perform targeted discovery of GCP asset inventory.
1. Navigate to Discovery > Discovery Schedules.
2. Click New and then fill in the

form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2307


<!-- page 2308 -->
Discovery Schedule form
Field

Description

Name

Name for the Discovery schedule. For
example, Discover GCP Asset
Inventory.

Discover

Discover type.
Select Serverless.

MID Server

Name of the MID Server.

Run

Option to select when should the next
discovery run.

3. Right-click the header of the Discovery Schedule form and select Save.
4. Click the Serverless Execution Patterns tab, click New, and then fill in the form.

Serverless Execution Pattern form
Field

Description

Name

Name for this Serverless Execution
Pattern. For example, Discover GCP
Asset Inventory.

Pattern

Select the Google Cloud Platform
(GCP) Resource Inventory pattern.

Proxy Host

Fully qualified domain name of the
machine on which you are installing
the proxy server. Specify Global.

Active

Option for enabling this schedule for
discovery. Select this check box to
enable discovery.

5. Select Submit.
6. In the Discovery Pattern Launcher Parameters tab, configure the following
parameters with the relevant values:

Parameter

Value

cloud_account_id

The Project ID within GCP.

full_path_file

The complete file path of the storage bucket. For
example: gs://<bucketname>.

cloud_cred_id

The sysid of the GCP credentials.

cloud_datacenter_type cmdb_ci_google_datacenter
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2308


<!-- page 2309 -->
Storage discovery configurations with MID Server properties

1. Configure the mid.gcp_resource_inventory_bucketpath property.
a. Navigate to All > MID Server > Properties and filter the list by Name start
with mid.gcp.
b. Select mid.gcp_resource_inventory_bucketpath.
c. fill in the form.
i. Configure the property Name field to include your account ID as follows:
mid.gcp_resource_inventory_bucketpath.<Cloud Account
Id>.
ii. Fill in the Value field with the bucket URI, which is the complete file path of
the storage bucket. For example: gs://<bucketname>.
iii. In the MID Server field, leave it blank to set a MID Server property that affects
all MID Servers. To set a MID Server property for a particularMID Server,
select the preferred server.
iv. Select Update.
2. Configure the mid.gcp_resource_inventory_bucketpath.default
property.
a. Navigate to All > MID Server > Properties and filter the list by Name start
with mid.gcp.
b. Select mid.gcp_resource_inventory_bucketpath.default.
c. Fill in the Value field with the bucket URI, which is the complete file path of the
storage bucket. For example: gs://<bucketname>.
d. Select Update.
For more information, see Export asset metadata from one project to another
Cloud inventory resource inclusion list
• To collect inventory data for resources supported by GCP, in ServiceNow AI
Platform, navigate to Cloud Inventory Resource Inclusion List and clear all GCP
table records.
Cloud Inventory Resource Inclusion List

• Fine-tune GCP resource discovery using the Cloud Inventory Resource Inclusion
List.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2309


<!-- page 2310 -->
If your deployment has custom patterns for GCP discovery, ensure that you do not
discover GCP resources twice:
1. Ensure that the application scope is Discovery and Service Mapping Patterns:
a. Navigate to Settings > Developer.
b. Select Discovery and Service Mapping Patterns from the
Application list.
2. Navigate to System Definitions > Tables.
3. Open the Cloud Inventory Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table.
4. Under Related Links, click Show List.
5. Select resource types for which you have custom patterns, and select Delete
from the Actions on selected rows list.
The Cloud Inventory Resource Inclusion List is predefined with common services.
You can expand the list with additional resource types that you want the pattern to
discover, as follows:

Note: If you modify the list provided in the base system, it is no longer
updated automatically in application updates. You need to maintain
customized lists yourself.
1. Open the Cloud Inventory Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table.
2. Click New.
3. Fill in the form, and then click Submit.

Note: The names of additional resource types must conform to the
appropriate vendor naming conventions.

Field

Description

Cloud Vendor

The vendor of the resource type: GCP.

Resource Type

The GCP resource type value.

Application

The application scope: Discovery and Service
Mapping Patterns.

The changes are applied the next time you run the pattern.

Data collected by Discovery during horizontal discovery
This pattern discovers data that provides visibility for all GCP services in your organization. The
discovered data includes the following tables and fields.

Table and field

Description

Main CI [cmdb_ci_cmp_resource]
object_id

The ID of the item. The item is accessed with this URL.

name

The name of the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2310


<!-- page 2311 -->
Table and field

Description

resource_type

The asset resource type, according to the data in the JSON
file.

Key Value [cmdb_key_value]
Key

The GCP tag key name.

Value

The GCP tag value name.

The Dependency Views map shows the discovered Configuration Items (CIs) in your organization
and the relationships between them. Here, the only meaningful relationship between the CIs is
the one that helps Discovery identify them.
Each GCP Inventory CI is related either to a Logical Datacenter (LDC) CI or to a Cloud Service
Account CI. In this example, the Inventory CI is related to a Cloud Service Account CI.
Dependency Views map showing Cloud Service Account CI

CI relationships
These relationships are created to support GCP asset inventory discovery:

CI

Relationship

CI

Contained by::Contains

Cloud Service Accounts

HostedOn::Hosts

Logical Datacenter (LDC)

For Global Resources:
Main CI
[cmdb_ci_cmp_resource]
For Regional Resources:
Main CI
[cmdb_ci_cmp_resource]
IBM Cloud Platform discovery
The ServiceNow Discovery application finds IBM Cloud Platform components (Softlayer API
v3 and v3.1 and Bluemix API v2) using the IBM Cloud Platform patterns. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2311


