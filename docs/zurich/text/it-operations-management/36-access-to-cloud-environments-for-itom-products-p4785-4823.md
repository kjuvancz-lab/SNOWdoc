# Zurich IT Operations Management — Access to cloud environments for ITOM products

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4785–4823 of 4823

Sections: Access to cloud environments for ITOM products (p4785); Install and configure MID Servers to access cloud environments (p4785); Set up a cloud service account (p4790)

---

<!-- page 4785 -->
LEAP fields (continued)
Field name

Description

For priority 5, the base cost is multiplied by 0.4
to reflect the additional impact.
Large group size

Groups that have incidents more than the
threshold set are marked as large groups. The
default value set is 200 incidents.

Number of pinned groups

This value specifies the number of groups that
can be pinned for tracking.

Groups with resolution steps in initial run

This value specifies the number of groups for
which resolution steps are generated in the
first run of AIOps LEAP.

Minimum incident-to-group ratio for remapping AIOps LEAP can remap incidents to better
eligibility
groups when improved patterns are observed.
This ratio determines the minimum incidentto-group size needed for remapping eligibility.
Higher values means more selective
remapping.

Access to cloud environments for ITOM products
If your organization deploys IT assets on the cloud, ITOM products must access your cloud
environment to collect information about the IT infrastructure.
Related topics
Discovery for cloud environment
Cloud resource discovery references

Install and configure MID Servers to access cloud environments
Install and configure the MID Servers correctly to enable ITOM products to access to the cloud
resources.

Before you begin

Role required: discovery_admin or sn_cmp.cloud_admin (for Cloud Provisioning and
Governance)

About this task
Procedure
1. For IP-based discovery, Installing the MID Server
inside a Virtual Private Cloud (VPC).

on a server inside the cloud environment,

Example
For example, if you are configuring access to AWS service accounts using IAM roles, install the
MID Server at the Amazon EC2 instance.

Important: If you configure AWS credentials at ServiceNow AI Platform, the location of
the MID Server doesn't matter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4785


<!-- page 4786 -->
If your organization has multiple VPC segments, deploy the MID Servers in a manage-mentor
transit VPC.
2. Activate IP-based discovery jobs to access the compute layer using agentless credentials.
3. Configure the MID Server with the capabilities necessary for the cloud environment you are
planning to discover.
You can select the ALL capability or configure specific capabilities for tighter security.
Add Cloud Management in supported application in MID Server for Cloud Provisioning and
Governance requests to be processed.

MID Server capability required
by Cloud Discovery

MID Server capability required
by Cloud Provisioning and
Governance

Amazon AWS Cloud

AWS or Cloud
Management or ALL

AWS or Cloud
Management

Microsoft Azure Cloud

Azure or Cloud
Management or ALL

Azure or Cloud
Management

Google Cloud

Google or Cloud
Management or ALL

Google or Cloud
Management

IBM Cloud Platform

IBM or Cloud
Management or ALL

N/A

Oracle Cloud Infrastructure
(OCI)

OCI or Cloud
Management or ALL

N/A

OpenStack

OpenStack or Cloud
Management or ALL

N/A

Red Hat Virtualization (RHV)

RHV or Cloud
Management or ALL

N/A

Cloud environment

4. If the MID Servers must go through an unauthenticated proxy server to access cloud
resources, modify the agent\conf\wrapper-override.conf file, as follows:
wrapper.java.additional.1=-Dhttp.proxySet=true
wrapper.java.additional.2=-Dhttp.proxyHost=<proxyHost>
wrapper.java.additional.3=-Dhttp.proxyPort=<proxyPort>
wrapper.java.additional.4=-DuseProxy=true
5. If you're using an authenticated proxy server, configure the MID Server parameters in the
config.xml file.
For a description of the parameter values, see the Proxy server parameters section in MID
Server parameters .
Related topics
Proxy server configuration for MID Servers used for Cloud Discovery and Cloud Provisioning
and Governance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4786


<!-- page 4787 -->
Proxy server configuration for MID Servers used for Cloud Discovery and
Cloud Provisioning and Governance
You can configure the MID Server for Cloud Provisioning and Governance to use a proxy server.
Using a proxy server supports all cloud-based activities such as running Discovery, billing
downloads, provisioning virtual machines, and running life-cycle operations on virtual machines.

Proxy server limitations
• VMware Cloud is not supported.
• Windows or Linux platforms only are supported.
• The Google Cloud Console integration does not support downloading billing data.
• Remote PowerShell scripts cannot be executed.
• Custom APIs may not work.

Note:
SSH calls should not be routed through a proxy server, when using a private cloud environment
that is on the same side of the proxy as the MID Server.
Set mid.capi.skip_proxy_for_ssh to true to skip it. See MID Server properties used by
Service Mapping for more information.

mid.capi.skip_proxy_for_ssh:
• Determines whether the MID Server skips the proxy server when routing SSH calls.
• Type: true | false
• Default value: false

Supported proxy server authentication for Cloud Provisioning and Governance
Proxy Server type

Authentication type

HTTP/HTTPS

No authentication

SOCKS5

No authentication

HTTP/HTTPS

Basic authentication

SOCKS5

Basic authentication

HTTP/HTTPS

NTLM

Supported proxy server configurations for Cloud Provisioning and Governance
Supported configuration settings
Configuration

Operating system

Proxy server

Authentication mode

Configuration 1

Linux

None

Not Applicable

Configuration 2

Windows

Squid (HTTPS)

None

Configuration 3

Linux

Squid (HTTPS)

Local

Configuration 4

Windows

Squid (HTTPS)

Active Directory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4787


<!-- page 4788 -->
Supported configurations
Cloud provider

Functionality

Configuration 1 Configuration 2 Configuration 3 Configuration 4

Amazon
AWS Cloud,
Microsoft
Azure Cloud,
and IBM
Cloud
Platform

Cloud
Discovery

Yes

Yes

Yes

Yes

VM
Provisioning

Yes

Yes

Yes

Yes

VM life cycle

Yes

Yes

Yes

Yes

CFT
provisioning

Yes

Yes

Yes

Yes

Billing
download

Yes

Yes

Yes

Yes

Scripts using
SSH

Yes

Yes

Yes

Yes

Scripts using
PowerShell

Not
Applicable

Not
Applicable

Not
Applicable

Not
Applicable

Cloud events

Not
Applicable

Not
Applicable

Not
Applicable

Not
Applicable

Cloud
Discovery

Yes

Yes

Yes

Yes

VM
Provisioning

Yes

Yes

Yes

Yes

VM life cycle

Yes

Yes

Yes

Yes

CFT
provisioning

Yes

Yes

Yes

Yes

Billing
download

No

No

No

No

Scripts using
SSH

Yes

Yes

Yes

Yes

Scripts using
PowerShell

Not
Applicable

Not
Applicable

Not
Applicable

Not
Applicable

Cloud events

Not
Applicable

Not
Applicable

Not
Applicable

Not
Applicable

Google Cloud
Platform

VMware
Cloud

Not Applicable

Related topics
Install a MID Server on Windows
Install a MID Server on Linux
MID Server parameters

Cloud Request Retry Configuration
If a request is throttled by a cloud provider during Discovery, Cloud Request Retry Configuration
provides a customizable method to retry requests. Discovery and Service Mapping Patterns
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4788


<!-- page 4789 -->
includes a retry configuration for AWS and Azure. You can customize the included configuration
or create your own.
Discovery admins and Cloud admins can access the request retry configuration at All >
Discovery > Cloud Request Retry Configuration. You can create one configuration for each
provider.
When a request is throttled, the retry framework uses retry configuration defined for the provider
to handle retries before returning the final response to the ApiCommand classes:
• AwsApiCommand
• AzureApiCommand
The retry configurations are synced with the MID Servers through the MID Server property,
mid.cloud.discovery.retry.configuration.
There are the following retry strategies:
• Exponential backoff
• Response header backoff
• Custom backoff

Exponential backoff
For the following example configuration:

Setting

Value

Max retries

3

Response codes

429

Base delay in ms

1000

Max delay in ms

10000

Additional delay window in ms

1500

The Exponential backoff retry strategy works as follows:
• 1st retry—the backoff multiplier is randomly selected between 0 and 1. The max delay value is
400 ms (400 * 1).
• 2nd retry—the backoff multiplier is randomly selected between 0 and 3. The max delay value is
1200 ms (400 * 3).
• 3rd retry—the backoff multiplier is randomly selected between 0 and 7. The max delay value is
2800 ms (400 * 7).
On subsequent retries, if the delay exceeds 10000 (the max delay), 10000 will be used as initial
delay.
Once the initial delay is generated, jitter is added to the delay. The jitter window is defined by the
Additional delay window in ms field. The system selects a random value between 0 and 1500
and adds it to the initial delay.
If the initial delay is 500, the final delay (with jitter) can be a value between 500 and 2000 ms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4789


<!-- page 4790 -->
Response header backoff
For the following example configuration:

Setting

Value

Max retries

3

Response codes

429

Response header

Retry-After

Response header delay unit

Seconds

Additional delay window in ms

1500

The Response header backoff strategy works as follows:
• Fetch the value of header Retry-After from the server response.
• Convert the Retry-After to milliseconds by multiplying by 1000.
Once the initial delay is generated, jitter is added to the delay. The jitter window is defined by the
Additional delay window in ms field. The system selects a random value between 0 and 1500
and adds it to the initial delay.
If the initial delay is 2000, the final delay (with jitter) can be a value between 2000 and 3500 ms.

Custom backoff
With a custom backoff retry strategy, you define the Max retries and Response codes and create
your own Mid script include that defines how requests are retried using the getDelay()
function. For more information, see Script includes .

Set up a cloud service account
Create and configure ServiceNow cloud accounts at ServiceNow AI Platform for the
corresponding Cloud vendor service accounts.
Related topics
Cloud Discovery service account form reference

Set up Oracle Cloud infrastructure (OCI) service accounts
Create and configure cloud service accounts at ServiceNow AI Platform for the corresponding
Oracle Cloud Infrastructure (OCI) service accounts.
OCI service account is a type of identity used to authenticate and authorize access to OCI
resources and services. It provides a way for applications, services, and users to securely
interact with OCI resources. Service accounts are often used for automated processes,
applications, or services running within OCI, allowing them to access resources according to the
defined permissions and policies.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4790


<!-- page 4791 -->
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
OCI access and permission using policies
Oracle Cloud Infrastructure (OCI) access and permission using policies provide privileges for
secure cloud resource utilization and management in OCI.
For information on OCI permissions, go to the Oracle Help Center
"Managing Access to Resources" article.

and search for the

Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Create Oracle API credentials
Create Oracle API credentials on the ServiceNow AI Platform to enable access to your Oracle
resources during Oracle discovery.

Before you begin

Verify that your OCI user has at least read-only access to all Oracle services. For information on
access permissions, consult your system administrator.
Retrieve the following properties from the Oracle Cloud Console:
• Tenancy Oracle Cloud Identifier (Tenancy OCID)
• User OCID
• Key fingerprint
• Private key
For instructions on retrieving these properties, go to the Oracle Help Center
"Required Keys and OCIDs" article.

and search for the

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. Select Oracle API Credentials.
4. On the form, fill in the fields with the property values you retrieved.
Oracle API Credentials form
Field

Value

Name

Unique and descriptive name for the Oracle
credentials.

Active

Option to select to use the credential.

Tenancy Id

Oracle Cloud Identifier (OCID) for your
tenancy.

User Id

OCID of the OCI user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4791


<!-- page 4792 -->
Field

Value

Key Fingerprint

Fingerprint of the public key.

Private Key

RSA private key that is used for API signing
authentication.

5. Select Submit.

What to do next

Create OCI service accounts. For more information, see Create OCI service accounts.
Create OCI service accounts
Create Oracle Cloud Infrastructure (OCI) service accounts on the ServiceNow AI Platform to
access your Oracle account during Oracle discovery.

Before you begin

Verify that Oracle API credentials have been created. For more information, see Create Oracle
API credentials.
Retrieve the Compartment ID, which can be found under Identity & Security > Compartments in
the Oracle Cloud Console.
For GovCloud accounts, confirm that Discovery and Service Mapping Patterns is using at least
version 1.29.0.
Role required: discovery_admin

Procedure
1. In the navigation filter, enter cmdb_ci_cloud_service_account.list.
2. Select New.
3. In the Discovery Credentials field, begin to enter the credential name and select it from the
list.
4. On the form, fill in the remaining fields.
Cloud Service Account form
Field

Description

Name

A unique name for the OCI service account.

Account ID Compartment ID, which is the Oracle Cloud Identifier (OCID) of the compartment
associated with this service account.
Datacenter URL of the datacenter.
URL
Example URLs:
◦ For commercial cloud: https://{service}.apmumbai-1.oraclecloud.com
◦ For GovCloud: https://{service}.us-govashburn-1.oraclegovcloud.com

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4792


<!-- page 4793 -->
Field

Description

Datacenter Type of the datacenter where the account is hosted, which should be OCI
Type
Datacenter [cmdb_ci_oci_datacenter].
5. Select Submit.

What to do next

Schedule an OCI cloud discovery. For more information, see Create a discovery schedule in
Cloud Discovery Workspace.

Setting up AWS service accounts
Create and configure cloud service accounts at ServiceNow AI Platform for the corresponding
Amazon Web Services (AWS) service accounts.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Ensure that you are familiar with the hierarchy of AWS service accounts in your environment.
For example, if there are AWS Organizations, set up the management and member accounts at
ServiceNow AI Platform to reflect that hierarchy. You can set up the AWS service accounts of the
following types:
• Discrete account: Standalone account, with no management account.
• Management account: Management account that may or may not contain member accounts
(subaccounts).

Note: Some ServiceNow UI screens may refer to management accounts as master
accounts.
• Member account: Subaccount that belongs with the (management) account.
Access setup for AWS service accounts
Cloud Discovery and Cloud Provisioning and Governance need access to resources in the
Amazon Web Services (AWS) service accounts. Learn about different methods of configuring
such access.
Cloud Discovery and Cloud Provisioning and Governance access resources in AWS service
accounts through MID Servers. You must authorize inbound traffic to Amazon EC2 instances from
the MID Server for setting up initial communication. For more information, see Configure security
group inbound rules using the AWS Management Console .

Types of AWS credentials
There are permanent and temporary AWS credentials that you can use for configuring access to
AWS service accounts.
Permanent
The permanent credentials are the actual AWS credentials for the service account
that you add to the Connections and Credentials module of ServiceNow AI Platform.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4793


<!-- page 4794 -->
While it might be time consuming to manage credentials on ServiceNow AI Platform,
you avoid the complex configurations involved in using temporary credentials.
Temporary
The temporary credentials are generated by the AWS Security Token Service (AWS
STS) for IAM roles. After you configure IAM roles for AWS accounts, the MID Server
accesses AWS resources with these temporary credentials. You can use the default
IAM role, OrganizationAccountAccessRole, or create custom IAM roles.
Assuming IAM roles in a large AWS organization is more convenient and offers
better security than using large numbers of permanent credentials for all AWS
accounts. Temporary credentials are only acquired on behalf of a service account
when there’s no permanent credential specified for that service account in the
Service Accounts [cmdb_ci_cloud_service_account] table.
The MID Server uses the AssumeRole
action in the AWS Security Token Service
API
to assume a member account role. Parameters passed to this API determine
which additional security restrictions are applied to the role when it accesses the
AWS resources.
By default, the MID Server is configured to assume the
OrganizationAccountAccessRole, which grants temporary credentials
to all the members of a primary account. This action occurs automatically if no
permanent credentials exist for the member accounts. This configuration doesn't
apply any additional security or restrict access to any resources in member
accounts.
By default, the ServiceNow instance caches temporary credentials for member
accounts for 60 minutes. This interval enables the horizontal discovery process
to run multiple times without generating new credentials during each discovery.
You can avoid credential caching or modify the caching period using MID Server
properties .

IAM roles and permissions
To enhance security provided by the default AWS OrganizationAccountAccessRole
role, you can customize the AWS roles that MID Servers can assume to receive temporary
credentials for member accounts. You can configure additional permissions to improve security
and customize the way that the member account’s role is assumed when discovering cloud
resources.

Methods of granting access
For the purposes of configuring access for AWS accounts, the following terms are used:
Trusting accounts
The trusting accounts don't have permanent AWS credentials. You configure the
trust relationship for IAM roles in these accounts to rely on other accounts for
access.
Trusted accounts
The trusted accounts are used by the trusting accounts for access. The ServiceNow
UI refers to the trusted accounts as accessor accounts.
Typically, you set up access to the AWS accounts in your organization using the following
methods:
Configuring access for a single account
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4794


<!-- page 4795 -->
• Configure AWS credentials on the ServiceNow AI Platform to avoid the complexity
of creating and setting up IAM roles. For more information, see Configure access
to the AWS accounts using permanent AWS credentials.
• Create an AWS service account on the ServiceNow AI Platform. For more
information, see Create AWS service accounts.
Configuring access for an account that trusts an accessor account with AWS credentials
Setting up any AWS account to rely on a trusted account with AWS
credentials

• Configure any type of account—discrete (independent), management, or member
—to rely on a trusted account with AWS credentials for access.
• Configuring an IAM role belonging to the trusting accounts to trust the user of
the trusted account enables using only one set of AWS credentials for providing
access to multiple AWS accounts.
For more information, see Configure access using temporary credentials based on
trusted AWS accounts with AWS credentials.
Configuring access for an account that trusts an accessor account without AWS
credentials
Setting up any AWS account to rely on a trusted account without
AWS credentials

• Configure any type of account—discrete (independent), management, or member
—to rely on a trusted account without AWS credentials for access.
• Configure an account without AWS credentials using an IAM role and permissions
to access the trusting service account.
• Set up the IAM role of the trusting account to grant access to the IAM role of the
trusted account.
For more information, see Configure access using temporary credentials based on
trusted AWS accounts without AWS credentials.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4795


<!-- page 4796 -->
Configuring access for AWS member accounts by using a trust chain from the accessor
through the management account.
Configuring member accounts to use their management account for
access

• Configure the IAM roles of the member accounts to trust the IAM role of their
management account. For more information, see Configure access using
temporary credentials for trusting AWS member accounts in managementaccessor trust chain.
• Configure the management accounts to trust the accessor accounts with or
without AWS credentials. For more information, see:
◦ Configure access using temporary credentials based on trusted AWS accounts
with AWS credentials.
◦ Configure access using temporary credentials based on trusted AWS accounts
without AWS credentials.

How Cloud Discovery determines which credentials to use
Member account trusts management account
Cloud Discovery uses the following logic to determine which credentials to use to
discover AWS cloud resources in member accounts:
1. If permanent credentials are defined for the member account in the Cloud
Service Account [cmdb_ci_cloud_service_account] table, Discovery uses those
credentials. The Cloud Service Accounts [cmdb_ci_cloud_service_account]
table contains the information on the service account types, like management or
member, and their credentials.
2. If no permanent credentials are defined for the member account, Discovery
checks the Cloud Service Account AWS Org Assume Role Params
[cloud_service_account_aws_org_assume_role_params] table for any special
parameters associated with the member account. If parameters exist in that table,
Discovery uses the temporary credentials acquired from specifying a role and its
parameters in the AWS Security Token Service API AssumeRole action.
3. If no special parameters are associated with the member account in the
[cloud_service_account_aws_org_assume_role_params] table, Discovery
checks that table for parameters associated with the management account. If
parameters exist that define a role for the management account, Discovery uses
the temporary credentials provided by that role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4796


<!-- page 4797 -->
4. If no special parameters are present in the
[cloud_service_account_aws_org_assume_role_params] table for either
management or member accounts, Discovery uses the defaults defined for the
OrganizationAccountAccessRole role.
Member or management account trusts accessor account
1. If permanent credentials are defined for the member or management
account in the Cloud Service Account [cmdb_ci_cloud_service_account]
table, Discovery uses those credentials. The Cloud Service Accounts
[cmdb_ci_cloud_service_account] table contains the information on the service
account types, like management or member, and their credentials.
2. If no permanent credentials are defined for the account, Discovery
checks the Cloud Service Account AWS Cross Assume Role Params
[cloud_service_account_aws_cross_assume_role_params] table for any special
parameters associated with the account. If parameters exist in that table,
Discovery uses the temporary credentials acquired from specifying a role and its
parameters in the AWS Security Token Service API AssumeRole action.
Related topics
Step-by-Step Guide to Configure AWS Cloud Discovery in ServiceNow Using Patterns
[KB2184482]
AWS Cloud Discovery Setup – Use Case Guide with CloudFormation Templates [KB2221157]
Configure access to the AWS accounts using permanent AWS credentials
To securely access data on your provider account, the Discovery process must present
appropriate credentials. To make the credentials available to Discovery and Cloud Provisioning
and Governance, you first create a user with programmatic access in the AWS Management
Console. You then securely store the credentials in a service account at ServiceNow AI Platform.

Before you begin
Roles required:

• AWS Management Console administrator
• For Cloud Discovery: discovery_admin
• For Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

About this task

Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings.

Procedure
1. Optional: To create a user for Cloud Provisioning and Governance (for programmatic access
to your AWS resource and billing data), perform the following steps.
a. On the AWS Management Console, navigate to Identity and Access Managements (IAM) >
Access Management > Users.
b. On the IAM Resources portal, select Users.
c. Select Add user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4797


<!-- page 4798 -->
d. On the Details page, configure the user settings, and then select Next.
Details page
Field

Description

User name

Name for the programmatic user. For example, servicenowcloud.

Access type

Select Programmatic access.

e. On the Permissions page, attach the user to a policy.
Configure the following settings and then select Next.

Field

Description

Set permissions for <user name>

Select Attach existing policies directly.

Attach one or more policies …

Select the appropriate policy.

Note: The AdministratorAccess
policy has the most powerful
permission level, including permission
to provision cloud resources. The
policy enables the same access that
would be granted to the instance if
you were not using IAM and used
your AWS account Access Key ID
and Secret Access Key. You might
instead prefer to create a policy or
combine multiple policies to grant
the appropriate permission level. See
Control AWS access and permissions
using policies for details.

f. On the Review page, verify your selections and then select Create user.
g. On the Security Credentials page, copy the secret access key and the access key ID.

Important: Do not leave the page until you have completed both steps. The Secret
access key value does not appear again. You need to paste the values that you
generate in these steps into a Cloud Provisioning and Governance form.
i. Select Show to display the Secret access key. Copy the value.
ii. Select Download .csv to save the CSV-format file that contains the user name, Access key
ID, and the Secret access key value. You create the file as a backup in the case that you
lose the values. Verify that the file was created and then store the file securely.
2. On the ServiceNow AI Platform, configure AWS credentials.
a. In the ServiceNow instance, navigate to Discovery > Credentials.
b. Select New, select AWS Credentials, enter a unique and meaningful Name (for example,
Cloud Provisioning Account), and then fill in the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4798


<!-- page 4799 -->
AWS Credentials form fields
Field

Input value

Name

Unique and descriptive name for the AWS credentials.

Active

Option to use the credential.

Access Key The Access key ID that you generated on the AWS Management Console,
ID
such as: APIAIOSFODNN7EXAMPLE.
Secret
access key

The Secret access key that you generated on the AWS Management
Console, such as: wPalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY.

c. Select Update or Submit.

What to do next

Create an AWS service account on the ServiceNow AI Platform. For more information, see Create
AWS service accounts.
Create AWS service accounts
Create AWS service accounts on the ServiceNow AI Platform to access your AWS account during
AWS discovery.

Before you begin
• Retrieve the user account number, which can be found in the AWS Management Console by
expanding the list under the AWS account name.
• Confirm that Discovery Admin Workspace is using at least version 1.10.0. The Discovery
> Cloud Service Accounts navigation module isn't available with earlier versions. To
access Cloud Service Accounts with an earlier version, enter in the navigation filter:
cmdb_ci_cloud_service_account.list.
Role required: discovery_admin

About this task

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account is the logical
representation in cloud management of all or part of your managed cloud infrastructure. A cloud
account can include multiple service accounts—even service accounts from different providers.
For each service account, you specify which datacenter to include in the cloud account.

Procedure
1. Navigate to All > Discovery > Cloud Service Accounts.
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4799


<!-- page 4800 -->
Cloud Service Account form
Field

Description

Name

The unique and meaningful name for this service account.

Account ID 12-digit user account number. Expand the list under the AWS account name on
the AWS Management Console to view the number.

Important: In the Account ID field, remove the hyphen characters (-)
from the number.
IAM user account number

Discovery
credentials The credentials needed for ServiceNow applications to access this account.
You may configure this field at a later stage, while configuring access to AWS
accounts.
◦ If you configured AWS credentials at ServiceNow AI Platform , select the
magnifying glass icon, and then select the name of the relevant AWS
credential.
◦ To use other AWS accounts to access this account, leave the field blank.
For example, you don't need to specify the AWS credentials for accounts
assuming IAM roles or member accounts using their management account for
access.
Datacenter
URL of the datacenter.
URL
This field is required for AWS China region and AWS GovCloud (US) accounts.
For example:
◦ AWS China region: https://organizations.cnnorthwest-1.amazonaws.com.cn
◦ AWS GovCloud (US): https://ec2.us-govwest-1.amazonaws.com

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4800


<!-- page 4801 -->
Field

Description

Datacenter Type of the datacenter where the account is hosted.
type
Select AWS datacenter.
Datacenter Auto-generated value: Status and timestamp of the last execution of Discovery
discovery on the datacenter.
status
Parent
account

Name of the management account that represents the organization in AWS that
this member account belongs to.
It appears when you select AWS datacenter.
Leave the field empty if this account is not part of an AWS organization.

Is master
account

Management account flag.
It appears when you select AWS datacenter from the Datacenter Type dropdown. Select the check box to associate the AWS service account with the
management account. Select this check box only for accounts that you
previously configured in the AWS Management Console as management
accounts with some member accounts belonging to them. See the AWS
documentation
for information on AWS Organizations.

Note: You will need to setup the correct permission in AWS or the
Organization role for a standard credential. For more information, see
Control AWS access and permissions using policies.
Accessor
account

Name of the trusted account.
Configure this field only for accounts that don't use permanent AWS credentials
and rely on IAM roles for access.

4. Select Submit.
Configure access using temporary credentials based on trusted AWS accounts with AWS
credentials
Configure the trusting account whose resources need to be accessed, to rely on the trusted
account using the Identity and Access Management (IAM) role.

Before you begin
• Familiarize yourself with the Amazon documentation on Creating a role to delegate
permissions to an IAM user .
• Decide which AWS account is going to be the trusted account. You use the trusted account to
configure temporary credentials for Cloud Discovery using IAM roles. The trusted account that
you use to access other accounts using IAM roles is referred to as an accessor account.
• If you're setting up a trust chain where a member account trusts a management account,
and the management account trusts an accessor account, verify that you've configured the
member account to trust the management account. For more information, see Configure
access using temporary credentials for trusting AWS member accounts in managementaccessor trust chain.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4801


<!-- page 4802 -->
• Confirm that Discovery Admin Workspace is using at least version 1.10.0. The Discovery
> Cloud Service Accounts navigation module isn't available with earlier versions. To
access Cloud Service Accounts with an earlier version, enter in the navigation filter:
cmdb_ci_cloud_service_account.list.
Role required:
• For Cloud Discovery: discovery_admin
• For Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

About this task

During this configuration, you create an IAM role for the trusting account, and then configure the
trusted service account for the trusting account at ServiceNow AI Platform. Finally, you associate
the IAM role you created for the trusting account with the trusting account itself.
Setting up any AWS account to rely on a trusted account with AWS credentials

Procedure
1. Create an IAM role for the trusting account and configure the trust relationship between the
user assuming this role and the trusted (accessor) account.
a. Log in to the trusting account on the AWS Management Console.
b. Create and configure the IAM role specifying the trusted (accessor) account ID in the
Account ID field.
For information on creating AWS roles, see the Amazon documentation .
c. On the Summary page for the IAM role, select the Trust Relationships tab.
d. Select Edit trust relationship.
The Edit Trust Relationship page opens showing the policy document.
e. Set the AWS parameter to the full user ARN of the trusted (accessor) account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4802


<!-- page 4803 -->
f. Verify that the Action value is set to sts:AssumeRole.
g. Select Update Trust Policy.
2. On the ServiceNow AI Platform, configure the trusted service account.
a. Navigate to All > Discovery > Cloud Service Accounts.
b. Selelct New.
c. On the form, fill in the fields.
d. Select Submit.
3. On the ServiceNow AI Platform, configure the trusting service account.
a. Navigate to All > Discovery > Cloud Service Accounts.
b. Select New.
c. In the Accessor account field, enter the name of the trusted account.
d. On the form, fill in the remaining fields.
e. Select Submit.
4. On the ServiceNow AI Platform, assign the AWS IAM role to the trusting account, using the
relevant form, based on the relationship to the trusted account.
Trusted account type

Steps

Management account

a. Navigate to All > Cloud Provisioning and
Governance > Organization Access Para­
meters > AWS Org Assume Role Parame­
ters.
b. Select New.
c. On the form, configure only the following
fields for the trusting member account:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4803


<!-- page 4804 -->
Trusted account type

Steps

Cloud Service Account AWS Org As­
sume Role Params form
Field

Definition

Access role name

Name of the IAM
role created for the
trusting account.
▪ If IAM roles are
the same across
all member
accounts:
Enter the full
ARN using an
asterisk (*) as
a wildcard for
the account ID
in the format:
arn:aws:iam::*:role/
MemberRoleName.
For example:
arn:aws:iam::*:role/
SN_MEMBER_ACCOUNT_ROLE.
▪ If IAM roles
are different
across member
accounts: Enter
the full ARN
of the specific
IAM role for
each member
account in a
separate entry.

Cloud service
account

Name of the
trusting account
for which you are
providing access
using the IAM role.
▪ If IAM roles are
the same across
all member
accounts:
Enter the
management
account name.
▪ If IAM roles
are different
across member
accounts: Enter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4804


<!-- page 4805 -->
Trusted account type

Steps
Field

Definition

each member
account in a
separate entry.
d. Select Submit.
a. Navigate to All > Cloud Provisioning and
Governance > Organization Access Para­
meters > AWS Cross Assume Role Parame­
ters.
b. Select New.
c. On the form, configure only the following
fields for the trusting account:
Cloud Service Account AWS Cross As­
sume Role Params form
Member or discrete account

Field

Description

Access
role
name

Name of the IAM role created
for the trusting account.

Cloud
service
account

Name of the trusting account
for which you are providing
access using the IAM role.

d. Select Submit.

What to do next

Verify that ServiceNow applications can access the trusting service account using the IAM role:
1. Navigate to All > Discovery > Cloud Service Accounts.
2. Select the trusting AWS service account.
3. Under Related Links, select Create Discovery Schedule.
4. In the Discovery Manager Cloud Discovery page, select Test Account.
◦ If the connection is successful, a message displays indicating the account validation is
successful.
◦ If the connection isn't successful, an error message displays indicating the cause of failure.
Configure access using temporary credentials based on trusted AWS accounts without AWS
credentials
Set up a trusted credential-less account that other AWS accounts can rely on for access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4805


<!-- page 4806 -->
Before you begin
• Familiarize yourself with the Amazon documentation on Creating a role to delegate
permissions to an IAM user .
• Decide which AWS account is going to be the trusted account. You use the trusted account to
configure temporary credentials for Cloud Discovery using IAM roles. The trusted account that
you use to access other accounts using IAM roles is referred to as an accessor account.
• If you're setting up a trust chain where a member account trusts a management account,
and the management account trusts an accessor account, verify that you've configured the
member account to trust the management account. For more information, see Configure
access using temporary credentials for trusting AWS member accounts in managementaccessor trust chain.
• Confirm that Discovery Admin Workspace is using at least version 1.10.0. The Discovery
> Cloud Service Accounts navigation module isn't available with earlier versions. To
access Cloud Service Accounts with an earlier version, enter in the navigation filter:
cmdb_ci_cloud_service_account.list.
Role required:
• For Cloud Discovery: discovery_admin
• For Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

About this task

To use an account without AWS credentials, you must first configure that account with an IAM
role and permissions to access the trusting service account. Then, you set up the IAM role of the
trusting account to grant access to the IAM role of the trusted account.
Setting up any AWS account to rely on a trusted account without AWS credentials

Procedure
1. Configure an IAM role for the trusting account.
a. Log into the trusting account on the AWS Management Console.
b. Create an IAM role for this account.
Use the account ID of the trusted account while creating this IAM role. For operational
information about working with AWS roles, refer to the Amazon documentation.
c. Create a ReadOnlyAccess policy and attach it to the newly created IAM role.
2. Configure the IAM role for the trusted account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4806


<!-- page 4807 -->
a. Log into the AWS Management Console using the credentials of the account that you want
to set up as a trusted account.
b. Create an IAM role by choosing the AWS service option.

c. Create a read-only access policy for the trusted account IAM role.
For more information, see Control AWS access and permissions using policies.
d. Create an additional policy to grant this IAM role access to resources in trusting accounts:
▪ Set the Action parameter to sts:AssumeRole
▪ Set the Resource parameter to the ARN of the trusting account role that you created in
1.b.

e. Attach the newly created role to the relevant Amazon EC2 instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4807


<!-- page 4808 -->
By default, when you attach an IAM role to an EC2 instance, it creates a trust relationship
between this role and the EC2 instance.

3. Configure the trusting service account to grant access to the IAM role belonging to the trusted
account.
a. Log into the trusting account on the AWS Management Console.
b. Navigate to the IAM role you created for this account as described in 1.b.
c. Edit the Trust Relationship for this IAM role as follows:
▪ Set the Action parameter to sts:AssumeRole.
▪ Set the AWS parameter to the ARN of the trusted account role that you created in 2.b.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4808


<!-- page 4809 -->
4. Configure the MID Server for AWS IAM roles.
For more information, see Configure the MID Server for AWS IAM roles.
5. On the ServiceNow AI Platform, configure the trusted service account.
a. Navigate to All > Discovery > Cloud Service Accounts.
b. Selelct New.
c. On the form, fill in the fields.
d. Select Submit.
6. On the ServiceNow AI Platform, configure the trusting service account.
a. Navigate to All > Discovery > Cloud Service Accounts.
b. Select New.
c. In the Accessor account field, enter the name of the trusted account.
d. On the form, fill in the remaining fields.
e. Select Submit.
7. On the ServiceNow AI Platform, assign the AWS IAM role to the trusting account, using the
relevant form, based on the relationship to the trusted account.
Trusted account type

Steps

a. Navigate to All > Cloud Provisioning and
Governance > Organization Access Para­
meters > AWS Org Assume Role Parame­
ters.
b. Select New.
c. On the form, configure only the following
fields for the trusting member account:
Cloud Service Account AWS Org As­
sume Role Params form

Management account

Field

Definition

Access role name

Name of the IAM
role created for the
trusting account.
▪ If IAM roles are
the same across
all member
accounts:
Enter the full
ARN using an
asterisk (*) as
a wildcard for
the account ID
in the format:
arn:aws:iam::*:role/
MemberRoleName.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4809


<!-- page 4810 -->
Trusted account type

Steps
Field

Definition

For example:
arn:aws:iam::*:role/
SN_MEMBER_ACCOUNT_ROLE.
▪ If IAM roles
are different
across member
accounts: Enter
the full ARN
of the specific
IAM role for
each member
account in a
separate entry.
Cloud service
account

Name of the
trusting account
for which you are
providing access
using the IAM role.
▪ If IAM roles are
the same across
all member
accounts:
Enter the
management
account name.
▪ If IAM roles
are different
across member
accounts: Enter
each member
account in a
separate entry.

d. Select Submit.

Member or discrete account

a. Navigate to All > Cloud Provisioning and
Governance > Organization Access Para­
meters > AWS Cross Assume Role Parame­
ters.
b. Select New.
c. On the form, configure only the following
fields for the trusting account:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4810


<!-- page 4811 -->
Trusted account type

Steps

Cloud Service Account AWS Cross As­
sume Role Params form
Field

Description

Access
role
name

Name of the IAM role created
for the trusting account.

Cloud
service
account

Name of the trusting account
for which you are providing
access using the IAM role.

d. Select Submit.

What to do next

Verify that ServiceNow applications can access the trusting service account using the IAM role:
1. Navigate to All > Discovery > Cloud Service Accounts.
2. Select the trusting AWS service account.
3. Under Related Links, select Create Discovery Schedule.
4. In the Discovery Manager Cloud Discovery page, select Test Account.
◦ If the connection is successful, a message displays indicating the account validation is
successful.
◦ If the connection isn't successful, an error message displays indicating the cause of failure.
Configure access using temporary credentials for trusting AWS member accounts in
management-accessor trust chain
Configure access for AWS member accounts by using a trust chain from the accessor through
the management account.

Before you begin
• Familiarize yourself with the Amazon documentation on Creating a role to delegate
permissions to an IAM user .
• Ensure that you know which AWS member accounts are assigned to the same management
account. You use the management account for configuring temporary credentials for cloud
discovery using IAM roles.
• Confirm that Discovery Admin Workspace is using at least version 1.10.0. The Discovery
> Cloud Service Accounts navigation module isn't available with earlier versions. To
access Cloud Service Accounts with an earlier version, enter in the navigation filter:
cmdb_ci_cloud_service_account.list.
Role required:
• For Cloud Discovery: discovery_admin
• For Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4811


<!-- page 4812 -->
About this task

You can configure access for AWS member accounts by using a trust chain from the accessor
through the management account. The accessor account either has AWS credentials or uses a
credential-free method.
Configuring member accounts to use their management account for access

Procedure
1. Create an IAM role for the member account and configure the trust relationship between the
user assuming this role and the trusted management account.
a. Log into the AWS Management Console using the credentials of the member account for
which you are configuring access.
b. Create and configure the IAM role specifying the management account ID in the Account ID
field.
For operational information about creating AWS roles, refer to the Amazon documentation.
c. On the Summary page for the IAM role, click the Trust Relationships tab.
d. Click Edit trust relationship.
The Edit Trust Relationship page opens showing the policy document.
e. Edit the trust relationship as follows:
▪ Set the Action parameter to sts:AssumeRole
▪ Set the AWS parameter to the full role ARN of the management account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4812


<!-- page 4813 -->
f. Click Update Trust Policy.
2. On the ServiceNow AI Platform, configure the trusting member's service account.
a. Navigate to All > Discovery > Cloud Service Accounts.
b. Select New.
c. In the Parent account field, enter the name of the management account.
d. On the form, fill in the remaining fields.
For a description of the field values, see Create AWS service accounts.
e. Select Submit.
3. On the ServiceNow AI Platform, assign the AWS IAM role to the member account.

Important: Perform this step only if you created custom IAM roles. By default, the
OrganizationAccountAccessRole role is assigned to the member’s trusting management
account and you don't need to assign the OrganizationAccountAccessRole role to a
service account.
a. Navigate to All > Cloud Provisioning and Governance > Organization Access Parameters >
AWS Org Assume Role Parameters.
b. Select New.
c. On the form, configure only the following fields for the trusting member account:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4813


<!-- page 4814 -->
Cloud Service Account AWS Org Assume Role Params form
Field

Definition

Access role name

Name of the IAM role created for the trusting
account.
▪ If IAM roles are the same across
all member accounts: Enter the
full ARN using an asterisk (*) as a
wildcard for the account ID in the
format: arn:aws:iam::*:role/
MemberRoleName.
For example:
arn:aws:iam::*:role/
SN_MEMBER_ACCOUNT_ROLE.
▪ If IAM roles are different across member
accounts: Enter the full ARN of the specific
IAM role for each member account in a
separate entry.

Cloud service account

Name of the trusting account for which you
are providing access using the IAM role.
▪ If IAM roles are the same across all
member accounts: Enter the management
account name.
▪ If IAM roles are different across member
accounts: Enter each member account in
a separate entry.

d. Select Submit.

What to do next

Configure the trusting management account and the trusted accessor account.
• For information on configuring accessor accounts with AWS credentials, see Configure access
using temporary credentials based on trusted AWS accounts with AWS credentials.
• For information on configuring accessor accounts without AWS credentials, see Configure
access using temporary credentials based on trusted AWS accounts without AWS credentials.
Configure the MID Server for AWS IAM roles
Configure the MID Server to retrieve the temporary security credentials associated with an IAM
role.

Before you begin

Role required: discovery_admin or sn_cmp.cloud_admin (for Cloud Provisioning and
Governance)

Procedure
1. Navigate to All > Discovery > MID Servers.
2. Select a MID Server installed on an Amazon EC2 instance within the relevant AWS service
account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4814


<!-- page 4815 -->
3. Open the Configuration Parameters related list.
4. Click New.
5. In the configuration parameter form, select mid.aws.instance_profile_name in the
Parameter name field.
6. Enter the name of the IAM role attached to the EC2 Instance in the Value field.

Note: AWS Cloud Discovery for "mid.aws.instance_profile_name" accepts both "role
name" and "full ARN" as valid parameter values. For example, both of the following values
are acceptable:
◦ arn:partition:service:region:account-id:resource-type/resource-id
◦ resource-id
The MID Server uses the same IAM role that is set up for the corresponding AWS service
account. For more information, see Configure access using temporary credentials based
on trusted AWS accounts with AWS credentials.
For operational information about creating AWS roles, refer to the Amazon
documentation on Creating a role to delegate permissions to an IAM user

.

7. Click Submit.
The new parameter is listed in the MID Server record.

Control AWS access and permissions using policies
Configure policies with the necessary level of permissions to provide access to the AWS
resources for Cloud Discovery and Cloud Provisioning and Governance.

Before you begin
Familiarize yourself with creating IAM users and user policies. Refer to the AWS documentation

.

Identify the level of permissions required for discovering the resources using Cloud Discovery
and managing the resources with Cloud Provisioning and Governance. For example:
• Additional S3 permissions are needed as AWS uses an S3 bucket to store and run the cloud
formation templates to deploy stacks using CloudFormation. These permissions are needed
even if you run the same CloudFormation template from the AWS console.
• Read-only access is required to do pattern discovery with the custom policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4815


<!-- page 4816 -->
AWS CloudFormation provisions and configures resources by making calls to the AWS services
that are described in your template. For more information, see How does CloudFormation work?
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Roles required:
• AWS Management Console administrator
• For Cloud Discovery: discovery_admin
• For Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

About this task

The policy you configure defines the AWS permissions that you can assign to a user, group,
or a role. Depending on the AWS services you use, specify actions for the service to perform
discovery and provisioning and life-cycle actions using Cloud Provisioning and Governance.

Procedure
1. Log in to the AWS Management Console using the credentials of the relevant service account.
If you used an IAM user or an IAM role to provide access using temporary credentials, log in
using the same IAM user or IAM role.
2. Open the user record in the instance for the relevant user.
3. Define a user policy in AWS Management Console using either of the following methods:
◦ Grant administrator access to the instance. This method gives the same level
of access as using the Access Key ID and Secret Access Key gives. Attach the
AdministratorAccess policy to the user profile.

Note: To create a user policy that supports only Cloud Discovery rather than the
provisioning of cloud resources, attach the ReadOnlyAccess policy instead.
◦ Create a custom policy with a descriptive name. In the Policy Document field, write the code
that includes the APIs that this policy allows running.

Note: The following JSON sample is a partial example showing permissions for Cloud
Discovery. It isn't a complete list of all required permissions.
{
"Version":"2012-10-17",
"Statement":[
{
"Sid":"PermissionsNeededForDiscovery",
"Effect":"Allow",
"Action":[
"account:ListRegions",
"apigateway:GET",
"application-autoscaling:Describe*",
"autoscaling-plans:Describe*",
"autoscaling:Describe*",
"autoscaling:DescribeAutoScalingGroups",
"autoscaling:DescribeLaunchConfigurations",
"cloudformation:Describe*",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4816


<!-- page 4817 -->
"cloudformation:DescribeStack*",
"cloudformation:List*",
"cloudwatch:Get*",
"cloudwatch:List*",
"config:ListDiscoveredResources",
"dynamodb:Describe*",
"dynamodb:DescribeTable",
"dynamodb:ListGlobalTables",
"dynamodb:ListTables",
"ec2:Describe*",
"ec2:ReportInstanceStatus",
"ecs:Describe*",
"ecs:List*",
"eks:Describe*",
"eks:List*",
"elasticache:Describe*",
"elasticache:List*",
"elasticfilesystem:Describe*",
"elasticloadbalancing:Describe*",
"lambda:Get*",
"lambda:List*",
"organizations:Describe*",
"organizations:DescribeOrganization",
"organizations:List*",
"rds:Describe*",
"redshift:Describe*",
"route53:GetHostedZone",
"route53:List*",
"s3:GetAccountPublicAccessBlock",
"s3:GetBucket*",
"s3:GetBucketLocation",
"s3:List*",
"sdb:GetAttributes",
"sns:GetEndpointAttributes",
"sns:GetSubscriptionAttributes",
"sns:List*",
"sns:ListPlatformApplications",
"sns:ListSubscriptions",
"sns:ListSubscriptionsByTopic",
"sns:ListTopics"
],
"Resource":"*"
}
]
}
◦ The following JSON sample is a partial example showing permissions for Cloud Discovery
and Cloud Provisioning and Governance. It isn't a complete list of all required permissions.
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "PermissionsNeededForCPG",
"Effect": "Allow",
"Action": [
"account:ListRegions",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4817


<!-- page 4818 -->
"apigateway:GET",
"application-autoscaling:Describe*",
"autoscaling-plans:Describe*",
"autoscaling:Describe*",
"autoscaling:DescribeAutoScalingGroups",
"autoscaling:DescribeLaunchConfigurations",
"cloudformation:Describe*",
"cloudformation:DescribeStack*",
"cloudwatch:Get*",
"cloudwatch:List*",
"config:ListDiscoveredResources"
"dynamodb:Describe*",
"dynamodb:DescribeTable",
"dynamodb:ListGlobalTables",
"dynamodb:ListTables",
"ec2:Describe*",
"ec2:ReportInstanceStatus",
"ecs:Describe*",
"ecs:List*",
"eks:Describe*",
"eks:List*",
"elasticache:Describe*",
"elasticache:List*",
"elasticfilesystem:Describe*",
"elasticloadbalancing:Describe*",
"lambda:Get*",
"lambda:List*",
"organizations:Describe*",
"organizations:DescribeOrganization",
"organizations:List*",
"rds:Describe*",
"redshift:Describe*",
"route53:GetHostedZone",
"route53:List*",
"s3:GetAccountPublicAccessBlock",
"s3:GetBucket*",
"s3:GetBucketLocation",
"s3:List*",
"sdb:GetAttributes",
"sns:GetEndpointAttributes",
"sns:GetSubscriptionAttributes",
"sns:List*",
"sns:ListPlatformApplications",
"sns:ListSubscriptions",
"sns:ListSubscriptionsByTopic",
"sns:ListTopics"
],
"Resource": "*"
},
{
"Sid":
"MinimalPermissionsNeededForEc2ProvisioningThroughCloudForma
tion",
"Effect": "Allow",
"Action": [
"cloudformation:CreateStack",
"cloudformation:CreateUploadBucket",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4818


<!-- page 4819 -->
"cloudformation:DeleteStack",
"cloudformation:DescribeStackEvents",
"cloudformation:DescribeStackResources",
"cloudformation:DescribeStacks",
"cloudformation:GetTemplate",
"cloudformation:GetTemplateSummary",
"cloudformation:List*",
"cloudformation:UpdateStack",
"cloudformation:ValidateTemplate"
"ec2:*",
"s3:CreateBucket",
"s3:DeleteBucket",
"s3:DeleteObject",
"s3:GetObject",
"s3:ListBucket",
"s3:PutObject"
],
"Resource": "*"
}
]
}
Related topics
https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_createconsole.html access_policies_create-start
https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_understand-servicesummary.html

Set up Azure service accounts
Create and configure cloud service accounts at ServiceNow AI Platform for the corresponding
Microsoft Azure accounts.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Before you begin
Ensure the configuration of Azure credentials
For more information, see Create Azure cloud credentials and Configuration steps
for Azure Service Principal User and Credentials (KB2202765)
Ensure that you are familiar with the hierarchy of the Azure service accounts in your
environment.
Set up the service accounts at ServiceNow AI Platform to reflect the hierarchy of
your environment. You can set up the Azure service accounts for the following Azure
account types:
• Management group.
• Subscription.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4819


<!-- page 4820 -->
Role required: discovery_admin

About this task

A service account is a secure record on your instance that stores the credentials and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account is the logical
representation in cloud management of all or part of your managed cloud infrastructure. A cloud
account can include multiple service accounts—even service accounts from different providers.
For each service account, you specify which datacenter to include in the cloud account.

Procedure
1. In the navigation filter, enter cmdb_ci_cloud_service_account.list.
2. Select New.
3. Fill in the fields by the following order:
a. Select the datacenter.
b. Select the check box of the Is management account if your are creating a service account
for a management group.
c. Select Should pull events to preform event-based discovery. For more information, see
Microsoft Azure Alert driven discovery
Cloud Service Account form
Field

Description

Name

The unique and meaningful name for this service account.

Account ID If you are creating a service account for a management group, fill in the Azure
management group ID that belongs to the management group. If you are
creating a service account for a subscription, fill in the Azure subscription ID.
Discovery
credentials The credentials needed for ServiceNow applications to access this account.
Datacenter
URL of the datacenter.
URL
Configuring this field is required for Azure Gov Cloud (US) accounts. For
example, https://management.usgovcloudapi.net/.
Datacenter Type of the datacenter where the account is hosted.
type
Select Azure datacenter.
Datacenter Auto-generated value: Status and timestamp of the last execution of discovery
discovery on the datacenter.
status
Parent
account

When setting up a service account for an Azure subscription, fill in the
management group ID.
When the Is management account check box is selected, the Parent account
field is not applicable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4820


<!-- page 4821 -->
Field

Description

Accessor
account

Not applicable for Azure service accounts.

4. Select Submit.
Related topics
Discovery for Microsoft Azure Cloud

Set up Google Cloud Platform service accounts
Create and configure cloud service accounts at ServiceNow AI Platform for the corresponding
Google Cloud Platform (GCP) service accounts.
GCP service account is a unique account typically used by an application or compute workload,
such as a Compute Engine instance, rather than a user. A service account is identified by
its email address, which is unique to the account. It’s used to authenticate and authorize
interactions between your application and various GCP services.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Configure the Google API credentials for Cloud Discovery
Create Google API credentials to allow Cloud Discovery to access the data on your Google
account securely.

Before you begin

Ensure that the latest versions of the following applications are installed:
• Discovery and Service Mapping Patterns
• Visibility Content
• CMDB CI Class Models
Role required: discovery_admin

Procedure
Configure the GCP credentials either by importing a JSON file or by filing in the record manually.
Option

Actions

a. When receiving the email from GCP, down­
load the JSON file.
Import the JSON file

b. Navigate to Discovery > Credentials.
c. Select New and then select Google API Cre­
dentials.
d. Select Import JSON File

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4821


<!-- page 4822 -->
Option

Actions

e. Select Choose File and choose the JSON
file you downloaded.
f. Select Upload Credential Data.

a. Navigate to Discovery > Credentials.
b. Select New and then select Google API Cre­
dentials.
c. Select New.
Configure the credentials manually

d. In the form, fill in the fields according to the
form description.
For description of the form fields, see
Google API Credentials Form.
e. Select Submit.

Google API Credentials Form
Fill in the Google API Credentials form to configure the credentials.

Field

Description

Name

Set a unique name for the Google Cloud API
credentials.

Active

Option for enabling this credential for
discovery. Select this check box to enable
discovery.

Applies to

MID Server to which you apply the credentials.
Select All MID servers.

Order

Order in which the platform runs this
credential as it attempts to log in to devices. A
smaller number indicates that the credential
appears higher in the list. Establish the
credential order when using large numbers
of credentials or when security locks out
users after three failed login attempts. If all the
credentials have the same order number, or
none, the instance tries the credentials in a
random order. The default value is 100.

Email

Your GCP email address.

Secret Key

Secret key that you generated on the Google
Cloud Console.

Credential alias

A credential alias that is used by the
credentials to authorize actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4822


<!-- page 4823 -->
Create GCP service accounts
Create Google Cloud Platform (GCP) service accounts on the ServiceNow AI Platform to access
your GCP account during GCP discovery.

Before you begin

Verify that Google API credentials have been created. For more information, see Configure the
Google API credentials for Cloud Discovery.
Retrieve the project_id value from the JSON key file that is associated with the service account.
Role required: discovery_admin

Procedure
1. In the navigation filter, enter cmdb_ci_cloud_service_account.list.
2. Select New.
3. In the Discovery Credentials field, begin to enter the credential name and select it from the
list.
4. On the form, fill in the remaining fields.
Cloud Service Account form
Field

Description

Name

A unique name for the GCP service account.

Account Id GCP project ID.
Datacenter URL of the datacenter, which should remain empty.
URL
Datacenter Type of the datacenter where the account is hosted, which should be Google
Type
Datacenter [cmdb_ci_google_datacenter].
5. Select Submit.

What to do next

Schedule a GCP cloud discovery. For more information, see Create a discovery schedule in
Cloud Discovery Workspace.
GCP access and permission using policies
Google Cloud Platform (GCP) access and permission using policies provide privileges for secure
cloud resource utilization and management in GCP.
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4823


