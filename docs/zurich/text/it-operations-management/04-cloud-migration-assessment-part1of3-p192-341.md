# Zurich IT Operations Management — Cloud Migration Assessment / Cloud Provisioning and Governance

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 192–341 of 4823 | Part 1 of 3

Sections: Cloud Migration Assessment (p192); Cloud Provisioning and Governance (p192)

---

<!-- page 192 -->
Workaround

Link

Cloud Services Catalog: Known Issues and
Workarounds

https://support.servicenow.com/kb?
id=kb_article_view&sysparm_article=KB1362282

Related topics
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1362282

Cloud Migration Assessment
This application is no longer deployed, enhanced, or supported.
For details, see the Deprecation Process [KB0867184]
base.

article in the Now Support knowledge

Cloud Provisioning and Governance
®

The ServiceNow Cloud Provisioning and Governance (CPG) application serves as a unified
interface for accessing cloud resources, delivering cloud offerings to a catalog, and overseeing
resource usage. This application is transformed as Cloud Services Catalog application, offering
refined and streamlined management of usage and life cycle of cloud resources.
Cloud Provisioning and Governance is integrated with both private and public cloud providers,
such as Amazon Web Services, Microsoft Azure, Google Cloud Platform and VMware.

Note:
Migration from workflow to subflows:
• If the default workflows aren’t customized, the flows are migrated to subflows.
• If the default workflows are customized, the flows continue to use the existing workflow.
The Cloud Provisioning and Governance application is incompatible and cannot be used
simultaneously with the legacy v1 Cloud Management application. The Cloud Provisioning and
Governance (previously Cloud Management) application is compatible starting with the Jakarta
release.

Workflow migration
As the automation experience evolves, legacy workflows are no longer supported starting with
the Zurich release. You can continue using existing custom workflows and deprecated base
system workflows only if already in place, but use the new base system flows for all future needs.
For more information, see the following articles in the Now Support Knowledge Base:
• How to update Cloud Provision Service Request PAD or Cloud Resource Operation Request
PAD [KB2265927]
• How to migrate Cloud Service Catalog to use flow in case any of the Out of Box Workflows has
been modified [KB2262737]
All default predefined workflows have been redesigned using Workflow Studio.
Policy Rule Actions can now use Workflow Studio subflows instead of legacy workflows. If you
have not customized the default workflows, the legacy workflows are migrated to subflows
automatically. If you have customized the default workflows, they aren’t migrated, and their use
cases continue to work with the existing workflows.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
The following workflows have been migrated to Workflow Studio flows or subflow:
• Cloud operation change request
• Cloud task processing
• Cloud approval workflow
• Post-process workflow
• Pre-process workflow
• Cloud resource operation request
• Blueprint request
The following workflows have been deprecated:
• Retrieve cloud billing data
• Retrieve cloud billing month
• Cloud operation step workflow launcher

Explore
• Zurich
• Domain separation and
Cloud Provisioning and
Governance

Set up
• Day 1 setup guide for
Amazon Web Services on
Cloud Provisioning and
Governance

Administer
Cloud Provisioning and
Governance administration
guide

• Day 1 setup guide for
Microsoft Azure Cloud on
Cloud Provisioning and
Governance
• Day 1 setup guide for
VMware on Cloud
Provisioning and
Governance
Use

Develop

Troubleshoot and get help

• Cloud Admin Portal

• Developer training

• Cloud User Portal

• Developer documentation

• Search the Known Error
Portal for known error
articles
• Ask or answer questions in
the ITOM community
• Contact Customer Service
and Support

Using guided setup to implement Cloud Provisioning and Governance
Cloud Provisioning and Governance guided setup provides a sequence of tasks that help you
configure Cloud Provisioning and Governance on your instance. To open Cloud Provisioning and
Governance guided setup, navigate to Guided Setup > ITOM Guided Setup.
For more information about using the guided setup interface, see Using guided setup

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
Request the Cloud Provisioning and Governance application
The Cloud Provisioning and Governance application is available as a separate subscription and
requires the Cloud Provisioning and Governance plugin (com.snc.cloud.mgmt).

Before you begin

Role required: admin

About this task

To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Related topics
Day 1 setup guide for Amazon Web Services on Cloud Provisioning and Governance
Day 1 setup guide for Microsoft Azure Cloud on Cloud Provisioning and Governance
Day 1 setup guide for Google Cloud through Cloud Services Catalog Terraform Connector
Day 1 setup guide for VMware on Cloud Provisioning and Governance

Product Name Change
®

Starting with the Paris release, the ServiceNow Cloud Management application was called
®
ServiceNow Cloud Provisioning and Governance. The application is transformed into Cloud
Services Catalog application providing improved and efficient management of the usage and life
cycle of cloud resources.
The standalone subscription for Cloud Provisioning and Governance is discontinued. It is
restructured and incorporated into Cloud Accelerate. Furthermore, it has been segmented into
Cloud Migration Assessment, Cloud Account Management, Cloud Services Catalog, Cloud
Configuration and Governance, and Cloud Action Library.
While product name references throughout the product documentation and the graphical
user interface (GUI) are being updated, you might come across occasional references to their
old names, based on the context. For some core components, the product name remains
intentionally unchanged to maintain existing functionality.
Component name matrix
Component

Former name

New name

ITOM Optimization > Cloud
Provisioning and Governance

Cloud Management
application

Cloud Provisioning and
Governance application

com.snc.cloud.mgmt

Cloud Management plugin

Cloud Provisioning and
Governance plugin

com.snc.cloud.core

Cloud Management Core
plugin

Cloud Provisioning and
Governance Core plugin

Application Context (Settings
> Developer > Application
> Cloud Provisioning and
Governance)

Cloud Management

Cloud Provisioning and
Governance

com.sn_cmp_ibm

Cloud Management: IBM
Cloud Connector

Cloud Provisioning and
Governance: IBM Cloud
Connector

MID Server Capability > Cloud MID Server Capability > Cloud Cloud Provisioning and
Management
Management
Governance
Unchanged component names
MID Server Application >
Cloud Management

MID Server Application >
Cloud Management

Unchanged

Day 1 setup guide for Amazon Web Services on Cloud Provisioning and
Governance
To set up Cloud Provisioning and Governance for the very first time, you perform the procedures
in this "Day 1" setup guide. Be sure to perform the procedures in order. After you have performed
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
Day 1 setup, you can perform optional Day 2 setup and configuration procedures as needed and
in any order. Detailed instructions for each procedure follow this overview.

Request the Cloud Provisioning and Governance application
The Cloud Provisioning and Governance application is available as a separate subscription and
requires the Cloud Provisioning and Governance plugin (com.snc.cloud.mgmt). See Request the
Cloud Provisioning and Governance application.

Roles required to set up Cloud Provisioning and Governance
• Operations in the AWS Management Console require the administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About terms that Cloud Provisioning and Governance uses
Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings. In AWS, the region-specific containers for virtual resources
are called regions. In Cloud Provisioning, regions are called datacenters or logical datacenters
(LDCs). The term logical is used to reinforce the idea that Cloud Provisioning is provider-agnostic.
All infrastructure or applications that are deployed using Cloud Provisioning are associated with
a datacenter.

Quick overview of the setup process
Your setup process includes these tasks:
• If needed: Request the Cloud Provisioning and Governance application.
• Assign appropriate roles to cloud users.
• Set up the MID Servers that will handle secure communications with the provider API
endpoints.
• On the provider portal, collect your account settings and the credentials that the Discovery
process will use (through a MID Server) to programatically access your provider accounts.
Securely associate the account settings and credentials with a service account in Cloud
Provisioning and Governance.
• Set up a cloud account to represent your entire managed cloud infrastructure and set up a
service account that works with one of your provider accounts. You specify which datacenters
in the service account should be included in the cloud account. (Later, on "Day 2", you can set
up additional cloud accounts and service accounts from the same or other providers.)
• Cloud Provisioning uses CMDB data to help users request and manage cloud resources and
to help you manage your cloud infrastructure. To populate the CMDB with resource data for
all datacenters, you manually run the Discovery process on each datacenter in the service
account. Then, to ensure that the data continues to be updated, you configure Discovery to run
on a regular schedule. Your cloud account might look like this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
Structure of a cloud account on Day 1

• Providers offer services that can auto-update the CMDB whenever a create/modify/terminate
life-cycle change or configuration update occurs to a resource. You can configure the service
to integrate directly with Cloud Provisioning and Governance.

What you will do to integrate Cloud Provisioning and Governance with your
AWS accounts
Detailed instructions for each procedure follow this overview.
1. Assign roles to AWS users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to
individual users based on user activities and responsibilities.
2. Install and configure MID Servers to access cloud environments
To ensure secure and reliable communications, the Discovery process
communicates with your cloud provider accounts and cloud resources through one
or more MID Servers. You can set up the MID Servers on your network or in one
of your cloud networks. You can configure the MID Server for Cloud Provisioning
and Governance to use a proxy server. Using a proxy server supports all cloudbased activities such as running Discovery, billing downloads, provisioning virtual
machines, and running life-cycle operations on virtual machines.

Note: Data is encrypted to the MID Server and between the MID Server
and the API endpoint. To ensure high performance and security, you should
configure one or more MID Server for each datacenter under management.
Configure the MID Server even if you have already configured other MID
Servers while setting up Cloud Provisioning and Governance for another cloud
provider.
3. Configure access to the AWS accounts using permanent AWS credentials
To securely access data on your provider account, the Discovery process must
present appropriate credentials. To make the credentials available to Discovery
and Cloud Provisioning and Governance, you first create a user with programmatic
access in the AWS Management Console. You then securely store the credentials in
a service account at ServiceNow AI Platform.
4. Create AWS GovCloud credentials for Cloud Provisioning and Governance

Note: Skip this procedure if your organization does not use AWS GovCloud
(US).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
To securely access data on your provider account, the Discovery process must
present appropriate credentials. An AWS GovCloud (US) region is an isolated AWS
region that meets stringent US government security and compliance requirements
to host sensitive workloads. Cloud Provisioning and Governance supports all AWS
GovCloud (US) services.
5. Create a service account for AWS GovCloud

Note: Skip this procedure if your organization does not use AWS GovCloud
(US).
If your organization uses AWS GovCloud (US) region, you must create a service
account in the region where you provision the resources. These credentials that
you create are used for Cloud Discovery, Cloud Provisioning and Governance, and
Cloud Cost Management.
6. Set up a cloud account and service account for AWS
A service account is a secure record on your instance that stores the credential
and access information for your provider account. Discovery uses the information
to access your provider account to get data on each resource in each specified
datacenter. A cloud account is the logical representation in Cloud Provisioning and
Governance of all or part of your managed cloud infrastructure. A cloud account can
include multiple service accounts — even service accounts from different providers.
For each service account, you specify which datacenters to include in the cloud
account.
8. Define the schedule for downloading AWS billing data
Define the scheduled job that regularly uses a MID Server to download billing data
from the provider. Cloud Provisioning and Governance saves the data in a cost table
and uses the information to generate reports.

Next steps
When you have finished all Day-1 and Day-2 procedures in this setup guide, see the Cloud
Provisioning and Governance administration guide for information on using the Cloud
Provisioning and Governance application in your organization.
Assign roles to AWS users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to individual users
based on user activities and responsibilities.

Before you begin

Role required: user_admin or admin

Procedure
Assign the following roles to groups and users as appropriate:

Descriptive name and
role name

Root administrator

Description and tasks

Highest level of application
access for Cloud Provisioning
[sn_cmp.cmp_root_admin]
and Governance.

Access rights in Cloud
Provisioning and Governance

All

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
Descriptive name and
role name

Cloud administrator
[sn_cmp.cloud_admin]

Description and tasks

Configures the Cloud
Provisioning and Governance
application and sets up the
cloud infrastructure.

Access rights in Cloud
Provisioning and Governance

Cloud infrastructure:
Service accounts and cloud
account
Networks and IPAM
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• IBM Cloud Update
• VMware Events

Governor

Monitors overall cloud usage
and enforces compliance
[sn_cmp.cloud_governor]
of the organization's rules,
quotas, and policies.
Also manages tags and
permissions to various
objects.

Governance:

Service Designer

Cloud Service Design:

Creates blueprints, ARM and
CloudFormation templates,
[sn.cmp.cloud_service_designer]
and catalog items.

• Policies
• Pools
• Quotas
• Permissions

• Cloud templates
• Blueprints
• Blueprint catalog items
• Resource blocks

Cloud user

Requests and manages stacks Cloud User Portal.
and resources.
[sn_cmp.cloud_service_user]
When you assign the role to
a group, all members of the
group share quota limitations
and ownership of certain
resources.
You can access all the task
records, assigned to you or
otherwise, if you have the
cloud service user role.
Cloud operator

Monitors and troubleshoots
the Cloud Provisioning and
[sn_cmp.cloud_operator]
Governance application.

Dashboards and reports:
• Cloud Operations
Dashboard
• Cloud Root Cause Analysis

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
Descriptive name and
role name

Description and tasks

Access rights in Cloud
Provisioning and Governance

• Cloud Orchestration Trail
• Cloud API Trail
Cloud Event Integration

Authorizes access to the
instance for external services Cloud infrastructure:
[sn_cmp.cloud_event_integration]
that auto-update the CMDB
• Service accounts and cloud
when cloud events occur. This
account
Note: Not supported by role gives the access to the
• Networks and IPAM
IBM Cloud Connector.
cloud event REST endpoint.
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• VMware Events
Cloud Group administrator

Grants admin access to any
group that you belong to.
[sn_cmp.cloud_group_admin]
Related topics
Assign a role to a group
Assign a role to a user
Set up a cloud account and service account for AWS
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account is the logical
representation in Cloud Provisioning and Governance of all or part of your managed cloud
infrastructure. A cloud account can include multiple service accounts — even service accounts
from different providers. For each service account, you specify which datacenters to include in
the cloud account.

Before you begin

Role required: none
• Operations in the AWS Management Console require the administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About this task

When you finish the Day-1 setup process, your cloud account might look like this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
Structure of a cloud account on Day 1

Procedure
1. On the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Select or create the cloud account:
◦ Select an existing cloud account:
a. On the Cloud Account page, click Configure.
b. On the General Information page, click Next and then continue with the next step.
◦ Create a cloud account:
a. On the General Information page, click New and then enter a unique and meaningful
Name and Description for the cloud account.
b. Select the provider.
c. Click Next and then continue with the next step.
3. On the Datacenters page, create a service account: Click the + next to the Service Account
field, and then fill in the form for the service account.
Cloud Service Account form
Field

Description

Name

The unique and meaningful name for this service account.

Account ID 12-digit user account number. Expand the list under the AWS account name on
the AWS Management Console to view the number.

Important: In the Account ID field, remove the hyphen characters (-)
from the number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
Field

Description

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

4. Click Submit to create the service account.
5. Click Discover Datacenters.
6. When the datacenters appear, select one or more datacenters to include in the cloud account
and then click Save.

Note:
◦ Select only those LDCs/Regions where your infrastructure resources are present. If you
don't have any resources under these new data centers, exclude them while you run
the full discovery.
◦ To discover resources in regions/ LDCs such as, North America (US East, US West and
Canada Central), South America, Europe, Africa, Middle East and Asia Pacific, raise an
access request to the required endpoints with GCP Support.
The Cloud Account dashboard appears. The datacenters that you selected appear on the
Datacenters tab.
7. Click a datacenter.
The following lists appear:
◦ Resources: Cloud resources for the current datacenter. Run Discovery to populate the
CMDB for the datacenter and populate the tab. See Discover all datacenters in a service
account on-demand.
◦ Capacity Limits: Limits on virtual CPUs, virtual networks, storage volume size, and other
services. See Set capacity limits on user requests for resources.
◦ Discovery Log: The process creates a log record for each action associated with a discovery
status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
What to do next
• Configure additional permissions to provision Amazon AWS Cloud resources using Cloud
Provisioning and Governance.
• After you complete all procedures in this initial "Day 1" setup, you can create additional cloud
accounts and service accounts to organize and compartmentalize your cloud infrastructure.
Related topics
Set up an additional cloud account
Add an AWS service account to the cloud account
Configure a custom AWS member role
Customize the AWS roles that a MID Server can assume to receive temporary credentials for
member accounts. You can configure additional parameters to improve security and customize
the way that the member account’s role is assumed when discovering cloud resources.

Before you begin

Role required: admin

About this task

Values that you enter in the Cloud Service Account > AWS Org Assume Role Params
[cloud_service_account_aws_org_assume_role_params] table are passed as parameters to the
AWS AssumeRole API for the named service account.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Organization Access Parameters >
AWS Org Assume Role Parameters.

2. Click New and then complete the form using these parameters:

Field

Description

Access role name
[access_role_name]

Name of the AWS role in the member account which is used by the
management account to acquire temporary credentials.
Default: OrganizationAccountAccessRole

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
Field

Description

Role session name
[role_session_name]

Name for the session using the temporary security credentials that
may help in distinguishing use of a role by a principal or purpose.
This session name is visible in the AWS Cloud Trail logs. See Cloud
API Trail and the AWS documentation
on AWS Cloud Trail for
details.
Default: master_account_id__<management account ID number> An
example of this is: master_account_id__321003876149.

Credential TTL
Time in seconds for the temporary security credentials to live.
in seconds
[credential_ttl_seconds]Default: Calculated as follows:
a. Retrieve the value in the

mid.aws.sts.assume_role.credential_ttl_minutes
MID Server property

.

b. Constrain this value to be between 15 and 720 minutes. If the
setting in the property is less than 15 minutes, the system enters
15 minutes. If the setting is greater than 720 minutes, the system
enters 720 minutes.
c. Convert the resulting value into seconds.
External ID
[external_id]

Unique identifier required by the trust policy of the role being
assumed.
Default: ServiceNow_MID_Server

Session policy
[session_policy]

IAM policy in JSON format that further restricts the permissions of
the temporary security credentials beyond the role configured policy.
(JSON in AWS policy language.)
Default: Blank

MFA [multifactor
authentication]

Serial number of the Multi-Factor Authentication (MFA) device
(hardware or virtual) used to authenticate the management account.
Default: Blank

MFA token code
[mfa_token_code]

Token code supplied by the MFA device (hardware or virtual) used to
authenticate the management account.
Default: Blank

Cloud service
Required. Service account to associate with the access parameters
account
that you pass to the AWS AssumeRole API. Enter an account ID,
[cloud_service_account]either a management account or a member account, from the Service
Accounts [cmdb_ci_cloud_service_account] table.

Note: For more details on how these parameters are used and what they mean, see the
AWS documentation

on the AWS Security Token Service API for the AssumeRole action.

Create AWS GovCloud credentials for Cloud Provisioning and Governance
Skip this procedure if your organization does not use AWS GovCloud (US). To securely access
data on your provider account, the Discovery process must present appropriate credentials.
An AWS GovCloud (US) region is an isolated AWS region that meets stringent US government
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
security and compliance requirements to host sensitive workloads. Cloud Provisioning and
Governance supports all AWS GovCloud (US) services.

Before you begin

Note:

®

• ServiceNow ITOM products are not officially certified or supported against Germany
and China regions.
• Skip this procedure if your organization does not use AWS GovCloud (US).
• You will need the AWS GovCloud (US) access key ID and the secret access key that you
generated on the AWS Management Console.
Role required: sn_cmp.cloud_admin

About this task

Cloud Provisioning and Governance accesses GovCloud regions using a set of credentials for
each region. To configure Cloud Provisioning and Governance to support a GovCloud region, you
create one standard AWS account for each region (required for billing), obtain the credentials for
the account, and then create a service account for the region. For more information on billing,
see the "AWS GovCloud (US) Billing and Payment" page in the AWS documentation .

Procedure
1. On the AWS Management Console, enter IAM in the AWS services search box to open the
Identity and Access Managements (IAM) service.
2. On the IAM Resources portal, click Users.
3. Create the Discovery user that has programmatic access to your AWS GovCloud (US) resource
and billing data.
4. Select Add user.
On the Details page, configure the user settings, and then select Next.

User name

Name for the programmatic user, for example,
servicenowcloud.

Access type

Select Programmatic access.

5. On the Permissions page, attach the user to a policy by configuring the following settings and
then click Next.

Set permissions for <username>

Select Attach existing policies directly.

Attach one or more policies …

Select the appropriate policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
Note: The AdministratorAccess
policy has the most powerful
permission level, including permission
to provision cloud resources. The policy
enables the same access that would be
granted to the instance if you were not
using IAM and used your AWS account
Access Key ID and Secret Access Key.
You might instead prefer to create a
policy or combine multiple policies
to grant the appropriate permission
level. See Control AWS access and
permissions using policies for details.

6. On the Review page, verify your selections and then click Create user.
7. On the Complete page, perform two steps:

Note: Do not leave the page until you have completed both steps. The Secret access

key value will not appear again. Paste the values that you generate in these steps into a
Cloud Provisioning and Governance form.
a. Click Show to display the Secret access key. Copy the value.
b. Click Download .csv to save the CSV-format file that contains the user name, Access key ID,
and the Secret access key value. You create the file as a backup in the case that you lose the
values. Verify that the file was created and then store the file securely.
8. On your instance, navigate to Orchestration > Credentials & Connections > Credentials.
9. Click New, select AWS Credentials, enter a unique and meaningful Name (for example, AWS
GovCloud Creds O1), and then fill in the form.
AWS Credentials form fields
Field

Input value

Name

Unique and descriptive name for the AWS credentials.

Active

Option to use the credential.

Access Key The Access key ID that you generated on the AWS Management Console, such
ID
as: APIAIOSFODNN7EXAMPLE.
Secret
access key

The Secret access key that you generated on the AWS Management Console,
such as: wPalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY.

10. Click Submit.
The instance records the credentials. Next, you Create a service account for AWS GovCloud.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
Create a service account for AWS GovCloud
If your organization uses AWS GovCloud (US) region, you must create a service account in the
region where you provision the resources. These credentials that you create are used for Cloud
Discovery, Cloud Provisioning and Governance, and Cloud Cost Management.

Before you begin

Note: Skip this procedure if your organization does not use AWS GovCloud (US).

• Role required: sn_cmp.cloud_admin
• AWS GovCloud (US) credentials for each GovCloud region.
• AWS GovCloud (US) account ID (from the AWS Management Console).

About this task

A service account holds the credential and account information that you created in your provider
account. Discovery uses the information to access your provider account and then obtain
information on each logical datacenter that is associated with the account.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal > Service
Accounts.
2. Click New, enter a unique and descriptive name for the account (for example, AWS
GovCloud SA O1) and then fill in the Cloud Service Account form.

Field

Description

Account ID

Account ID to which this credential belongs.

Discovery credentials

Select the name of the credentials that you created in the
Create AWS GovCloud credentials for Cloud Provisioning and
Governance procedure. In the example, you used the name AWS
GovCloud Creds O1.

Datacenter URL

URL of the datacenter. For example, https://ec2.us-govwest-1.amazonaws.com

Datacenter type

Select the CMDB table that represents the type of datacenter. For
example, the [cmdb_ci_aws_datacenter] table.

Datacenter discovery
status

Auto-generated value: Status and timestamp of the last execution
of Discovery on the datacenter.

3. Click Update or Submit.
The system creates the service account and displays the list of all discovered datacenters.

What to do next

Repeat the process to create additional service accounts as needed. Run Discovery for each
datacenter.
Define the schedule for downloading AWS billing data
Define the scheduled job that regularly uses a MID Server to download billing data from the
provider. Cloud Provisioning and Governance saves the data in a cost table and uses the
information to generate reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
Before you begin

Important:

Starting with the Vancouver release, the Billing dashboard is no longer available if you
have downloaded and activated the ServiceNow Store Cloud Cost Management app. The
following changes occur:
• You are redirected to the Cloud Cost Management home page by default.
• The View Dashboard widget in the Cloud User portal is replaced by the View Resources
widget.
• The Current Month Spend widget and the Budget widget on the Cloud User portal do not
show any data if Cloud Cost Management is activated on the instance.
If you have activated the Cloud Cost Management app, you can only navigate to the Billing
Dashboard, if you are using Cloud Provisioning and Governance on a domain separated
instance.
• Set up a payer account that gets billing information for all linked accounts.
• Create the Amazon S3 bucket that is the data storage area for the daily detailed billing records
on the AWS account. The credential that is used to access the report must have permissions
to the S3 bucket. Set the S3 bucket based on the Order location. The AssumeRole policies
MUST include an S3 access policy. You might assume that the AWS account that you always
use can create an S3 bucket in the region where the CFT is being provisioned. If you use
STS-based authentication, however, the AWS account might not be able to create the bucket
because authentication is tied to the AssumeRole policies. See the "Setting Up an Amazon
S3 Bucket for AWS Cost and Usage Reports" page in the AWS documentation
for details.
• Enable detailed billing reports on AWS. See the AWS documentation

for details.

Note: The Detailed Billing Report feature is withdrawn by Amazon AWS Cloud for new
customers. For more information, and for migration details see the AWS documentation
on Detailed Billing Reports .
Role required: sn_cmp.cloud_governor

About this task

This procedure involves two tasks:
1. Fill in the AWS Billing Schedule form with information that you copy from the AWS portal. This
action enables the instance to download AWS billing data.
2. Specify the schedule for downloading AWS billing information.

Procedure
1. In the Cloud Admin Portal, navigate to Analyze > Billing.
2. On the Billing Schedules tab, click New, enter a unique and meaningful Name, and then fill in
the form.

Field

Description

Provider

Select AWS.

Service Account

The AWS service account that you created during
initial setup. (The AWS account to run the billing
report on.)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
Field

Description

Bucket

Data storage area for the daily billing records on
the AWS account. Follow this procedure to obtain
the value:
a. Log in to the AWS Management Console and
select My Billing Dashboard in the menu.
b. From the dashboard, select Billing Preferences.
c. In the Cost Management Preferencessection,
expand Detailed Billing Reports [Legacy] and
ensure that the Turn on the legacy Detailed
Billing Reports feature to receive ongoing
reports of your AWS charges check box is
selected.
d. Copy the value from the Save the S3 bucket:
field into the Bucket field on the form.

Note: By default, AWS selects the S3
bucket associated with the AWS account
that you are currently signed into. A green
tick indicates that the bucket is configured
correctly.
Active

Select the check box to activate the download job.

Run

Frequency that the download job should run.

Time

Time of day that the download job should run.

3. Click Save.
To run the schedule on demand, click Execute Now. On the Retrieve Billing Data window that
appears, select a date range and then click Download.

What to do next

View cloud costs on the Billing dashboard.
Related topics
Cloud credentials
Configure the download size of AWS billing data
A single set of cloud billing data can be large. The MID Server, therefore, sends the data to the
ECC queue in manageable chunks. You can optionally configure a system property to limit the
size of each chunk to avoid performance issues caused by large data transfers.

Before you begin

Role required: admin

Procedure
1. Open the System properties table by entering sys_properties.list in the application
filter.
2. Filter the list to open the sn_cmp.billing.page_size property.
The default value is 3 MB.
3. Modify the value as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
The maximum is 5 MB.
4. Save the property.
Add an AWS service account to the cloud account
During Cloud Provisioning and Governance Day 1 setup, you added one service account to the
cloud account. To compartmentalize your infrastructure or to include different datacenters, you
can add another service account. A particular datacenter, however, cannot be selected in more
than one service account in a cloud account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter.
In this example, you added the service account named ProviderB-ServiceAccount-1 and
selected three datacenters to include in the cloud account:
A service account with three selected datacenters

Important: In a cloud account, you cannot select a particular datacenter in two different
service accounts.

Procedure
1. Navigate to Cloud Admin Portal > Service Accounts.
2. Click New, enter a unique and meaningful Name, and then fill in the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


<!-- page 212 -->
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

212


<!-- page 213 -->
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

3. Click Update or Submit.
The system creates the service account and displays the list of all discovered datacenters.
4. Repeat the process to add as many service accounts as needed.

Day 1 setup guide for Microsoft Azure Cloud on Cloud Provisioning and
Governance
To set up Cloud Provisioning and Governance for the very first time, you perform the procedures
in this "Day 1" setup guide. Be sure to perform the procedures in order. After you have performed
Day 1 setup, you can perform optional Day 2 setup and configuration procedures as needed and
in any order. Detailed instructions for each procedure follow this overview.

Request the Cloud Provisioning and Governance application
The Cloud Provisioning and Governance application is available as a separate subscription and
requires the Cloud Provisioning and Governance plugin (com.snc.cloud.mgmt). See Request the
Cloud Provisioning and Governance application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
Roles required to set up Cloud Provisioning and Governance
• Operations on the Azure portal require one of the following roles:
◦ Azure or Azure AD (Active Directory) Administrator
◦ Application Administrator
◦ Application Developer
◦ Cloud Application Administrator
and the Resource Policy Contributor role to create or modify resource policies.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About terms that Cloud Provisioning and Governance uses
Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings. In Azure, the region-specific containers for virtual resources
are called regions. In Cloud Provisioning and Governance, regions are called datacenters or
logical datacenters (LDCs). The term logical is used to reinforce the idea that Cloud Provisioning
is provider-agnostic. All infrastructure or applications that are deployed using Cloud Provisioning
are associated with a datacenter.

Quick overview of the setup process
Your setup process includes these tasks:
• If needed: Request the Cloud Provisioning and Governance application.
• Assign appropriate roles to cloud users.
• Set up the MID Servers that will handle secure communications with the provider API
endpoints.
• On the provider portal, collect your account settings and the credentials that the Discovery
process will use (through a MID Server) to programatically access your provider accounts.
Securely associate the account settings and credentials with a service account in Cloud
Provisioning and Governance.
• Set up a cloud account to represent your entire managed cloud infrastructure and set up a
service account that works with one of your provider accounts. You specify which datacenters
in the service account should be included in the cloud account. (Later, on "Day 2", you can set
up additional cloud accounts and service accounts from the same or other providers.)
• Cloud Provisioning uses CMDB data to help users request and manage cloud resources and
to help you manage your cloud infrastructure. To populate the CMDB with resource data for
all datacenters, you manually run the Discovery process on each datacenter in the service
account. Then, to ensure that the data continues to be updated, you configure Discovery to run
on a regular schedule. Your cloud account might look like this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Structure of a cloud account on Day 1

• Providers offer services that can auto-update the CMDB whenever a create/modify/terminate
life-cycle change or configuration update occurs to a resource. You can configure the service
to integrate directly with Cloud Provisioning and Governance.

What you will do to integrate Cloud Provisioning and Governance with your
Microsoft Azure accounts
Detailed instructions for each procedure follow this overview.
1. Assign roles to Azure users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to
individual users based on user activities and responsibilities.
2. Install and configure MID Servers to access cloud environments
To ensure secure and reliable communications, the Discovery process
communicates with your cloud provider accounts and cloud resources through one
or more MID Servers. You can set up the MID Servers on your network or in one of
your cloud networks.

Note: Data is encrypted to the MID Server and between the MID Server
and the API endpoint. To ensure high performance and security, you should
configure one or more MID Server for each datacenter under management.
Configure the MID Server even if you have already configured other MID
Servers while setting up Cloud Provisioning and Governance for another cloud
provider.
3. Create a Microsoft Azure service principal
To securely access resource and billing data on your Microsoft Azure account, the
Discovery process must present appropriate Microsoft Azure account credentials.
You create a special programmatic account — a Microsoft Azure service principal —
to generate the required credentials.
4. Store the Azure service principal credentials in the instance
To securely access data on your provider account, the Discovery process must
present appropriate credentials. To make the credentials available to Discovery, you
first create Azure service principal credentials in the Azure Portal. You then securely
store the credentials in a service account in your instance.
5. Add an Azure service account
A service account is a secure record on your instance that stores the credential
and access information for your provider account. Discovery uses the information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
to access your provider account to get data on each resource in each specified
datacenter.
6. Discover all datacenters in a service account on-demand
Discovery uses the information in the service account to identify all logical
datacenters associated with the provider account.
7. Set up a cloud account for Azure
A cloud account is the logical representation in Cloud Provisioning and Governance
of all or part of your managed cloud infrastructure. A cloud account can include
multiple service accounts — even service accounts from different providers. For
each service account, you specify which datacenters to include in the cloud
account.
8. Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the
number of virtual machines, virtual CPUs, or aggregate storage. You can set limits on
resources separately for each logical datacenter in a cloud account.
10. Create Microsoft Azure credentials for billing download
Define the scheduled job that regularly uses a MID Server to download billing data
from the provider. Cloud Provisioning and Governance saves the data in a cost table
and uses the information to generate reports.

Next steps
When you have finished all Day-1 and Day-2 procedures in this setup guide, see the Cloud
Provisioning and Governance administration guide for information on using the Cloud
Provisioning and Governance application in your organization.
Set up Microsoft Azure Government Cloud on Cloud Provisioning and Governance
Set up Microsoft Azure Government Cloud on Cloud Provisioning and Governance for the first
time. You can discover, provision, and manage Microsoft Azure Government Cloud resources
using Cloud Provisioning and Governance, thereafter.

Before you begin

To set up Microsoft Azure Government cloud on Cloud Provisioning and Governance, you must:
• Set up a Microsoft Azure Service Principal on the Azure Government Portal and register the
service account on the Cloud Provisioning and Governance application.
• Configure a MID Server with the required properties to enable Microsoft Azure Government
and the ServiceNow instance to communicate correctly.
• Use the Microsoft Azure Service Principal credentials to discover associated service accounts
and cloud resources.
• In the base system Terraform template, set the environment variable to usgovernment.
For information on where to find the template to modify, see Discover the Infrastructure as
Code (IaC) templates.
provider "azurerm" {
subscription_id = "<REPLACE_WITH_ACCOUNT_ID»"
client_id = "<REPLACE_WITH_APP_ID»"
client_secret = "<REPLACE_WITH_PASSWORD»"
tenant_id = "<REPLACE_WITH_TENANT_ID»"
environment = "usgovernment"
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
Role required: admin

Note: ServiceNow® ITOM products are not officially certified or supported for Germany
and China regions.

About this task

Be sure to perform the procedures in order. After you have performed the Day 1 setup, you can
perform the optional Day 2 setup and configuration procedures as needed and in any order.
Detailed instructions for each procedure follow this overview.

Procedure
1. Create a Microsoft Azure service principal on the Microsoft Azure Government portal.

Note: Navigate to App registrations > Register an application > Supported account

types section. Then, select the Accounts in this organizational directory only (Single
tenant) option to ensure that the Active Directory that is configured for the Microsoft
Azure Government cloud is used for authentication.
For more information, see Create an Azure AD application and service principal that can
access resources .
to connect Cloud Provisioning and Governance to a Microsoft Azure
2. Configure MID Servers
Government cloud account.
a. Navigate to MID server > Capabilities.
b. Click Edit and add the following options:
▪ Azure
▪ Cloud Management
c. Click Save.
d. Optional: Navigate to MID server > Supported Applications.
Skip the next step if ALL applications are selected.
e. Optional: Click Edit and add the following applications to the Supported Applications List:
▪ Discovery
▪ Cloud Management
▪ Orchestration
f. Click Save.

Note: For more information, see:
▪ MID server selection
▪ MID server capabilities
3. Navigate to MID server > Properties.
a. Click New and add new records for each of the following name-value pairs:
MID Server properties
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
Name

Value

mid.cmp.azure_api.base_endpoint
https://management.usgovcloudapi.net/${apiPath}
mid.cmp.azure_api.storage.container.path
https://${accountName}.blob.core.usgovcloudapi.net/?
comp=list
mid.property.azure_token_manager.endpoint
https://login.microsoftonline.us/${tenantId}/oauth2/token
mid.property.azure_token_manager.endpoint_content
grant_type=client_credentials&client_id=
${clientId}&resource=https%3A%2F
%2Fmanagement.usgovcloudapi.net%2F&client_secret=
${clientSecret}
mid.cmp.azure_api.storage.blob.path
https://${accountName}.blob.core.usgovcloudapi.net/
${containerName}?
restype=container&include=snapshots&comp=list
b. Click Submit.
4. Store the Azure service principal credentials in the instance.
5. In the Cloud Admin Portal, navigate to Manage > Credentials, and select the Azure Service
principal record.
6. To discover service accounts associated to the Azure subscriptions that are available to this
Service principal, click the Discover Subscriptions related link.

Result

The Azure Subscriptions related list displays all subscriptions that are associated with the Azure
service principal.

What to do next

Define the schedule for downloading Microsoft Azure billing data.
Assign roles to Azure users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to individual users
based on user activities and responsibilities.

Before you begin

Role required: user_admin or admin

Procedure
Assign the following roles to groups and users as appropriate:

Descriptive name and
role name

Description and tasks

Root administrator

Access rights in Cloud
Provisioning and Governance

Highest level of application
access for Cloud Provisioning
[sn_cmp.cmp_root_admin]
and Governance.

All

Cloud administrator

Cloud infrastructure:

Configures the Cloud
Provisioning and Governance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
Descriptive name and
role name

[sn_cmp.cloud_admin]

Description and tasks

application and sets up the
cloud infrastructure.

Access rights in Cloud
Provisioning and Governance

Service accounts and cloud
account
Networks and IPAM
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• IBM Cloud Update
• VMware Events

Governor

Monitors overall cloud usage
and enforces compliance
[sn_cmp.cloud_governor]
of the organization's rules,
quotas, and policies.
Also manages tags and
permissions to various
objects.

Governance:

Service Designer

Cloud Service Design:

Creates blueprints, ARM and
CloudFormation templates,
[sn.cmp.cloud_service_designer]
and catalog items.

• Policies
• Pools
• Quotas
• Permissions

• Cloud templates
• Blueprints
• Blueprint catalog items
• Resource blocks

Cloud user

Requests and manages stacks Cloud User Portal.
and resources.
[sn_cmp.cloud_service_user]
When you assign the role to
a group, all members of the
group share quota limitations
and ownership of certain
resources.
You can access all the task
records, assigned to you or
otherwise, if you have the
cloud service user role.
Cloud operator

Monitors and troubleshoots
the Cloud Provisioning and
[sn_cmp.cloud_operator]
Governance application.

Dashboards and reports:
• Cloud Operations
Dashboard
• Cloud Root Cause Analysis

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
Descriptive name and
role name

Description and tasks

Access rights in Cloud
Provisioning and Governance

• Cloud Orchestration Trail
• Cloud API Trail
Cloud Event Integration

Authorizes access to the
instance for external services Cloud infrastructure:
[sn_cmp.cloud_event_integration]
that auto-update the CMDB
• Service accounts and cloud
when cloud events occur. This
account
Note: Not supported by role gives the access to the
• Networks and IPAM
IBM Cloud Connector.
cloud event REST endpoint.
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• VMware Events
Cloud Group administrator

Grants admin access to any
group that you belong to.
[sn_cmp.cloud_group_admin]
Related topics
Assign a role to a group
Assign a role to a user
Create a Microsoft Azure service principal
To securely access resource and billing data on your Microsoft Azure account, the Discovery
process must present appropriate Microsoft Azure account credentials. You create a special
programmatic account — a Microsoft Azure service principal — to generate the required
credentials.

Before you begin
Roles required:

• discovery_admin, service_mapping_admin, sn_cmp.cloud_admin roles in Cloud Provisioning
and Governance or sn_cloud_ops_ws.cloud_ops_admin role in Cloud Discovery Workspace.
• Operations on the Microsoft Azure portal require one of the following roles:
◦ Azure or Azure AD (Active Directory) Administrator
◦ Application Administrator
◦ Application Developer
◦ Cloud Application Administrator
and the Resource Policy Contributor role to create or modify resource policies.
• Enable internal network connection between the MID Servers and the Azure Cloud API
endpoints:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
◦ The US GovCloud URL is https://management.usgovcloudapi.net/.
◦ The commercial Azure Cloud URL is management.azure.com.

Note: It isn't necessary when adding a credential if the account being added is
already a GovCloud account.

Procedure
1. Log in to the Azure portal and navigate to Azure Active Directory.
2. Navigate to the App registrations section and click New application registration.
Enter the following information for your application:

Field

Description

Name

Unique name for the application and
its integration credentials. For example,
ServiceNow Integration.

Supported account types

Specify who can use the application.

Redirect URI (Optional)

URL that will access Azure. Typically the URL
of the ServiceNow instance.

3. Select Register to complete the app registration.
4. When registration completes, copy the Application (client) ID and Directory (tenant) ID values,
and paste them in the text editor.
5. Label the values Application ID and Directory ID respectively.
6. In the Azure portal, navigate to the Certificates & secrets section and New client secret then
specify the following values:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
Field

Description

Key description

Description for the key.

Duration

Expiration for the key.

Note: Your organization may apply
policies to restrict key durability. Select
the appropriate duration.

7. Click Add.
8. Copy and paste the key value into the text editor and label the value Application key.
9. To enable the service principal to work with various Azure subscriptions, navigate to
Subscriptions.
To manage multiple subscriptions, you must perform the following procedure for each
subscription:
a. Paste the subscription ID into the text editor and label it Subscription ID.
The text file that you generate during this procedure might look something like this:

b. Navigate to the subscription and select Access Control (IAM) from the menu.
c. Click + Add at the top of the screen then Add role assignment.
d. Select the value reader from the Role field.
Let the default value User, group, or service principal remain as is in the Assign access to
field.

Note: The Resource policy contributor role is only required for provisioning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
e. Select the name you created in step 2 in the Select field and click Save.

10. Perform the appropriate action.
◦ If you are not using Cloud Discovery through Cloud Discovery Workspace, do the following:
In the Discovery Manager, click the plus icon (+) and then select Azure Service Principal
from the list.
◦ If you are using Cloud Discovery through Cloud Discovery Workspace, do the following:
a. Navigate to All > Connections & Credentials > Credentials.
b. Select New.
c. Select Azure Service Principal.
11. Specify the following values on the Azure Service Principal form:

Field

Value

Name

Name of the service principal to register with the instance. For example,
Azure service principal credentials.

Authentication Select Client secret.
Method
The Secret key field appears when you select Client secret.

Note: Client assertion is not supported.
12. Copy and paste values from the temporary text file into the remaining fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
Credentials form field

Azure Service Principal value

Tenant ID

Azure Directory ID value from the text file.

Client ID

Azure Application ID value from the text file.

Secret key

Azure Application key value from the text file.

13. Click Save to create the Azure service principal.
14. Click the Discover Subscriptions related link to find all subscriptions for the Azure service
principal.
The instance creates a service account for each discovered subscription. The Azure
Subscriptions related list displays all subscriptions for the Azure service principal.
15. Click a subscription to view the service account created for the subscription.
16. Click a Discovery status entry in the Credential Discovery Status list to view the Discovery log.
Each time you click Discover Subscription, the instance generates a new Discovery status and
displays it in the Credential Discovery Status list.

What to do next

Cloud Provisioning and Governance only: Create a record of the service principal credentials
on the ServiceNow instance so that Cloud Provisioning and Governance processes can access
Microsoft Azure data. See Store the Azure service principal credentials in the instance.
Store the Azure service principal credentials in the instance
To securely access data on your provider account, the Discovery process must present
appropriate credentials. To make the credentials available to Discovery, you first create Azure
service principal credentials in the Azure Portal. You then securely store the credentials in a
service account in your instance.

Before you begin
Role required:

• Azure Portal Active Directory (AD) administrator
• Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin, discovery_admin

Procedure
1. Create a Microsoft Azure service principal and open the text file that you created during the
procedure.
2. In the Cloud Admin Portal, navigate to Manage > Credentials.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
3. Click New and then select Azure Service Principal.
4. Specify the following values on the Azure Service Principal form:

Field

Value

Name

Name of the service principal to register with the instance. For example,
Azure service principal credentials.

Authentication Select Client Secret.
Method
The Secret key field appears when you select Client Secret.

Note: Client Assertion is not supported.
5. Copy/paste values from the Azure-Credentials.txt text file into the remaining fields.

6. Select the appropriate EA credential from the list, select the Active check box, and then click
Save to create the record.
7. Click the Discover Subscriptions related link to find all subscriptions that are associated with
the Azure service principal.
The instance creates a service account for each discovered subscription.The Azure
Subscriptions related list displays all subscriptions that are associated with the Azure service
principal.
8. Click a subscription to view the service account that was created for the subscription.
9. Click a discovery status entry in the Credential Discovery Status list to view the associated
discovery log.
Each time that you click Discover Subscriptions, the instance generates a new discovery
status and lists the status in the Credential Discovery Status list.
Add an Azure service account
During Cloud Provisioning Day 1 setup, you added one service account to the cloud account. To
compartmentalize your infrastructure or to include different datacenters, you can add another
service account. A particular datacenter, however, cannot be selected in more than one service
account in a cloud account.

Before you begin

Role required: sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
Procedure
1. Open the Azure-Credentials.txt text file that you created during the Create a
Microsoft Azure service principal procedure.
2. Navigate to Cloud Admin Portal > Manage > Service Accounts.
3. Click New, enter a unique and meaningful Name, and then fill in the form.

Field

Account ID

Description

The Azure Subscription ID value that you copied from the Azure Portal into the
text file.
See Discovery for Microsoft Azure Cloud to learn Management Groups
subscription IDs.

Discovery Name of the credentials that you created in the Store the Azure service
credentials principal credentials in the instance procedure. In the example, you used the
name Azure service principal credentials.
Datacenter URL of the datacenter.
URL
This field is required only for the government and regional accounts.
Discovery and Service Mapping Patterns supports the US, Germany, and China
Microsoft Azure government clouds.
Datacenter Select Azure Datacenter.
type
Datacenter Auto-generated value: Status and timestamp of the last execution of Discovery
discovery on the datacenter.
status
®

Should
Option to enable the ServiceNow AI Platform to collect resource change
®
pull events information from the Microsoft Azure cloud. The ServiceNow AI Platform uses
the resource change information to update the Configuration Management
Database (CMDB). For more information on the supported Azure resource
types, see Azure change processing. If you select the Should pull events
check box for a management group, the ServiceNow AI Platform enables Azure
change processing for all the subscriptions in the management group.
4. Click Update or Submit.
The system creates the service account and displays the list of all discovered datacenters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
What to do next

After you complete all procedures in this initial "Day 1" setup, you can create additional cloud
accounts and service accounts to organize and compartmentalize your cloud infrastructure.

Note:
If you are on a domain separated instance, only those events that are updated to the CMDB
and belong to your domain are visible. Events create configuration items (CI) in the same
domain as the cloud service account they are mapped to.
Related topics
Discovery for Microsoft Azure Cloud
Set up a cloud account for Azure
A cloud account is the logical representation in Cloud Provisioning and Governance of all or part
of your managed cloud infrastructure. A cloud account can include multiple service accounts
— even service accounts from different providers. For each service account, you specify which
datacenters to include in the cloud account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

See Cloud accounts for more information about cloud accounts.

Note: Cloud providers often use different names for accounts, regions, and credential
settings. Because the ServiceNow application supports several cloud providers, the app
uses general-purpose names for the settings. In Azure, the region-specific containers for
virtual resources are called regions. In Cloud Provisioning and Governance, regions are
called datacenters or logical datacenters (LDCs). The term logical is used to reinforce the
idea that Cloud Provisioning is provider-agnostic. All infrastructure or applications that are
deployed using Cloud Provisioning are associated with a datacenter. .

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
Cloud Admin portal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
2. Click New, enter a unique and meaningful Name and Description, and then select the cloud
Provider for the account (Azure).

3. Click Next.
Based on the provider you select, the Service Account field is populated and a list of
discovered datacenters appears. If no datacenters appear, click Discover Datacenters to find
them. See Discover all datacenters in a service account on-demand for details.
4. When the datacenters appear, select one or more datacenters to include in the cloud account
and then click Save.

Note:
◦ Select only those LDCs/Regions where your infrastructure resources are present. If you
don't have any resources under these new data centers, exclude them while you run
the full discovery.
◦ To discover resources in regions/ LDCs such as, North America (US East, US West and
Canada Central), South America, Europe, Africa, Middle East and Asia Pacific, raise an
access request to the required endpoints with GCP Support.
The Cloud Account dashboard appears. The datacenters that you selected appear on the
Datacenters tab.
5. Click a datacenter.
The following lists appear:
◦ Resources: Cloud resources for the current datacenter. Run Discovery to populate the
CMDB for the datacenter and populate the tab. See Discover all datacenters in a service
account on-demand.
◦ Capacity Limits: Limits on virtual CPUs, virtual networks, storage volume size, and other
services. See Set capacity limits on user requests for resources.
◦ Discovery Log: The process creates a log record for each action associated with a discovery
status.
6. Repeat the process to add as many service accounts as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
Create Microsoft Azure credentials for billing download
Define the scheduled job that regularly uses a MID Server to download billing data from the
provider. Cloud Provisioning and Governance saves the data in a cost table and uses the
information to generate reports.

Before you begin

Important:

Starting with the Vancouver release, the Billing dashboard is no longer available if you have
downloaded and activated the ServiceNow Store Cloud Cost Management application. The
following changes occur:
• You’re redirected to the Cloud Cost Management home page by default.
• The View Dashboard widget in the Cloud User portal is replaced by the View Resources
widget.
• The Current Month Spend widget and the Budget widget on the Cloud User portal don’t
show any data if Cloud Cost Management is activated on the instance.
If you have activated the Cloud Cost Management application, you can only navigate to
the Billing Dashboard when you’re using Cloud Provisioning and Governance on a domainseparated instance.
You must have an API Access Key credential for an Enterprise Agreement (EA) for all Azure
accounts for which you want billing information.
Role required: sn_cmp.cloud_governor

About this task

During the billing download process, all the resources are pulled into the system. Azure
databases are placed in the Database [cmdb_ci_database] table.

Procedure
1. Create Client Secret by navigating to the Overview page of the previously deployed Service
Principal application.
a. On the left pane, select Certificates & secrets.
b. In the Client secrets section, select New client secret.
c. On the form, fill in the fields.

Field

Description

Description

Description of the Client secret. For
example, Client secret for
MyServicePrincipal.

Expires

Expiration period that suits your
requirements. For example, 6 months, 12
months, 24 months, or Never.

d. Select Add.
After adding the Client Secret, a value gets generated and displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
Note: Copy this value immediately as it wouldn’t be shown again, which is your Client
Secret (access key).
2. Copy the Application (client) ID and Directory (tenant) ID for later use.
3. Assign a role to the Service Principal.
a. On the left pane, select Azure Active Directory.
b. Select Roles and administrators.
c. Select All roles and find the role that you want to assign.
d. Select the role and then select Add assignment.
e. Search for and select your Service principal by its name and then select Add.
4. Obtain a Subscription ID by selecting Subscriptions.
a. Select the subscription that you want to use.
b. Copy the Subscription ID from the Subscription Overview page.
Configure the download size of Microsoft Azure billing data
A single set of cloud billing data can be large. The MID Server, therefore, sends the data to the
ECC queue in manageable chunks. You can optionally configure a system property to limit the
size of each chunk to avoid performance issues caused by large data transfers.

Before you begin

Role required: admin

Procedure
1. Open the System properties table by entering sys_properties.list in the application
filter.
2. Filter the list to open the sn_cmp.billing.page_size property.
The default value is 3 MB.
3. Modify the value as needed.
The maximum is 5 MB.
4. Save the property.

Day 1 setup guide for Google Cloud through Cloud Services Catalog Terraform
Connector
To set up Google Cloud for the first time, follow the steps in this Day 1 setup guide in the order
they are presented. After completing the Day 1 setup, you can proceed with the optional Day 2
configuration steps as needed, in any order. Detailed instructions for each step are provided in
the sections below.

Note: The ServiceNow® Cloud Provisioning and Governance: Google Cloud Connector
is no longer deployed, enhanced, or supported. For details, see the Deprecation Process
[KB0867184]
article in the Now Support knowledge base.

Roles required to set up Google Cloud Platform
• Operations in the Google Cloud Console require the Google administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
About terms that Cloud Provisioning and Governance uses
Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings. In the Google Cloud Platform, the region-specific containers
for virtual resources are called regions. In ServiceNow cloud data model, regions are called
datacenters or logical datacenters (LDCs). The term logical is used to reinforce the idea that
Cloud Provisioning is provider-agnostic. All infrastructure or applications that are deployed using
Cloud Provisioning are associated with a datacenter.

Quick overview of the setup process
Your Day 1 setup process includes these tasks:
• If needed: Request the Cloud Provisioning and Governance application.
• Download the Connector app
and supporting store apps on the ServiceNow Store and
activate
the store applications.
• Assign appropriate roles to cloud admins and end users.
• On the provider portal, collect your account settings and the credentials that the Discovery
process will use (through a MID Server) to programmatically access your provider accounts.
Securely associate the account settings and credentials with a service account in Cloud
Provisioning.
• Set up the MID Servers that will handle secure communications with the provider API
endpoints.
• Set up a cloud account to represent your entire managed cloud infrastructure and set up a
service account that works with one of your provider accounts. You specify which datacenters
in the service account should be included in the cloud account. (Later, on "Day 2", you can set
up additional cloud accounts and service accounts from the same or other providers.)
• To populate the CMDB with resource data for all datacenters, you manually run the Discovery
process on each datacenter in the service account. Then, to ensure that the data continues to
be updated, you configure Discovery to run on a regular schedule. Your cloud account might
look like this:
Structure of a cloud account on Day 1

• Providers offer services that can auto-update the CMDB whenever a create/modify/terminate
life-cycle change or configuration update occurs to a resource. You can configure the service
to integrate directly with Cloud Provisioning and Governance.

What you will do to integrate your Google Cloud Platform cloud accounts
Detailed instructions for each procedure follow this overview.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
1. Get the CSC Terraform Connector app on the ServiceNow Store
2. Assign roles to Google Cloud Platform users
You assign Cloud Provisioning and Governance roles to user groups and to individual users
based on user activities and responsibilities.
3. Install and configure MID Servers to access cloud environments
To ensure secure and reliable communications, the Discovery process communicates with
your cloud provider accounts and cloud resources through one or more MID Servers. You can
set up the MID Servers on your network or in one of your cloud networks.

Note: Data is encrypted to the MID Server and between the MID Server and the API
endpoint. To ensure high performance and security, you should configure one or more
MID Server for each datacenter under management. Configure the MID Server even if
you have already configured other MID Servers while setting up Cloud Provisioning and
Governance for another cloud provider.
4. Specify the credentials that CSC Terraform Connector uses to access Google Cloud Platform
data
To securely access data on your provider account, the Discovery process must present
appropriate credentials. To make the credentials available to Discovery, you open the Google
Cloud Console to identify the Google Cloud Platform project that will have programmatic
access to your Google Cloud Platform data. You then securely store the credentials in a service
account in your instance.
5. Set up a cloud account and service account for Google Cloud Platform
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter.

Next steps
When you have finished all Day-1 and Day-2 procedures in this setup guide, see the Cloud
Provisioning and Governance administration guide for information on using the Cloud
Provisioning and Governance application in your organization.
Assign roles to Google Cloud Platform users
You assign Cloud Provisioning and Governance roles to user groups and to individual users
based on user activities and responsibilities.

Before you begin

Role required: user_admin or admin

Procedure
Assign the following roles to groups and users as appropriate:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
Descriptive name and
role name

Description and tasks

Root administrator

Access rights in Cloud
Provisioning and Governance

Highest level of application
access for Cloud Provisioning
[sn_cmp.cmp_root_admin]
and Governance.

All

Cloud administrator

Cloud infrastructure:

[sn_cmp.cloud_admin]

Configures the Cloud
Provisioning and Governance
application and sets up the
cloud infrastructure.

Service accounts and cloud
account
Networks and IPAM
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• IBM Cloud Update
• VMware Events

Governor

Monitors overall cloud usage
and enforces compliance
[sn_cmp.cloud_governor]
of the organization's rules,
quotas, and policies.
Also manages tags and
permissions to various
objects.

Governance:

Service Designer

Cloud Service Design:

Creates blueprints, ARM and
CloudFormation templates,
[sn.cmp.cloud_service_designer]
and catalog items.

• Policies
• Pools
• Quotas
• Permissions

• Cloud templates
• Blueprints
• Blueprint catalog items
• Resource blocks

Cloud user

Requests and manages stacks Cloud User Portal.
and resources.
[sn_cmp.cloud_service_user]
When you assign the role to
a group, all members of the
group share quota limitations
and ownership of certain
resources.
You can access all the task
records, assigned to you or
otherwise, if you have the
cloud service user role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
Descriptive name and
role name

Description and tasks

Cloud operator

Monitors and troubleshoots
the Cloud Provisioning and
[sn_cmp.cloud_operator]
Governance application.

Access rights in Cloud
Provisioning and Governance

Dashboards and reports:
• Cloud Operations
Dashboard
• Cloud Root Cause Analysis
• Cloud Orchestration Trail
• Cloud API Trail

Cloud Event Integration

Authorizes access to the
instance for external services Cloud infrastructure:
[sn_cmp.cloud_event_integration]
that auto-update the CMDB
• Service accounts and cloud
when cloud events occur. This
account
Note: Not supported by role gives the access to the
• Networks and IPAM
IBM Cloud Connector.
cloud event REST endpoint.
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• VMware Events
Cloud Group administrator

Grants admin access to any
group that you belong to.
[sn_cmp.cloud_group_admin]
Related topics
Assign a role to a group
Assign a role to a user
Specify the credentials that CSC Terraform Connector uses to access Google Cloud Platform
data
To securely access data on your provider account, the Discovery process must present
appropriate credentials. To make the credentials available to Discovery, you open the Google
Cloud Console to identify the Google Cloud Platform project that will have programmatic access
to your Google Cloud Platform data. You then securely store the credentials in a service account
in your instance.

Before you begin
Roles required:

• Operations in the Google Cloud Console require the Google administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About this task

Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
Procedure
1. If you have already generated the credentials that is used by the Google Cloud, skip to the final
step.
Otherwise, continue with the next step.
2. On the Google Cloud Console dashboard, select the project.
3. Navigate to APIs & Services > Credentials.
4. On the Credentials tab, click Create credentials > Service account key, and then create the
key.
Specify the JSON key type.
5. Identify the credentials that Google Cloud, Discovery, and the Cloud Services Catalog (CSC)
Terraform Connector should use on your instance to access data from the Google Cloud
Platform.
a. Open the JSON key file in a text editor.
b. In the Cloud Admin Portal, navigate to Manage > Credentials, click New and then select
Google Credentials.
c. Specify the Name of the credentials to register with the instance.
For example, enter Google credentials-1 and then copy/paste values from the JSON
key file into the form fields. Paste the private_key value into the Secret key field and the
client_email value into the EMail field.

d. Select the Active check box to use the credentials and then click Submit.
Set up a cloud account and service account for Google Cloud Platform
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account is the logical
representation in Cloud Provisioning and Governance of all or part of your managed cloud
infrastructure. A cloud account can include multiple service accounts — even service accounts
from different providers. For each service account, you specify which datacenters to include in
the cloud account.

Before you begin

Role required: none

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
®

• Download and activate the CSC Terraform Connector from the ServiceNow Store. To try out
the Out Of Box Catalogs using Cloud Services Catalog for Google, install the CSC content
pack.
• Operations in the Google Cloud Console require the Google administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About this task

When you finish the Day-1 setup process, your cloud account might look like this:
Structure of a cloud account on Day 1

Procedure
1. On the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Select or create the cloud account:
◦ Select an existing cloud account:
a. On the Cloud Account page, click Configure.
b. On the General Information page, click Next and then continue with the next step.
◦ Create a cloud account:
a. On the General Information page, click New and then enter a unique and meaningful
Name and Description for the cloud account.
b. Select the provider.
c. Click Next and then continue with the next step.
3. On the Datacenters page, create a service account: Click the + next to the Service Account
field, and then fill in the form for the service account.
4. From the JSON key file that is associated with the service account, populate the project_id
value into the Account ID field.

Note: You can use the import JSON file option to populate. For more details, see
Configure the Google API credentials for Cloud Discovery.
5. In the Discovery credentials field, select the appropriate credentials for the service account.
These are the credentials that you generated in the Specify the credentials that CSC Terraform
Connector uses to access Google Cloud Platform data procedure.
6. Leave the Datacenter URL field blank.
7. Fill in the remaining fields:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Field

Description

Datacenter type

Select Google Cloud Platform Datacenter.

Datacenter discovery status

Select Google Cloud Platform Datacenter.

Should pull events

Enables Cloud Provisioning and
Governance to collect events from resource
types in Google Project LDCs in the
sn_cmp_cloud_event_list .

8. Click Submit to create the service account.
9. Click Discover Datacenters.
10. When the datacenters appear, select one or more datacenters to include in the cloud account
and then click Save.

Note:
◦ Select only those LDCs/Regions where your infrastructure resources are present. If you
don't have any resources under these new data centers, exclude them while you run
the full discovery.
◦ To discover resources in regions/ LDCs such as, North America (US East, US West and
Canada Central), South America, Europe, Africa, Middle East and Asia Pacific, raise an
access request to the required endpoints with GCP Support.
The Cloud Account dashboard appears. The datacenters that you selected appear on the
Datacenters tab.
11. Click a datacenter.
The following lists appear:
◦ Resources: Cloud resources for the current datacenter. Run Discovery to populate the
CMDB for the datacenter and populate the tab. See Discover all datacenters in a service
account on-demand.
◦ Capacity Limits: Limits on virtual CPUs, virtual networks, storage volume size, and other
services. See Set capacity limits on user requests for resources.
◦ Discovery Log: The process creates a log record for each action associated with a discovery
status.
12. Repeat the process to add as many service accounts as needed.

What to do next

After you complete all procedures in this initial "Day 1" setup, you can create additional cloud
accounts and service accounts to organize and compartmentalize your cloud infrastructure.
Related topics
Set up an additional cloud account
(Optional) Add a Google Cloud Platform service account to the cloud account
Discovery for Google Cloud Platform
(Optional) Add a Google Cloud Platform service account to the cloud account
During Cloud Provisioning and Governance Day 1 setup, you added one service account to the
cloud account. To compartmentalize your infrastructure or to include different datacenters, you

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


<!-- page 238 -->
can add another service account. A particular datacenter, however, cannot be selected in more
than one service account in a cloud account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter.
In this example, you added the service account named ProviderB-ServiceAccount-1 and
selected three datacenters to include in the cloud account:
A service account with three selected datacenters

Important: In a cloud account, you cannot select a particular datacenter in two different
service accounts.

Procedure
1. Navigate to Cloud Admin Portal > Service Accounts.
2. Click New, enter a unique and meaningful Name, and then fill in the form.
3. Fill in the remaining fields:

Field

Description

Account ID

From the JSON key file that is associated with the service account, copy/paste the pr
into the Account ID field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
Field

Description

Google Cloud Platform (GCP) project ID

Discovery credentials

Select the appropriate credentials for the service account For information on generat
the credentials, see Specify the credentials that CSC Terraform Connector uses to ac
Cloud Platform data.

Datacenter URL

Leave the Datacenter URL field blank.

Datacenter type

Select Google Cloud Platform Datacenter.

Datacenter discovery
status

Auto-generated value: Status and timestamp of the last execution of Discovery on the

4. Click Update or Submit.
The system creates the service account and displays the list of all discovered datacenters.
5. Repeat the process to add as many service accounts as needed.

Day 1 setup guide for VMware on Cloud Provisioning and Governance
To set up Cloud Provisioning and Governance for the very first time, you perform the procedures
in this "Day 1" setup guide. Be sure to perform the procedures in order. After you have performed
Day 1 setup, you can perform optional Day 2 setup and configuration procedures as needed and
in any order. Detailed instructions for each procedure follow this overview.

Request the Cloud Provisioning and Governance application
The Cloud Provisioning and Governance application is available as a separate subscription and
requires the Cloud Provisioning and Governance plugin (com.snc.cloud.mgmt). See Request the
Cloud Provisioning and Governance application.

Roles required to set up Cloud Provisioning and Governance
• Operations in the VMware Console require the VMware administrator role.
• Operations in Cloud Provisioning and Governance require the sn_cmp.cloud_admin role.

About terms that Cloud Management uses
Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings.

Quick overview of the setup process
Your setup process includes these tasks:
• If needed: Request the Cloud Provisioning and Governance application.
• Assign appropriate roles to cloud users.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
• Set up the MID Servers that will handle secure communications with the provider API
endpoints.
• On the provider portal, collect your account settings and the credentials that the Discovery
process will use (through a MID Server) to programatically access your provider accounts.
Securely associate the account settings and credentials with a service account in Cloud
Provisioning and Governance.
• Set up a cloud account to represent your entire managed cloud infrastructure and set up a
service account that works with one of your provider accounts. You specify which datacenters
in the service account should be included in the cloud account. (Later, on "Day 2", you can set
up additional cloud accounts and service accounts from the same or other providers.)
• Cloud Provisioning uses CMDB data to help users request and manage cloud resources and
to help you manage your cloud infrastructure. To populate the CMDB with resource data for
all datacenters, you manually run the Discovery process on each datacenter in the service
account. Then, to ensure that the data continues to be updated, you configure Discovery to run
on a regular schedule. Your cloud account might look like this:
Structure of a cloud account on Day 1

• Providers offer services that can auto-update the CMDB whenever a create/modify/terminate
life-cycle change or configuration update occurs to a resource. You can configure the service
to integrate directly with Cloud Provisioning and Governance.

What you will do to integrate Cloud Provisioning and Governance with your
VMware cloud accounts
Detailed instructions for each procedure follow this overview.
1. Assign roles to VMware users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to
individual users based on user activities and responsibilities.
2. Create the credential and service account that will access your VMware data
To securely access data on your provider account, the Discovery process must
present appropriate credentials. To make the credentials available to Discovery,
you first create an account in the VMware Console. You then securely store the
credentials in a service account in your instance. A service account is a secure
record on your instance that stores the credential and access information for your
provider account. Discovery uses the information to access your provider account to
get data on each resource in each specified datacenter.
3. Discover all datacenters in a service account on-demand
Discovery uses the information in the service account to identify all logical
datacenters associated with the provider account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
4. Set up cloud accounts for VMware
A cloud account is the logical representation in Cloud Provisioning and Governance
of all or part of your managed cloud infrastructure. A cloud account can include
multiple service accounts — even service accounts from different providers. For
each service account, you specify which datacenters to include in the cloud
account.
5. Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the
number of virtual machines, virtual CPUs, or aggregate storage. You can set limits on
resources separately for each logical datacenter in a cloud account.
vSphere
• Enterprise or Enterprise Plus Edition 5.5 or newer.
• Enable the vSphere environment for Distributed Resource Scheduling (DRS).
• Place datastores under Storage DRS.
When provisioning Windows virtual machines, read and modify the named
customization specifications.
ESXi hosts
If the IP address of a virtual machine is set manually using a script or post-init
scripts run on the VM, then you must allow HTTPS traffic between the MID Server
and the ESXi host for the VM.
Enable NTP time sync. Enable the NTP client for the hypervisor on the vSphere web
client. See the vSphere documentation
for more information.
vCenter server requirements
vCenter 5.5 or 6.0 Standard or Foundation edition.
vCenter access requirements
Minimum permissions for the user that connects to vSphere through the instance:
• Datastore: All
• Datastore Cluster: All
• Folder: Create, Delete
• Global: Cancel task, License
• Host > Local operations: Create/Delete/Reconfigure virtual machines
• Profile-driven storage: All
• Network: Assign network
• Resource: Apply recommendation; Create/Modify/Assign/Remove virtual
machines.
• Virtual machines: All
vCenter credentials
• Username
• Password

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
• URL or IP address of the vCenter server that the instance access through the MID
Server.
• vCenter instance UUID. See Create the credential and service account that will
access your VMware data for instructions on how to obtain the UUID.

Next steps
When you have finished all Day-1 and Day-2 procedures in this setup guide, see the Cloud
Provisioning and Governance administration guide for information on using the Cloud
Provisioning and Governance application in your organization.
Assign roles to VMware users of Cloud Provisioning and Governance
You assign Cloud Provisioning and Governance roles to user groups and to individual users
based on user activities and responsibilities.

Before you begin

Role required: user_admin or admin

Procedure
Assign the following roles to groups and users as appropriate:

Descriptive name and
role name

Description and tasks

Root administrator

Access rights in Cloud
Provisioning and Governance

Highest level of application
access for Cloud Provisioning
[sn_cmp.cmp_root_admin]
and Governance.

All

Cloud administrator

Cloud infrastructure:

[sn_cmp.cloud_admin]

Configures the Cloud
Provisioning and Governance
application and sets up the
cloud infrastructure.

Service accounts and cloud
account
Networks and IPAM
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• IBM Cloud Update
• VMware Events

Governor

Monitors overall cloud usage
and enforces compliance
[sn_cmp.cloud_governor]
of the organization's rules,
quotas, and policies.
Also manages tags and
permissions to various
objects.

Governance:
• Policies
• Pools
• Quotas
• Permissions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
Descriptive name and
role name

Description and tasks

Service Designer

Creates blueprints, ARM and
CloudFormation templates,
[sn.cmp.cloud_service_designer]
and catalog items.

Access rights in Cloud
Provisioning and Governance

Cloud Service Design:
• Cloud templates
• Blueprints
• Blueprint catalog items
• Resource blocks

Cloud user

Requests and manages stacks Cloud User Portal.
and resources.
[sn_cmp.cloud_service_user]
When you assign the role to
a group, all members of the
group share quota limitations
and ownership of certain
resources.
You can access all the task
records, assigned to you or
otherwise, if you have the
cloud service user role.
Cloud operator

Monitors and troubleshoots
the Cloud Provisioning and
[sn_cmp.cloud_operator]
Governance application.

Dashboards and reports:
• Cloud Operations
Dashboard
• Cloud Root Cause Analysis
• Cloud Orchestration Trail
• Cloud API Trail

Cloud Event Integration

Authorizes access to the
instance for external services Cloud infrastructure:
[sn_cmp.cloud_event_integration]
that auto-update the CMDB
• Service accounts and cloud
when cloud events occur. This
account
Note: Not supported by role gives the access to the
• Networks and IPAM
IBM Cloud Connector.
cloud event REST endpoint.
Settings for provider services
that auto-update the CMDB:
• AWS Config
• Azure Alert
• Google Cloud Logging
• VMware Events
Cloud Group administrator

Grants admin access to any
group that you belong to.
[sn_cmp.cloud_group_admin]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
Related topics
Assign a role to a group
Assign a role to a user
Create the credential and service account that will access your VMware data
To securely access data on your provider account, the Discovery process must present
appropriate credentials. To make the credentials available to Discovery, you first create an
account in the VMware Console. You then securely store the credentials in a service account in
your instance.

Before you begin
Roles required:

• VMware Console administrator
• Cloud Provisioning and Governance: admin or sn_cmp.cloud_admin

About this task

Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Credentials.
2. On the Credentials tab, click New, select VMware Credentials, fill in the form, and then click
Submit.
VMware Credentials form fields
Field

Input value

Name

Unique and meaningful name for the credentials (for example, Cloud
Management VMware Credentials`).

Active

Select the check box to enable the credential for use.

User
name

User name for access to your vSphere account.

Password Password for access to your vSphere account.
3. Navigate to Cloud Admin Portal > Manage > Service Accounts, click New, enter a unique and
meaningful Name (for example, Cloud Provisioning Service Account), and then
fill in the form.
New Service Account for VMware
Account ID

There are two methods for determining the
value:
◦ If you have access to the managed object
browser for the vCenter (MOB): The
Account ID is the instance UUID. Open
the MOB and then click Content > About.
Paste the value of the instanceUuid
property in the Account ID field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
◦ If you do not have access to
the MOB, enter a temporary
alphanumeric text such as
5ca3033a-1290-4a02-8221-2c5f2f29be8b
in the Account ID field. In a step that
follows this table, you create the actual
value and then return to this form to
replace the temporary text with the actual
value.
Discovery credentials

Name of the credentials that you
created in the preceding step. Cloud
Provisioning VMware Credentials
in the example.

Datacenter URL

Full URL of the vCenter, for example:
https://<IP address>/sdk.

Datacenter Type

Select VMware vCenter datacenter
[cmdb_ci_vcenter_datacenter].

Datacenter discovery status

Auto-generated value: Status and timestamp
of the last execution of Discovery on the
datacenter.

Should pull events

Enables Cloud Provisioning and Governance
to collect events from resource types
in VMware vCenter datacenter in the
sn_cmp_cloud_event_list .

4. Click the Discover Datacenters related link.
Using the credential, Discovery accesses the vCenter at the specified URL to discover VMware
datacenters.
5. If you used the instance UUID value in the Account ID field, click Submit and skip the
remaining steps in this procedure.
The system creates the service account and displays the list of all service accounts.
6. On the Cloud Admin Portal, navigate to Operate > Trails.
7. On the Cloud API Trail tab, find the entry with the Method name value of ListDatacenters and
Provider name value of vmware-compute (typically the most-recent entry).
Open the entry.
8. On the CAPI Trail Logs related list, open the route_result entry.
9. In the Log value text box, copy the locationId value.
This value is the Account ID that you will paste into the form in the next step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
10. On the instance, navigate to Cloud Admin Portal > Manage > Service Accounts and then click
the service account that you created earlier (Cloud Provisioning Service Account
in the example).
11. Paste the locationId value (that you copied from the CAPI Trail Log form) in the Account ID
field on the form and then click Update.
12. Click Submit.
The system creates the service account and displays the list of all discovered datacenters.
Related topics
Discovery for VMware Cloud
Set up cloud accounts for VMware
A cloud account is the logical representation in Cloud Provisioning and Governance of all or part
of your managed cloud infrastructure. A cloud account can include multiple service accounts
— even service accounts from different providers. For each service account, you specify which
datacenters to include in the cloud account.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

See Cloud accounts for detailed information.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Click New, enter a unique and meaningful Name and Description, and then select the cloud
Provider for the account (VMware vCenter).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
3. Click Next.
Based on the provider you select, the Service Account field is populated and a list of
discovered datacenters appears. If no datacenters appear, click Discover Datacenters to find
them. See Discover all datacenters in a service account on-demand for details.
4. Select one or more datacenters to associate with the cloud account, click Save, and then close
the popup.
The Cloud Account dashboard appears. The datacenters that you selected appear on the
Datacenters tab.
5. Click a datacenter.
The following lists appear:
◦ Resources: Cloud resources for the current datacenter. Run Discovery to populate the
CMDB for the datacenter and populate the tab. See Discover all datacenters in a service
account on-demand.
◦ Capacity Limits: Limits on virtual CPUs, virtual networks, storage volume size, and other
services. Set capacity limits on user requests for resources
◦ Discovery Log: The process creates a log record for each action in an datacenter.

Note:
If you are on a domain separated instance, only those events that are updated to the
CMDB and belong to your domain are visible. Events create configuration items (CI) in the
same domain as the cloud service account they are mapped to.

What to do next

Repeat the process to create additional cloud accounts as needed. Run Discovery and set
capacity limits for each datacenter.
Add a datacenter to a cloud account
At any time, you can add a logical datacenter to the cloud infrastructure that is represented by a
cloud account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Open a cloud account, set the state to Draft, and then click Configure in the form header.
3. Click the Datacenters tab and then select the Service Account that holds the credentials that
enable access to the provider account that includes the datacenter to add.

When you select the service account, the list of discovered datacenters for the service
account appears.

Note: If the expected datacenters do not appear, click Discover Datacenters to update
the list. Discovery runs and displays all datacenters associated with the service account.
4. Select the datacenters to add and then click Save.
In the example, you select ap-northeast-2.

Result

The datacenters are added to the cloud account and appear on the Datacenters tab. When
Discovery runs, the resources in the datacenter appear on the Resources tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
New datacenter on the cloud account

Additional Cloud Provisioning and Governance setup on day 2
After you have performed Day 1 setup, you can perform optional setup and configuration
procedures as needed and in any order. Detailed instructions for each procedure follow this
overview.

Additional setup and configuration operations
Detailed instructions for each procedure follow this overview.
Set up an additional cloud account
A cloud account is the logical representation in Cloud Provisioning and Governance
of all or part of your managed cloud infrastructure. A cloud account can include
multiple service accounts — even service accounts from different providers. For
each service account, you specify which datacenters to include in the cloud
account.
Schedule discovery of all resources in a service account
Add a custom schedule for Discovery to discover all resources in each datacenter in
a service account and then update the CMDB with the new information.
You can use the discovery schedules as offered on the cloud discovery schedule
page.

Note:
Starting Xanadu release, any new user will run Pattern-based discovery, by
default. In scenarios where the latest patterns application is not installed,
discovery fails and the System Admin is prompted to install or migrate from
CAPI-based discovery.
Installing Cloud Discovery Workspace triggers automatic installation of the
latest patterns application.
For more information, see Migrate from CAPI to Patterns.
Discover all resources in a datacenter on-demand
At any time, you can run Discovery on a datacenter to update the CMDB.
Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the
number of virtual machines, virtual CPUs, or aggregate storage. You can set limits on
resources separately for each logical datacenter in a cloud account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Next steps
When you have finished all Day-1 and Day-2 procedures in this setup guide, see the Cloud
Provisioning and Governance administration guide for information on using the Cloud
Provisioning and Governance application in your organization.
Set up an additional cloud account
During initial installation, you set up one cloud account. To organize and compartmentalize your
infrastructure, you can set up additional cloud accounts to include different providers or service
accounts or datacenters.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

A cloud account is the logical representation in Cloud Provisioning and Governance of all or part
of your managed cloud infrastructure. A cloud account can include multiple service accounts
— even service accounts from different providers. For each service account, you specify which
datacenters to include in the cloud account. See Cloud accounts for detailed information.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Click New, enter a unique and meaningful Name and Description, select the cloud Provider
for the account (MyProvider in the example), and then click Next.

Based on the provider you select, the Service Account field is populated.
3. Select the appropriate Service Account.
A list of discovered datacenters appears. If no datacenters appear, click Discover Now. See
Discover all datacenters in a service account on-demand for details.
4. Select each of the datacenters that you want to associate with the cloud account, click Save,
and then close the popup.
The datacenters appear on the Datacenters tab for the cloud account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
5. When the datacenters appear, select one or more datacenters to include in the cloud account
and then click Save.

Note:
◦ Select only those LDCs/Regions where your infrastructure resources are present. If you
don't have any resources under these new data centers, exclude them while you run
the full discovery.
◦ To discover resources in regions/ LDCs such as, North America (US East, US West and
Canada Central), South America, Europe, Africa, Middle East and Asia Pacific, raise an
access request to the required endpoints with GCP Support.
The Cloud Account dashboard appears. The datacenters that you selected appear on the
Datacenters tab.
6. Click a datacenter.
The following lists appear:
◦ Resources: Cloud resources for the current datacenter. Run Discovery to populate the
CMDB for the datacenter and populate the tab. See Discover all datacenters in a service
account on-demand.
◦ Capacity Limits: Limits on virtual CPUs, virtual networks, storage volume size, and other
services. See Set capacity limits on user requests for resources.
◦ Discovery Log: The process creates a log record for each action associated with a discovery
status.
7. Repeat the process to add as many service accounts as needed.

What to do next

Repeat the process to create additional cloud accounts as needed. Run Discovery and set
capacity limits for each datacenter.
Discover using Cloud Operations Workspace and Patterns
You can now schedule and perform discovery using Cloud Discovery Workspace and Discovery
and Service Mapping Patterns.

Before you begin

Role required: System admin

About this task

Cloud Operations Workspace is now known as Cloud Discovery Workspace or CDW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
About this task
Procedure
1. Check if Cloud Discovery Workspace (CDW) is installed.
2. Navigate to Cloud Admin Portal > Manage > Discovery Schedules > ManageDiscovery
Schedules.
Follow these scenarios for next steps.
Scenario

Next steps

◦ Cloud Discovery Workspace isn't installed.
The page notifying that Cloud Discovery
Cloud Discovery schedules don't dis­
Workspace must be installed, displays.
play for System Admin login
◦ The page prompts to Go to Applications Manager
to allow installation
◦ Cloud Discovery Workspace isn't installed.
The page notifying that Cloud Discovery
Cloud Discovery schedules don't dis­
Workspace must be installed, displays.
play for sn_cmp Cloud Admin login
◦ The page requests to contact the system admin for
Cloud Discovery Workspace installation.
Cloud Discovery displays

Cloud Discovery schedules display in a new tab of
your browser.

3. Ensure that the sn_cmp cloud admin role contains the role
'sn_cloud_ops_ws.cloud_ops_admin'.
4. Navigate to Cloud Admin Portal > Manage > Discovery Schedules.
5. Click and confirm when Discovery Schedules open in a new tab.
6. Ensure that the sn_cmp Cloud Admin is able to view the Discovery Schedules page by default.

What to do next

Install and use the latest Discovery and Service Mapping Patterns, at least version 1.15, as the
default mechanism for performing Discovery.
Discover all datacenters in a service account on-demand
After you set up a service account, run Discovery to populate the datacenters in the account.

Before you begin
• A cloud account must exist with service accounts and associated datacenters. You must run
on-demand Discovery to discover datacenters before you can schedule Discovery.
• Use the Cloud Discovery Workspace, and at least version 1.15 of Discovery and Service
Mapping Patterns from the ServiceNow Store.
Role required: sn_cmp.cloud_admin

About this task

Cloud providers often use different names for accounts, regions, and credential settings.
Because the ServiceNow application supports several cloud providers, the app uses generalpurpose names for the settings. In the Google Cloud Platform, the region-specific containers
for virtual resources are called regions. In ServiceNow cloud data model, regions are called
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
datacenters or logical datacenters (LDCs). The term logical is used to reinforce the idea that
Cloud Provisioning is provider-agnostic. All infrastructure or applications that are deployed using
Cloud Provisioning are associated with a datacenter.
You can run Discovery on-demand.

Important: Use Cloud Discovery Workspace (CDW) to run the discovery schedule. The
discover datacenter UI action is legacy and the preferred approach is to setup schedules
from CDW.

Procedure
1. Navigate to the Cloud Service Accounts [cmdb_ci_cloud_service_account_list] table.
For more information on directly navigating to a table, see Navigate directly to a table

.

2. Select the service account whose LDCs you want to discover.
3. Select the Create Discovery Schedule related link.
4. Select Next.
5. Select Refresh Datacenters.
6. Select Cancel.
7. Select the service account whose LDCs you tried to discover.
On successful datacenter discovery, the Datacenter Discovery status field is set to YYYYMM-DD HH:MM:SS: Completed … Reload this form to see an updated
datacenter list.

Result

The discovered datacenters appear in the Logical Datacenters related list.
Related topics
Logs for horizontal discovery
Schedule discovery of all resources in a service account
Add a custom schedule for Discovery to discover all resources in each datacenter in a service
account and then update the CMDB with the new information.

Before you begin
• A cloud account must exist with service accounts and associated datacenters. You must run
on-demand Discovery to discover datacenters before you can schedule Discovery.
• Use the Cloud Discovery Workspace, and at least version 1.15 of Discovery and Service
Mapping Patterns from the ServiceNow Store.
Role required: sn_cmp.cloud_admin

About this task
• Scheduled Cloud Discovery discovers only datacenters that are part of the service account
when the schedule is created. If datacenters have been added since the time you created the
schedule, Discovery does not discover those datacenters. Delete the old schedule and create
a schedule every time the datacenters in a service account change.
• Discovery populates the CMDB with the discovered resources and updates the resource
information on the Resources tab. You can view Discovery results on the Discovery Log tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
Important: Use the Cloud Discovery Workspace to run the discovery schedule. The
discover datacenter UI action is legacy and the preferred approach is to setup schedules
from CDW.

Procedure
1. In the Cloud Admin Portal navigate to Manage > Discovery Schedules.
2. Select Add Cloud Schedule.
3. On the Add Account page, select the cloud Provider and enter a unique, descriptive Name for
the schedule.
4. In the Service Account section, select Select Account, specify the service account, and then
click Next.

Note: To create a service account, select Add Account and then fill in the form. For
details, see the process of setting up a service account in the Day 1 setup guide.
5. On the Select Datacenters page, specify which of the datacenters in the service account to
discover by moving the datacenters to discover into the Selected list or by selecting Discover
all datacenters listed below to move all datacenters to the Selected list.
6. Click Next.
7. On the Create Schedule page, you specify the time and frequency of discovery.

Note: Run time setting uses the system time zone.
Discovery schedule run options
Frequency

On Demand

Description

Doesn’t run on a schedule. Select Discover now to run Discovery. This is the defau

Daily

Runs every day. Use the Start time field to specify the time of day.

Weekly

Runs on one designated day of each week. Use the Start time field to specify the ti

Monthly

Runs on one designated day of each month. Use the Day field to select the day of t
to specify the time of day. If the designated day doesn’t occur in the month, the sch
example, if you designate day 30, the schedule doesn’t run in February.

Periodically

Runs every designated time. Use the Repeat Interval field to define the time in day
The first Discovery runs at the point in time defined in the Starting field. The subse
Repeat Interval period passes.

Once

Run one time as designated by the date and time defined in the Starting field.

Weekdays

Runs every Monday, Tuesday, Wednesday, Thursday, and Friday. Use the Start time

Weekends

Runs every Saturday and Sunday. Use the Start time field to select the time of day.

Month Last Day

Run the last day of every month. Use the Start time field to select the time of day.

Calendar Quarter End

Runs on March 31, June 30, September 30, and December 31. Use the Start time fi
change the dates, modify the DiscoveryScheduleRunType script include.

After Discovery

Allows you to sequentially stagger the schedule. Use this option to run this schedu
in the Run after field finishes. Select the Even if canceled check box to designate t
if the Run after Discovery is canceled before it finishes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
Frequency

Description

◦ This option isn’t valid when the Discovery is started via DiscoverNow, or when us
◦ You can’t designate an inactive Discovery schedule.

◦ You can’t create a loop by designating the run after Discovery to be the same Dis

◦ This Discovery doesn’t run if the Run after Discovery doesn’t finish, with the exce
check box is selected and the Discovery is canceled.
Cancel Discovery if
longer than

Time limit for running the Discovery. When the specified time elapses, the remainin
canceled even if the Discovery isn’t finished. If the check box isn’t selected, the Dis
setting constrains system load to a desirable time window.

8. Select Finish and Run Now.

Result

Discovery runs immediately. Discovery runs at the specified times and adds discovered
datacenters to the Logical Datacenters related list.
If you configured a Discovery schedule, it appears in the Discovery Config - Logical Datacenters
related list. To run Discovery on a single datacenter, add the datacenter to the Discovery
schedule in the related list, then run Discovery again.
Open a datacenter record to see the relationships between the datacenter and the resources in
the datacenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
Resources in an AWS datacenter

Note: By default, Discovery stores the discovered VM hardware types in the Hardware
Type [cmdb_ci_compute_template] table. If you notice an unusually large number of
records in this table, use the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table
to store the discovered VM hardware types. For more information, see Enable the Cloud
Hardware Type class extension. All Cloud Provisioning and Governance features, such
as provisioning, quotas, and so on continue to work as is after you switch to the Cloud
Hardware Type table.

What to do next
• To view discovery status, discovery logs, discovered devices, and the ECC queue, click
Advanced View.
• If Discovery fails, check the Cloud Discovery results on the Discovery Home page.
Discover all resources in a datacenter on-demand
At any time, you can run Discovery on a datacenter to update the CMDB.

Before you begin
• A cloud account must exist with service accounts and associated datacenters. You must run
on-demand Discovery to discover datacenters before you can schedule Discovery.
• Use the Cloud Discovery Workspace, and at least version 1.15 of Discovery and Service
Mapping Patterns from the ServiceNow Store.
Role required: sn_cmp.cloud_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
Procedure
1. In the Cloud Admin Portal, navigate to Manage > Cloud Accounts.
2. Click a cloud account and, on the Datacenters tab, select a datacenter.
The Resources tab lists the resources in the CMDB.

3. Change the state to Draft and then click Discover Now.
Note that Discover Now is disabled if neither CAPI or Patterns is installed. Follow these
scenarios to proceed.

Note: Discover now will also be disabled with an message suggesting you to install the
latest Discovery and Service Mapping Patterns. This can be fixed by installing version
1.15.1 at least or by triggering the manual migration step.
Scenario

Discover Now is disabled for System
Admin login

Discover Now is disabled for sn_cmp
Cloud Admin login

Next steps

◦ The page suggests that you must install the latest
patterns application to proceed.
◦ The banner at the top of the page prompts you to
visit Go to Applications Manager for installation
◦ The page suggests that you must install the latest
patterns application to proceed.
◦ The page requests to contact the system admin for
installation of patterns application.
Discover Now is activated.

Latest patterns application is in­
stalled

Note: Discovery will now use Patterns as the
default mechanism.

4. Run Discover Now and wait for Discovery to finish.
5. Change the state of the cloud account to Published.
Discover now will be disabled with the same message shown. This can be fixed by installing
1.15.1+ version or by triggering the manual migration step

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
Result

Discovery populates the CMDB with the discovered resources and updates the information on
the Resources tab. You can view Discovery results in the Discovery Log tab.

Note: By default, Discovery stores the discovered VM hardware types in the Hardware
Type [cmdb_ci_compute_template] table. If you notice an unusually large number of
records in this table, use the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table
to store the discovered VM hardware types. For more information, see Enable the Cloud
Hardware Type class extension. All Cloud Provisioning and Governance features, such
as provisioning, quotas, and so on continue to work as is after you switch to the Cloud
Hardware Type table.
Related topics
View the Discovery Log
Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the number of
virtual machines, virtual CPUs, or aggregate storage. You can set limits on resources separately
for each logical datacenter in a cloud account.

Before you begin
• A cloud account must exist with service accounts and associated datacenters. You must run
on-demand Discovery to discover datacenters before you can schedule Discovery.
• Use the Cloud Discovery Workspace, and at least version 1.15 of Discovery and Service
Mapping Patterns from the ServiceNow Store.
Role required: sn_cmp.cloud_admin

About this task

Note: You can also use quotas to set per-user and total capacity limitations on resources.
See Quotas and resource order controls.

Procedure
1. Navigate to All > Cloud Admin Portal > Manage > Cloud Accounts.
2. Click a cloud account, and then, on the Datacenters tab, select a datacenter.
3. Set the state to Draft.
4. On the Capacity Limits tab, set the Capacity Limit values as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Value

Description

Discovered

Total value discovered by the Discovery
process for all resources in the selected
service account.

Provisioned

Total value provisioned for the selected
service account.

Capacity Limit

Maximum allowed value calculated as the
sum for all resources in the selected service
account.

Unit

Unit of measure for the specified value. For
example, storage is measured in units of GB.

5. Click Update.
6. Set the state to Published.

What to do next

Click Discover Now to run Discovery on the logical datacenters.
Use owner and assignment groups
You must set up and use the user groups in Cloud Provisioning and Governance as a part of the
day-2 task.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
About this task

Owner group- This is used in quota management. During any stack provision, the user must
select the "User group" on the order form. A quota check is performed based on the user group
selected on the form, and this user group is later added as the stack 'Owner group' in the
sn_cmp_stack table. Quota checks can be defined at the user group level. For more details, see
Quotas and resource order controls.

Note: If the stack is deleted or the owner group field changes for the stack, the quota is
recalculated. The quota is recalculated in the business rule: Recalc Consumed Quota on
Stack Update.
Assign group- The discovery schedule runs bring the resources created from other instances
into your instance. These resources are unmanaged. Similarly, the 'Fill in tag assignments'
scheduled job creates unmanaged stacks. To manage these stacks and resources, you can
assign a change group to them.
Assign a change group to an unmanaged stack or resource, to make it visible in the Cloud User
Portal, enabling you to perform day 2 operations on this resource.

Procedure
1. Navigate to Cloud User Portal.
2. Click View Stacks and navigate to Discovered Stacks for unmanaged stacks.
3. Click View Resources and navigate to Virtual Machinesfor unmanaged resources.
4. Change the view to My Groups.
5. Select any of the virtual machines and perform day 2 operation.

Cloud Provisioning and Governance administration guide
After you set up the Cloud Provisioning and Governance application on your instance, there
are many items that you must configure before your users can request and manage any cloud
resources.

Requirements
Role required to use the Cloud Provisioning and Governance administration guide is
cloud_admin.

Before you begin
Set up Cloud Provisioning and Governance
See the appropriate setup guide for your cloud provider:
• Cloud Provisioning and Governance setup guide for AWS
• Cloud Provisioning and Governance setup guide for Azure
• Cloud Provisioning and Governance setup guide for VMware
.

What to do after setup
Create resource profiles
Resource profiles contain the attributes that a resource can have. Users select
values for these attributes when they order a cloud resource. You can configure
these types of resource profiles: Compute (such as the size of a VM), Operating
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
System (such as the type and version), Storage (such as backup), and Security
Groups (such as whether to use HTTPS). See Resource Profiles for more
information.
Configure governance
Governance tools that you can use to restrict the provisioning of cloud resources
include quotas and policies. Examples of things you can configure include the
approval subflow that is used after a user requests a cloud resource, whether
an email is sent after a cloud resource is stopped, and which datacenter should
be automatically selected when a user selects a resource from a specific cloud
provider. See Cloud Governance for more information.
Populate the Cloud Service Catalog
After you apply governance quotas and policies, create Service Catalog items. You
can create a catalog item in the following ways:
• Import a template from AWS or Microsoft Azure
• Use or modify a base-system catalog item
• Use a Terraform template
Domain separation and Cloud Provisioning and Governance
Domain separation is supported in Cloud Provisioning and Governance. Domain separation
enables you to separate data, processes, and administrative tasks into logical groupings called
domains. You can control several aspects of this separation, including which users can see and
access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Cloud Provisioning and Governance domain separation overview
All tables in Cloud Provisioning and Governance are not domain separated. Delegated domain
separation is not supported.
Domain separation for Cloud Provisioning and Governance supports:
Service Providers (SPs) using the application to provide data separation.
In this scenario, SPs can provide data separation to multiple customers, where
domains are necessary to contain all relevant customer data and processes.
For example, an SP provides support to customers who typically use Cloud
Provisioning and Governance to manage their IT infrastructure on the cloud. SPs
can provide catalogs, template profiles, resource pools, and filter, resource profiles,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
quotas, permissions, IP address management (IPAM), lease and business hours
scheduling, and a view to billing, as domain-separated offerings to their customers.

How domain separation works in Cloud Provisioning and Governance
Domain separation for Cloud Provisioning and Governance aligns one or more companies to a
domain. To use domain separation with the application, assign all user accounts to a specific
company associated with that domain.
All entities that are related to the company, such as cloud accounts and service accounts, are
created in the same domain as the company. When a new company is created, create a domain
with a unique name and assign it to the company. All related entities for an account, such as
contacts and cases, must reside in the same domain. When you create a related entity for a
domain-separated account, the entity is assigned to the company domain.
Members of a domain can only view the data that is contained within their domain or child
domains that are lower in the domain hierarchy. By default, all users and all records are members
of the global domain unless you assign them to a particular domain. Once you assign a user
or a record to a domain, the instance compares the user's domain to the record's domain to
determine whether the user can view the record.
Service Providers (SPs) use domain separation to segregate data for each customer. Users in
a given domain can only view the data in their own domains or in child domains. SPs typically
control the top-level domain, which allows them to view data that is associated with all domains.
Don't delegate administration to cloud admin users of the child domains in Cloud Provisioning
and Governance.

Set up domain separation for Cloud Provisioning and Governance
Ensure that you activate the following plugins:
Domain Support - Domain Extensions Installer plugin
(com.glide.domain.msp_extensions.installer) to enable domain separation in Cloud
Provisioning and Governance
Service Catalog - Domain Separation plugin
(glideapp.servicecatalog.domain_separation) to enable separation of catalog items
in different domains in Cloud Provisioning and Governance

Changes to Cloud Provisioning and Governance tables
Domain separation for Cloud Provisioning and Governance adds the Domain and Domain
Path fields to the list views. These fields are not exposed by default. As a domain admin
you can customize lists and forms to view these fields. Not all tables in Cloud Provisioning
and Governance are domain separated. While some top-level tables are domain separated,
several child tables are not domain separated. However, this does not impact how the Cloud
Provisioning and Governance application works in a domain-separated context.

Account domains and related entities
When you create related entities for an account, the domain for the related entities is set to the
account domain.

Domain visibility for cloud administrators and users
Manually assign users with the Cloud User Portal (sn_cmp.cloud_service_user) roles and
Cloud Admin Portal (sn_cmp.cmp_root_admin) roles for each domain to the TOP/MSP/
Default/Company or leaf domain. Domain administrators and users in Cloud Provisioning and
Governance can only view data in the domain that they are created in, until they are assigned to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
the TOP domain. The Top domain represents a single common parent domain, which acts as a
single parent node, for the Service Provider domains.

Next Steps
For more information on creating, implementing, and maintaining domain separation for Cloud
Provisioning and Governance services in the instance you are setting up for your customers, see
Domain separation in Cloud Provisioning and Governance - considerations for service providers.
Related topics
Domain separation for service providers
Domain separation in Cloud Provisioning and Governance - considerations for service
providers
Review the following considerations to effectively create, implement, and maintain domain
separation for Cloud Provisioning and Governance services in the instance that you are setting
up for your customers.
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.

How domain separation works in Cloud Provisioning and Governance
Domain separation for Cloud Provisioning and Governance aligns one or more companies to a
domain. To use domain separation with the application, assign all user accounts to a specific
company associated with that domain.
All entities that are related to the company, such as cloud accounts and service accounts, are
created in the same domain as the company. When a new company is created, create a domain
with a unique name and assign it to the company. All related entities for an account, such as
contacts and cases, must reside in the same domain. When you create a related entity for a
domain-separated account, the entity is assigned to the company domain.
Members of a domain can only view the data that is contained within their domain or child
domains that are lower in the domain hierarchy. By default, all users and all records are members
of the global domain unless you assign them to a particular domain. Once you assign a user
or a record to a domain, the instance compares the user's domain to the record's domain to
determine whether the user can view the record.
Service Providers (SPs) use domain separation to segregate data for each customer. Users in
a given domain can only view the data in their own domains or in child domains. SPs typically
control the top-level domain, which allows them to view data that is associated with all domains.
Don't delegate administration to cloud admin users of the child domains in Cloud Provisioning
and Governance.
Pool-Filter, Resource profile, Billing, Quota, Permissions, IPAM, Budget, and Notifications
are domain separated. Not all tables in Cloud Provisioning and Governance are domain
separated. While most top-level tables are domain separated, several child tables are not
domain separated. However, the fact that all tables are not domain separated, doesn’t impact the
working of the application in a domain-separated context.

Warning: Do not modify the blueprint-related tables directly in the table records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
Instance setup considerations for Service Providers
While domain separation provides multi-tenancy support, multi-tenancy is still contained within a
single instance. Some global properties, data, and processes are shared across all domains. The
following image illustrates domain separation hierarchy for unrestricted and restricted use cases.

Perform the following tasks to set up your domain-separated instance:
•

Create a domain.
◦ You can create as many domains as needed, but make sure that you don't
create unnecessary domains on the instance. A large number of domains on
the instance can impact performance. Before you create new domains, check
the domain hierarchy under Domain Admin > Domain Map. Check whether you
actually need to create a new domain, or an existing domain hierarchy can work
instead.
Select a primary domain to indicate the top-level domain in the domain map.
The Top domain represents a single common parent domain, which acts as a
single parent node, for the Service Provider domains. For more information, see
Select a primary domain .
◦ Create the SP domain under the top domain and set the domain as default.
Keeping your domains organized is a crucial part of the domain separation
process. Ensure that you are aware of the importance of setting a default.
The system automatically assigns task and user records that are not already
assigned to a domain to the default domain. For more information, see Make a
domain the default
for instructions on how to make a default domain.
◦ Create a domain hierarchy. For more information, see Create Domain
hierarchy .
Create a domain hierarchy that mirrors organization structures for grouping
under the top domain. Because you can perform discovery and provisioning
only from the leaf domain, set up leaf domains in the hierarchy that represent
concrete entities and organizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Based on the domain hierarchy, users have access to data in their home
domain and any child domains. The process flows down and the data bubbles
up. You can assign user records with a domain value that represents the user’s
home domain. While users have no access to data in parent domains, peer
domains, or domains in other branches of the hierarchy. A process that is setup
in a parent domain is applicable to all child domains. For more information, see
▪ Service provider reference architecture
▪ Domain separation architecture data
Customer data is affected based on domain hierarchies:
▪ Parent/child: Process and data affected
▪ Design that is based on a process flow.
▪ Remember that the parent domains can access all data in the child
domains.
▪ "Contains" domain: Only data is affected. For example, making SP in the
diagram contain TOP does not make processes in SP run in the TOP domain
and downward.
▪ Grants data access rights to individuals in groups that require dedicated
access to certain domains.
▪ Contains causes or conditions to be added to database queries that can
cause performance issues with large domain and data sets.
▪ Visibility: Hierarchy that is always visible to users once you provide access.
Only the data is affected, not the processes.
▪ Grants data access of a domain to another domain that did not have that
access when the parent-and-child hierarchy was built.
▪ Enables users to see all the data in the domains that they have visibility
access for, all the time, regardless of the record they are working on.

Note: Use sparingly, as Visibility can allow complete access that you
may not intend.
◦ Add a new company
You can add companies that represent vendors, manufacturers, or customers
with whom you do business. These companies provide a way to categorize
users, groups, and assets.
Create companies and leaf domains for each customer that you are supporting
on a single instance. Companies help you associate users to the domain.
Company and domain must have either one-to-one mapping or many-to-one
mapping. This makes assigning users to a domain easier and manageable for
SPs.

Important: When you create a company for each domain, use a prefix
with a unique identifier, such as "COMPANY_" or "ORG_".
To customize the ServiceNow instance for each company, you can enter
contact phone numbers, street addresses, and additional notes. You can also
customize the company logo and banner text that your end users see at the top
of each page. For more information see Create a new company profile .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
• Create user groups and assign roles and domain to the users of each new company. You
assign users to companies to associate them with domains. Associate a company with a user
to map the user to a domain.
1. Navigate to Organizations > Company, and click New to create new users. For more
information on creating users, see, Create a user

Note: Don’t use the manual-managed domain option to choose the domain for users.
2. Create groups and assign roles to the groups. Users that are assigned to the group inherit
the roles. You can create cloud user portal users for a company in the leaf domain. For more
information on creating groups, see Create a user group .
3. Create these users in each of the leaf domains:
▪ MID Server user for each leaf domain and company. Assign the mid_server role to MID
Server users.
▪ Domain admin for each leaf domain and company. Assign the sn_cmp.cmp_root_admin
role to cloud (domain) administrators.
▪ Domain user for each leaf domain. Assign the sn_cmp.cloud_service_user role to cloud
users.
▪ (Optional) Create users for additional roles in leaf domains (roles like designer, governor).
To provide limited visibility for certain domains to certain users, add them via groups. For
more information, see Grant visibility domains to an individual user .
4. Create a "contains" domain relationship between the SP domain and the TOP domain.

Note: By creating a "contains" relationship, you allow all the administrators in the
Service Provider domain to have access to all the domain data. Users of global domain
are unable to see data from card layout as by default expand domain scope is not
allowed.
For more information on how to control what specific users and what an entire domain of
users can view, see Visibility domains and Contains domains .

Next Steps
For more information on onboarding customers or companies in a domain-separated instance
for Cloud Provisioning and Governance services, see On-board a Company.
Related topics
Domain Separation
Understanding Domain Separation
On-board a Company
Review the following considerations to on-board customers or companies in a domain separated
instance, for Cloud Provisioning and Governance services.

Domain separation for Cloud Provisioning and Governance overview
Domain separation for Cloud Provisioning and Governance is designed to give Service Providers
a multi-tenant instance architecture that delivers offerings efficiently and securely to their
clients. Strong universal process standards, data-driven process design, strict governance, and
centralized administration maximize these benefits.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Customer On-boarding by Service Providers
• Create the MID Server user and grant the role

.

Domain Separation in Cloud Provisioning and Governance is achieved by installing and
configuring one or more dedicated MID Servers for each company/ domain that you are
managing in your instance. Specifying a MID Server for each domain/company, ensures that
Config Items (CIs) are assigned to the intended domain. Each domain has one or more MID
Servers setup for cloud discovery, provisioning, and other orchestration.

Note: Create a MID Server in the global domain so that you can explore targets in other
domains. For more information, see Set up domain separation for MID servers
The Management, Instrumentation, and Discovery (MID) Server is a Java application that
runs as a Windows service or UNIX daemon on a server in your local network. The MID Server
®
enables communication and the movement of data between a ServiceNow instance and
external applications, data sources, and services.
To communicate with the instance, MID Servers need a user ID and the appropriate role.
Create the user ID for a MID Server and grant the ID the mid_server role. To prevent MID
Server validation failure, the system runs business rules to monitor the settings selected for
MID Server users.
• Setting up the MID Server

.

For more information on setting up the MID Server, see:
◦ Installing the MID Server
◦ Configuring MID Servers
• Resource Blocks in Cloud Provisioning and Governance
Create Resource Blocks in global domain as there is a 1:1 relationship between CI and resource
block. Do not create resource blocks in any of the child or leaf domains. Resource blocks
act as a process record, so any template of a parent domain is visible and works in the child
domain.
Resource blocks act as a type of middleware component between catalog items, the Cloud API
(CAPI), and the CMDB.
◦▪ If the blocks in the base system do not provide the cloud resources that you need to
provision, you can create a custom resource block.
▪ In the Cloud Provisioning and Governance application, script execution is divided into
cloud scripts and cloud script templates. Use scripts in catalog items, resource blocks,
OS profiles, and use policy scripts to set request form attributes. Policy scripts cannot
override user data. For more information, see Cloud scripts and cloud script templates.
▪ Map a script to an OS profile
To execute scripted actions during VM provisioning, you can map a script to an OS profile.
The script runs on VMs that are created based on the image template in the OS profile.
◦ Define Resource Profile
Create resource profile definitions in the global domain, and create mappings to these
definitions in the child (leaf) domains. Do not delete resource profiles without checking with
all impacted companies. You can create domain-specific resource pools and pools filters for
all supported cloud providers. As a Domain admin you can see global, domain and custom
resource pools specific to sub-domains. A resource pool is a query or script that filters a
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
table. You configure a resource pool to limit the values that are available to users when they
request a catalog item. For domain separated resource pools only records of the relevant
domain are returned.
Resource profiles are cloud provider-agnostic definitions that specify the allowed attribute
values for a resource. Resource profiles enable you to control the choices that the user sees
when requesting a cloud resource. As a result, you do not need to define a unique blueprint
for each variation of the resource.
• Administer and set up Cloud Provisioning and Governance for Quota, Policies, Pools,
Permissions. Governance refers to the limitations that you can set on available cloud
resources. As an SP you could manage process separation in Cloud Provisioning and
Governance policies, and permissions for each company or domain you are managing in your
instance. Policies are recommended to be set up in global domain only. Process separation at
a domain level is achievable for governance and policies. For customized policy enforcement,
use company field in the policy rule condition to target a policy towards the particular domain.

Type

Description

Quotas

Quotas are limitations or requirements for groups and users on CIs
or cloud resources. Use quotas to prevent wasteful resource usage
in your cloud environment.

Policies

A cloud policy can override a property value set by a user, create
an approval task, reserve an IP address, pre-populate or hide
form fields, execute custom scripts, call the Cloud API, or start or
abort subflows. A cloud policy gives you system-wide control over
approvals, resource operations, blueprint operations, or catalog item
settings.

Pools

A resource pool is a query or script that filters a table. You configure
a resource pool to limit the values that are available to users when
they request a catalog item.

Permissions

Permissions are user group-level access rights to features in the
Cloud Provisioning and Governance application and to specific
records in the instance, such as blueprints or cloud accounts.

Permissions are user group-level access rights to features in the Cloud Provisioning and
Governance application and to specific records in the instance, such as catalog items or cloud
accounts. You could also set up basic governance policies, quotas, pools, and allow the cloud
admin user to further customize them based on their needs. Create a user-group representing
the domain users and associate permission to this user group, to set up permissions at a
domain level. For more information on managing permissions for Cloud Provisioning and
Governance roles, see Manage Cloud Permissions.
• Configure and manage policies and manage lease for provisioned stack. A policy rule is
a collection of conditions and actions. If all conditions evaluate to true, the policy engine
performs the actions. If any condition evaluates to false, the policy engine does not perform
the actions.
Set up policies in global domain only when you want the policies to apply to all domains. You
can customize Cloud Provisioning and Governance and set policies specific to a customer or
a domain, if you don't want global policies to apply to a domain. Use the domain field in policy
rule condition to target policy towards the particular domain, to enable customized policy
enforcement. When global and domain policies co-exist, both policies are executed in the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
sequence of the order configured for each policy. In case the values set in the order columns
are same, the sequence in which the policy is executed is undetermined. Ensure that policy
actions are domain separated, that is all action rules are within a single domain, and do not
depend on rules in other domains.
For more information, see:
◦ Policy governance in Cloud Provisioning and Governance
◦ Configure a cloud policy rule
◦ Create an action for an 'on Lease end' policy
◦ Cloud policy example
• Create a cloud catalog item
Create a cloud catalog item for provisioning, based on a template and publish the catalog item
to provide a service.
You can create common or global catalogs items based on templates, at the SP domain,
making it available for all domains you're managing. You can also create custom catalog items
for each domain/company based on your requirements. A user with domain admin/cloud
designer roles, can update or delete cloud scripts and cloud script templates belongs to
domain and sub-domains. You cannot use common catalogs with different pool-filter for each
domain. Create a custom catalog for each domain instead.
Deployment, post-provisioning, and Day-2 operations are domain separated. For example, if a
cloud portal user from a specific company orders a VM, the stack, the request, virtual machine,
and all components in the stack are stored in its respective domain. Subsequent operations
for a domain are also handled in same manner. You can generate a catalog item based on
Terraform configuration management template, or use Azure Resource Manager and AWS
CloudFormation templates.
• Create Cloud Templates
Do not add sensitive and private information such as CIDR values, IP addresses, credentials,
etc, to the template content, if setting up the catalog item as a global catalog item. The
sensitive information could be exposed to other cloud admins.
Create a cloud template and associate the template with a catalog item. Once you've created
a template, you can reuse the template to create additional catalog items for the services you
want to provision.
• Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the number of
virtual machines, virtual CPUs, or aggregate storage. You can set limits on resources separately
for each logical datacenter in a cloud account.
• Create a cloud quota definition
You can set up separate quota definitions for each domain you're managing in an instance.
You apply quotas to a resource, such as a virtual server, datacenter, or a generic cloud
resource, and to users of a particular group. You can set a per-user limit, and a total limit for the
group for the resource. A cloud quota definition specifies the limitations on a resource block.
You can use templates or manually create different types of configurations for each quota
definition.
• Using the IPAM integration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
IP address management (IPAM) in Cloud Provisioning and Governance supports domain
separation.
If you use an IP address management (IPAM) tool such as Infoblox, you can manage cloud IP
addresses, networks, and subnets in your cloud catalog offerings.
• Business hours scheduling
Set up business hour scheduling on all virtual machines in a stack. Business hour scheduling
can be set up on stacks at the time of provisioning or on existing stacks. Schedules can be set
for when a stack should be started, stopped, and/or deprovisioned by defining parameters
such as business hours, holidays, long weekends.
You map a schedule profile to an instance schedule. The schedule profile applies to all newly
provisioned resources that use the profile. For example, a schedule profile can specify the
days of the week and times of day when a stack should start and stop.

Note: Global Business schedules apply to all domains. You cannot set up domainspecific schedules if an active global schedule exists.
• Create a schedule profile
To set up domain-specific lease schedules ensure that no global lease schedules exist. You
can only create a domain-specific lease or schedule when no active global policies exist.
While you can have multiple leases or schedules in draft state, only one lease or schedule can
be active.

Next Steps
For more information on provisioning cloud resources, and making Cloud Provisioning and
Governance life-cycle operations available for each domain that you are managing in your
instance for, see Domain admin considerations.
Domain admin considerations
Before configuring domain separation for customers, ensure that you review the following
considerations ahead of provisioning cloud resources for each domain you are managing in the
Cloud Provisioning and Governance application.

Domain administrator activities in a Service Provider's organization
The following section lists activities that a domain's administrator performs for the company that
a Service Provider manages. Set up service accounts and cloud accounts using the Cloud Admin
Portal. Create pre-provisioning operations that you can configure for cloud resources before your
users provision them or perform life-cycle operations.
Strong universal process standards, data-driven process design, strict governance, and
centralized administration maximize the benefits of domain separation in Cloud Provisioning
and Governance in a single instance. The domain admin role must strictly be restricted to users
in the Service Provider's organization, and not be assigned to the Cloud Admin users from the
customer's organization. This restriction enables the SP to ensure that a customer does not get
full access to other domain's data. Since data is often shared across multiple clients, as domain
admins, don't expose or provide permissions that could result in data leakage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Provisioning Cloud resources
• Ensure that you map relevant service accounts to cloud accounts in each domain. For
instance, discovering a primary subscription from Azure cloud creates one or more child
service accounts and are created in the same domain. This means that all service accounts in
a master subscription from Azure cloud must belong to a single company and domain alone.
Log in using a user with a root_admin or cloud_admin role, while setting up cloud and service
accounts and running discovery for any domain. Use the domain picker while performing
actions such as discovery or cloud and service account creation and mapping.

Note:
◦ Cloud Provisioning and Governance does not support the expand and collapse
domain scope capability.
◦ For more information on what a user can and cannot access, see Domain Scope
A service account is a secure record on your instance that stores the credential and access
information for your provider account. Discovery uses the information to access your provider
account to get data on each resource in each specified datacenter. A cloud account is the
logical representation in Cloud Provisioning and Governance of all or part of your managed
cloud infrastructure. A cloud account can include multiple service accounts — even service
accounts from different providers. For each service account, you specify which datacenters to
include in the cloud account.
Ensure that management keys and service account credentials are unique to each domain and
are not shared. To set up cloud accounts and service accounts for multiple cloud providers,
perform Day 1 Setup actions:
◦ Day 1 setup guide for Amazon Web Services on Cloud Provisioning and Governance
◦ Day 1 setup guide for Azure on Cloud Provisioning and Governance
◦ Day 1 setup guide for Google Cloud Connector on Cloud Provisioning and Governance
◦ Day 1 setup guide for VMware on Cloud Provisioning and Governance
• Cloud API (CAPI) and Cloud scripts and cloud script templates
CAPI is not domain separated as, domain separation support in Cloud Provisioning and
Governance. Since CAPI is set up at a global domain and shared across leaf domains,
ensure that scripts do not contain hard-coded sensitive information such as account details,
credentials, or names even in comments or annotations.
CAPI enables you to integrate Cloud Provisioning and Governance with cloud providers
using REST APIs. Cloud scripts are simple java scripts that use platform features. In the Cloud
Provisioning and Governance application, script execution is divided into cloud scripts and
cloud script templates. Use scripts in templates, resource blocks, OS profiles, and use policy
scripts to set request form attributes. Policy scripts cannot override user data. Cloud script
templates are actual executables which are passed to target a virtual machine for execution.
Create a cloud template first and then associate it with a cloud script.
• Cloud Discovery
Service Providers (SPs) use domain separation to segregate data for each customer. Users in
a given domain have visibility only to the data in their own domains or in child domains. SPs
typically control the top-level domain, which gives them visibility to data associated with all
domains. Though domain separation support for Discovery is considered Level 2, there is no
delegated administration to the child domains in Cloud Provisioning and Governance. The SPs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
must retain administrative control. As a SP, always run discovery from a leaf domain by logging
in as or impersonating a domain administrator to discover your cloud resources.
Cloud Discovery provides a wizard that allows you to create and run cloud schedules in a
single interface. When you create a schedule with the Discovery Manager, you select the
accounts to discover, the credentials for accessing these accounts, and the MID Servers to
scan the resources. You can then view the results in the Discovery Home page and track any
errors that might have occurred.
For more information see,
◦ Discovery Manager
◦ Running discoveries in your network
▪ Microsoft Azure Cloud Discovery
▪ VMware Cloud Discovery
▪ Google Cloud Platform Discovery
▪ IBM Cloud Discovery
• Set up and configure event management to receive external events and generates alerts
based on event and alert management rules. The visibility of events depends on the
associated service account's domain. Only users belonging that domain can see the event
details for processed events. Events that are not associated to a service account are visible to
all domains.
Monitor the health of business services and infrastructure using a single management console
and respond appropriately to any issues that come up. Event Management provides intelligent
event and alert analysis to ensure continuity of your business service performance. Event
Management receives and processes events via the MID Server.
For more information, see
◦ Exploring Event Management
◦ Event Management Setup
▪ Configure the AWS Config service to send event notifications to the ServiceNow instance
▪ Configure the Microsoft Azure Alert service to auto-update the CMDB
▪ Configure the Google Cloud Logging service to auto-update the CMDB
▪ Configure the VMware Events service to auto-update the CMDB
• The Cloud Provisioning and Governance application supports integration with continuous
delivery solutions (also known as configuration management). Create an Ansible or
Terraform configuration management provider and then run Discovery on the provider to
find its resources. For more information, see Support for continuous delivery (configuration
management) and Create a workload provider type for each new configuration management
provider. This information appears in the order catalog form as management attributes
that your users can select when provisioning a virtual resource through a configuration
management provider.
• If you are creating catalogs based on terraform templates and sharing the catalog with multiple
domains. Perform module listing (config discovery) in the global domain. The MID Server
should be created in the global domain and should only be assigned with Terraform capability
for its discovery. This allows SPs to share catalogs with multiple domains.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
Warning:
Don't create a global MID Server with any other capability other than configuration
management for Terraform.
Create a common terraform catalog and share it with multiple customers:
◦ Create MID Server in global domain as a global admin.
◦ Create a Terraform Open Source config provider.

Note: Add only “Terraform” as the config provider.
◦ Create a catalog item based on a Terraform template.
• Cloud Provisioning and Governance supports using ServiceNow AI Platform with subflows.
Rules are collections of conditions and actions. If all conditions of a rule evaluate to true, the
system performs the actions. If any condition evaluates to false, the system does not perform
the actions. Creating rules helps you track activities and more quickly respond to and resolve
issues. Take advantage of the flow designer subflow to automate your Day 2 operations.
Quickly write a subflow that communicates with a Cloud API or a particular resource. Use SSH,
PowerShell, or a similar tool, to access and then extend the subflow capabilities. For more
information, see Day 2 operations using subflows.
• Budget-based notification and approval
Domain Separation in Cloud Provisioning and Governance supports data separation of
budgets. You can assign domain-specific budgets. Assign a budget for a group and a user
within the group. When the user or group reaches the budget limit threshold, notifications are
sent alerting them about it. For more information, see Configure budgets
◦ Create Tags for cloud resources
Tags categorize cloud resources to provide richer and more detailed tracking and billing
report data. Tag keys are not domain separated and are shown to users of other domains.
Tag visibility depends on the associated CI domain or associated billing record domain. Tags
that are not associated to any CI or billing record are visible to all domain admins. When
a tag is created, it shows up in any new catalog that you create. The cloud admin has to
choose the tags they want for their catalog.
◦ Billing data can be viewed separately for each domain. Billing jobs use the domain of service
account configured. Configure the Billing setup to enable cloud admins and cloud users to
view reports like cloud billing data and cloud tag usage on the billing dashboard.
Define the scheduled job that regularly uses a MID Server to download billing data from the
provider. Cloud Provisioning and Governance saves the data in a cost table and uses the
information to generate reports.
For more information on setting up billing schedules and downloading billing reports, see:
▪ Define the schedule for downloading AWS billing data
▪ Define the schedule for downloading Azure billing data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Next Steps

Important:
While creating custom operations invoking workflows on resource blocks, ensure that you
change the context to the appropriate domain.
To change the context to the right domain, edit the Workflow Activity to call the following
script from within the workflow. Ensure that an appropriate user is obtained from the Service
Account creator, or the order user. Invoking this impersonation script enables the workflow
to be executed in the correct context and choose the right MID Server belonging to the
associated domain.
//var orderContext =
json.decode(workflow.inputs.ordercontext) ;
new
CMPDomainSeparationUtil() .impersonateUser(current.request.
requested_for);
For more information on performing Cloud Provisioning and Governance life-cycle operations
that are available for each domain that you are managing in your instance, see Cloud User Portal.
Related topics
Additional Cloud Provisioning and Governance setup on Day 2
Discovery patterns used by ITOM Visibility
Cloud Provisioning and Governance Recipes
Multi-cloud recipes provide ready content for typical cloud deployment and common operations
scenarios across cloud platforms.

Recipes for Enterprise Workloads and Day-2 Operations
Cloud Provisioning and Governance recipes are ready-to-use catalog items built from sample
CFT and ARM templates to support real-world cloud deployment use-cases. These recipes
are ready for use in Proof of Concept as well as non-production environments. For production
environments, ensure that the recipes are well tested and internally evaluated. You can avail the
recipes, as update sets, to be downloaded from the SHARE in the developer portal under the
Cloud Provisioning Recipes category.

List of Update Sets
Name

Description

Catalog Items for Amazon Web Service
CFT Single Linux VM

Catalog Item for a single Linux Virtual Machine using CFT.

CFT Single Windows VM

Catalog Item for a single Windows Virtual Machine using CFT.

CFT Linux VM with Multiple
NICs

Catalog Item for a Linux Virtual Machine with multiple network
interfaces using CFT.

CFT Linux VM with LB and
Storage

Catalog Item for a Linux Virtual Machine with load balancing and
storage using CFT.

CFT Linux VM with Multi VM
Multi Disk

Cloud Formation Template for a Linux VM with multiple VMs and
multiple virtual disk interfaces.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
Name

Description

CFT Linux Install Apache

Catalog Item to install an Apache server on a Linux VM using
CFT.

CFT Simple VM with
Approval Policy

Catalog Item for a simple VM with an approval policy, using CFT.

CFT Windows VM Multi Disk
and LB

Catalog Item for a Windows VM with multiple virtual disk
interfaces and load balancing, using CFT.

Catalog Items for Azure
ARM Windows VM with Multi
NICs

Catalog Item for a Windows VM with multiple network interfaces
using ARM template.

ARM Windows Single VM
Multi Disk

Catalog Item for a single VM with multiple virtual disk interfaces,
using ARM template.

ARM Windows Stack Multi
Disk

Catalog Item for a Windows stack with multiple virtual disk
interfaces, using ARM template.

ARM Windows Stack Multi
NIC

Catalog Item for a Windows Stack VM with multiple network
interfaces, using ARM template.

ARM Linux VM Multi NIC
Multi Disk

Catalog Item for a Linux VM with multiple virtual disk and
network interfaces, using ARM template.

ARM Linux VM Install
Apache

Catalog Item to install an Apache server on a Linux VM, using
ARM template.

ARM Linux VM Install MySQL Catalog Item to install a MySQL server on a Linux VM, using
ARM template.
ARM WebApp MySQL

Catalog Item to build a Web app with Azure database for
MySQL, using ARM template.

ARM VNET Multi Subnet with Catalog Item for multi subnet VNET with approval policy, using
Approval Policy
ARM template.
ARM VNIC Multi Subnet with
Naming Policy

Catalog Item for multi subnet VNIC with a naming policy, using
ARM template.

Day 2 Operations for AWS VM
An update set is provided for some of the important Day 2 operations on AWS cloud provider.
Broadly, Day 2 operations are the type of operations that are executed on workloads after they
are provisioned. Day 2 operations can include complex life-cycle processes or simple utilities. In
this update set, you have access to the following set of operations:

Name

Description

AttachVolume

Attaches and exposes an Amazon (Elastic Block Store) EBS volume
to the instance with the specified device name.

CreateSnapshot

Creates a snapshot of your Amazon (Elastic Block Store) EBS volume.

[AWS datacenter level
discovery operation]
DescribeSnapshots

Describes the specified Amazon (Elastic Block Store) EBS snapshots
available to you or all EBS snapshots available to you.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
Name

Description

DetachVolume

Detaches an EBS volume from an instance.

ModifyInstanceAttribute Modify the specified attribute of the specified instance.
[Only InstanceType]
ModifyVolume
[Only Size]
Day 2 Operations for
AWS VM – Set 1

Modify parameters of an existing Amazon (Elastic Block Store) EBS
volume.
Catalog Item for Day 2 operations for an AWS VM, Set 1.

Cloud accounts
A cloud account is the logical representation in Cloud Provisioning and Governance of all or part
of your managed cloud infrastructure. A cloud account can include multiple service accounts
— even service accounts from different providers. For each service account, you specify which
datacenters to include in the cloud account.
From a cloud account, you can:
• Add LDCs. A logical datacenter (LDC) is a region-specific virtual cloud that is associated with a
service account. The datacenter hosts your cloud resources.
• Run Discovery on LDCs to update the CMDB with configuration changes or life cycle changes
(create/modify/terminate) for each resource in each logical datacenter (LDC) that is associated
with the cloud account.
• Set capacity limits on cloud services like virtual machines, virtual CPUs, virtual networks,
aggregate storage volume size, and others. Set limits to help ensure that cloud resources are
provisioned at appropriate scales. Limits are especially important for capacity-constrained
environments like private clouds.
• Publish a cloud account to enable business teams to deploy stacks.

Structure of a cloud account
An advantage of cloud accounts is that you can group specified service accounts with only the
regions (datacenters) that you want to allow cloud resources in. For example, your AWS account
could have more than a dozen datacenters globally. However, you might use only one or two
regions. To conform with your security and compliance rules, you might not want any resources
provisioned to additional regions around the world.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
A cloud account can contain as many service accounts as necessary in the following scenarios:
Possible cloud account structures
Structure

Add the same service account as many times as necessary,
provided each entry is associated with a different LDC.

Supported

X

Add the same LDC from different service accounts in one cloud
account.
Add different LDCs from different service accounts to a particular
cloud account, provided the regions are not the same.

Not
supported

X
X

Example: You have us-west-1 in serviceaccount1 and us-west-2
in serviceaccount2. Both can be added to cloudaccount1.
However, both us-west-1 in serviceaccount1 and us-west-1 in
serviceaccount2 cannot be added to cloudaccount1.

Update a cloud account
You keep a cloud account in the Draft state until you are ready to make the datacenters and
capacity limits available for use — in blueprints and the Cloud User Portal, for example. You can
change the state to Published after you run Discovery.

Set up an additional cloud account
See Set up an additional cloud account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
Add a datacenter to a cloud account
At any time, you can add a logical datacenter to the cloud infrastructure that is represented by a
cloud account. See Add a datacenter to a cloud account.

Set capacity limits on user requests for resources
Capacity limits place restrictions on the attributes of cloud resources such as the number of
virtual machines, virtual CPUs, or aggregate storage. You can set limits on resources separately
for each logical datacenter in a cloud account.
Set capacity limits on user requests for resources
Service categories discovered in AWS
The Discovery process discovers AWS services.

Services categories discovered in AWS
Service
Category

Name

CI Class

Compute AWS::CloudFormation::Stack

cmdb_ci_aws_cloudformation_stack

Database AWS::Datacenter

cmdb_ci_aws_datacenter

Security

Pattern

Produ

AWS
Clou

AWS::DirectoryService

AWS
Serv

Compute AWS::EC2::EIP

cmdb_ci_cloud_ip_address

AWS
Com

Compute AWS::EC2::Image

cmdb_ci_os_template

AWS
Com

Compute AWS::EC2::Instance

cmdb_ci_vm_instance

AWS
Com

Compute AWS::EC2::InstanceType

cmdb_ci_compute_template

AWS
Com

Security

AWS::EC2::Keypair

cmdb_ci_cloud_key_pair

AWS
Mana
Serv

Network

AWS::EC2::NetworkInterface

cmdb_ci_nic

AWS
Priva

Compute AWS::EC2::SecurityGroup

cmdb_ci_compute_security_group

AWS
Com

Network

AWS::EC2::Subnet

cmdb_ci_cloud_subnet

AWS
Priva

Storage

AWS::EC2::Volume

cmdb_ci_storage_volume

AWS
Block

Network

AWS::EC2::VPC

cmdb_ci_network

AWS
Priva

Load
Balancer

AWS::ElasticLoadBalancing::LoadBalancer

cmdb_ci_cloud_load_balancer

Amazon
AWS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278

AWS
Load


<!-- page 279 -->
Service
Category

Name

CI Class

Pattern

Produ

Elastic
Load
Balancer
Service
Load
Balancer

AWS::ElasticLoadBalancingV2::LoadBalancer cmdb_ci_cloud_load_balancer

Amazon
AWS
Elastic
Load
Balancer
Service

Database AWS::RDS::DBEvent

AWS
Load

AWS
Data
Serv

Database AWS::RDS::DBInstance

Availability zone

cmdb_ci_cloud_database

Amazon
AWS
AWS
Data
Relational Serv
Database
Service

cmdb_ci_availability_zone

AWS
Zone

Note: The full list of classes/resources matching can be found in the Cloud Resource
Types [sn_capi_resource_type] table.
Service categories discovered in Azure
The Discovery process discovers Microsoft Azure services.

Services categories discovered in Azure

Note:
The CAPI-based discovery method is deprecated. Follow Migrate from CAPI to Patterns for
more information.

Service
Category

Name

CI Class

Azure Datacenter

cmdb_ci_azure_datacenter

Azure Subscription

cmdb_ci_cloud_service_account

Cloud Resource

cmdb_ci_cmp_resource

Pattern

Product

Application Microsoft (Unknown
Services
Resource Type)

Microsoft (Unknown
Product)

Application Microsoft.ApiManagement/
Services
service

Microsoft.ApiManagem

Application Microsoft.Cache
Services

Microsoft.Cache

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
Service
Category

Name

CI Class

Application Microsoft.Web/
Services
serverFarms

Pattern

Product

Microsoft.Web

Application Microsoft.Web/sites
Services

cmdb_ci_cloud_webserver

Microsoft.Web

Compute

Microsoft.Compute/
availabilitySets

cmdb_ci_availability_zone

Microsoft.Compute

Compute

Microsoft.Compute/images cmdb_ci_os_template

Microsoft.Compute

Compute

Microsoft.Compute/
virtualMachines

Microsoft.Compute

Compute

Microsoft.Compute/
virtualMachineScaleSets

Microsoft.Compute

Compute

Microsoft.ServiceFabric/
clusters

Microsoft.Compute

Compute

Microsoft.Compute/vmSize cmdb_ci_compute_template

Microsoft.Compute

Compute

Microsoft.Resources/
deployments

cmdb_ci_azure_deployment

Microsoft.Compute

Compute

Microsoft.Resources/
resourceGroups

cmdb_ci_resource_group

Microsoft.Compute

Database

Microsoft.DocumentDB

Database

Microsoft.Sql/servers

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.sql/
managedInstances

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.dbformysql

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.documentdb/
databaseaccounts

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.cache/redis

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.dbforpostgresql/
servers

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

microsoft.dbformysql/
servers

cmdb_ci_cloud_database

Azure
Microsoft.Sql
Database

Database

Microsoft.Sql/servers/
databases

cmdb_ci_database

Azure
Microsoft.Sql
Database

Load
Balancer

Microsoft.Network/
loadBalancers

cmdb_ci_cloud_load_balancer

Network

Microsoft.Network/
applicationGateways

Network

Microsoft.Network/
networkInterfaces

cmdb_ci_vm_instance

Microsoft.DocumentDB

Microsoft.LoadBalance
Microsoft.Network

cmdb_ci_nic

Microsoft.Network

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
Service
Category

Name

CI Class

Network

Microsoft.Network/
networkSecurityGroups

cmdb_ci_compute_security_group

Microsoft.Network

Network

Microsoft.Network/
publicIPAddresses

cmdb_ci_cloud_public_ipaddress

Microsoft.Network

Network

Microsoft.Network/
routeTables

cmdb_ci_route_table

Microsoft.Network

Network

Microsoft.Network/subnets cmdb_ci_cloud_subnet

Microsoft.Network

Network

Microsoft.Network/
virtualNetworks

Microsoft.Network

Security

Microsoft.Security

Storage

Microsoft.Storage/blobs

cmdb_ci_storage_volume

Microsoft.Storage

Storage

Microsoft.Storage/
storageAccounts

cmdb_ci_cloud_storage_account

Microsoft.Storage

Tools

Microsoft.Insights/
components

Microsoft.Insights

Tools

Microsoft.ServiceBus

Microsoft.ServiceBus

cmdb_ci_network

Pattern

Product

Microsoft.Security

Cloud Admin Portal
The Cloud Admin Portal is a role-based portal. You can manage, design, govern, operate, and
analyze all your cloud resources from a unified base.
Depending on the role you are logged in with, the Cloud Admin Portal displays different metrics.
As an example, if you are logged in to the Cloud Provisioning and Governance application as a
Cloud Service Designer, the Cloud Admin Portal displays only the Design metrics.

Starting this release, you can now use the Dashboards link on the left navigation pane of Cloud
Admin Portal to access these Next Experience dashboard pages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Find the link to these dashboards on a new tab based on your user role:
• Cloud root cause analysis dashboard
• Cloud operations dashboard
• Cloud tag values dashboard
Follow Request the Cloud Provisioning and Governance application to learn more about
installing Cloud Provisioning and Governance to access the admin and user pages. Log in to
the portal with the following Cloud Provisioning and Governance roles to view or manage the
associated metrics:

Descriptive name and role name

Access to the metrics in Cloud Admin Portal

Root administrator

All the metrics.

[sn_cmp.cmp_root_admin]

• Overview
• Manage
• Design
• laC
• Govern
• Operate
• Analyze
• Guided Setup

Cloud administrator

Managethe metrics.

[sn_cmp.cloud_admin]

• Overview
• Manage

System administrator

All the metrics.

[admin]

• Overview
• Manage
• Design

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
Descriptive name and role name

Access to the metrics in Cloud Admin Portal

• laC
• Govern
• Operate
• Analyze
• Guided Setup
Governor

• Govern

[sn_cmp.cloud_governor]

• Analyze

[sn_capi.cloud_developer]

• Design

Service Designer

Design

[sn.cmp.cloud_service_designer]
Operator

Operate

[sn_cmp.cloud_operator]
Only the Root administrator, the Cloud administrator, and the System administrator roles can
view and manage all the metrics in the Cloud Admin Portal.
Click Guided Setup to configure the Cloud Provisioning and Governance application on your
ServiceNow instance. You are guided through completing various configuration tasks. The
percentage of the tasks that you have completed is displayed for you to monitor your progress.
Click Get Help to ask a question, open an incident, go to the product documentation or the
Knowledge base website.
Resource Profiles
Resource profiles are cloud provider-agnostic definitions that specify the allowed attribute values
for a resource. Resource profiles enable you to control the choices that the user sees when
requesting a cloud resource. As a result, you do not need to define a unique blueprint for each
variation of the resource.

Note: In addition to the cloud-agnostic profiles, you can add provider public images to
the Cloud Provisioning and Governance catalog. See Add an AWS public image to Cloud
Provisioning and Governance and Add an Azure public image to Cloud Provisioning and
Governance.

Example: Compute profile
You might create a compute profile named Micro and map it to a "micro" hardware type, with
specified values for memory and CPU. Later, when a user selects a compute resource while
requesting a virtual server, Micro appears as an option in the list of available compute resources.
The user does not need to specify values for memory and CPU — the values come from the
profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
Compute profile on the request form

Resource Profile mappings
Resource profiles create mapping associations between the following items:
• A cloud account.
• A logical datacenter in the cloud account.
• A specific resource type in the CMDB that provides the attributes.
• Optional: A pricing value that appears to users when they request a resource that uses the
resource profile.
By default for AWS and Azure, Cloud Provisioning and Governance maps profiles to templates
after Discovery runs. For other providers, such as Google cloud, you must manually associate the
profile with the correct template and datacenter.

Resource types
Each resource profile has associated attributes. The attributes depend on the resource types
that are populated after you run Discovery on a cloud account.

Resource profile type

Description and attributes

Resource type and template

Application profile

An application profile specifies
application software to install on
newly-provisioned resources. Users
can select applications when they
request a stack. Use application
profiles when you integrate
with configuration management
(continuous delivery) providers such
as Ansible playbooks.

Application Template
[sn_cmp_application_template]

Attributes: Applications running on
virtual machines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
Resource profile type

Description and attributes

Resource type and template

Compute profile

A compute profile specifies
the hardware to use for newlyprovisioned virtual machines.

Hardware Type
[cmdb_ci_compute_template]

Attributes: The size of computing
resources, including the virtual
CPUs, memory, and local storage.
Compute Security Group
profile

A compute security group profile
applies specified security rules
to newly-provisioned resources.
You map a compute security
group profile to a cloud account,
a datacenter, a Compute Security
Group template, and security rules
for the template.

Compute Security Group
Template
[cmdb_ci_security_grp_template]

Attributes: Firewall rules, such as
enabling HTTP and HTTPS.
OS profile

An OS profile installs a specified
Image
image on a newly-provisioned
[cmdb_ci_os_template]
virtual machine. You map an OS
profile to a cloud account, a location
(datacenter), an image template, and
a cloud script.
Attributes: Operating system images,
including the OS type and version,
the root device type, and the image
source.

Schedule profile

You map a schedule profile
to an instance schedule. The
schedule profile applies to all newlyprovisioned resources that use the
profile. For example, a schedule
profile can specify the days of the
week and times of day when a stack
should start and stop.

N/A

Attributes: Schedule attributes such
as when a stack should be started,
stopped, or deprovisioned.
Related topics
Discover all datacenters in a service account on-demand
Create an application profile
An application profile specifies application software to install on newly-provisioned resources.
Users can select applications when they request a stack. Use application profiles when you
integrate with configuration management (continuous delivery) providers such as Ansible
playbooks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
Before you begin
• You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.
• Role required: sn_cmp.cloud_admin

About this task

This example shows an application profile mapping for a Tomcat server on Ansible.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select Application Profile and then click New.

3. Enter a unique and descriptive Name and Description for the profile and then click Submit.
The profile is created.
4. Map the profile to a template.
a. In the list, click the profile that you created.
b. In the Application Profile Mappings related list, click New, fill in the form, and then click
Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
Field

Description

Workload Config Provider

Select a configuration management provider
to associate with the profile.

Application Template
[sn_cmp_application_template]

Select a template that the profile should
be mapped to. If you ran Discovery on the
Configuration Provider, the templates are
already populated.
The resource type associated
with an application profile is
sn_cmp_application_template.
Click the reference icon (
details of the template.

) to view the

To create a new template:
i. Click the reference icon ( ) to open the
Application Templates list.
ii. Click New and then fill in the Application
Template form:
▪ Name: Enter a descriptive name for the
template.
▪ Template ID: Enter an ID to use for the
template.
▪ Config runlist provider: Click the list,
select a table from the Table name list,
and then select records for the table from
the Document list.
▪ Config runlist: Specify a configuration
runlist.
▪ Provider instance: Select a provider
instance.
5. Create as many mappings as needed.
Related topics
Discover all datacenters in a service account on-demand
Create a compute profile
A compute profile specifies the hardware to use for newly-provisioned virtual machines. A
compute profile maps to a cloud account, a datacenter, and a hardware template.

Before you begin

Role required: sn_cmp.cloud_admin
You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select Compute Profile and then click New.
3. Enter a unique and descriptive Name and Description for the profile and then click Submit.
The profile is created.
4. Click the resource profile that you created.
5. Map the profile to a template.
a. In the list, click the profile that you created.
b. In the Profile Mappings related list, click New, fill in the form, and then click Submit.
Example compute profile

Field

Description

Cloud Account

Select a cloud account that the profile is
valid for.

Location

Select the datacenter that the profile is valid
for.

Hardware Template

Select the hardware type that the profile
should be mapped to.

[cmdb_ci_compute_template]

Click the reference icon (
the details of the template.

) to view

Related topics
Discover all datacenters in a service account on-demand
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
Create a compute security group profile
A compute security group profile applies specified security rules to newly-provisioned resources.
You map a compute security group profile to a cloud account, a datacenter, a Compute Security
Group template, and security rules for the template.

Before you begin

You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.
Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select Compute Security Group Profile and then click New.
3. Enter a unique and descriptive Name and Description for the profile and then click Submit.
The profile is created.
4. Map the profile to a template.
a. In the list, click the profile that you created.
b. In the Compute Security Group Profile Mappings related list, click New, fill in the form, and
then click Submit.

Field

Description

Cloud Account

Select a cloud account for the profile.

Location

Select the datacenter that belongs to the
cloud account.

Compute Security Group Template

Select or create a template that the profile
should be mapped to.

[cmdb_ci_security_grp_template]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
Field

Description

To create a new template, click the list icon
and then click New. Enter a name and a
template ID and click Submit.

Click the reference icon (
the details of the template.

) to view

5. Add rules to the template.
You can create more than one rule per template.
a. In the Security Group Profile Mappings related list, under the Compute Security Group
Template heading, click the template name.
b. In the Compute Security Group Rule Template related list, click New, fill in the form, and
then click Submit.

Field

Description

CIDR Range

Specify a CIDR range. For example,
10.0.0.0/24.

IP Protocol

Select an IP protocol. In Azure, the protocols
supported are TDP and UDP. ICMP is not
supported.

From Port

Specify the source port number.

Is Outbound

Enter 0 for inbound and 1 for outbound.

Name

Specify a name for the rule.

Network Type

Select the type of network.

To Port

Specify the destination port number.

Related topics
Discover all datacenters in a service account on-demand
Create an OS profile
An OS profile installs a specified image on a newly-provisioned virtual machine. You map an OS
profile to a cloud account, a location (datacenter), an image template, and a cloud script. OS
profiles are provider-agnostic and you can use the same profile for multiple cloud accounts.

Before you begin
• You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.
• Role required: sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
About this task

Note: Profile mappings that specify more details run first. For example, a mapping that
specifies a blueprint, OS profile, and resource alias takes precedence over a mapping that
specifies only an OS profile.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select OS Profile and then click New.
3. Enter a unique and descriptive Name and Description for the profile and then click Submit.
The profile is created.
4. Map the profile to a template.
a. In the list, click the profile that you created.
b. In the OS Profile Mappings related list, click New, fill in the form, and then click Submit.

Field

Description

Cloud Account

Select the cloud account to map the OS
profile to.

Location

Select a datacenter in the cloud account.

Image Template

Select an image template that the profile
should be mapped to.

[cmdb_ci_os_template]

Click the reference icon (
details of the template.

) to view the

Important: Do not create a new
image template. Image templates
must be discovered from the Cloud
Accounts page on the Cloud Admin
Portal (Manage > Cloud Accounts).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
Field

Description

When you add credentials to an image
template, the credentials are inherited by all
VMs that are provisioned using the template.
See Add credentials to an image template.
5. Map the profile to a cloud script. In this procedure, you specify an existing script. See Create
cloud initialization script templates and a script.
a. On the Cloud Script OS Profile Mappings related list, click New and then fill in the form.

Field

Description

Blueprint

Select a blueprint to limit the script to a specific resource block used in the
blueprint.

[Optional]
Cloud
script

Select a cloud script to map the OS profile to.

Active

Select the check box if the cloud script should be run after the virtual
machine is provisioned.

Application Cloud Provisioning and Governance is auto-selected.
OS profile

If you specify a blueprint, the cloud script is run when the blueprint is
provisioned.

Resource
Alias

If you specify a resource alias for the blueprint, then the cloud script is
executed when the blueprint with the specified resource alias is provisioned.

[Optional]
b. Right-click the form header and select Save.
The Name attribute [scriptName] appears in the OS Profile Mapping Overrides list.
c. In the OS Profile Mapping Overrides list, enter an attribute name and value to use when the
resource is provisioned.
Create a schedule profile
You map a schedule profile to an instance schedule. The schedule profile applies to all newlyprovisioned resources that use the profile. For example, a schedule profile can specify the days
of the week and times of day when a stack should start and stop.

Before you begin

Role required: sn_cmp.cloud_admin
You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select Schedule Profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
3. Click New, enter a unique and descriptive Name and Description, fill in the form, and then
click Submit.

Field

Description

Schedule

Select an existing schedule or define a
custom schedule. A schedule is a rule that
includes or excludes specified time periods
for actions.
To define a schedule, use the System
Scheduler module. See Define a schedule

Multiplier

.

Auto-populated value between 0 and 1: The
fraction of time that a stack with this schedule
is expected to be powered on.

Related topics
Discover all datacenters in a service account on-demand
Add credentials to an image template
When you add credentials to an image template, the credentials are inherited by all VMs that are
provisioned using the template.

Before you begin
• Role required: cloud_admin
• A set of basic authentication credentials

must exist.

Procedure
1. Perform one of the following actions:
◦ If an OS profile is mapped to the virtual machine template:
a. Open the OS profile (Manage > Resource Profiles).
b. In the OS Profile Mappings related list, click the Name of the template in the Image
Template column.
◦ For VMware templates, navigate to All > Configuration > VMware > Virtual Machine
Templates.
2. On the Image form, select the basic authentication Credentials.
3. Click Update.
Add an AWS public image to Cloud Provisioning and Governance
You can make any AWS image selectable in an OS profile.

Before you begin

Role required: sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
Procedure
1. In the AWS console, select the EC2 service and then click IMAGES > AMIs.

2. Filter the list of images and then take note of the AMI Name and AMI ID values for the image of
interest.
3. On the instance, enter cmdb_ci_os_template.list in the Filter navigator text box to
open the Images [cmdb_ci_os_template] table and then click New.
4. On the Image form, enter the following values:

Field

Value

Object ID

AMI ID value from AWS.

Name

Meaningful name that is based on the AMI
Name value from AWS.

Guest OS

Operating system.

5. On the Credentials field, click the magnifying glass and then click New on the Credentials
page.
6. In the list, click Basic Auth Credentials.
7. On the Basic Auth Credentials form, enter a meaningful Name for the credential.
8. Enter a User name to use for instances that are provisioned from this image.
AWS uses SSH keys, so a password is not required.

Note: If the name ec2-user or root does not work, check with your AMI provider.
Username guidelines
Type

Name

Amazon Linux

ec2-user

RHEL

ec2-user or root

Ubuntu

ubuntu or root

Centos

centos

Fedora

ec2-user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Type

Name

SUSE

ec2-user or root

9. Click Submit to close the Basic Auth Credentials form.
10. Right-click in the header and select Save to save the current configuration of the new image
record.
In the Related Items list, you can see that the image is associated with the specified
datacenter.
11. Click Update to make the public image selectable in an OS profile.
This step also creates a relationship between the public image and the logical datacenter
(LDC) in the CMDB.
Add an Azure public image to Cloud Provisioning and Governance
You can make any Azure image selectable in an OS profile.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Azure command-line interface (CLI), make note of the values of the Offer, Publisher,
Sku, and Version.
On the command line, you can search by offer or by publisher or by both, as shown in the
example. Each line item is an image of a particular version of CentOS from OpenLogic.
You can use the following sample command on the CLI - az vm image list -f
Windows --output table to fetch the values.

2. On the instance, enter cmdb_ci_os_template.list in the Filter navigator text box to
open the Images [cmdb_ci_os_template] table and then click New.
3. Configure the form layout to show Offer, Serial number, Version, and Vendor.
4. On the Image form, enter the following values:

Field

Value

Object ID

Enter /publisher/offer/sku/
version. You can get these values from the
Azure CLI. As an example, /OpenLogic/
CentOS/6.5/6.5.201501.

Name

Meaningful name that represents the version
of the OS. CentOS 6.5 in the example.

Guest OS

Operating system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Field

Value

Offer

Offer value from Azure.

Serial Number

Sku value from Azure.

Version

Version value from Azure.

Vendor

a. Click the magnifying glass and then click
New.
b. In the Name field, enter the Publisher
value from Azure.
c. Click Submit.

5. On the Credentials field, click the magnifying glass and then click New on the Credentials
page.
6. In the list, click Basic Auth Credentials.
7. On the Basic Auth Credentials form, enter a meaningful Name for the credential.
8. Enter a User name and Password to use for instances that are provisioned from this image.
9. Click Submit to close the Basic Auth Credentials form.
10. Right-click in the header and select Save to save the current configuration of the new image
record.
In the Related Items list, you can see that the image is associated with the specified
datacenter.
11. Click Update to make the public image selectable in an OS profile.
This step also creates a relationship between the public image and the logical datacenter
(LDC) in the CMDB.
IPAM integration
Use an IP address management (IPAM) tool like Infoblox to manage cloud IP addresses,
networks, and subnets within your cloud catalog offerings. However, it's important to note that
this functionality is not supported with our template-based cloud catalogs.

Infoblox integration
By default, Cloud Provisioning and Governance supports Infoblox integration. You can create
Infoblox credentials and then set up an Infoblox instance record. See Register an Infoblox server
for instructions.

Note: IPAM integration is not supported with template based cloud catalog items.
Note: This integration is supported with legacy blueprints only. Refer to this Knowledge
Base

article to learn more.

Subnets
If you have subnets in your AWS and Azure clouds, Cloud Provisioning and Governance finds
them when Discovery runs on a service or cloud account.

Note: If you have networks and subnets in a VMware vSphere platform, Discovery does
not create subnet records in the CMDB and cannot map the subnet to the appropriate
network. You must create the records manually.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Register an Infoblox server
To integrate with Infoblox, you must create an Infoblox record and associate it with the
appropriate credentials to register your Infoblox server with the instance.

Before you begin
• Role required: sn_cmp.cloud_admin
• Create Infoblox credentials

.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Networks & IPAM > IPAM Providers >
Infoblox.
2. Click New, enter a unique and descriptive Name, fill in the form, and then click Submit.

Field

Description

URL

Enter the URL of the Infoblox server.

Credential

Select the Infoblox credential.

Create an IP pool
Create an IP pool to associate a cloud subnet with an IPAM provider instance.

Before you begin
• Role required: sn_cmp.cloud_admin
• Create Infoblox credentials

and register an Infoblox server.

• Run Discovery on the cloud account to find subnets or manually create cloud subnets.

Note: This functionality is not supported with our template-based cloud catalogs.
Procedure
1. In the Cloud Admin Portal, navigate to Manage > Networks & IPAM.
2. On the IP Pools tab, click New, enter a unique and descriptive Name, and then fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
Field

Description

IPAM
Select an IPAM provider.
Provider
Provider Select an instance for the provider.
Instance
Provider Enter a version for the provider.
Version
Subnet

Select a subnet. For AWS or Azure, select a discovered subnet that has been
configured in AWS or Azure. For VMware, copy the CIDR range from the IPAM tool
and paste the CIDR range in this field. See Create a cloud subnet.

Mode

Select a mode based on the provider that you are creating this IP pool for. The
model varies based on the provider.

3. Click Submit.

Result

The related subnet appears in the Subnet related list at the bottom of the form.
Create a cloud subnet
If you have subnets in your VMware vSphere account, create a cloud subnet record in the
instance.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Networks & IPAM.
2. On the IP Pools tab, click New to create a new record.
3. In the Subnet field, click the lookup icon.
The Cloud Subnets list appears.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
4. Click New.
5. Fill out the form fields (see table).

Field

Description

Name

Provide a descriptive name.

Status

Leave the status value as Installed.

CIDR/
Gateway/
Subnet
Mask

Enter the CIDR associated with the subnet, the IP address of the gateway, and
the subnet mask. For VMware, the CIDR, Gateway, and Subnet Mask fields are
mandatory.

Primary and
Secondary
DNS

Enter the DNS values. For VMware, the Primary DNS field is mandatory.

6. Click Submit.
Create a relationship between a VMware network and subnet
If you discover VMware networks and subnets, you must manually create a relationship between
the two.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

If no relationship exists and a user must select a virtual network and subnet in the Cloud User
Portal, the user can encounter an error.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Service Accounts.
2. Open the datacenter that contains the VMware cloud network.

Note: VMware cloud networks are saved in the VMware vCenter Network
[cmdb_ci_vcenter_network] table. AWS and Azure cloud networks are saved in the Cloud
Networks [cmdb_ci_network] table.
3. Under Related items, click the plus icon to add a new relationship.
4. Make sure the Use suggested relationships check box is selected, and then select the
Contains (Parent) relationship.
5. Under Filter, create the filter necessary to find the subnet.
6. Under Configuration Items, select the check box next to the subnet.
7. In the Relationships section, click the plus icon.
The relationship is added to the list.
8. Click Save and Exit.
Reserve IP addresses for VMware vSphere virtual machines in InfoBlox
Create a policy to reserve IP addresses for VMware vSphere virtual machines in Infoblox, at the
time of provisioning the virtual machines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
Before you begin

Role required: sn_cmp.cloud_admin.

About this task

You can create a policy that is invoked when a VMware virtual machine is provisioned to get an
IP address from Infoblox. Before the virtual machine is provisioned, the instance makes a call to
Infoblox that creates a host record with the IP address.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Click New and then fill in the form.

Field

Description

Policy Name

Enter a descriptive name.

Policy Trigger

Select on Resource operation.

Resource Block

Select ResourceBlock Virtual Server.

Operation

Select Virtual Server interface provision.

Moment

Select Pre Operation.

3. Click Submit to publish the policy.
4. Create a policy rule for the policy.
5. Specify a condition in the condition builder for locating the vSphere virtual machine.
6. Select Request from > starts with and enter vSphere.
7. Click Update.
8. In the Policy Rules Action related list, click New to create a policy action.
9. Select IP Address Management in the Create Policy Rule Action dialog box.
10. Enter a name in the Action Name field, select Infoblox in the Provider Type list, and select
Reserve IP address in the IPAM Method Name list.
11. Click Submit.
12. In the Policy Rule Action Attributes section, enter the domain name of your network in the
DNSSuffix field.
As an example, corp.servicenow.com. Values for all the other properties are already
populated.
13. Click Update and republish the policy.
Register IP addresses for AWS and Azure virtual machines in Infoblox
Create a policy to register IP addresses for AWS and Azure virtual machines in Infoblox, once
these virtual machines are provisioned.

Before you begin

Role required: sn_cmp.cloud_admin.

About this task

When AWS and Azure virtual machines are provisioned, IP addresses are automatically allocated
to them. You can create a policy and the policy is invoked, once these virtual machines are
provisioned, to get their IP addresses and register these IP addresses in Infoblox.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
Note: This functionality is not supported with our template-based cloud catalogs.
Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Click New and then fill in the form.

Field

Description

Policy Name

Enter a descriptive name.

Policy Trigger

Select on Resource operation.

Resource Block

Select ResourceBlock Virtual Server.

Operation

Select Virtual Server interface provision.

Moment

Select Pre Operation.

3. Click Submit to publish the policy.
4. Create a policy rule for the policy.
Specify two conditions in the condition builder for locating the AWS and the Azure virtual
machines. Select Request form > starts with and enter AWS. Specify another condition for
Azure.
5. Click Update.
6. In the Policy Rules Action related list, click New to create a policy action.
7. Select IP Address Management in the Create Policy Rule Action dialog box.
Enter a name in the Action Name field, select Infoblox in the Provider Type list, and select
Register IP address in the IPAM Method Name list.
8. Click Submit.
9. In the Policy Rule Action Attributes section, enter the domain name of your company's
network in the DNSSuffix field.
As an example, corp.servicenow.com. Values for all the other properties are already
populated.
10. Click Update and republish the policy.
Delete a host record in Infoblox
When a virtual machine is de-provisioned, delete the host record from Infoblox. Deleting the host
record enables that IP address to be available and be reused for other virtual machines.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Click New.
3. Fill out the fields on the Policy form (see table).
Field

Value

Policy Name

Enter a descriptive name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
Field

Value

Policy Trigger

Select on Resource operation.

Resource Block

Select ResourceBlock Virtual Server.

Operation

Select Virtual Server interface Deprovision.

Moment

Select Post Operation.

4. Click Submit to publish the policy.
5. Create a policy rule for the policy and click Update.
6. In the Policy Rules Action related list, click New to create a policy action.
7. Select IP Address Management in the Create Policy Rule Action dialog box.
Enter a name in the Action Name field, select Infoblox in the Provider Type list, and select
Release IP address in the IPAM Method Name list.
8. Click Submit.
9. In the Policy Rule Action Attributes section, enter the domain name of your company network
in the DNSSuffix field.
As an example, corp.servicenow.com. Values for all the other properties are already
populated.
10. Click Update and republish the policy.
Support for continuous delivery (configuration management)
The Cloud Provisioning and Governance application supports integration with continuous
delivery solutions (also known as configuration management). Ansible is supported as the
default config management provider.
The Cloud Provisioning and Governance application supports configuration management
providers in two ways:
• Application profile based approach: Create an application profile for an entity and in the
order catalog form, select that profile to deploy that entity. Each profile has a config installable.
You can create multiple application profiles- as an example, one for PostgreSQL and one for
Apache. Each profile can be mapped to a configuration management provider. In the Cloud
User Portal, based on the profile you select, a configuration grid appears populated with
attributes and values for that specific configuration management provider. You can modify any
values in the order form and provision the entity.
• Resource block based approach: Use a resource block, like Apache2, in a blueprint to
represent an entity that a configuration management provider manages. The same resource
block can be used to support more than one entity of the same kind. As an example, an
Apache2 resource block can be used to support multiple Apache2 servers. In the order
catalog form, select a provider type and then select a provider. Based on the specific provider,
configuration management attributes and values appear. Once you provision the entity, you
can save the configuration of the resource block and store it in the CMDB for future use.
• Post-provisioning actions during catalog deployment: Users can call ansible job as a
post-provisioning step in any catalog which deploys a VM. This will be executed as a day-2
operation once the VM installation is completed. For more information on the processes, see
https://www.servicenow.com/community/itom-blog/cpg-calling-ansible-job-as-post-provisionstep-for-cloud-catalog/ba-p/2271552
and https://www.servicenow.com/community/itomblog/cpg-calling-ansible-job-as-day2-operation/ba-p/2270969 .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Important: Starting with the Orlando release, the cloud provisioning blueprints are
available on instances upgraded from a previous release but you cannot create new
blueprints. Existing blueprints and catalog items from those blueprints remain unaffected
and continue to work.

What to do
Step

Goal

See these topics

1. Create
Enable Cloud Provisioning and Governance to access the
credentials configuration provider with the necessary credentials.
for
Ansible.

Configure Ansible
Tower user name
and password

2. Create
the
workload
provider
type,
and then
create the
provider.

Configure Cloud Provisioning and Governance to work with
the configuration management provider of your choice. Then
run discovery on the provider, using the credentials you
provide, to find the resources that the provider already owns.

Create a workload
provider type and
Create an Ansible
configuration
management
provider and run
Discovery

3. Create
Create the profile that defines the application that the
an
configuration management provider manages. The profile is
application based on the discovered inventories in the provider.
profile with
a mapping

Create an
application profile

4. Create a Create a blueprint with BootstrapNode, Register
blueprint
Node, and ExecuteConfigPackages operations on the
virtual resource that the configuration provider manages. You
can also customize the input parameters on the form to allow
the user to select important inputs, like the application profile
template, organization, and credential ID.
5.
The resource should provision, with the stack status
Provision
a resource indicating the BootstrapNode, Register Node, and
ExecuteConfigPackages steps.
from the
Cloud User
Portal
Configure Ansible Tower user name and password
Configure Ansible Tower credentials to access the Ansible Automation Engine through your
instance.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. Navigate to All > Orchestration > Credentials, and then click New.
2. Click Ansible Tower Credentials.
3. Fill out the form fields (see table):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
To integrate Cloud Provisioning and Governance with the Ansible configuration management
account, you must configure the user name and password for the administrator account in
Ansible.
Form fields for Ansible Tower credentials
Field

Description

Name

Provide a descriptive name.

User name/
Password

Enter the authentication credentials for the Ansible Tower user with
administrator rights.

Note: You do not need to configure the other fields.
Create a workload provider type
Create a workload provider type for each new configuration management provider. This
information appears in the order catalog form as management attributes that your users can
select when provisioning a virtual resource through a configuration management provider.

Before you begin

Role required: cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Config Management.
2. Click Workload Config Provider Types, and then click New.
3. Fill in the form fields (as shown in the table).
Workload Config Provider Type form
Field

Description

Name

Enter a name for the workload provider type.

Product Type

A cloud product type from the list.

Config CI

Select the configuration table created for
the provider that displays the discovered
resources from the list.

Credential Resolver

Select a credential resolver from the list.

Server Type

Select the type of server for the provider like
Opensourced, Enterprise, etc.

Version

Enter the version of the provider.

Credential Type

Select the table where the credentials are
stored for this provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


<!-- page 305 -->
Example Ansible Tower workload provider type

4. Add properties for the workload type in the Workload Provider Properties section.
In addition to the existing properties, you can add more properties. Workload provider
properties are displayed in the order catalog form (in the Cloud User Portal) as management
attributes.
For example, for an Ansible provider type, Inventory, and Hostgroup are mandatory. The
values for these properties come from Resource Pools.
5. Click Submit.
Create an Ansible configuration management provider and run Discovery
Create an Ansible configuration management provider, and then run Discovery on the provider to
find its resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
Before you begin
• Ensure to have an Ansible server and Ansible credentials.
• If you want to use Ansible Tower version 3.6.x or higher, ensure to set the
mid.cmp.ansible.api_version property to V2. You can access this property under the Properties
section of the Mid Server module.
• Role required: cloud_admin

About this task

Important: Starting with the Orlando release, the cloud provisioning blueprints are
available on instances upgraded from a previous release, but you cannot create a blueprint.
Existing blueprints and catalog items created from those blueprints remain unaffected and
continue to work.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Config Management.
2. Select New.
3. On the form fill in the fields.

Note: Most information required to create an Ansible configuration management
provider comes from the Ansible Tower server settings.

Field

Description

Name

Descriptive name for the configuration provider.

Organization Ansible Tower organization for access control
You can obtain this information from the configuration management provider
console.
URL

URL of the Ansible Tower.
Enter the full URL of the Ansible Tower including the https://<IP>
protocol.

Provider

Configuration provider type.
Select Ansible Tower from the drop-down list.

Server Type

Ansible Tower server type.

Credential

Credentials to access the Ansible server.
For more information on creating credential for Ansible server, see Ansible
credentials.

Version

Version of the configuration provider you are creating.

Note: For Ansible Tower versions higher than 3.1.2, select 3.4.0 from the
list.

4. Select Submit.
5. Select the Ansible Tower configuration provider card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
6. Select Discover Now to find the resources in the Ansible configuration management provider.

Note: If you provision or otherwise change resources through the configuration
management provider interface, you must manually run discovery again through the
Config Providers page. You cannot create a scheduled discovery for configuration
management providers.
The discovered resources appear under Entities.
The following Ansible Tower resources are discovered:
◦ Ansible Inventory: Displays the discovered applications and virtual resources.
◦ Cfg Installable: Displays theactual components that run when the applications install. For
Ansible, the items in this list are job templates, which are also referred to as runlists in this
form.
Example Ansible Inventory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
Ansible config installables (job templates)

7. Select Ansible Inventory to explore the contents.

Note: Communicate the supported applications to users so they can select the correct
application from the Hostgroup field in the Cloud User Portal. The Hostgroup field
shows all possible applications (called Groups in Ansible), not just the ones that the
configuration management provider supports. Therefore, the provisioning fails when the
user selects an unsupported application.
Ansible Tower groups within an inventory

What to do next

After a user provisions a resource, the Stack Status indicates how the system runs through
the Create node, Bootstrap, and ExecuteConfigPackage steps. You can obtain the IP address
of a virtual machine in the User Portal by navigating to Stacks > {category} and selecting the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
new virtual machine. Open the configuration management provider server to see the newly
provisioned resource on the node that the user specified.
Cloud Services Catalog Terraform Connector
®

Use the ServiceNow Cloud Services Catalog Terraform Connector to generate catalog items
from the Terraform templates and use them to provision and manage resources in various clouds.

Get started

Explore

Configure

Learn about the Cloud Services Catalog
Terraform Connector application.

Plan and configure your implementation.

Use

Reference

Use the Cloud Services Catalog Terraform
Connector app to discover resources
from the Terraform environment, create
catalog items, and maintain them.

Get details about components
like fields, tables, and properties.

Troubleshoot and get help
• Cloud Provisioning and Governance forum on the ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
Exploring Cloud Services Catalog Terraform Connector
Whether you're starting or expanding your implementation of Cloud Services Catalog Terraform
Connector, learn more about the available features that help in provisioning and managing cloud
resources across various public and private clouds.
The Cloud Services Catalog Terraform Connector integrates with the Cloud Provisioning and
Governance application and helps you to create or update catalog items from the Terraform
templates. Then, you can use the catalog items to provision the cloud resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
Key features of Cloud Services Catalog Terraform Connector
• Discover the Terraform templates and workspaces from the Terraform environment.
• Create catalog items from the Terraform templates.
• Detect changes in the Terraform template and use the IaC change task workflow to update the
catalog item.
• Utilize the multi-repo support.
• Specify metadata to populate the catalog item form fields and values.
• Reduce the Terraform Cloud license cost by using the discovered Terraform workspaces to
provision the cloud infrastructure.

Use Terraform as a configuration provider
Use the Terraform Open Source, Terraform Enterprise, and Terraform Cloud config provider to
provision resources in the following clouds.
Starting this release, you can use OpenTofu with Cloud Provisioning and Governance. You must
have admin rights to configure the alias name for Terraform Open Source at the vm host level.
• Amazon Web Services (AWS)
• Microsoft Azure
• Google Cloud Provider
• VMware vSphere
• IBM Cloud Platform (Deprecated)
In addition, you can use the Cloud Services Catalog Terraform Connector to provision resources
to the Oracle Cloud Infrastructure (OCI) through the Cloud Provisioning and Governance: Oracle
Cloud (OCI) Add-On for Terraform Connector app. For more information, see Cloud Provisioning
and Governance: Oracle Cloud (OCI) Add-On for Terraform Connector .
Starting with Cloud Provisioning and Governance: Terraform Connector version 1.5.2, the app
doesn't support provisioning resources to the IBM Cloud Platform.

Discover the Infrastructure as Code (IaC) templates
Use Cloud Services Catalog Terraform Connector to discover the IaC (Terraform) templates from
the Terraform environment. Terraform Enterprise or Terraform Cloud organizations use various
Version Control Systems to store the Terraform templates. Cloud Services Catalog Terraform
Connector can discover the templates stored in the following VCS:
• Public and self-hosted GitHub
• Public and self-hosted GitLab
• Public and self-hosted Microsoft Azure DevOps
For more information, see Run the IaC Discovery.
Utilize the hierarchical structure of multiple repositories with the support of Terraform Connector
IaC discovery capabilities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
Create catalog items from the Terraform templates
Use the Cloud Services Catalog Terraform Connector app to create catalog items from the
discovered Terraform templates and use them to provision resources in various clouds. For more
information, see Create a catalog item from the Terraform template.

Detect changes in the Terraform templates
Use IaC Discovery to detect changes in the Terraform templates that are used in existing catalog
items. When Cloud Services Catalog Terraform Connector detects a change in the Terraform
template, it creates an IaC change task. You can use the IaC change task to update the affected
catalog item or deactivate it, and then create another catalog item from the updated Terraform
template. For more information on the catalog item change task, see Manage the Terraform
template-based catalog items.

Reduce Terraform Cloud license cost
Use the discovered Terraform workspaces to provision the catalog items from the Terraform
templates. Reusing workspace helps you to manage the Terraform Cloud license cost by
avoiding the creation of workspaces.
Configuring Cloud Services Catalog Terraform Connector
Understand the high-level workflow for configuring the Cloud Services Catalog Terraform
Connector application.
Perform the following steps to configure the Cloud Services Catalog Terraform Connector
application:
1. Install Cloud Services Catalog Terraform Connector. For more information, see Install Cloud
Services Catalog Terraform Connector.
2. If you want to use a minor or patch version of Terraform Open Source, Terraform Enterprise, or
Terraform Cloud, add the minor or patch version to the workload config provider record. For
more information, see Add support for minor or patch versions of the Terraform.
3. To use Terraform Open Source as a config provider for Cloud Provisioning and Governance, do
the following:
a. Assign Terraform capability to the MID Server. For more information, see Configure MID
Server capabilities .
b. Create a Terraform Open Source config provider. For more information, see Create a
Terraform Open Source config provider.
4. To use Terraform Enterprise or Terraform Cloud as a config provider for Cloud Provisioning and
Governance, do the following:
a. Assign Terraform Enterprise and REST capabilities to the MID Server. For more information,
see Configure MID Server capabilities .
b. Create a Terraform Enterprise or Terraform Cloud config provider. For more information, see
Create a Terraform Enterprise or Terraform Cloud config provider.
5. Discover resources from the Terraform environment. For more information, see Run the IaC
Discovery.
Install Cloud Services Catalog Terraform Connector
You can install the Cloud Services Catalog Terraform Connector application
(com.sn_cmp_terraform) if you have the admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Cloud Provisioning and Governance: Terraform Connector
application listing
in the ServiceNow Store for information on dependencies, licensing or subscription
requirements, and release compatibility.
• Ensure that Cloud Provisioning and Governance (com.snc.cloud.mgmt) application is installed
and activated in the ServiceNow AI Platform. For more information, see Request the Cloud
Provisioning and Governance application.
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Services Catalog Terraform Connector application (com.sn_cmp_terraform)
using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

What to do next
• If you want to use Cloud Services Catalog Terraform Connector with Terraform Open Source,
Create a Terraform Open Source config provider.
• If you want to use Cloud Services Catalog Terraform Connector with Terraform Enterprise,
Create a Terraform Enterprise or Terraform Cloud config provider.
Add support for minor or patch versions of the Terraform
Add minor or patch versions of the Terraform (Terraform Open Source, Terraform Enterprise, or
Terraform Cloud) to the workload provider type record.

Before you begin

Role required: admin

About this task

The base system Cloud Services Catalog Terraform Connector has been tested and certified to
work with the following Terraform versions:
• Terraform Open Source versions 1.1.0 through 1.1.9 and 1.2.0 or higher.
• Terraform Enterprise versions 1.1.9 and 1.2.0 or higher.
• Terraform Cloud versions 1.1.9 and 1.2.0 or higher
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
To use templates that are supported by a minor or patch version, for example version 0.12.29, add
the version number to the Workload provider type record. Then, use the minor or patch versions
to create configuration providers in Cloud Provisioning and Governance.

Procedure
1. Navigate to https://<instance-name>/
sn_cmp_workload_provider_type_list.do
2. Select the Terraform type whose minor or patch version that you want to use.
3. Change the application scope to Cloud Provisioning and Governance: Terraform Connector.
4. In the Version field of the Workload Config Provider Type form, enter the minor or patch
versions as comma-separated values.
5. Select Submit.
Create a Terraform Open Source config provider
Create a Terraform Open Source config provider in Cloud Provisioning and Governance. The
Terraform Open Source config provider enables Cloud Provisioning and Governance to discover
the Terraform Open Source config installables (Terraform templates) and detect changes in
them.

About this task

Starting this release, you can use OpenTofu with Cloud Provisioning and Governance. You
must have admin rights to configure the alias name for at the vm host level.Ensure that server is
running on Windows or Linux operating system.

Before you begin
• Ensure that a supported Terraform Open Source version is installed in the server. Cloud
Services Catalog Terraform Connector supports Terraform Open Source versions 1.1.0 through
1.1.9 and 1.2.0 or higher.
• If you want to use a minor or patch version of the Terraform Open Source CLI, ensure that the
minor or patch version is added to the workload config provider. For more information, see Add
support for minor or patch versions of the Terraform.
• Ensure that the MID Server can access the Terraform server.
• Ensure that the MID Server has Terraform capability.
• As a new user, add Terraform MID capability to provision resources using Terraform Opensource host (VM). Add cloud provider specific mid capability (AWS,Azure,VMware, Google)
to discover resources from cloud after provisioning Terraform Open-source catalog items.
For example: If you are provisioning VM using Terraform Open-Source in Google, you would
need mid with Terraform and Google capability. Both capabilities can be set on the same or
different mids. Mid with Terraform capability should be able to connect to Terraform Host (VM)
and that with Google capability must be able to reach google cloud. For more information, see
Configure MID Server capabilities .
• Ensure that all the templates are stored in separate directories and all the template directories
are in the same base directory.
• Ensure that Terraform Connector has access to the Terraform registry (registry.hashicorp.com).
Role required: cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
Procedure
1. Optional: If you have deployed the Terraform Open Source on a Linux server, create SSH
Private Key Credentials for the server in the ServiceNow AI Platform.
a. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
b. On the Cloud Admin Portal, navigate to Manage > Credentials.
c. Select New.
d. Select SSH Private Key Credentials.
e. On the form, fill in the fields.
For a description of the form fields, see Cloud Services Catalog Terraform Connector SSH
Private Key Credentials form reference.
f. Select the Test Credentials related link.
g. On the form, fill in the fields.
Test Credentials form
Field

Description

Target

IP address of the Terraform server for which you are creating the credential.

MID Server MID Server that can be used to connect with the Terraform server.
h. Select OK.
i. Select Submit.
2. Optional: If you have deployed the Terraform Open Source on a Windows server, create
Windows Credentials for the server in the ServiceNow AI Platform.
a. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
b. On the Cloud Admin Portal, navigate to Manage > Credentials.
c. Select New.
d. Select Windows Credentials.
e. On the form, fill in the fields.
For a description of the form fields, see Cloud Services Catalog Terraform Connector
Windows Credentials form reference.
f. Select the Test Credentials related link.
g. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
Test Credentials form
Field

Description

Target

IP address of the Terraform server for which you are creating the credential.

MID Server MID Server that can be used to connect with the Terraform server.
h. Select OK.
i. Select Submit.
3. Create a config provider for Terraform Open Source.
a. On the Cloud Admin Portal, navigate to Manage > Config Management.
b. Select New.
c. On the form, fill in the fields.
For a description of the form fields, see Cloud Services Catalog Terraform Connector Create
Config Provider form reference.
d. Select Submit.

What to do next

Discover the Terraform templates from the Terraform Open Source server. For more information,
see Run the IaC Discovery.
Create a Terraform Enterprise or Terraform Cloud config provider
Create Terraform Enterprise or Terraform Cloud config provider in Cloud Provisioning and
Governance. The config provider enables Cloud Provisioning and Governance to discover
the workspaces and Version Control System (VCS) repositories attached to the Terraform
organization.

Before you begin
• Ensure that a supported Terraform Enterprise or Terraform Cloud version is in use. Cloud
Services Catalog Terraform Connector supports the following Terraform versions:
◦ Terraform Enterprise versions 1.1.9 and 1.2.0 or higher
◦ Terraform Cloud versions 1.1.9 and 1.2.0 or higher
• To use a minor or patch version of the Terraform Enterprise or Terraform Cloud, ensure that the
minor or patch version is added to the workload config provider. For more information, see Add
support for minor or patch versions of the Terraform.
• Ensure that the following properties are correctly configured in the MID Server. The MID Server
uses these properties to connect with the Terraform Enterprise or Terraform Cloud.
◦ glide.http.proxy_host
◦ glide.http.proxy_port
◦ glide.http.proxy_username
◦ glide.http.proxy_password
For more information, see the Knowledge Base article KB0754247

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
• Ensure that the MID Server has Terraform Enterprise and REST capabilities. For more
information, see Configure MID Server capabilities .
• Ensure that the MID Server can communicate with the VCS accounts provisioned in the
Terraform Enterprise or Terraform Cloud organization.
Role required: admin

Procedure
1. Create an API key credential for Terraform Enterprise or Terraform Cloud account.
For more information, see Create API key credentials for the Terraform account and the
supported VCS account.
2. Create a config provider for Terraform Enterprise or Terraform Cloud.
a. On the Cloud Admin Portal, navigate to Manage > Config Management.
b. Select New.
c. On the form, fill in the fields.
For a description of the form fields, see Cloud Services Catalog Terraform Connector Create
Config Provider form reference.
d. Select Submit.

What to do next

Discover the workspaces and Version Control System (VCS) repositories attached to the
Terraform organization specified in the config provider. For more information, see Run the IaC
Discovery.
Create API key credentials for the Terraform account and the supported VCS account
Create API key credential for Terraform account and supported Version Control System (VCS)
accounts that contain the Terraform template repositories.

Before you begin

Role required: admin

About this task

An API key credential is a secured record in the ServiceNow AI Platform that stores an API key
such as Terraform Enterprise, Terraform Cloud, or VCS account API key. Cloud Services Catalog
Terraform Connector uses the API key credential to connect with the account and discover its
resources.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
2. On the Cloud Admin Portal, navigate to Manage > Credentials.
3. Select New.
4. Select API Key Credentials.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
For description of the form fields, see Cloud Services Catalog Terraform Connector API Key
Credentials form reference.
6. Select Submit.
Use multiple repositories structure with Terraform Connector app
You can now discover multiple Terraform configurations from one repository, at any folder level
with Terraform Enterprise Config Provider.

Before you begin

Role required: admin
Perform the Run the IaC Discovery steps and specify what repository, branches and folder paths
have to be considered for discovering Terraform configurations with these steps.

Procedure
1. Add repositories and branches that you want to consider for discovering Terraform
configurations.
2. Use <Repository-Name>::<Branch-Name> format to include a branch from a repository.
3. To specify multiple repository and branch mappings, use comma (,).
Example: Repo1::Branch1, Repo2::Branch2.
Leave the field bank if you want to discovery all the repositories and branches in that VCS.
4. Select Do you wish to specify sub-folder paths for Discovery if you want to discover Terraform
configurations from specific folder paths of the repository.
5. In the Folder Path List, add the list of folder paths separated by comma(,) to discover terraform
configurations from it.
◦ Folder path filter applies to all Repository Branches included in ‘Repo and Branch inclusion
List’.
◦ All Terraform configurations you want to discover from a specific folder path needs to be in
subfolders just one level below in folder hierarchy. Example:/gcp/vm folder path has one
Terraform configuration for virtual machine,
◦ Specify /gcp in folder path list to discover vm Terraform configuration.
Run the IaC Discovery
Run the Infrastructure as Code (IaC) discovery to identify the resources of the Terraform
environment.

Before you begin
• Ensure that you have the appropriate API credentials for the Version Control System (VCS)
accounts provisioned in the Terraform Enterprise or Terraform Cloud organizations. For more
information, see Create API key credentials for the Terraform account and the supported VCS
account.
• Ensure that Terraform Open Source folders which contain the Terraform templates have unique
names. If several Terraform template folders have the same name, multiple change tasks are
created even though all the templates mayn't contain variable changes.
Role required: sn.cmp.cloud_service_designer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


<!-- page 318 -->
About this task

Depending on the configuration provider, Cloud Services Catalog Terraform Connector discovers
the following resources from the Terraform environment:
Terraform Open Source
The IaC Discovery discovers the config installables (Terraform templates) from the
Terraform Open Source server.
Terraform Enterprise or Terraform Cloud
The IaC Discovery discovers the following items:
• Workspaces: Terraform workspaces provisioned in the Terraform organization.
• VCS: VCS repositories and branches provisioned in the Terraform organization.
• Agent pools:
Terraform Cloud uses agents and agent pools to communicate with on-premise
infrastructure. Deploy agents in the same network as your infrastructure to
establish a connection between the infrastructure and Terraform Cloud. For more
information on agents and agent pools, see Terraform Cloud agents .
Cloud Services Catalog Terraform Connector discovers the agent pools created
in the Terraform Cloud. You can view the discovered agents in the Config
Management module for your config provider. On the catalog order form, an agent
pool filter enables you select an active agent to communicate with the private
VMware infrastructure.

Note: You can see agent pools option in the config management form and
the catalog order form when the following conditions are met:
◦ You have created the VMware agent pools in the Terraform Cloud
organization.
◦ You have VMware templates for Terraform Enterprise.
• Cfg installables: Terraform templates stored in the repositories of the VCS
account provisioned the Terraform organization.

Note: To discover the Terraform templates from the VCS, Cloud Services
Catalog Terraform Connector requires the API key credentials of the VCS
account.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
2. On the Cloud Admin Portal, navigate to Manage > Config Management.
3. Select the Terraform provider card.
4. Select Discover Now.

Note: You can't cancel the IaC Discovery job after triggering it.
5. Optional: To use Cloud Services Catalog Terraform Connector with Terraform Enterprise or
Terraform Cloud, discover the Terraform templates stored in the provisioned VCS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
a. Select the Tfe Vcs tab.
b. From the Tfe Vcs list, select the VCS account that contains the Terraform templates you want
to use for Cloud Provisioning and Governance catalog item creation.
c. From the Credentials drop-down list, select the API credential of the selected VCS account.
d. From the Related Links, select Find Branches and Repositories.
e. Repeat step 5.b to 5.d for all VCS accounts that contain the Terraform templates you want to
use for Cloud Provisioning and Governance catalog item creation.
6. Create an Infrastructure as Code (Iac) discovery schedule.
IaC discovery schedule helps to discover new Terraform templates, workspaces, agent pools,
and VCS branches for the specified config provider. It also detects changes in the already
discovered Terraform templates. When Cloud Services Catalog Terraform Connector detects a
change in the template variable or the template metadata, it automatically creates IaC change
tasks for the affected catalog items.
a. On the Cloud Admin portal, navigate to Manage > IaC Discovery.
b. Select New.
c. On the form, fill in the fields.
IaC Discovery Schedulers form
Field

Description

Name

Unique and descriptive name of the IaC Discovery schedule.

Provider Config management provider for which you are creating the discovery schedule.
Active

Option to activate or deactivate the schedule.

Run

Frequency of schedule execution.
Configure the schedule execution frequency in the Run field and its associated
form fields.

d. Select Submit.

What to do next
• Use multiple repositories structure with Terraform Connector app with IaC Discovery
• If Cloud Services Catalog Terraform Connector discovers new Terraform templates that
you want to use for cloud resource provisioning, create a catalog item from the discovered
template. For more information, see Create a catalog item from the Terraform template.
• If Cloud Services Catalog Terraform Connector has discovered changes in an existing
template, take one of the following actions to resolve the associated IaC change task:
◦ Update the affected catalog item per the updated Terraform template.
◦ Deactivate the affected catalog item, and then create a catalog item per the updated
template.
For more information, see Manage the Terraform template-based catalog items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
Domain separation and Cloud Services Catalog Terraform Connector
Domain separation is supported for Cloud Services Catalog Terraform Connector. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.
Cloud Services Catalog Terraform Connector integrates with Cloud Provisioning and Governance
and it complies with the Cloud Provisioning and Governance domain separation. For more
information, see Domain separation and Cloud Provisioning and Governance.
Upgrading the Terraform environment
Understand the high-level workflows for upgrading the Terraform environment.
Upgrading Terraform Open Source
Upgrade methods for Terraform Open Source
Upgrade method

Upgrade the existing
Terraform Open Source
installation to a newer
supported version

Description

Note: If you choose to upgrade the existing
Terraform Open Source installation, you may
experience a longer upgrade time.
Perform the following actions to upgrade the
existing Terraform Open Source installation:
1. Upgrade the Terraform Open Source server to a
version that is supported by the Cloud Services
Catalog Terraform Connector.
For more information on upgrading
Terraform, see Upgrade Guides in Terraform
documentation .
Cloud Services Catalog Terraform Connector
supports Terraform Open Source versions 1.1.0
through 1.1.9 and 1.2.0 or higher.
2. Test and modify the existing Terraform
templates to ensure compatibility with the
target Terraform Open Source version.
3. Update the Terraform Open Source version
mentioned in the Terraform Open Source config
provider.

Set up a new Terraform server
with the desired Terraform
Open Source version

Perform the following actions to set up a new
Terraform server with the desired Terraform Open
Source version:
1. Create a Linux or Windows server for Terraform
Open Source installation.
2. Install a Terraform Open Source version that
is supported by the Cloud Services Catalog
Terraform Connector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
Upgrade methods for Terraform Open Source (continued)
Upgrade method

Description

Cloud Services Catalog Terraform Connector
supports Terraform Open Source versions 1.1.0
through 1.1.9 and 1.2.0 or higher.
3. Copy the existing Terraform templates to the
new Terraform server.

Note: Ensure that all the templates are
stored in separate directories and all the
template directories are in the same base
directory.
4. Test and modify the copied Terraform templates
to ensure compatibility with the target Terraform
Open Source version.
5. Create a Terraform Open Source config
provider. For more information, see Create a
Terraform Open Source config provider.
6. Remove the old catalog items per the business
strategy of your organization, and then retire the
old Terraform server.

Upgrading Terraform Enterprise and Terraform Cloud
Test and modify the existing Terraform templates to ensure compatibility with the
new Terraform Enterprise or Terraform Cloud version.

Note: The stacks and Terraform workspaces are tied to the Terraform version
through which they were provisioned. Therefore, the same Terraform version is
used to provision and deprovision a stack or Terraform workspace.
Using Cloud Services Catalog Terraform Connector
Understand the high-level use cases and usage workflows for the Cloud Services Catalog
Terraform Connector application.
Associate the Terraform input parameters with the Cloud Provisioning and Governance
catalog item
Create a JSON file to store the variables that are used in the template file so that you can map
them to discovered resources, pools, and filters. You can use variables or parameters from the
Terraform template to map to fields on the catalog item provision form.

Before you begin

Role required: cloud_designer

About this task

Cloud Services Catalog Terraform Connector supports this capability for Terraform Open Source,
Terraform Enterprise, and Terraform Cloud.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
Important: When you use Terraform templates to create catalog items, the Location
value specifies the datacenter or region to provision the configuration items and stacks.
Use the metadata file to map other variables based on discovered resources, networks,
profiles, pools and filters, and so on.
To auto-populate form fields in the catalog creation form while using Terraform templates, do the
following:
• Specify or define the key value pairs in the JSON file for variables that are defined in the
Terraform template.
• Configure variables to auto-populate fields and data in the Cloud User Portal > Cloud Catalog
> New > Provision page.
For more information on binding a parameter to a resource pool, see Bind a parameter to a
resource pool.

Procedure
1. In the directory or repository that is the basis for the catalog item, create a JSON file.

Important: Name the JSON file metadata.snc and store it in the same directory
or repository as the template (.tf) file. This naming convention enables discovery and
parsing of the metadata.snc JSON file as part of the config installable.
2. Specify the equivalent pool and filter as the data type for the Terraform variable in the
metadata.snc JSON file.
"Metadata": {
"SNC::Parameter::Metadata": {
"rgName": {
"datasource": "ServiceNow::Pools::
ResourceGroupPool.getByLDC"
},
"Network": {
"datasource":
"ServiceNow::Pools::NetworkPool.getObjectsByLDC"
},
"Subnet": {
"datasource": "ServiceNow::Pools::
SubnetPool.getObjectsByNetwork",
"datasourceFilter": { "Network": "Network" }
}
}
}
The value that you specify in the variable field of the metadata.snc file is populated in the
Provision section of the of the catalog item form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
The following image shows the fields in the Provision tab of the catalog form. The values are
auto-populate based on the variables defined in the metadata.snc file.
Example: Auto-populated values on the Provision section of the catalog
creation form

Populate the datacenter in Terraform-based catalog items
In any request for a catalog item using Terraform templates, the required Location value specifies
the datacenter or region where to provision the configuration items and stacks. You can use a
variable named region in the Terraform template to map to the Location field on the request
form.

Before you begin

Role required: cloud_designer

Procedure
In the template file that is the basis for the catalog item, define a variable named region.
variable "region" {
type="string"
}
• The field defined for the region variable does not appear on the Provision section of the
request form for the catalog item (the Location field serves that purpose).
• The value that the user specifies for the Location field on the request form configures the
datacenter or region for the resource.
Create a catalog item from the Terraform template
Create a catalog item from the Terraform template to request cloud resource provisioning.
Activated catalog items appear in the cloud user portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
Before you begin
• Ensure that an appropriate Terraform config provider is available. For more information on
creating the config provider, see Create a Terraform Open Source config provider and Create a
Terraform Enterprise or Terraform Cloud config provider.
• Ensure that the Terraform template is working (that is, you can directly use the template with
the Terraform system to provision the specified cloud resources). For more information on
Terraform templates, see the Terraform language documentation .
• Ensure that the provider block of the Terraform template adheres to the following syntax:
◦ Provider block syntax for the Microsoft Azure cloud:
provider "azurerm" {
subscription_id = "${var.subscriptionId}"
client_id
= "${var.clientId}"
client_secret
= "${var.clientSecret}"
tenant_id
= "${var.tenantId}"
}
◦ Provider block syntax for the Amazon Web Services cloud:
provider "aws" {
access_key
secret_key
region
}

= "${var.access_key}"
= "${var.secret_key}"
= "${var.region}"

◦ Provider block syntax for Google Cloud Platform
terraform {
required_providers {
google = {
source = "hashicorp/google"
version = "5.10.0"
}
}
}
provider "google" {
credentials = var.credentials
project
= var.project
region
= var.region
}
◦ Provider block syntax for VMware Cloud:
provider "vsphere" {
user
password
vsphere_server
}

= "${var.user}"
= "${var.password}"
= "${var.vsphere_server}"

Note: Do not hard-code any credential in the Terraform template. Use appropriate
Terraform variables to fetch the credentials from the ServiceNow AI Platform.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
• Ensure that the variable definition file (variable.tf, .tfvars, or .tfvars.json)
contains the definition of the variables used in the provider block.
• If you are using Terraform Enterprise or Terraform Cloud, ensure that the MID Server
can connect with Version Control System (VCS) accounts provisioned in the Terraform
organization.
To verify connectivity with the VCS accounts provisioned in the Terraform organization, execute
the appropriate curl command on the MID Server.
GitHub
curl -H "Authorization: <API credential>
https://<github-api-host>/user/repos?per_page=100&pag
e=1"
GitLab
curl -H "Authorization: <API credential>"
https://<gitlab-api-host>/api/v4/projects?visibility=
private&per_page=100&page=1
Microsoft Azure DevOps
curl -H "Authorization: <API credential>
https://<azure-devops-api-host>/<organization>/<proje
ct>/_apis/git/repositories?api-version=6.0"
Where,
◦ organization is the name of the Microsoft Azure DevOps organization.
◦ project is the name of the Microsoft Azure DevOps project.
For more information on the API credentials, see Cloud Services Catalog Terraform Connector
API Key Credentials form reference.
Role required: sn_cmp.cloud_service_designer

About this task

The Cloud Services Catalog Terraform Connector app supports the following Terraform data
types:
• string
• number
• bool
• list
• tuple
• map
• object

Procedure
1. Create a cloud catalog item.
a. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
b. Navigate to Design > Cloud Catalog Items.
c. Select New.
d. On the form, fill in the fields.
Cloud Catalog Item form
Field

Description

Name

Unique and descriptive name of the catalog item.

Source

Source of the catalog item.
Select Configuration Management Template from the drop-down list.

Provider
Type

Terraform config provider type that you want to use.
▪ To use Terraform Enterprise or Terraform Cloud, select Terraform Enterprise.
▪ To use a Linux-based Terraform Open Source server, select Terraform
Environment.
▪ To use a Windows-based Terraform Open Source server, select Terraform
Windows Environment.

Provider

Name of the Terraform config provider that you want to use.

e. Save the Cloud Catalog Item form.
2. Associate a Terraform template with the catalog item.
a. From the Cloud Templates related list, select New.
b. From the Configuration installable drop-down list, select the Terraform template you want to
use.
c. Save the ServiceNow Cloud Templates Versions form.

Note: A catalog item can include multiple versions of the cloud template, but only one
version can be active.
d. Select Activate to activate the cloud template.
3. Optional: To add or remove catalog item form fields, edit the variable sets associated with the
catalog item.
4. Select the Active check box to activate the catalog item.
5. Select Update.

What to do next

Verify that the catalog item appears in the Cloud User Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
Manage the Terraform template-based catalog items
Use an Infrastructure as Code (IaC) change task to create or update the Terraform templatebased catalog items. The IaC change task helps ensure that the catalog items are aligned with
the latest infrastructure specifications coded in the Terraform template.

Before you begin

Role required: admin

About this task

When the Cloud Services Catalog Terraform Connector app detects a change in the variables
on the Terraform template (.TF) file or the metadata (metadata.snc) file, it creates change
tasks. The change tasks are assigned to users who had created the catalog items (user with
[sn.cmp.cloud_service_designer] role). Based on the change detected on the template variables
or the metadata, the catalog item task prompts you take one of the following actions:
• Create a catalog item from the modified template version.
A new catalog item is created with the existing catalog item name appended by a number. For
example, if the existing catalog item is called Linux VM the new catalog item will be created
with the name Linux VM1
• Update the existing catalog item per the updated template version.
When you choose to update the existing catalog item per the updated template version, a new
version of the template is created and activated while the existing template version is retired
and rendered inactive.

Note: The name of the Terraform config provider should match between the
environments, while exporting Terraform template based catalog items. For example, if the
config provider is called TFE in dev environment, it should be named the same, TFE, in the
target environment (UAT, prod, etc.) too.
Until you perform one of the above mentioned actions, the catalog item is deactivated. When the
catalog item is in deactivated state, cloud users can’t access it.
The Cloud Services Catalog Terraform Connector creates an IaC change task for a Terraform
template-based catalog item when any one of the following conditions is met:
• One or more variables are added to the source Terraform template.
• One or more variables are deleted from the source Terraform template.
• One or more variables used in the source Terraform template undergo a data type change.
• Default value of one or more variables changes.

Note: Deprovisioning the impacted stack triggers de-provisioning at the cloud provider's
end.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
2. Navigate to IaC > Change Tasks.
3. Open the appropriate change task.
4. Optional: Customize the new or updated variables detected in the Terraform template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
a. Select the Customize Variables related link.
b. Edit the default value of the new or updated Terraform variables from the Terraform Task
Metadata related list.

Note: The default value mentioned in the variable record of the Terraform Task
Metadata related list overrides the default value mentioned in the Terraform template.
5. Optional: Select the changes link on the recommendation message to view a difference
comparison in the template content, as detected by IaC Discovery.
6. On the form, fill in the fields.
For more information, see Cloud Services Catalog Terraform Connector IAC Catalog Item Task
form reference.
7. Select Update.
Map credentials between Cloud Provisioning and Governance and Terraform
Map credential types and service account fields between Cloud Provisioning and Governance
and Terraform using Credential Mapping.

Before you begin

The latest Cloud Services Catalog Terraform Connector must be installed from the ServiceNow
Store .
Role required: sn_cmp.cloud_admin, admin

About this task

Use the Credential Mapping module to perform credential and service account mappings for
datacenter credentials used by the Terraform provider to provision datacenter resources and
Cloud Provisioning and Governance for discovery.

Procedure
1. Navigate to All > Design > Credential Mapping.
2. Select New.
Terraform Datacenter Mapping form

3. On the form, fill in the fields.
Terraform Datacenter Mappings form
Field

Description

Terraform
Provider

Name of the Terraform provider.

Datacenter The resource block whose credentials you are mapping from the lookup table.
Block
Credential The appropriate credential type from the lookup table. For example, Azure
Type
Service Principal [azure_service_principal].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
Field

Description

Credential An appropriate MID Server script include from the lookup table. For example,
Resolver
Search and select the TerraformProviderCredentialResolver script.
4. Select Submit.
The Terraform provider credentials record is created and displayed in the Terraform Datacenter
Mappings list.
5. On the record you created, navigate to the Credentials Mappings related list, and then select
New.
a. Complete the Credential Mapping form.

Field

Description

Provider
Authentication key (variable) field name as used by the provider. For
Authentication example, the Terraform provider block for (Amazon Web Services) AWS
Key
uses the field secret_key.
Discovery
The corresponding field in the Discovery credentials from the lookup table.
Credential Key For example, access_key field in Terraform corresponds to Secret
key field in the ServiceNow instance.
Terraform
Datacenter
Mapping

Datacenter for which you are mapping the credentials.

b. Select Submit.
6. Select the Service Account Mappings tab, and then select New.
a. Complete the Service Account Mapping form.

Field

Description

Provider
Authentication key (variable) field name as used by the provider.
Authentication For example, the Terraform provider block for AWS uses the field
Key
secret_key.
Service
Account Field

Service Account (variable) field name from the lookup table, whose
credentials you are mapping to the Provider Authentication Key.

Terraform
Datacenter
Mapping

Datacenter for which you are mapping the credentials.

b. Select Submit.
You have mapped the field values that you added under the Credential Mapping and Service
Account Mapping related lists to the Terraform provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
Associate the Terraform environment variable with the datacenter resource block
Associate the Terraform environment variable with the Cloud Provisioning and Governance
datacenter resource block. After associating the environment variable, you can use it to pass
custom inputs parameters during resource deployment through Terraform Enterprise.

Before you begin

Role required: admin

About this task

To set the Terraform environment variable conditionally, use a scripted expression. For more
information, see Using expressions in Cloud Provisioning and Governance.

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal.
The Cloud Admin Portal opens in a new browser tab.
2. Select Design > Resource Blocks.
3. Select the appropriate logical datacenter card.
4. Set the logical datacenter resource block to the Draft state.
5. Select the Operations tab.
6. From the Interface drop-down list, select Terraform Orchestration Interface.
7. Select Steps > Flow.Subflow.TFEProvision.
8. Set the terraform_variables text box to the environment variable key value pair.
For example: {"USER_AGENT_PROVIDER_NAME":"AgentValue"}
9. Set the logical datacenter resource block to the Published state.
Cloud Services Catalog Terraform Connector reference
Reference topics provide additional information about the Cloud Services Catalog Terraform
Connector application.
Cloud Services Catalog Terraform Connector Create Config Provider form reference
Cloud Provisioning and Governance uses the config provider to interact with the Terraform
deployment.

Field

Description

Name

Name of the config provider.

Provider

Config provider type.
• Terraform Enterprise: Select this value to create a Terraform Enterprise config
provider.
• Terraform Environment: Select this value to create a Linux-based Terraform
Open Source config provider.
• Terraform Windows Environment: Select this value to create a Windows-based
Terraform Open Source config provider.

Organization Terraform organization that contains the Terraform workspaces and template
repositories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
Field

Description

This field appears when you select Terraform Enterprise from the Provider dropdown list.
URL

Base URL of the Terraform API server or IP address of the Terraform server.
• To create a config provider for Terraform Open Source, enter the IP:port of the
Terraform server.
• To create a config provider for Terraform Enterprise, enter the base URL of the
Terraform Enterprise API server.
• To create a config provider for Terraform Cloud, enter https://
app.terraform.io/api/v2

Base
Directory

Directory where all the individual Terraform template directories are located.
This field appears when you select Terraform Environment or Terraform Windows
Environment from the Provider drop-down list.

Server Type

Server type of the Terraform deployment.

Credential

Credential for accessing Terraform.
• For the Linux-based Terraform Open Source server, select the appropriate SSH
private key credential.
• For the Windows-based Terraform Open Source server, select the appropriate
Remote Desktop Protocol (RDP) credential.
• For Terraform Enterprise or Terraform Cloud, select the appropriate Terraform
API key credential.

Version

Supported Terraform Open Source CLI version installed in the Terraform server.
For more information on the supported Terraform Open Source versions, see the
prerequisites section of Create a Terraform Open Source config provider.
For more information on the supported Terraform Enterprise and Terraform
Cloud versions, see the prerequisites section of Create a Terraform Enterprise or
Terraform Cloud config provider.
Starting with Cloud Provisioning and Governance: Terraform Connector version
1.5.2, version 1.0.0 is deprecated. The deprecated version represents Terraform
Open Source CLI version 0.11 and 0.12.

Cloud Services Catalog Terraform Connector SSH Private Key Credentials form reference
Cloud Services Catalog Terraform Connector uses the SSH private key credential to connect with
the Linux server on which Terraform Open Source is running.
The Linux server supports the following authentication modes:
• Authentication with username and password.
• Authentication using the private key only.
• Authentication using the private key and SSH passphrase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
Field

Description

Name

Name of the credential.

Username

SSH username of the Linux server on which Terraform is running.

Password

SSH password of the Linux server on which Terraform is running.

SSH passphrase

SSH passphrase of the Linux server on which Terraform is running.

SSH private key

SSH private key of the Linux server on which Terraform is running.

Cloud Services Catalog Terraform Connector Windows Credentials form reference
Cloud Services Catalog Terraform Connector uses the Windows credential to connect with the
Windows server on which Terraform Open Source is running.

Field

Description

Name

Name of the credential.

Username Remote Desktop Protocol (RDP) username for the Windows server on which
Terraform is running.
Password RDP password for the Windows server on which Terraform is running.
Cloud Services Catalog Terraform Connector API Key Credentials form reference
The Cloud Services Catalog Terraform Connector uses API key credentials to authenticate the
requests sent to the Terraform Enterprise and Terraform Cloud and the version control systems
provisioned in them.
To learn more about API key permissions and tokens, see https://developer.hashicorp.com/
terraform/cloud-docs/users-teams-organizations/api-tokens .

Field

Description

Name

Unique and descriptive name of the credential.

Active

Option for enabling this credential for discovery.
Select this check box to enable discovery.

API Key

API key that can be used to access the account.
• Terraform Enterprise or Terraform Cloud API key:
Bearer token for accessing Terraform Enterprise
or Terraform Cloud.
Ensure that the API key adheres to the following
syntax:
Bearer <API key>
• GitHub API key: API token for accessing the
GitHub enterprise or community account.
Ensure that the token adheres to the following
syntax:
Token <API key>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
Field

Description

• GitLab API key: Bearer token for accessing the
GitLab enterprise or community account.
Ensure that the token adheres to the following
syntax:
Bearer <API key>
• Microsoft Azure DevOps API key: base-64
encoded token for accessing the Azure DevOps
enterprise or community account.

Important: Prefix the API token with a
colon (:), and then encode the entire string
to base-64.
Ensure that the token adheres to the following
syntax:
Basic <base-64 encoded API key>
Applies to

MID Server to which you apply the credentials.
Select All MID servers

Order

Order in which the platform runs this credential as
it attempts to log in to devices. A smaller number
indicates that the credential appears higher in the
list. Establish the credential order when using large
numbers of credentials or when security locks out
users after three failed login attempts. If all the
credentials have the same order number, or none,
the instance tries the credentials in a random
order. The default value is 100.

Credential alias

Credential alias that can resolve the credential.

Cloud Services Catalog Terraform Connector IAC Catalog Item Task form reference
Use the Terraform Catalog Item Task form to specify the action you want to take to resolve the
catalog item change task.
IAC Catalog Item Task form
Field

Description

Catalog
Item Task
Action

Action that you want to take.
• Update catalog item with this template version
Select this option to update the catalog item with this template version. A new
version of the template is created and activated while the existing template
version is retired and rendered inactive.
• Create catalog item with this template
Select this option to create a catalog item with the existing catalog item name
and append the catalog item name with a number. For example, if your catalog

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
IAC Catalog Item Task form (continued)
Field

Description

item is named Linux VM, the new catalog is created with the name Linux
VM 1. The catalog item is automatically activated and available for provisioning
from the Cloud User portal.
Assignment The assignment group to which you're assigning the catalog item task.
Group
Assigned to The user to whom you're assigning the task.
Short
Brief description of the task.
Description
Approval

The approval status of the task.

Work Notes Any notes that you want to enter for the task record.
Day 2 operations using Workflow Studio subflow
Take advantage of the workflows framework to automate your Day 2 operations. Quickly write a
workflow that communicates with a Cloud API or a particular resource. Use SSH, PowerShell, or a
similar tool, to access and then extend the workflow capabilities.
Day 1 operations provision resources in a cloud as part of ordering from the ServiceNow catalog
or the cloud catalog. These operations result in a stack that contains a list of provisioned
resources. Day 2 operations can be carried out on the resources that are part of the stack or the
resources discovered by the system.
Previously, to execute Day 2 operations in Cloud Provisioning and Governance, you had to
interact directly with the Cloud API (CAPI), which frequently meant that you had to write new APIs
to support a new operation. You can now use subflows to map Day 2 operations and create REST
endpoints that call cloud providers and trigger platform-specific actions.

Learn more
To learn about workflows in general, see:
• Workflow overview
• Create a workflow from a table
To learn about how to work with variables in workflows, see:
• Workflow input variables
• Using variables in a workflow
Credential handling
Extend the workflow engine to manage processes and automate things outside of an instance
with Orchestration. Use the appropriate credentials required by Orchestration SSH and
PowerShell activity elements: SSH requires SSH and PowerShell requires Windows.
The Cloud Provisioning and Governance application generates credentials (node credentials)
after a VM is provisioned. Node credentials are used to connect to a VM. In addition to node
credentials, the system generates SSH/Windows credentials. These credentials are required for
Orchestration, which provides the automation for workflows.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
Pre-existing VMs
Cloud Provisioning and Governance now generates SSH private key credentials and Windows
credentials for all active pre-existing VMs provisioned through Cloud Provisioning and
Governance.

Delete credentials
When you deprovision or delete a VM, all associated credentials are deleted, including the node
credential and SSH private key credentials/Windows credentials, as well as the credentials alias
tag.
Create a response action for Cloud Provisioning and Governance
Create a subflow with the required input parameters that notifies Cloud Provisioning and
Governance whether the flow completes successfully or not.

Before you begin
• Ensure that you are familiar with the concepts of , Subflows

, and Action Designer

.

• Create a subflow that you intend to invoke for pre or post-provisioning.
Role required: flow_designer, action_designer, or admin

About this task

Inform the Cloud Provisioning and Governance application, the execution status of steps in the
subflow, by populating a response for each step.
• Create a action with relevant input parameters.
• Add a script to the action.
• Pass a correlation id to the action in the subflow.
The response action communicates to the Cloud Provisioning and Governance application
whether a step in the subflow, executes successfully or the step's condition fails and results in an
error.

Procedure
1. Navigate to All > Flow Designer > Actions tab, select New Action.
For more information, see Create an action .
2. Fill in the Action Properties.
3. Create and define action inputs to make data available to the action steps and outputs.
Create the following input variables: error, log, output, and correlation id.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
Sample response action to Cloud Provisioning and Governance

4. Select and add a script action step to perform an operation on the action inputs.
5. Save and Publish the action.
6. In the Flow Designer, open the subflow you are invoking.

Note: Ensure that the subflow input flowcorrelationid exists in the subflow.
7. On the same subflow page, click Actions to expand and find Actions, Subflow or Flow Logic.
8. Select Cloud Provisioning and Governance and, search and add the response action from the
drop down.
9. Select relevant values from the Data Pill Picker, for the inputs in the action.

Note: Reuse the flowcorrelationid input from the Data Panel for every action in
the subflow that has a logical end step.
10. Optional: If you are using the Terraform Connector for Terraform Enterprise, follow these steps.
a. To add actions, flows, subflows, or flow logic, click Select to add an Action, Flow Logic, or
Subflow.
b. Select Action > Cloud Management: Terraform Connector, and select a default action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
The action you created sends a response to the Cloud Provisioning and Governance
application, updating the order with the status of the subflow's step.

What to do next

Test the subflow, and publish it when it is ready to be added to a flow or called from a script.
Note: You can only test or publish subflows that contain at least one action.
Create a cloud catalog item
Create a cloud catalog item for provisioning, based on a template or an existing blueprint, and
publish the catalog item to provide a service.

Before you begin

Role required: sn_cmp.cloud_service_designer.

About this task

While creating a catalog item, you can associate the catalog item with a template either native to
the cloud provider ( for example, CFT, ARM, GDM) or a Terraform IaC template. After you generate
a catalog item, the system automatically generates components such as variable sets, lifecycle
operations, rules, and pre- and post-provision operations. You can manage all these components
from the Create Catalog Item page.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog items.
All the catalog items that you've created are listed in a card layout view. You can click an
inactive catalog item to provision it.
2. Click New.
The Cloud Catalog Items screen appears.
3. On the form, fill in the fields.
Cloud Catalog Item form
Field

Description

Name

Name for the catalog item.

Active

Option for making the catalog item available.
This check box can be selected only after
you've selected a blueprint.

Icon

Image to appear as an icon beside the item
name in the catalog. You can upload a 16

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
Field

Description

x16 pixel image. If no image is uploaded, the
default icon appears beside this item. The
uploaded image overwrites the default image.
The image you upload appears in the service
®
catalog; not in the ServiceNow Cloud
Provisioning and Governance application.
Picture

Image for the catalog item. The image that
you select is displayed for the catalog item in
the Cloud User Portal (after you click Launch
a Stack).

Catalogs

Names of catalogs.

Category

Category for the item appears by default.
You can change the category. Catalog
searches find only items that are assigned
to a category. The categories appear in the
service catalog. The catalog item can appear
in multiple categories. To add categories,
click the Categories tab and then click New
or Edit.

Source

Source type (Cloud Template or Custom) to
associate the catalog item with.

Template type
◦ Select Cloud Template, then select the
type of template (ARM Template or
CloudFormation Template, to import
cloud-native templates)
◦ Select Configuration Management
Template to use Config Management
provider templates from Anisible or
Terraform.
Blueprint

If you selected Custom in the Source field,
then select a blueprint to associate with the
catalog item.

Blueprint Operation

The value in this field is automatically
populated after you generate the catalog
item. This field appears only when you select
a blueprint.

Short description

Brief description of the catalog item. This
description appears in the Cloud User Portal
next to the catalog item.

Description

Full description of the catalog item.
This description appears in the service
catalog; not in the Cloud Provisioning and
Governance application. You can embed
videos, images, links to internal knowledge
base (KB) articles, and links to external
sources of information and instruction
documentation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
4. Click Submit.
The catalog item and all associated components such as variable sets, lifecycle operations,
and rules are generated and appear as tabs in the Cloud Catalog Item page.

Note: If you selected Template from the Source type list, you must create a template
and associate the template with the catalog item.
The related links are actions that you can perform on the catalog item.

Action

Description

Export Catalog Item

Exports all the components (such as
blueprints, resource blocks, rules) of the
catalog item from one environment to the
other. See Moving Cloud Provisioning and
Governance content across environments.

Item Diagnostic

Identifies possible issues with the catalog
item data and configuration. See Item
diagnostic report

Manage Attributes

See Manage operation attributes.

Reset Catalog Item

Resets (to the last change you made) any
customizations that you've made to the
catalog item.

What to do next

Create a cloud template-based catalog item.
Related topics
Create a catalog item from a Terraform template
Publish a blueprint as a cloud catalog item
You can create and publish a catalog item directly from a blueprint.

Before you begin

Role required: sn_cmp.cloud_service_designer
• Starting with Orlando, Cloud Provisioning blueprints are available on instances upgraded from
a previous release but you cannot create new blueprints. Existing blueprints and catalog items
from those blueprints remain unaffected and continue to work.
• Use Cloud Provisioning cloud templates to create catalog items in place of blueprints. Cloud
Provisioning cloud templates allow you to ingest Azure ARM, AWS CFT, Google Deployment
Manager (GDM) and Terraform specification syntax in cloud catalog items to run your cloud
deployment orchestration.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Blueprints.
2. Open a blueprint (in draft mode), click the Catalog tab, and then click Create Catalog Item.
The Create Blueprint Catalog dialog box appears.
3. Enter a name for the catalog item in the Name field and click Save.
The catalog item is generated and appears in the Catalog tab.
4. Click the catalog item to make any updates to the catalog item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
The Cloud Catalog Item screen appears.
5. Click Update to save the changes you made.
Create a cloud template-based catalog item
Create a cloud template and associate the template with a catalog item. Once you've created a
template, you can reuse the template to create additional catalog items for the services you want
to provision.

Before you begin

Role required: sn_cmp.cloud_service_designer.

About this task

You can create a template by uploading a generic template file, importing a template from a
public URL, or by copying and pasting the contents of an existing template. AWS CloudFormation
(CFT) templates support JSON and YAML. Azure Resource Manager (ARM) templates support
JSON. The following public template URL content types are supported:
• Text/Plain
• Application/JSON
• YAML MIME

Note: Catalog items that were based on templates in earlier releases are now treated as if
they are based on blueprints.
You can update a template as often as needed. With each update, a new version of the template
is created. A template can be in one of three states: draft, active, or history. When you create a
template and do not activate it, the template is in a draft state. Once you activate the template,
the state changes to active. If you create another template and activate it, the state of the
previous active template turns into history. At any time, only one template is in the active state.
Each time you activate a template, the previous active template becomes history.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog Items and then create a catalog
item or open an existing catalog item.
2. Click Cloud Templates > New and then enter a meaningful short description in the Short
description field.
3. Specify the Ingestion method.
Option

Description

Import a template by specifying a public URL
where the template resides. Select this option
Import from URL

and then click the lock icon (
) to unlock
the Cloud template URL field. Enter the pub­
lic URL in this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
Option

Description

Note: For the public URL, we sup­
port only HTTP and HTTPS protocols,
and do not support FTP. Ensure that
the size of the template does not ex­
ceed the default value of 3 MB. You
can change the default value of the
file size by changing the value in the

sn_cmp.template_content_size_supported_i
property in the sys_properties table.
Enter the file size in bytes. There's
also a default time-out of five min­
utes for an HTTP request. You can
change the time-out value in the

sn_cmp.template_url_import_http_timeout
property in the sys_properties table. En­
ter the new value in milliseconds.
Upload a file

Upload a template from your local worksta­
tion.

Use template body

Paste the contents of the template file in the
Body field.

After you specify the Ingestion method, the template is validated and the results appear in the
Validation status and Validation message fields.
4. Click Submit.
The template is created and the Cloud Catalog Item page opens.
5. If this is the first version of template, skip this step else on the Cloud Templates tab, open the
template (currently in Draft state) to view the template version parameters.

Note: The first version of a template that you create and publish has no conflict issues.
If you update the template, a conflict can arise. If a parameter Action Type has the value
Update, then specify a value for Decision.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


