# Zurich IT Operations Management — Cloud Configuration Governance

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 635–708 of 4823

Sections: Cloud Configuration Governance (p635)

---

<!-- page 635 -->
Cloud Provisioning and Governance: AWS test suite (continued)
Test

Description

Release version

CMP: Verify whether stack
status is active

Validate the status of the stack Orlando
after provisioning the stack.

CMP: Verify stack status after
Day2 - Stop operation

Validate the status of the stack Orlando
status changed from 'On' to
'Off' after the Stop operation.

CMP: Verify stack status after
Day2 - Start operation

Validate the status of the stack Orlando
status changed from 'Off' to
'On' after the Start operation.

CMP: Verify stack status after
Day2 - De-provision operation

Validate the status of the stack Orlando
status changed from 'On'
to 'terminate' after the deprovisioning operation.

To learn more about Cloud Provisioning and Governance, see Cloud Provisioning and
Governance.
Related topics
Quick start tests

Cloud Configuration Governance
®

Use the ServiceNow Cloud Configuration Governance application to check the configuration
settings of cloud resources in your organization against a set of policies to identify violations.
After identifying the violation, use remediation workflows to mitigate them.

Note: Cloud Configuration Governance is not supported in self-hosted environments.

Explore
Exploring Cloud Configuration
Governance

Set up

Administer

• Install Cloud Configuration
Governance

• Policies

• Install the CCG Content
Pack

• Scan configuration
• Remediation

• Set up Cloud Configuration
Governance for AWS
• Set up Cloud Configuration
Governance for Microsoft
Azure
Use

Develop

Troubleshoot and get help

• Run the scan configuration

• Developer training

• View dashboard

• Developer documentation

• Ask or answer questions
in the Cloud Configuration
Governance forum on the
ServiceNow Community

• Run remediation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
• Search the Known Error
Portal for known error
articles
• Contact Customer Service
and Support

Exploring Cloud Configuration Governance
Understand the typical Cloud Configuration Governance workflow and high-level tasks.
To use Cloud Configuration Governance for managing the configuration of the cloud resources,
perform the following tasks:
1. Install Cloud Configuration Governance. For more information, see Install Cloud Configuration
Governance.
2. Install the CCG Content Pack to access the base system Cloud Configuration Governance
contents. For more information, see Install the CCG Content Pack.
3. Assign Cloud Configuration Governance roles to users. For more information on the Cloud
Configuration Governance roles, see Cloud Configuration Governance roles and system
properties.
4. To manage the configuration of the Amazon Web Services (AWS) resources through Cloud
Configuration Governance, see Set up Cloud Configuration Governance for AWS.
5. To manage the configuration of the Microsoft Azure resources through Cloud Configuration
Governance, see Set up Cloud Configuration Governance for Microsoft Azure.
6. Create a scan configuration to scan the cloud resources against one or more policy sets and
identify the policy violations. For more information, see Create a scan configuration.
7. Run the appropriate remediation action to fix the non-compliant cloud configuration identified
during the scan run. For more information, see Run remediation.

What to do next
See Plugins or applications installed with ITOM Cloud Accelerate to find the list of plugins you
activate with Cloud Configuration Governance.
Install Cloud Configuration Governance
You can install the Cloud Configuration Governance application (com.sn.itom.ccg) if you have the
®
admin role. The application installs related ServiceNow Store applications and plugins if they
aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: admin

About this task

®

Cloud Configuration Governance uses the ServiceNow ITOM Cloud Accelerate subscription.
®
When you install this application, it automatically installs several roles and the ServiceNow
Cloud Action Library application (sn.itom.cal).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Configuration Governance application (com.sn.itom.ccg) using the filter criteria
and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they’ll be installed, are currently installed, or
must be installed. If any plugins or applications must be installed, you must install them before
you can install Cloud Configuration Governance.
4. Select Install.

What to do next

To access the base system contents such as policies, configuration collectors, remediations, and
more, install the CCG Content Pack application. For more information, see Install CCG Content
Pack.
Install the CCG Content Pack
You can install the CCG Content Pack application (sn_itom_ccg_cp) if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the CCG Content Pack
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The CCG Content Pack provides the base system contents such as policies, resource collectors,
configuration collectors, and remediation actions for the Cloud Configuration Governance app.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the CCG Content Pack application (sn_itom_ccg_cp) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
4. Select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
Set up Cloud Configuration Governance for AWS
Set up access to the Amazon Web Services (AWS) cloud accounts in Cloud Configuration
Governance to enable interaction between the application and the cloud. The application
requires access to the cloud accounts to scan the cloud resources for non-compliant
configurations and remediate them.

Before you begin

Role required: sn_itom_ccg.scheduling_admin

About this task

For the purposes of configuring access for AWS accounts, the following terms are used:
Trusting accounts
The trusting accounts don't have permanent AWS credentials. You configure the
trust relationship for IAM roles in these accounts to rely on other accounts for
access.
Trusted accounts
The trusted accounts are used by the trusting accounts for access. The ServiceNow
UI refers to the trusted accounts as accessor accounts.
Use any one of the following methods to configure access to the AWS accounts:
• Configure the permanent credentials in the ServiceNow AI Platform to connect with
the standalone AWS accounts (discreet accounts). The Cloud Service Account
[cmdb_ci_cloud_service-account] table contains information on the service account type, such
as management or member account and access credentials.
• Configure the member accounts to rely on the management account for access. In this case,
configure the permanent credentials of the management account in the ServiceNow AI
Platform.
• Configure the accounts to rely on a trusted account for access (lateral access within the
same AWS organization or across different AWS organizations). In this case, configure the
permanent credentials of the trusted account in the ServiceNow AI Platform.

Note: Cloud Configuration Governance doesn't use a MID Server-based assume role
setup to access the trusting accounts.

Procedure
1. Create credentials for the AWS service accounts.
a. Navigate to Connection & Credentials > Credentials.
b. Select New, and then select AWS Credentials.
c. On the form, fill in the fields.
AWS Credentials form
Field

Description

Name

Unique and descriptive name for the AWS credentials.

Active

Option to use the credential.

Access Key ID

The access key ID that you generated on the AWS management
console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


<!-- page 639 -->
Field

Description

Secret Access
Key

The secret access key that you generated on the AWS management
console.

d. Select Save.
2. Select the sn_itom_cal.Aws_Creds_Alias credential alias or create a credential alias.
a. Unlock the credential alias.
b. Search for a credential alias.
c. Select New.
d. On the form, fill in the fields.
Connection & Credential Alias form
Field

Description

Name

Unique name of the alias.

Type

Credential alias type.
Select Credential from the Type drop-down list.

e. Select Submit.
3. Set the Authentication Algorithm field to AWS Authenticator.
4. Select Submit.
5. Set up an AWS service account.
a. Navigate to Cloud Provisioning and Governance > Service accounts.
b. Select New.
c. On the form, fill in the fields.
Cloud Service Account form
Field

Description

Name

Unique name of the service account.

Account ID 12-digit user account number. Expand the list under the account name on the
AWS Management Console to view the number.

Important: In the Account ID field, remove the hyphen characters (-)
from the number.
Discovery The credentials needed for ServiceNow applications to access the cloud
credentials account. You can configure the discovery credentials at a later stage, while
configuring access to the AWS accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

639


<!-- page 640 -->
Field

Description

▪ If you are setting up an independent service account or a management
account, select its AWS credential.
▪ To use other AWS accounts to access this account, leave the field empty.
For example, you don't have to specify the AWS credentials for accounts
assuming Identity and Access Management (IAM) roles or member
accounts using their management account for access.
Datacenter URL of the datacenter.
URL
Leave this field empty.

Note: For GovCloud, use the URL https://ec2.us-govwest-1.amazonaws.com

.

Datacenter Type of the datacenter where the account is hosted.
type
Select AWS Datacenter.
Datacenter Auto-generated value: Status and timestamp of the last execution of
discovery Discovery on the datacenter.
status
Parent
account

Name of the management account that represents the AWS organization to
which this member account belongs.
This field appears when you select AWS Datacenter. If the account doesn't
belong to any AWS organization, leave this field empty.

Is master
account

Management account flag.

Accessor
account

Name of the trusted account.

This check box appears when you select AWS Datacenter from the
Datacenter Type drop-down. Select the check box to associate the AWS
service account with the management account. Select this check box only
for accounts that you have previously configured as management accounts
with some member accounts belonging to them. For more information on AWS
Organization, see AWS documentation .

Configure this field only for accounts that don't use permanent AWS
credentials and rely on IAM roles for access.

d. Select Submit.
6. Do any one of the following actions.
Option

Description

Create an assume role configuration for the
management account

If you want to use a management account to
scan the member accounts of the AWS orga­
nization, create an assume role configuration
for the management account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

640


<!-- page 641 -->
Option

Description

a. If you don't want to use the OrganizationAc­
countAccessRole to access the member
account, configure the trusting account for
Cloud Configuration Governance.
For more information, see Configure the
trusting account for Cloud Configuration
Governance and Cloud Action Library.
b. Repeat step 6.a for all the member ac­
counts that must be scanned through the
management account without using the Or­
ganizationAccountAccessRole.
c. If you want to use the OrganizationAccoun­
tAccessRole to access the member ac­
count, create an assume role configuration
for the management account.
For more information, see Create an as­
sume role configuration.
If you want to use a trusted account to scan
the trusting account, configure the trusting ac­
count for Cloud Configuration Governance.

Configure the trusting account for Cloud
Configuration Governance

a. Configure the trusting account for Cloud
Configuration Governance.
For more information, see Configure the
trusting account for Cloud Configuration
Governance and Cloud Action Library.
b. Repeat step 6.a for all the trusting accounts
that must be scanned through the trusted
account.

7. Install and configure the MID Servers.
For more information, see Install and configure MID Servers.
8. Run datacenter discovery to identify the datacenters associated with the service accounts.
For more information, see Run datacenter discovery.
Configure the trusting account for Cloud Configuration Governance and Cloud Action Library
Configure the trusting account whose resources need to be accessed, to rely on the trusted
account using the Identity and Access Management (IAM) role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
Before you begin
• Familiarize yourself with the Amazon documentation on Creating a role to delegate
permissions to an IAM user .
• Decide which Amazon Web Services (AWS) account is going to be the trusted account.
You use the trusted account to configure temporary credentials for Cloud Configuration
Governance using IAM roles. The trusted account that you use to access other accounts using
IAM roles is referred to as an accessor account.
• Set up the trusted and the trusting account as described in Set up Cloud Configuration
Governance for AWS.
Role required: sn_itom_ccg.scheduling_admin

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

642


<!-- page 643 -->
f. Verify that the Action value is set to sts:AssumeRole.
g. Select Update Trust Policy.
2. Configure the trusted service account for the trusting account in the ServiceNow AI Platform.
a. Navigate to All > Cloud Provisioning and Governance > Service Accounts
b. Open the trusting account.
c. On the Cloud Service Account form, enter the name of the trusted account in the Accessor
account field.
d. Select Update.
3. Create an assume role configuration for the trusting account.
For more information, see Create an assume role configuration.
Create an assume role configuration
Create a service account assume role configuration to facilitate cross-account access that
is from a management account to a member account or from a trusted account to a trusting
account.

Before you begin

Make sure that the accessor account credentials are configured in the ServiceNow AI Platform.
Role required: sn_itom_ccg.scheduling_admin

About this task

If permanent credentials aren't defined for the member account, Cloud
Configuration Governance checks the Cloud Service Account Assume Role Config
[sn_itom_ccg_service_account_assume_role_config] table to identify the special configuration
associated with the management account, and then uses the management account credentials
to generate temporary credentials for the member accounts. If the configuration exists in the
table, Cloud Configuration Governance uses the temporary credentials acquired by specifying
a role and its configuration in the Amazon Web Services (AWS) Security Token Services API
AssumeRole action.

Procedure
1. Navigate to All > Cloud Configuration Governance > Assume Role Config.
2. Select New.
3. Fill the values on the Service Account Assume Role Config form.
For a description of the form fields, see Cloud Configuration Governance Service Account
Assume Role Config form.
4. Select Submit.
Set up Cloud Configuration Governance for Microsoft Azure
Set up access to the Microsoft Azure cloud accounts in Cloud Configuration Governance to
enable interaction between the application and the cloud. The application requires access
to the cloud accounts of your organization to scan the cloud resources for non-compliant
configurations and remediate them.

Before you begin

Make sure the follow tasks are complete:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
1. You have migrated from CAPI to patterns. For more details, see Migrate from CAPI to Patterns.
2. The Microsoft Azure credentials to access the Microsoft Azure account have been created. For
more information, see Create Azure cloud credentials.
3. Your Azure service accounts have been configured. For more information, see Set up Azure
service accounts.
Role required: sn_itom_ccg.scheduling_admin

Procedure
1. Create an Integration Hub connection for Microsoft Azure.
a. Navigate to Process Automation > Flow Designer, and select the Integrations tab.
b. On the Azure Connection tile, select Add Connection.
c. On the form, fill in the fields.
Scan Schedule form
Field

Description

Connection name

Name of the connection.

OAuth client ID

Microsoft Azure application ID.

OAuth client secret

Microsoft Azure application key.

OAuth token URL

Tenant ID of the Microsoft Azure account.
Replace {tenant} with the Microsoft Azure tenant ID.

d. Select Create and Get OAuth Token.
2. Run datacenter discovery to identify the datacenters attached with the service accounts.
For more information, see Run datacenter discovery.
Domain separation and Cloud Configuration Governance
Domain separation is not supported in Cloud Configuration Governance . Domain separation
enables you to separate data, processes, and administrative tasks into logical groupings called
domains. You can control several aspects of this separation, including which users can see and
access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
Using Cloud Configuration Governance
Cloud Configuration Governance provides a set of ready-to-use policies. You can either use
these policies to identify the non-compliant cloud resource configurations within your cloud
organization, or create custom policies. After identifying the non-compliant cloud resource
configurations, you can use the remediation feature of the application to fix the violations.

Note: Starting with Cloud Configuration Governance version 1.3.7, the base system
contents are moved to the CCG Content Pack. Install the CCG Content Pack to access the
base system Cloud Configuration Governance contents.
Scan configuration
Scan configuration defines the various settings for the Cloud Configuration Governance scan.
When you execute a scan configuration, Cloud Configuration Governance identifies the targeted
cloud resource types from the policy sets attached with the scan configuration. Then, it invokes
the respective resource collectors and configuration collectors to import the configuration
data of the targeted resource types. After completing the configuration data import, Cloud
Configuration Governance compares the imported configuration data against the non-compliant
configurations defined in the policies. If Cloud Configuration Governance detects a match, it
reports a violation in the audit violation report.
You can reduce the amount of configuration data imported into the system by specifying a
set of service account-datacenter combinations for the scan configuration. If specified, Cloud
Configuration Governance imports the data from the specified service account-datacenter
combinations only. In addition, you can also use tag-based cloud resource filters to identify the
cloud resources whose configuration data must be imported for the scan.
For more information on creating scan configuration, see Create a scan configuration.
Create a scan configuration
Create a scan configuration in Cloud Configuration Governance to scan the cloud resources
against one or more policy sets and identify the policy violations.

Before you begin
• Ensure that a suitable policy set is available for the scan. The policy set enforces a given
security or organizational standard. For more information on creating the policy set, see Create
a policy set.
• Role required: sn_itom_ccg.scheduling_admin

About this task

Note: Starting with Cloud Configuration Governance version 1.3.7, the base system
contents are moved to the CCG Content Pack. Install the CCG Content Pack to access the
base system Cloud Configuration Governance contents.

Procedure
1. Navigate to Cloud Configuration Governance > Scan Configurations.
2. Select New.
3. Fill the values on the Scan Configuration form.
For a description of the form fields, see Cloud Configuration Governance Scan configuration
form.
4. Select Submit.
5. To create a schedule to execute the scan configuration, select Setup Schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
a. Optional: Set a criteria to cancel the long running scan runs.
To import the configuration data of the cloud resources, Cloud Configuration Governance
resource collectors and configuration collectors use Workflow Studio subflows. Sometimes,
the subflow errors out and it doesn't report the error. In such cases, the scan run can run
indefinitely. Setting a cancellation criteria helps to cancel such scans.

What to do next

Run the scan configuration to evaluate the resource configuration of the given cloud against the
specified policy sets and identify the policy violations. For more information, see Run the scan
configuration.
Run a scan configuration
Run a scan configuration to evaluate the resource configuration of the given cloud against the
specified policy sets and identify the policy violations. Cloud Configuration Governance reports
the identified policy violations as audit results.

Before you begin

Role required: sn_itom_ccg.scheduling_admin

Procedure
1. Navigate to Cloud Configuration Governance > Scan Configurations.
2. Open the scan configuration that you want to run.
3. Select Execute.
Scan run
Each execution of a scan configuration is called a scan run. The Scan Runs module displays a list
of all the scan runs.
Cloud Configuration Governance displays the following information for each scan run in a related
list:
• Scan Status: This tab displays the data collection status at the service account level. Open the
scan run record to view the configuration data collection status for each datacenter covered in
the scan. Use the flow execution context to troubleshoot the execution of the policy.
• Policy Run Status: This tab displays information on the policies executed during the scan run
and the status of their execution. Use the flow execution context to troubleshoot the execution
of the policy.
• Run Resource Assocs: This tab displays information about the resources and their
configuration data imported during the scan run. You can select any resource to view the
following information:
◦ Configuration settings of the resource
◦ Resource attributes
◦ Audit results for the resource
Scan Run Logs tab: It displays the trace of the scan run.
Related topics
Scan configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
Cloud Configuration Governance policies
Cloud Configuration Governance policy defines the non-compliant configurations for a given
cloud resource type.
Each Cloud Configuration Governance policy contains the following information:
• The cloud on which the resource is provisioned.
• The cloud resource type.
• Definition of the non-compliant configuration. For example, unencrypted Amazon Web
Services (AWS) S3 buckets or insecure Identity and Access Management (IAM) accounts.
• Definition of the audit violation (policy violation) report.

Note: Starting with Cloud Configuration Governance version 1.3.7, the base system
contents are moved to the CCG Content Pack. Install the CCG Content Pack to access the
base system Cloud Configuration Governance contents.
Cloud Configuration Governance provides several base system policies. You can either use
these policies or create custom policies as per the needs of your organization. Depending on the
need and your familiarity with the ServiceNow AI Platform, you can use any one of the following
methods to create the policy:
• Create a policy with the condition builder
• Create a policy with Integration Hub flow
• Create a policy through script
To use the policy, add the policy to a policy set. Each policy set can contain one or more policies.
For more information on creating policy sets, see Create policy set.
Base system policies
Name

Type

Description

AWS IAM User
Activity policy

Condition
builder

Policy to check if the password is enabled for the AWS IAM
user.
To use this policy, ensure that the AWS IAM user account has
the following permissions:
• Iam:GetCredentialReport
• Iam:GenerateCredentialReport

AWS S3
Enforce Bucket
encryption

Condition
builder

Policy to check if the AWS S3 buckets are encrypted.

AWS Sample flow Integration Policy to illustrate an Integration Hub flow-based policy.
policy
Hub flow
AWS VM
HardwareType

Condition
builder

Policy to check if the deployed EC2 VMs are using only the
approved hardware types.

AWS VM
IPAddress

Script

Policy to check if the IP address of the EC2 VM is matching with
the Configuration Management Database (CMDB) record.

AWS VM
Monitoring State

Condition
builder

Policy to check if detailed monitoring is enabled for the EC2
VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
Base system policies (continued)
Name

Type

Description

Azure VM
HardwareType

Condition
builder

Policy to check if the deployed Azure VMs are using only the
approved hardware types.

Azure VM IP
Address

Script

Policy to check if the IP address of the Azure VM is matching
with the CMDB record.

Azure VM
Monitoring State

Condition
builder

Policy to check if detailed monitoring is enabled for the Azure
VM.

• For more information on creating policy sets, see Create policy set.
• For more information on base system policies and policy sets, see AWS policies, Azure
policies, and Policy sets.
Create a policy with the condition builder
Use the condition builder to create a Cloud Configuration Governance policy without writing any
code at all. Use it to specify the criteria for identifying and reporting the non-compliant cloud
resource configurations.

Before you begin

Role required: sn_itom_ccg.governor

Procedure
1. Navigate to Cloud Configuration Governance > Policies.
2. Select New.
3. On the Policy form, fill in the fields.
For form field description, see Cloud Configuration Governance Policy form.
Refer to one of the base system condition builder-based policies as an example for creating
the custom policy.
4. Select Submit.

What to do next

Test the policy to make sure that it is working properly. For more information, see Test the policy.
Create a policy with the Integration Hub subflow
Use the Integration Hub subflow to create a Cloud Configuration Governance policy. An
Integration Hub subflow uses graphical coding mechanisms to specify the policy conditions. It
offers greater flexibility in audit violation reporting than the condition builder. That is, you can use
the same policy to report different types of issues.

Before you begin

Role required: sn_itom_ccg.governor

About this task

Refer to the base system Sample flow policy as an example for creating new policies with the
Integration Hub subflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
Procedure
1. Create an Integration Hub subflow for the policy.
a. Copy the CCG – Flow Policy Template subflow.
For more information on copying the subflow, see Copy an Integration Hub subflow template.
b. To read the configuration data, add the CCG – Read Config Setting action.
For more information on the CCG – Read Config Setting action, see Cloud Configuration
Governance actions reference.
c. Repeat step 1.b for all the configuration keys that you want to use in the policy.
d. Add the flow logic.
e. Assign subflow outputs.
The subflow output settings define how Cloud Configuration Governance reports the audit
violations. For more information on assigning the subflow output, see Cloud Configuration
Governance actions reference.
f. Optional: If you have not selected the Report Issue option in the Assign Subflow outputs
form, add an action under the Assign Subflow outputs action, and then add the Create
Record action.
For more information on the Create Record action, see Cloud Configuration Governance
actions reference.
g. Save the subflow.
2. Navigate to Cloud Configuration Governance > Policies.
3. Select New.
4. On the Policy form, fill in the fields.
For a description of the form fields, see Cloud Configuration Governance Policy form.
5. Select Submit.

What to do next

Test the policy to make sure that it is working properly. For more information, see Test the policy.
Create a policy through script
Use the ServiceNow platform native scripting mechanism to define the policy condition. You can
externalize the decision making to script includes and reuse the code across different policies.

Before you begin

Role required: sn_itom_ccg.governor

Procedure
1. Navigate to Cloud Configuration Governance > Policies.
2. Select New.
3. On the Policy form, fill in the fields.
For the description of the form fields, see Cloud Configuration Governance Policy form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
Refer to one of the base system script-based policies as an example for creating the custom
policy.
4. Select Submit.

What to do next

Test the policy to make sure that it is working properly. For more information, see Test the policy.
Test the policy
Test the Cloud Configuration Governance policy against the configuration data imported for a
previous scan run. Test the policy to make sure that it is working properly.

Before you begin
• Ensure that a scan run is available that contains the configuration data you want to check
through the policy.
• Role required: sn_itom_ccg.governor

Procedure
1. Navigate to Cloud Configuration Governance > Policy.
2. Open the policy.
3. Select Test Policy.
4. Select the appropriate scan run.
5. Select OK.
Create a configuration key
Create a configuration key in Cloud Configuration Governance to use it in the policies. The
configuration key specifies the resource collector and configuration collectors used to import the
configuration data from the cloud. It also specifies the data type of the configuration value.

Before you begin
• Ensure that a resource collector is available for the resource type mentioned in the
configuration key. If the resource collector is not available, you can create it. For more
information, see Create a resource collector.
• Role required: sn_itom_ccg.governor

Procedure
1. Navigate to Cloud Configuration Governance > Configuration Keys.
2. Select New.
3. On the Configuration Key form, fill in the fields.
For the description of the form fields, see Cloud Configuration Governance Configuration key
form.
4. Select Submit.
Create a resource collector
Create a resource collector to set up how Cloud Configuration Governance imports all the
resources of a given type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
Before you begin

Role required: sn_itom_ccg.governor

About this task

The cloud resources are available under a service account or service account-datacenter
combination. The resource collector uses Integration Hub subflows to import the resource list
from the cloud. Create only one resource collector per resource type.

Procedure
1. Create an Integration Hub subflow for the configuration collector.
a. Copy the CCG – Collector Template subflow.
For more information on copying subflow templates, see Copy an Integration Hub subflow
template.
b. Add the appropriate Cloud Action Library (CAL) action and flow logic to read the resource
data.
For more information on the available CAL actions, see Cloud Action Library actions
reference.
If CAL doesn’t have the required action, you can refer to an existing CAL action and use the
Integration Hub datastream action to implement the custom action. Alternatively, you can
also use the REST step. For more information, see Data Stream actions and pagination
and
REST step .
c. Add the CCG – Insert Resource Record action, and then select the appropriate inputs to
insert the configuration data to the Configuration Management Database (CMDB).
For more information on the CCG – Insert Resource Record action, see Cloud Configuration
Governance actions reference.
d. Select Publish.
2. Navigate to Cloud Configuration Governance > Resource Collectors.
3. Select New.
4. On the form, fill in the fields.
For the description of the field values, see Cloud Configuration Governance Resource collector
form.
5. Select Submit.

What to do next
• If the required configuration data is not available at the cloud resource level, see Create a
configuration key.
• If you have created a new resource type in the Cloud Configuration Governance application,
you can optionally create a CI finder mapping for the newly created resource type. For more
information, see Create a CI finder mapping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
Create a configuration collector
Create a configuration collector to set up how Cloud Configuration Governance imports the
configuration data from the cloud. The configuration collector uses Integration Hub subflows to
import the configuration data from the cloud.

Before you begin
• Ensure that Cloud Configuration Governance contains suitable configuration keys for all the
configuration values that you want to import from the cloud. Create a configuration key if it is
not available in the application. For more information, see Create a configuration key.
Role required: sn_itom_ccg.governor

About this task

For some cloud resources, the required configuration data is available at the cloud resource
level. Therefore, create a configuration collector only if the required configuration data is not
available at the cloud resource level.
For example, most of the configuration data of the Virtual Machine Instance resource type are
available at the cloud resource level. Therefore, a configuration collector is not implemented to
import these configurations.
Refer to a base system configuration collector as an example for creating the configuration
collectors.

Procedure
1. Create an Integration Hub subflow for the configuration collector.
a. Copy the CCG – Collector Template subflow.
For more information on copying templates, see Copy an Integration Hub subflow template.
b. Add the CCG - Get Resources action and fill in the fields.
c. Add the appropriate Cloud Action Library (CAL) action and flow logic to read the
configuration data.

Note:
For more information on the available CAL actions, see Cloud Action Library actions
reference.
If CAL doesn’t have the required action, you can refer to an existing CAL action and use
the Integration Hub REST step to implement the custom action. For more information,
see REST step .
d. Add the CCG – Insert Configuration Settings action to insert the configuration data to the
Configuration Management Database (CMDB).
e. Select Publish.
2. Navigate to Cloud Configuration Governance > Configuration Collector.
3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
Configuration Collector form
Field

Description

Provider type

Cloud that hosts the resources to be scanned through the policies.

Flow

Configuration collector that can import the configuration data from the cloud.

Resource type Cloud resource type whose configuration you want to import
Name

Name of the configuration collector.

Description

Brief description of the configuration collector.

5. Select Submit.
Create a CI finder mapping
Use the CI finder mapping to link the resources fetched by the ServiceNow Cloud Configuration
Governance scan runs with the appropriate Configuration Management Database (CMDB)
Configuration Items (CIs), if available. After you create the mapping, you can associate the
reported configuration violations with the CIs to which they belong.

Before you begin

Role required: sn_itom_ccg.scheduling_admin or sn_itom_ccg.governor

About this task

After creating a resource type in Cloud Configuration Governance, you can optionally create a
CI finder mapping for the new resource type. Cloud Configuration governance calls the CI finder
mapping script for all the resources fetched by the scan runs.

Procedure
1. Navigate to All > Cloud Configuration Governance > CI Finder Mappings.
2. Select New.
3. On the form, fill in the fields.
CI Finder Mapping form
Field

Description

Provider
Type

Cloud service provider that hosts the resource.

Resource Resource type of the cloud resource.
Type
Script

Script to link the resources fetched by the Cloud Configuration Governance
application with the existing CI.
Use an existing CI finder mapping script as an example to create a script for the
new resource type.
Cloud Configuration Governance offers several objects and variables for use in
the script. For more information, see Cloud Configuration Governance scripting
reference.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
Create a policy set
Create a policy set in Cloud Configuration Governance to group policies that enforce a given
security or organization standard. When the scan configuration runs the policy set, it identifies
the cloud resources that don’t adhere to the set standards. A policy set can contain one or more
policies.

Before you begin

Role required: sn_itom_ccg.governor

Procedure
1. Navigate to Cloud Configuration Governance > Policy Sets.
2. Select New.
3. On the form, fill in the fields.
Policy Sets form
Field

Description

Name

Name of the policy set.

Provider
type

Cloud that hosts the resources to be scanned through the policies attached to
the policy set.

Description Brief description of the policy set.
Policies

Policies that you want to group to enforce a given security or organizational
standard. The policy set can contain more than one policy.

4. Select Submit.
Copy an Integration Hub subflow template
Copy an Integration Hub subflow template to create subflows for the Cloud Configuration
Governance application.

Before you begin

Role required: sn_itom_ccg.governor

About this task
Procedure
1. Navigate to Process Automation > Flow Designer.
2. Select Subflow.
3. In the Name column, search for the required subflow template, and then open it.
4. Select the more actions icon (

) icon, and then select Copy subflow from the menu.

5. In the New subflow name field, enter a unique and descriptive name for the copied subflow.
6. Select Copy.
The new subflow is created and is opened as a tab in the subflow designer.
Remediation
Use the Cloud Configuration Governance remediation actions to fix the non-compliant cloud
resource configurations identified during the scan runs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
The Remediations module displays a list of all the available remediation actions for the set
of violation types (violation definitions). Cloud Configuration Governance offers several base
system remediation actions. If the application doesn’t contain the required remediation action,
you can create custom actions. For more information, see Create a remediation catalog item and
Create a remediation action.
Because Cloud Configuration Governance performs the remediation actions on the cloud
resources, you can optionally enforce additional approval requirements for the action. Whenever
sn_itom_ccg.ccg_operator submits a remediation request that requires approval, the application
creates a change request to track the approval. You can review the list of all the change requests
in the Remediation Requests module.

Note: Starting with Cloud Configuration Governance version 1.3.7, the base system
contents are moved to the CCG Content Pack. Install the CCG Content Pack to access the
base system Cloud Configuration Governance contents.
Create a remediation catalog item
Create a custom remediation catalog item in Cloud Configuration Governance for the
remediations that require additional input parameters to execute.

Before you begin

Role required: sn_itom_ccg.governor

About this task

Some remediation actions require additional operational information, such as resource hardware
type, to execute. For such cases, create a remediation catalog item with custom input parameters
or variables, and associate it with the appropriate remediation action and violation type. After you
create the remediation catalog item, a user with the sn_itom_ccg.ccg_operator role can use it to
raise a remediation request.

Procedure
1. Navigate to All > Cloud Configuration Governance > Remediation Catalog.
2. Open the CCG Remediation Default Catalog record.
3. Select Copy to copy the catalog item.
4. On the form, fill in the fields.
Record Producer form
Field

Description

Name

Name of the Cloud Configuration
Governance catalog item.

Table name

The table in which the record producer
creates records.
Retain the default value.

Owner

Owner of the catalog item who has edit
access to it.

Short description

Business purpose of the remediation catalog
item.
Cloud Configuration Governance displays the
short description to the operator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Field

Description

Activate

Status of the catalog item.
The copied catalog item is active by default.

5. Select Update.
The record producer creates the following items:
◦ A Workflow Studio action named <Catalog item name>_Action.
◦ A Workflow Studio subflow named <Catalog item name>_Subflow.
◦ A remediation record for the catalog item. The remediation record is associated with the
catalog item and the <Catalog item name>_Subflow.
6. Optional: Define catalog item variables to collect additional information through the catalog
item form.
a. From the Variables related list, select New.
b. On the form, fill in the fields.
For more information on catalog variables, see Service catalog variables

.

c. Save the form.
7. Associate the remediation catalog item with the violation type.
a. On the Remediations related list, select New.
b. Double-click the violation cell.
c. Select the violation type.
d. Select the save icon (

).

8. Update the <Catalog item name>_Action to interact with the cloud resource.
Cloud Configuration Governance uses Integration Hub action to execute the remediation on
the cloud resource. As business needs dictate the remediation logic, the Record Producer only
creates a boilerplate for the <Catalog item name>_Action. You must implement the <Catalog
item name>_Action per the business needs.
a. Navigate to All > Flow Designer.
b. Select the Actions tab.
c. Open the <Catalog item name>_Action.
d. Refer to the cloud provider documentation and implement the <Catalog item name>_Action
per the business needs of your organization.
For more information on building Integration Hub actions, see Building custom actions .
e. Save the updated <Catalog item name>_Action.
f. Test the <Catalog item name>_Action.
For more information, see Test an action

.

g. Publish the <Catalog item name>_Action.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
9. Associate the <Catalog item name>_Action with the <Catalog item name>_Subflow.
Cloud Configuration Governance uses the Integration Hub subflows to trigger the Integration
Hub action and process the returned data.
a. Navigate to the Workflow Studio home page by selecting the flow designer home icon (

).

b. Select the Subflows tab.
c. Open the <Catalog item name>_Subflow.
d. Select Add an Action, Flow Logic, or Subflow.
e. Select Action.
f. Search for <Catalog item name>_Action and select the action.
g. Add appropriate flow logic.
h. Assign the output of the subflow to the output variable.
i. Test the <Catalog item name>_Subflow.
j. Publish the <Catalog item name>_Subflow to activate it.

What to do next

Run the remediation action to fix the identified violation. For more information, see Run
remediation.
Create a remediation action
Create a remediation action in Cloud Configuration Governance for the remediations that
doesn’t require any additional input parameters.

Before you begin

Role required: sn_itom_ccg.ccg_governer

About this task

Cloud Configuration Governance uses Integration Hub subflows to perform the remediations.

Procedure
1. Navigate to Cloud Configuration Governance > Remediations.
2. Select New.
3. On the form, fill in the fields.
Remediations form
Field

Description

Minimum
permission
required

Minimum cloud permissions required to execute the remediation.

Action

Remediation flow that can fix the selected violation.

Violation

Violation that you want to remediate.

Requires
approval

Option to enforce approval for the remediation action. For more information
on approvals, see Approvals .

Description

Brief description of the remediation action.

Cloud Configuration Governance doesn’t read the permissions information
from this field. Use this field to store the permissions information for future
reference.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
Field

Description

Remediation
Catalog Item

Name of the remediation catalog item that can be used to raise a remediation
request.
Select the CCG Remediation Default Catalog.

4. Select Submit.

What to do next

Run the remediation action to fix the identified violation. For more information, see Run
remediation.
Run remediation
Run the appropriate remediation action to fix the non-compliant cloud configuration identified
during the Cloud Configuration Governance scan run.

Before you begin
• The scan run is complete
• Role required: sn_itom_ccg.ccg_operator

Procedure
1. Navigate to Cloud Configuration Governance > Scan Run.
2. Open the scan run during which Cloud Configuration Governance reported the audit issues.
3. Select Show audit results.
4. Select the violation type that you want to fix.
Cloud Configuration Governance groups the violations per the violation type. During a
remediation run, you can fix one or more violations of the same type only.
5. Select one or more violations.
6. Select Remediate.

Note: You can select Ignore for Now to ignore the issue. When you ignore an issue,
Cloud Configuration Governance doesn't report the issue as a violation and it is not
represented in the dashboard reports.
7. Review the list of resources selected for remediation.
8. Select the remediation action.
9. Select OK.

Result
What to do next

From the Remediation Runs related list, select the change request and review the status of
the remediation. You can also view the list of all the remediation requests in the Remediation
requests module.

Cloud Configuration Governance reference
Reference topics provide additional information about the Cloud Configuration Governance
application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
Cloud Configuration Governance dashboard
Cloud Configuration Governance is a tool used to manage the configuration of the cloud
resources as per your organizational standards and established security standards. Use the
dashboard to review the health score of the cloud, policy violation statistics, policy violation
trend, remediations overview, and more.
Cloud Configuration Governance dashboard

Required ServiceNow AI Platform roles
sn_itom_ccg.ccg_operator or sn_itom_ccg.report_viewer roles are required to view the
dashboard and its widgets.

Access the Cloud Configuration Governance dashboard
To open the dashboard, navigate to Cloud Configuration Governance > Dashboard.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

sn_itom_ccg.ccg_operator or
sn_itom_ccg.report_viewer

• Review the cloud heath score.
• Time taken to remediate the identified policy
violations.
• Understand the trend of the policy violation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
Reports
Title

Type

Source table

Description

Cloud health score

Speedo chart

sn_itom_ccg_scan_summary
Percentage of
scanned cloud
resources that doesn’t
have any audit issue.

Violating resources

Stacked bar chart

sn_itom_ccg_scan_summary
Severity of the
detected audit issues
per cloud resource
type.

Violations count

Donut chart

Violation per severity
sn_itom_ccg_violation_stats
of the audit issue.

Scanned resources

Donut chart

sn_itom_ccg_scan_summary
Number of cloud
resources scanned
per cloud resource
type.
Use the CCG
Drilldown Filters to
filter the data and
visualize the data of
interest.

Issues

Horizontal bar chart

sn_itom_ccg_audit_statsNumber of violations
reported per violation
definition.
The chart can display
a maximum of 10
bars, that is one per
violation definition
type. If the data
contains more
than 10 violation
definition types, all the
additional violation
definition types are
merged under the
Others bar.
Use the CCG
Drilldown Filters to
filter the data and
visualize the data of
interest.

Policy compliance

Embedded lists

Displays the following
sn_itom_ccg_policy_compliance_stats
information for the
given policy:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
Title

Type

Source table

Description

• Count of compliant
resources
• Count of noncompliant resources
Policy set compliance

Embedded lists

Displays the following
sn_itom_ccg_policy_set_compliance_stats
information for the
given policy set:
• Count of compliant
resources
• Count of noncompliant resources

Total issues
remediated

Half donut chart

sn_itom_ccg_remediation_daily_trend
Remediations
performed per
violation definition
type.

Remediations by type

Pie chart

sn_itom_ccg_remediation_daily_trend
Remediations
performed per cloud
resource type.

Remediated on

Half donut chart

sn_itom_ccg_remediation_daily_trend
Time taken to
remediate the
violations.

Trend

Line chart

sn_itom_ccg_daily_trendTrend of reporting
violations over time.

Filters
Name

Type

Description

CCG Drilldown filter

Choice-based filter

Use this filter to select the
cloud provider, cloud account,
and regions for visualizing
their scanned resources and
issues data.

Cloud Configuration Governance roles and system properties
Cloud Configuration Governance users require the appropriate roles and system properties to
perform various activities. These roles and system properties are installed with the activation of
the application.
Only users with the user_admin or admin role can create users with these roles:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
Cloud Configuration Governance roles
Descriptive name and role name

Description and tasks

sn_itom_ccg.ccg_admin

A Cloud Configuration
Governance admin can
perform all the actions
that are performed by its
nested or child roles.

sn_itom_ccg.scheduling_admin A scheduling admin can
perform the following
actions:

Nested roles

• sn_itom_ccg.report_viewer
• sn_itom_ccg.scheduling_admin
• sn_itom_ccg.governor
• sn_itom_ccg.operator
discovery_admin

• Create scan schedules.
• Create CI finder
mappings.
sn_itom_ccg.governor

A governor can perform
the following actions:
• Create policies by
using condition builder,
Integration Hub flows,
or script.

• flow_designer
• action_designer
• catalog_admin

• Create a policy set.
• Create resource
collectors.
• Create configuration
keys.
• Create remediation.
• Create CI finder
mappings.
sn_itom_ccg.ccg_operator

An operator can perform
the following actions:
• View the audit issue
reports.

• flow_operator
• sn_change_write

• Run remediation.
• Run scan
configurations.
• View the dashboard.
sn_itom_ccg.report_viewer

A report viewer can
perform the following
actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
Cloud Configuration Governance roles (continued)
Descriptive name and role name

Description and tasks

Nested roles

• View the audit issue
reports.
• View the dashboard.

Cloud Configuration Governance system properties
Property name

Description

snc_af.log_level

When you enable this property, Cloud
Configuration Governance writes the logs to
the syslog.
The supported logging levels are as follows:
• DEBUG
• INFO
• WARN
• ERROR
• OFF
Ensure that the application scope is Global,
when you set or clear this property.

Related topics
Assign a role to a user
Cloud Configuration Governance Scan configuration form
The Cloud Configuration Governance Scan configuration form displays detailed information
about the scan configuration.

Field

Description

Name

Name that uniquely identifies the scan configuration.

Description

Brief description of the scan configuration.

Configuration tab
Define the configuration settings, such as cloud provider, policy sets, target service accounts,
and datacenters for the scan.

Field

Description

Cloud
provider
type

Cloud that hosts the resources to be scanned.

Policy sets Policy sets for the scan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
Field

Description

Select one or more policy sets for the scan, and then save the form.
Datacenter Service account or service-account datacenter combination for the scan.
filters
1. In the empty row of the Datacenter Filters list, double-click the service account
cell, and then select a service account.
You can select an Amazon Web Services (AWS) management account, and
then add all of its member accounts to the scan configuration, subject to the
fulfillment of the following conditions:
◦ An assume role configuration exists for the management account.
◦ Cloud Discovery has completed the datacenter discovery for the member
accounts.
For more information on creating assume role configurations, see Configure
access using temporary credentials based on trusted AWS accounts with AWS
credentials.
2. Save the form.
3. In the empty row of the Datacenter Filters list, double-click the datacenter cell,
and then select a datacenter.
(Optional) If you do not select a datacenter, Cloud Configuration Governance
scans all the datacenters that are associated with the service account.

Filters tab
(Optional) Specify criteria to filter the cloud resources, and then import their configuration data
from the cloud. If specified, Cloud Configuration Governance only fetches the configuration of
the resources that match the filter criteria. Otherwise, it fetches the configuration of all the cloud
resources.

Field

Tag filters

Description

Cloud resource tags to filter the cloud resources.
• Enter the tag name in the Name field.
• Enter the tag value in the Value field.

Freeform

Option to specify a comma-separated list of cloud identifiers to filter the cloud
resources.

Resources Comma-separated list of the cloud identifiers.
This field appears only when the Freeform option is selected.
Cloud Configuration Governance Policy form
The Cloud Configuration Governance Policy form displays detailed information about the policy
such as cloud provider, resource type, policy type, and policy violation reporting settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
Field

Description

Policy name

Name that uniquely identifies the policy.

Description

Brief description of the policy.

Resource type
Define the resource type for which you want to create the policy.

Field

Description

Cloud
provider

Cloud that hosts the resources to be scanned.

Resource Cloud resource type to be scanned through the policy.
type
If the required resource type is not available, you can create a resource type. For
more information, see Create a resource collector.

Policy condition
Define the policy type and the non-compliant resource configuration.

Field

Description

Type

Cloud Configuration Governance supports the following types:
• Condition builder: The no-code method for creating policies.
• Integration Hub Flow: The low-code method for creating policies.
• Script: The code-based method for creating policies.
Select the show available keys icon ( ) to view the list of all available
configuration keys for the selected resource type. You can use any of the keys in
the policy.

Condition

Conditions for reporting the non-compliant cloud resource configuration.
Always specify the key and value in a pair. Use the OR operator and the AND
operator to perform logical operations in the policy condition.
Syntax
Key is <key_name>
<data_type> Value <condition> <value>
For example,
Key is AWS:IAM:User:PasswordEnabled
Boolean Value is true
This field appears only when Condition Builder is selected from the Type field.

Configuration
Configuration keys for the policy.
key
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
Field

Description

This field appears only when Integration Hub Flow is selected from the Type
field.
Integration
flow

The appropriate Integration Hub flow.
This field appears only when Integration Hub Flow is selected from the Type
field.

Condition
script

Script that implements the policy conditions to identify and report the policy
violations. Cloud Configuration Governance contains several scriptable objects
and variables for use in the policy scripts. For more information see, Scripting
reference.
You can create script includes to externalize the decision making and reuse
the code across different scripts. For more information on creating the script
includes, see Script includes .

Note: If you create a custom audit result record through the script, then

the Audit Violation Reporting configuration defined in the policy doesn’t
take effect.
This field appears only when Script is selected from the Type field.

Audit violation reporting
Define how Cloud Configuration Governance reports the policy violation.

Field

Description

Report
Violation definition to be included in the audit violation report. Cloud Configuration
violation Governance uses the violation definition to report the policy non-compliances.
as
If an appropriate violation definition is not available, you can create one as follows:
1. Select the lookup using list icon (

).

2. Select New.
3. Enter a name that uniquely identifies the violation definition.
Cloud Configuration Governance includes the name of the violation definition in
the audit issue report.
4. Select the default severity for the violation definition.
5. (Optional) Enter a brief description of the violation.
Severity

Severity level of the violation.
If you do not select the severity level in the policy, Cloud Configuration Governance
uses the default severity defined in the violation definition.

Cloud Configuration Governance Configuration key form
The Configuration key form contains detailed information about the configuration key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
Configuration Key form
Name

Description

Name

Name that uniquely identifies the configuration key.

Description

Brief description of the configuration key.

Provider type Cloud that hosts the resources to be scanned through the policies.
Resource
type

Cloud resource type.

Value type

Data type of the configuration value that is associated with the configuration
key.

Resource
collector

Resource collector that can collect the configuration data for the selected
resource type.

Configuration (Optional) Configuration collector that can import the configuration keys.
collector
If the required configuration data is not available at the cloud resource level,
select the configuration collector that can import the configuration keys.
If a suitable configuration collector is not available, create a configuration
collector and then select it. For more information on creating the configuration
collector, see Create a configuration collector.
Cloud Configuration Governance Resource collector form
The Resource collector form contains detailed information about the resource collector.
Resource Collector form
Field

Description

Name

Name that uniquely identifies the configuration key.

Scan
mode

Level at which the resource collector imports the resource from the cloud.
Supported values are as follows:
• Run per LDC: Import the resource at the datacenter level. That is, once from
each datacenter.
• Run per service account: Import the resource at the service account level.

Provider
type

Cloud that hosts the resources to be imported.

Resource
type

Cloud resource type that you want to import through the resource collector.
If Cloud Configuration Governance doesn't contain the required resource type,
you can create it as follows:
1. Select the lookup using list icon (

).

2. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
Resource Collector form (continued)
Field

Description

3. In the Name field, enter the cloud resource type.
4. Select Submit.
Flow

Resource collector flow that can import the given resource type.

Cloud Configuration Governance Service Account Assume Role Config form
The Cloud Configuration Governance Service Account Assume Role Config form displays
detailed information about the assume role configuration used to access the trusting account.
Service Account Assume Role Config form
Field

Description

Access
Role
Name

Name of the Identity and Access Management (IAM) role created for the trusting
account that allows the trusted account (accessor) to access the trusting account.
To scan the member accounts by using the management account, enter
OrganizationAccountAccessRole in this field. If you don't want to use the
OrganizationAccountAccessRole to access the member account, enter the name
of the IAM role created for the member account.
To scan the trusting account by using the trusted account, enter the name of the
IAM role created for the trusting account.

Service
Account

Name of the service account where assume role exists.

Role
Session
Name

An identifier for the assumed role session.
Do not change the default value.

Credential Optional: Credential alias for the AWS credential.
Alias
Cloud Configuration Governance scripting reference
Cloud Configuration Governance provides several objects and variables that you can use to
create script-based policies and CI finder mapping scripts.

Scripting reference for the Cloud Configuration Governance policies
Cloud Configuration Governance objects
Name

Description

configSettings

Represents the configuration data
imported from the cloud.

Schema

[
{
"config_key":"co
nfiguration_key",

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
Cloud Configuration Governance objects (continued)
Name

Description

Schema

"type":"data_typ
e",
"value":"configu
ration_value"
},
...
]
current

Represents the current glide record
object for the select resource type.

It contains the following
fields:
• Name: Name of the
resource
• Type: Resource type
• Identifier: Unique
identifier of the cloud
resource
• Details: Cloud resourcespecific details

resourceInformation Resource record and its attributes.

[
{
"attribute":
"Attribute
name",
"tableName" :
"Referenced
table",
"documentId":
"Referenced
record",
},
...
]

auditResult

Audit details that must be written
to the Configuration Management
Database (CMDB).

{
"details":
"Violation
definition "’
"severity":
"severity of the
violation",
"auditViolationN
ame": "Violation
name"
};

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
Cloud Configuration Governance variables
Name

answer

Data
type

Description

Boolean Variable to specify whether the policy reports the
violation or not.
• true: Report the violation. Create the
auditResult object to create a custom audit
result record in the CMDB. If you do not create
an audit result object, Cloud Configuration
Governance reports the violation as per the
violation definition specified in the policy.
• false: Do not report the violation.

violatingConfigSettings JSON

Reason of the policy violation.
Syntax
{
"config_key": "value"
};

Scripting reference for the CI finder mapping script
Cloud Configuration Governance objects
Name

Description

attributes

A map containing the
resource attribute key and
attribute value from the
Resource Attribute table for
the given resource.

Schema

{
"LogicalDatacente
r": "Referenced
record",
"ServiceAccount":
"Referenced
record"
}

Cloud Configuration Governance variables
Name

Data type

Description

Name

String

Name of the resource.

identifier

Resource record

Identifier of the Cloud
Configuration Governance
resource record.

type

Resource record

Resource type of the Cloud
Configuration Governance
resource resource.

answer

JSON

CI class with which the
resource needs to be
mapped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
Cloud Configuration Governance variables (continued)
Name

Data type

Description

The answer contains the
following information:
• sysId of the CI class.
• tableName of the CI class.
If the CI finder mapping fails
to identify the CI class, set this
variable to null.
Syntax
{ sysId: "value",
tableName:
"value" }
Cloud Configuration Governance actions reference
Cloud Configuration Governance (CCG) uses Integration Hub subflows to interact with the cloud
and update the configuration data in the Configuration Management Database (CMDB).

CCG – Read Config Setting
Use this action to read the configuration data of the resource.
To use this action, insert an action and then navigate to Action > Cloud Configuration
Governance > Utils > CCG – Read Config Setting.
CCG – Read Config Setting action
Field

Description

Resource [Resource]

Resource record that contains the configuration data.

Configuration key [Configuration Key]

Configuration key you want to read.

Assign Subflow Outputs
Assign Subflow Outputs form
Field

Description

Report
issue Option to enable the subflow to report the audit violation.
Select the Report Issue option in the Data column or clear this check box to set or
clear this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
Assign Subflow Outputs form (continued)
Field

Description

• Selected: Report the issue as per the violation definition selected in the Audit
Violation Reporting field of the policy.
• Cleared: Cloud Configuration Governance doesn’t report the violation. Create a
custom record for the audit violation. You can specify conditions to control the
creation of the audit violation record.
Details Violation definition that you want to report for the violation.
Enter the violation definition in the Details field in the Data column. This field is
required if you've selected the Report Issue option.

Create Record
Use this action to create a record in the CMDB.
To use this action, insert an action and then navigate to Action > ServiceNow Core > Default >
Create Record.
Create Record action
Field

Description

Table

Name of the Configuration Management Database (CMDB) table where the audit result
is stored.
Set this field to Audit Result [sn_itom_ccg_audit_result].

Fields Details of the record that you want to create in the Configuration Management
Database (CMDB).
Add the following fields and configure input for them:
• Scan Run: Scan run during which Cloud Configuration Governance has identified the
audit issue.
• Is Test Run: Indicates whether Cloud Configuration Governance has reported the
audit issue during a test run.
• Details: Details of the violation.
• Violation Definition: Violation definition of the audit issue.
• Resource: Cloud resource for which Cloud Configuration Governance has raised the
audit issue.
• Severity: Severity of the audit issue.

CCG – Insert Resource Record
Use this action to insert a resource record to the Configuration Management Database (CMDB).
To use this action, insert an action and then navigate to Action > Cloud Configuration
Governance > Utils > CCG – Insert Resource Record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

672


<!-- page 673 -->
CCG – Insert Resource Record action
Field

Description

Scan run

Scan run for which the subflow must create the resource record.

Service account

Service account to which the resource is attached.

Logical datacenter

Logical datacenter to which the resource is attached.

Identifier

Identifier of the resource record.

Name

Name of the resource.

Type

Resource type.

Provider

Cloud provider that hosts the resource.

Details

Details of the object that you want to store in the resource record.

Attributes

Any additional resource attribute that you want to import to the CMDB.

Cloud Action Library actions reference
Cloud Action Library (CAL) offers various actions that you can use to build the Integration Hub
subflows for Cloud Configuration Governance.
Cloud Action Library offers the following actions:
• CAL - AWS generate credential report
• CAL - AWS S3 get encryption
• CAL - Azure VM monitoring metric data
• AWS turn off EC2 instance
• CAL - AWS list VMs
• CAL - AWS list S3 buckets
• AWS put S3 bucket encryption
• AWS enable EC2 instance monitoring
• CAL - Azure VM IP metric
• Azure turn off virtual machine
• AWS get IAM login profile
• Disable AWS IAM user
• AWS list images
• CAL - Azure list VMs
The Cloud Action Library actions are available under the Default and External categories.
Cloud permissions required to collect the base system Cloud Configuration Governance
configuration keys
The Cloud Configuration Governance requires appropriate cloud permissions to collect the base
system configuration keys from the cloud. Therefore, you must set the appropriate permissions in
the cloud to suit the needs of your organization.

Note: Starting with Cloud Configuration Governance version 1.3.7, the base system
contents are moved to the CCG Content Pack. Install the CCG Content Pack to access the
base system Cloud Configuration Governance contents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
Amazon Web Services (AWS) datacenter
Cloud Configuration Governance uses the following items to collect the configuration key for the
AWS datacenter configuration keys:
• Resource collector: Cloud Service Account
• Cloud API used: Action: DescribeRegions
• Cloud permission: ec2: DescribeRegions
AWS datacenter configuration keys
Configuration key

Data type

AWS:EC2:VM:DescribeRegions

String

AWS Identity and Access Management (IAM) users
Cloud Configuration Governance uses the following items to collect the configuration key for the
AWS IAM user configuration keys:
• Resource collector: AWS IAM User Data Collector
• Cloud API used:
◦ Action: GetCredentialReport and GenerateCredentialReport
◦ Service: AWS IAM service
• Cloud permission: Iam:GetCredentialReport and

Iam:GenerateCredentialReport

AWS IAM user configuration keys
Configuration key

Data type

AWS:IAM:Policy:ARN

String

AWS:IAM:Policy:AttachmentCount

String

AWS:IAM:Policy:CreateDate

String

AWS:IAM:Policy:PolicyName

String

AWS:IAM:Policy:UpdateDate

String

AWS:IAM:User:AccessKey1.active

Boolean

AWS:IAM:User:AccessKey1.lastRotated

Date

AWS:IAM:User:AccessKey1.lastUsedDate

Date

AWS:IAM:User:AccessKey1.lastUsedRegion

String

AWS:IAM:User:AccessKey1.lastUsedService

String

AWS:IAM:User:AccessKey2.active

Boolean

AWS:IAM:User:AccessKey2.lastRotated

Date

AWS:IAM:User:AccessKey2.lastUsedDate

Date

AWS:IAM:User:AccessKey2.lastUsedRegion

String

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
AWS IAM user configuration keys (continued)
Configuration key

Data type

AWS:IAM:User:AccessKey2.lastUsedService

String

AWS:IAM:User:Certificate1.active

Boolean

AWS:IAM:User:Certificate1.lastRotated

Date

AWS:IAM:User:Certificate2.active

Boolean

AWS:IAM:User:Certificate2.lastRotated

Date

AWS:IAM:User:CreationTime

Date

AWS:IAM:User:LoginProfile.active

Boolean

AWS:IAM:User:MfaEnabled

Boolean

AWS:IAM:User:PasswordEnabled

Boolean

AWS:IAM:User:PasswordLastChanged

String

AWS:IAM:User:PasswordLastUsed

Date

AWS:IAM:User:PasswordNextRotation

String

AWS object storage
Cloud Configuration Governance uses the following items to collect the configuration key for the
AWS IAM user configuration keys:
• Configuration collector: AWS S3 Encryption Metric Collector
• Resource collector: AWS S3 Resource Collector
• Cloud API used: Action: ListBuckets and GetBucketEncryption on S3 service
• Cloud permission: s3:ListBucket and s3:GetEncryptionConfiguration
AWS object storage configuration keys
Configuration key

Data type

AWS:S3:Encryption:BucketKeyEnabled

Boolean

AWS:S3:Encryption:KMSMasterKeyID

String

AWS:S3:Encryption:ServerSideEncryptionEnabled

Boolean

AWS:S3:Encryption:SSEAlgorithm

String

• Configuration collector: AWS S3 ACL Permission Metric Collector
• Resource collector: AWS S3 Resource Collector
• Cloud API used: Action: GetBucketAcl
• Cloud permission: s3:GetBucketAcl

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
AWS object storage configuration keys
Configuration key

Data type

AWS:S3:ACL:AuthnUsersListing

Boolean

AWS:S3:ACL:AuthnUsersReadACL

Boolean

AWS:S3:ACL:AuthnUsersWrite

Boolean

AWS:S3:ACL:AuthnUsersWriteACL

Boolean

AWS:S3:ACL:OwnerFullControl

Boolean

AWS:S3:ACL:OwnerId

String

AWS:S3:ACL:OwnerListing

Boolean

AWS:S3:ACL:OwnerName

String

AWS:S3:ACL:OwnerReadACL

Boolean

AWS:S3:ACL:OwnerWrite

Boolean

AWS:S3:ACL:OwnerWriteACL

Boolean

AWS:S3:ACL:PublicListing

Boolean

AWS:S3:ACL:PublicReadACL

Boolean

AWS:S3:ACL:PublicWrite

Boolean

AWS:S3:ACL:PublicWriteACL

Boolean

AWS virtual machine instance
Cloud Configuration Governance uses the following items to collect the configuration key for the
AWS virtual machine instance configuration keys:
• Resource collector: AWS VM Data Collector
• Cloud API used: Action: DescribeInstances and AWS EC2 resource
• Cloud permission: ec2:DescribeInstances
AWS virtual machine instance configuration keys
Configuration key

Data type

AWS:EC2:VM:CapacityReservationPreference

String

AWS:EC2:VM:CpuOptionsCoreCount

Numeric

AWS:EC2:VM:CpuOptionsThreadsPerCore

Numeric

AWS:EC2:VM:EbsOptimized

Boolean

AWS:EC2:VM:HardwareType

String

AWS:EC2:VM:ImageId

String

AWS:EC2:VM:InstanceState

String

AWS:EC2:VM:KeyName

String

AWS:EC2:VM:LaunchTime

Date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
AWS virtual machine instance configuration keys (continued)
Configuration key

Data type

AWS:EC2:VM:MonitoringState

String

AWS:EC2:VM:Platform

String

AWS:EC2:VM:PrivateDnsName

String

AWS:EC2:VM:PrivateIpAddress

String

AWS:EC2:VM:PublicDnsName

String

AWS:EC2:VM:PublicIPAddress

String

AWS:EC2:VM:SecurityGroups

String

AWS:EC2:VM:SubnetId

String

AWS:EC2:VM:Tags

Map

AWS:EC2:VM:UsageOperation

String

AWS:EC2:VM:VpcId

String

AWS profile with minimal permissions
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": [
"iam:GenerateCredentialReport",
"s3:GetEncryptionConfiguration",
"ec2:DescribeInstances",
"s3:ListBucketVersions",
"ec2:DescribeRegions",
"s3:ListBucket",
"iam:GetCredentialReport"
],
"Resource": "*"
}
]
}

Microsoft Azure virtual machine instance
Cloud Configuration Governance uses the following items to collect the Azure virtual machine
instance configuration keys:
• Resource collector: Azure VM Data Collector
• Cloud API used: Microsoft.ResourceGraph/resources
• Cloud permission: Microsoft.ResourceGraph/resources

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
Azure virtual machine instance configuration keys
Configuration key

Data type

Azure:VM:HardwareType

String

Azure:VM:NICID

String

Azure:VM:OSDiskCaching

String

Azure:VM:OSDiskCreateoption

String

Azure:VM:OSDiskDeleteoption

String

Azure:VM:OSDiskId

String

Azure:VM:OSDiskName

String

Azure:VM:OSDiskOSType

String

Azure:VM:OSDiskSizeGB

String

Azure:VM:OSProfileAllowExtensionOperations

Boolean

Azure:VM:OSProfileComputerName

String

Azure:VM:OSProfileLinuxConfigurationDisablePasswordAuthentication Boolean
Azure:VM:OSProfileLinuxConfigurationPatchSettingsAssessmentMode

String

Azure:VM:OSProfileLinuxConfigurationPatchSettingsPatchMode

String

Azure:VM:OSProfileLinuxConfigurationProvisionVmAgent

Boolean

Azure:VM:OSProfileLinuxConfigurationSSHKeyData

Map

Azure:VM:OSProfileLinuxConfigurationSSHPath

Map

Azure:VM:OSProfileRequireGuestProvisionSignal

Boolean

Azure:VM:OSWindowsConfigurationEnableAutomaticUpdates

Boolean

Azure:VM:OSWindowsConfigurationPatchSettingsAssessmentMode

String

Azure:VM:OSWindowsConfigurationPatchSettingsEnableHotpatching

Boolean

Azure:VM:OSWindowsConfigurationPatchSettingsPatchMode

String

Azure:VM:OSWindowsConfigurationProvisionVMAgent

Boolean

Azure:VM:PowerState

String

Azure:VM:ProvisioningState

String

Azure:VM:ResourceGroup

String

Azure:VM:StorageProfileDataDisksCaching

String

Azure:VM:StorageProfileDataDisksCreateOption

String

Azure:VM:StorageProfileDataDisksDeleteOption

String

Azure:VM:StorageProfileDataDisksDetachOption

String

Azure:VM:StorageProfileDataDisksDiskIopsReadWrite

String

Azure:VM:StorageProfileDataDisksDiskMBpsReadWrite

String

Azure:VM:StorageProfileDataDisksDiskSizeGb

Numeric

Azure:VM:StorageProfileDataDisksImage

String

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
Azure virtual machine instance configuration keys (continued)
Configuration key

Data type

Azure:VM:StorageProfileDataDisksLun

Numeric

Azure:VM:StorageProfileDataDisksManagedDiskDiskEncryptionSet

String

Azure:VM:StorageProfileDataDisksManagedDiskId

String

Azure:VM:StorageProfileDataDisksManagedDiskResourceGroup

String

Azure:VM:StorageProfileDataDisksManagedDiskStorageAccountType

String

Azure:VM:StorageProfileDataDisksManagedStorageAccountType

String

Azure:VM:StorageProfileDataDisksName

String

Azure:VM:StorageProfileDataDisksToBeDetached

Boolean

Azure:VM:StorageProfileDataDisksVhd

String

Azure:VM:StorageProfileDataDisksWriteAcceleratorEnabled

Boolean

Azure:VM:StorageProfileImageReferenceExactVersion

String

Azure:VM:StorageProfileImageReferenceId

String

Azure:VM:StorageProfileImageReferenceOffer

String

Azure:VM:StorageProfileImageReferencePublisher

String

Azure:VM:StorageProfileImageReferenceSharedGalleryImageId

String

Azure:VM:StorageProfileImageReferenceSku

String

Azure:VM:StorageProfileImageReferenceVersion

String

Azure:VM:Tags

Map

Azure:VM:VMId

String

• Resource collector: Azure VM Data Collector
• Configuration collector: Azure VM Metric Collector
• Cloud API used: Microsoft.ResourceGraph/resources
• Cloud permission: Microsoft.ResourceGraph/resources
Azure virtual machine instance configuration keys
Configuration key

Data type

Azure:VM:PublicIPAddress

String

Azure:VM:PublicIPId

String

• Resource collector: Azure VM Data Collector
• Configuration collector: Azure VM Monitoring Metric Collector
• Cloud API used: Microsoft.Compute/virtualMachines/{vmName}/

instanceView

• Cloud permission: Microsoft.Compute/virtualMachines/{vmName}/

instanceView

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


<!-- page 680 -->
Azure virtual machine instance configuration keys
Configuration key

Data type

Azure:VM:MonitoringState

String

Note: Use scope=https://graph.microsoft.com/.default and

scope=https://management.azure.com/.default to fetch the oAuth token for
the Azure resources.
Azure profile with minimal permissions
{
"properties": {
"roleName": "CCGAzureMinimalPermission",
"description": "Grants access to scan compute resources from azure
subscription",
"assignableScopes": [
"/subscriptions/${subscription_id}"
],
"permissions": [
{
"actions": [
"Microsoft.ResourceGraph/resources/read",
"Microsoft.Compute/virtualMachines/instanceView/read"
],
"notActions": [],
"dataActions": [],
"notDataActions": []
}
]
}
}
AWS policies
The Cloud Configuration Governance AWS policies are listed for your reference.
Cloud Configuration Governance AWS policies
Policy Set

Policy Name

Resource Type

AWS IAM User Activity Condition builder
policy

Description

Policy to check if the
password is enabled
for the AWS IAM user.
To use this policy,
ensure that the AWS
IAM user account
has the following
permissions:
• Iam:GetCredentialReport
• Iam:GenerateCredentialReport

AWS S3 Enforce
Bucket encryption

Condition builder

Policy to check if the
AWS S3 buckets are
encrypted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

AWS: IAM Security

Policy Name

Resource Type

Description

AWS Sample flow
policy

Integration Hub flow

Policy to illustrate an
Integration Hub flowbased policy.

AWS VM
HardwareType

Condition builder

Policy to check if the
deployed EC2 VMs
are using only the
approved hardware
types.

AWS VM IPAddress

Script

Policy to check if the
IP address of the EC2
VM is matching with
the Configuration
Management
Database (CMDB)
record.

AWS VM Monitoring
State

Condition builder

Policy to check if
detailed monitoring is
enabled for the EC2
VM.

Ensure multi-factor
authentication (MFA)
is enabled for all IAM
users that have a
console password
(Automated)

IAM User

Multi-Factor
Authentication (MFA)
adds an extra layer
of authentication
assurance beyond
traditional credentials.
With MFA enabled,
when a user signs in
to the AWS Console,
they will be prompted
for their user name
and password
as well as for an
authentication code
from their physical or
virtual MFA token. It
is recommended that
MFA be enabled for all
accounts that have a
console password.
Enabling MFA
provides increased
security for console
access as it requires
the authenticating
principal to possess a
device that displays a
time-sensitive key and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


<!-- page 682 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

have knowledge of a
credential.
Ensure credentials
unused for 45 days or
greater are disabled
(Automated)

IAM User

AWS IAM users
can access AWS
resources using
different types of
credentials, such
as passwords or
access keys. It is
recommended that
all credentials that
have been unused
in 45 or greater days
be deactivated or
removed
Disabling or removing
unnecessary
credentials will
reduce the window
of opportunity
for credentials
associated with a
compromised or
abandoned account
to be used.

Ensure there is only
one active access
key available for
any single IAM user
(automated)

IAM User

Access keys are longterm credentials
for an IAM user or
the AWS account
'root' user. You can
use access keys to
sign programmatic
requests to the AWS
CLI or AWS API
(directly or using the
AWS SDK)
Access keys are longterm credentials
for an IAM user or
the AWS account
'root' user. You can
use access keys to
sign programmatic
requests to the AWS
CLI or AWS API. One
of the best ways to
protect your account
is to not allow users to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

682


<!-- page 683 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

have multiple access
keys.
Ensure access keys
are rotated every
90 days or less
(automated)

IAM User

Access keys consist
of an access key ID
and secret access
key, which are used
to sign programmatic
requests that you
make to AWS. AWS
users need their
own access keys to
make programmatic
calls to AWS from the
AWS Command Line
Interface (AWS CLI),
Tools for Windows
PowerShell, the
AWS SDKs, or direct
HTTP calls using the
APIs for individual
AWS services.It is
recommended that
all access keys be
regularly rotated.
Rotating access
keys will reduce the
window of opportunity
for an access key that
is associated with
a compromised or
terminated account to
be used.
Access keys should
be rotated to ensure
that data cannot be
accessed with an old
key which might have
been lost, cracked, or
stolen.

Ensure IAM Users
Receive Permissions
Only Through Groups
(Automated)

IAM User

IAM users are granted
access to services,
functions, and data
through IAM policies.
There are three ways
to define policies for a
user:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

683


<!-- page 684 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

1. Edit the user policy
directly, that is an
inline, user, policy.
2. Attach a policy
directly to a user.
3. Add the user to an
IAM group that has
an attached policy.
Only the third
implementation is
recommended.
Assigning IAM policy
only through groups
unifies permissions
management to
a single, flexible
layer consistent
with organizational
functional roles. By
unifying permissions
management, the
likelihood of excessive
permissions is
reduced.
Ensure IAM policies
that allow full "*:*"
administrative
privileges are not
attached (Automated)

IAM User

IAM policies are
the means by
which privileges are
granted to users,
groups, or roles. It is
recommended and
considered a standard
security advice to
grant least privilegethat is, granting only
the permissions
required to perform
a task. Determine
what users need to
do and then craft
policies for them that
let the users perform
only those tasks,
instead of allowing
full administrative
privileges.
It's more secure to
start with a minimum

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

684


<!-- page 685 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

set of permissions
and grant additional
permissions as
necessary, rather
than starting with
permissions that are
too lenient and then
trying to tighten them
later.
Providing full
administrative
privileges instead
of restricting to the
minimum set of
permissions that
the user is required
to do exposes
the resources to
potentially unwanted
actions.
IAM policies that
have a statement
with "Effect": "Allow"
with "Action": "" over
"Resource": "" should
be removed.
Ensure a support role
has been created to
manage incidents
with AWS Support
(Automated)

IAM User

AWS provides a
support center that
can be used for
incident notification
and response, as
well as technical
support and customer
services. Create an
IAM Role to allow
authorized users to
manage incidents with
AWS Support.
By implementing
least privilege for
access control, an
IAM Role will require
an appropriate
IAM Policy to allow
Support Center
Access in order to
manage Incidents
with AWS Support.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

685


<!-- page 686 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Ensure that all the
IAM User
expired SSL/TLS
certificates stored in
AWS IAM are removed
(Automated)

Description

To enable HTTPS
connections to
your website or
application in AWS,
you need an SSL/
TLS server certificate.
You can use ACM
or IAM to store
and deploy server
certificates. Use
IAM as a certificate
manager only when
you must support
HTTPS connections
in a region that is
not supported by
ACM. IAM securely
encrypts your private
keys and stores the
encrypted version in
IAM SSL certificate
storage. IAM supports
deploying server
certificates in all
regions, but you
must obtain your
certificate from an
external provider for
use with AWS. You
cannot upload an
ACM certificate to
IAM. Additionally, you
cannot manage your
certificates from the
IAM Console.
Removing expired
SSL/TLS certificates
eliminates the risk that
an invalid certificate
will be deployed
accidentally to a
resource such as
AWS Elastic Load
Balancer (ELB), which
can damage the
credibility of the
application/website
behind the ELB. As
a best practice, it
is recommended

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

686


<!-- page 687 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

to delete expired
certificates.
Ensure that IAM
AWS::AccessAnalyzer::Analyzer
Enable IAM Access
Access analyzer is
analyzer for IAM
enabled for all regions
policies about all
(Automated)
resources in each
region.
IAM Access Analyzer
is a technology
introduced at AWS
reinvent 2019. After
the Analyzer is
enabled in IAM,
scan results are
displayed on the
console showing the
accessible resources.
Scans show resources
that other accounts
and federated users
can access, such as
KMS keys and IAM
roles. So the results
allow you to determine
if an unintended
user is allowed,
making it easier
for administrators
to monitor least
privileges access.
Access Analyzer
analyzes only policies
that are applied to
resources in the same
AWS Region.
AWS IAM Access
Analyzer helps you
identify the resources
in your organization
and accounts, such as
Amazon S3 buckets
or IAM roles, that
are shared with an
external entity. This
lets you identify
unintended access to
your resources and
data. Access Analyzer
identifies resources
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

687


<!-- page 688 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

that are shared with
external principals
by using logic-based
reasoning to analyze
the resource-based
policies in your AWS
environment. IAM
Access Analyzer
continuously monitors
all policies for
S3 bucket, IAM
roles, KMS(Key
Management Service)
keys, AWS Lambda
functions, and
Amazon SQS(Simple
Queue Service)
queues.
Ensure no 'root' user
account access key
exists (Automated)

IAM User

The 'root' user
account is the most
privileged user in
an AWS account.
AWS Access Keys
provide programmatic
access to a given
AWS account. It
is recommended
that all access keys
associated with the
'root' user account be
removed.
Removing access
keys associated with
the 'root' user account
limits vectors by
which the account
can be compromised.
Additionally, removing
the 'root' access
keys encourages
the creation and
use of role based
accounts that are
least privileged.

Ensure MFA is
enabled for the
'root' user account
(Automated)

IAM User

The 'root' user
account is the most
privileged user in an
AWS account. Multi-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

688


<!-- page 689 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

factor Authentication
(MFA) adds an extra
layer of protection
on top of a username
and password. With
MFA enabled, when
a user signs in to an
AWS website, they
will be prompted for
their username and
password as well as
for an authentication
code from their AWS
MFA device.
Enabling MFA
provides increased
security for console
access as it requires
the authenticating
principal to possess
a device that emits a
time-sensitive key and
have knowledge of a
credential.
Ensure hardware MFA IAM User
is enabled for the
'root' user account
(Automated)

The 'root' user
account is the most
privileged user in an
AWS account. MFA
adds an extra layer
of protection on top
of a user name and
password. With MFA
enabled, when a
user signs in to an
AWS website, they
will be prompted for
their user name and
password as well as
for an authentication
code from their AWS
MFA device. For Level
2, it is recommended
that the 'root' user
account be protected
with a hardware MFA.
A hardware MFA has a
smaller attack surface
than a virtual MFA. For
example, a hardware

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

689


<!-- page 690 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

MFA does not suffer
the attack surface
introduced by the
mobile smartphone
on which a virtual MFA
resides.
Eliminate use of
the 'root' user for
administrative
and daily tasks
(Automated)

IAM User

With the creation of an
AWS account, a 'root
user' is created that
cannot be disabled or
deleted. That user has
unrestricted access
to and control over
all resources in the
AWS account. It is
highly recommended
that the use of this
account be avoided
for everyday tasks.
The 'root user'
has unrestricted
access to and control
over all account
resources. Use of
it is inconsistent
with the principles
of least privilege
and separation of
duties, and can lead
to unnecessary
harm due to error or
account compromise.

Ensure IAM password
policy requires
minimum length
of 14 or greater
(Automated)

IAM User

Password policies
are, in part,
used to enforce
password complexity
requirements. IAM
password policies
can be used to ensure
password are at least
a given length. It is
recommended that
the password policy
require a minimum
password length 14.
Setting a password
complexity policy
increases account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

690


<!-- page 691 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

resiliency against
brute force login
attempts.
Ensure IAM password
policy prevents
password reuse
(Automated)

IAM User

IAM password
policies can prevent
the reuse of a given
password by the
same user. It is
recommended that
the password policy
prevent the reuse of
passwords.
Preventing password
reuse increases
account resiliency
against brute force
login attempts.

AWS: Data Security

Ensure that S3
Buckets are
configured with 'Block
public access (bucket
settings)

AWS::S3::Bucket

Amazon S3 provides
Block public access
(bucket settings)and
Block public access
(account settings)to
help you manage
public access
to Amazon S3
resources. By default,
S3 buckets and
objects arecreated
with public access
disabled. However,
an IAM principal
with sufficient S3
permissions can
enable public access
at the bucket and/
or object level. While
enabled, Block public
access (bucket
settings)prevents an
individual bucket, and
its containedobjects,
from becoming
publicly accessible.
Similarly, Block public
access (account
settings)prevents
all buckets, and
contained objects,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

691


<!-- page 692 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

from becoming
publicly accessible
across the entire
account.
Amazon S3 Block
public access (bucket
settings) prevents
the accidental or
malicious public
exposure of data
contained within the
respective bucket(s).
Amazon S3 Block
public access
(account settings)
prevents the
accidental or
malicious public
exposure of data
contained within
all buckets of the
respective AWS
account.
Whether blocking
public access to all
or some buckets is
an organizational
decision that should
be based on data
sensitivity, least
privilege, and use
case.
AWS: CloudTrail
Logging

Ensure that ObjectAWS::S3::Bucket
level logging for
write events is
enabled for S3 bucket
(Automated)

S3 object-level
API operations
such as GetObject,
DeleteObject, and
PutObject are called
data events. By
default, CloudTrail
trails don't log data
events and so it is
recommended to
enable Objectlevel logging for S3
buckets.
Rationale:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

692


<!-- page 693 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

Enabling object-level
logging will help you
meet data compliance
requirements
within your
organization, perform
comprehensive
security analysis,
monitor specific
patterns of user
behavior in your
AWS account or take
immediate actions
on any object-level
API activity within
your S3 Buckets using
Amazon CloudWatch
Events.
AWS: CloudTrail
Logging

Ensure that ObjectAWS::S3::Bucket
level logging for
read events is
enabled for S3 bucket
(Automated)

S3 object-level
API operations
such as GetObject,
DeleteObject, and
PutObject are called
data events. By
default, CloudTrail
trails don't log data
events and so it is
recommended to
enable Objectlevel logging for S3
buckets.
Rationale:
Enabling object-level
logging will help you
meet data compliance
requirements
within your
organization, perform
comprehensive
security analysis,
monitor specific
patterns of user
behavior in your
AWS account or take
immediate actions on
any object-level API

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

693


<!-- page 694 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

activity using Amazon
CloudWatch Events.
AWS: Network
Security

Ensure no Network
ACLs allow ingress
from 0.0.0.0/0
to remote server
administration ports
(Automated)

AWS::EC2::NetworkAcl

The Network Access
Control List (NACL)
function provide
stateless filtering of
ingress and egress
network traffic to
AWS resources. It
is recommended
that no NACL allows
unrestricted ingress
access to remote
server administration
ports, such as SSH
to port 22and RDP to
port 3389.
Public access to
remote server
administration ports,
such as 22 and 3389,
increases resource
attack surface and
unnecessarily raises
the risk of resource
compromise.

AWS: Network
Security

Ensure no security
groups allow ingress
from 0.0.0.0/0
to remote server
administration ports
(Automated)

AWS::EC2::SecurityGroup
Security groups
provide stateful
filtering of ingress and
egress network traffic
to AWS resources. It is
recommended that no
security group allows
unrestricted ingress
access to remote
server administration
ports, such as SSH
to port 22 and RDP to
port 3389
Public access to
remote server
administration ports,
such as 22 and 3389,
increases resource
attack surface and
unnecessarily raises

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

694


<!-- page 695 -->
Cloud Configuration Governance AWS policies (continued)
Policy Set

Policy Name

Resource Type

Description

the risk of resource
compromise.
Azure policies
The Cloud Configuration Governance AWS policies are listed for your reference.
Cloud Configuration Governance Azure policies
Policy Set

Policy Name

Resource Type

Description

Azure VM
HardwareType

Condition builder

Policy to check if the
deployed Azure VMs
are using only the
approved hardware
types.

Azure VM IP Address

Script

Policy to check if the
IP address of the
Azure VM is matching
with the CMDB record.

Azure VM Monitoring
State

Condition builder

Policy to check if
detailed monitoring is
enabled for the Azure
VM.

Azure: Security Center Ensure That Auto
Configuration
provisioning of 'Log
Analytics agent for
Azure VMs' is Set to
'On' (Automated)

Azure Subscription

Enable automatic
provisioning of the
monitoring agent to
collect security data.
When 'Log Analytics
agent for Azure
VMs' is turned on,
Microsoft Defender for
Cloud provisions the
Microsoft Monitoring
Agent on all existing
supported Azure
virtual machines
and any new ones
that are created. The
Microsoft Monitoring
Agent scans for
various securityrelated configurations
and events such
as system updates,
OS vulnerabilities,
endpoint protection,
and provides alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

695


<!-- page 696 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Azure: Security Center Ensure 'Additional
Configuration
email addresses'
is Configured with
a Security Contact
Email (Automated)

Resource Type

Azure Subscription

Description

Microsoft Defender
for Cloud emails
the subscription
owners whenever a
high-severity alert
is triggered for their
subscription. You
should provide a
security contact
email address as
an additional email
address.
Microsoft Defender
for Cloud emails
the Subscription
Owner to notify
them about security
alerts. Adding your
Security Contact's
email address to
the 'Additional email
addresses' field
ensures that your
organization's Security
Team is included in
these alerts. This
ensures that the
proper people are
aware of any potential
compromise in order
to mitigate the risk in a
timely fashion.

Azure: Security Center Ensure That 'Notify
Configuration
about alerts with
the following
severity' is Set to
'High' (Automated)

Azure Subscription

Enables emailing
security alerts to the
subscription owner
or other designated
security contact.
Enabling security
alert emails ensures
that security alert
emails are received
from Microsoft. This
ensures that the right
people are aware of
any potential security
issues and are able to
mitigate the risk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

696


<!-- page 697 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Azure: Security Center Ensure That 'All users
Configuration
with the following
roles' is set to
'Owner' (Automated)

Resource Type

Azure Subscription

Description

Enable security alert
emails to subscription
owners.
Enabling security alert
emails to subscription
owners ensures
that they receive
security alert emails
from Microsoft. This
ensures that they are
aware of any potential
security issues and
can mitigate the risk in
a timely fashion.

Azure: Storage
Security

Ensure Storage
logging is Enabled
for Blob Service for
'Read', 'Write', and
'Delete' requests
(Automated)

Microsoft.Storage/
StorageAccounts

The Storage Blob
service provides
scalable, cost-efficient
objective storage in
the cloud.
Storage Logging
happens server-side
and allows details
for both successful
and failed requests
to be recorded in
the storage account.
These logs allow
users to see the
details of read,
write, and delete
operations against
the blobs. Storage
Logging log entries
contain the following
information about
individual requests:
Timing information
such as start time,
end-to-end latency,
and server latency,
authentication
details, concurrency
information and
the sizes of the
request and response
messages.
Storage Analytics
logs contain detailed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

697


<!-- page 698 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

information about
successful and
failed requests to a
storage service. This
information can be
used to monitor each
individual request to
a storage service for
increased security or
diagnostics. Requests
are logged on a besteffort basis. Storage
Analytics logging is
not enabled by default
for your storage
account.
Azure: Storage
Security

Ensure Storage
Logging is Enabled
for Table Service for
'Read', 'Write', and
'Delete' Requests
(Automated)

Microsoft.Storage/
StorageAccounts

The Storage Table
storage is a service
that stores structure
NoSQL data in the
cloud, providing a key/
attribute store with a
schema less design.
Storage Logging
happens server-side
and allows details
for both successful
and failed requests
to be recorded in
the storage account.
These logs allow
users to see the
details of read,
write, and delete
operations against
the tables. Storage
Logging log entries
contain the following
information about
individual requests:
Timing information
such as start time,
end-to-end latency,
and server latency,
authentication
details, concurrency
information and
the sizes of the
request and response
messages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

698


<!-- page 699 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

Storage Analytics
logs contain detailed
information about
successful and
failed requests to a
storage service. This
information can be
used to monitor each
individual request to
a storage service for
increased security or
diagnostics. Requests
are logged on a besteffort basis. Storage
Analytics logging is
not enabled by default
for your storage
account.
Azure: Storage
Security

Ensure Storage
Logging is Enabled
for Queue Service
for 'Read', 'Write', and
'Delete' requests
(Automated)

Microsoft.Storage/
StorageAccounts

The Storage Queue
service stores
messages that may
be read by any client
who has access to
the storage account.
A queue can contain
an unlimited number
of messages, each
of which can be up
to 64KB in size using
version 2011-08-18
or newer. Storage
Logging happens
server-side and
allows details for
both successful and
failed requests to
be recorded in the
storage account.
These logs allow
users to see the
details of read,
write, and delete
operations against
the queues. Storage
Logging log entries
contain the following
information about
individual requests:
Timing information
such as start time,
end-to-end latency,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

699


<!-- page 700 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

and server latency,
authentication
details, concurrency
information and
the sizes of the
request and response
messages.
Storage Analytics
logs contain detailed
information about
successful and
failed requests to
a storage service.
This information can
be used to monitor
individual request
and to diagnose
issues with a storage
service. Requests
are logged on a besteffort basis.Storage
Analytics logging is
not enabled by default
for your storage
account.
Azure: SQL Security

Ensure that
Vulnerability
Assessment (VA) is
enabled on a SQL
server by setting
a Storage Account
(Automated)

Microsoft.Sql/servers

Azure: SQL Security

Ensure that VA setting Microsoft.Sql/servers
'Periodic recurring
scans' to 'on' for
each SQL server
(Automated)

Azure: SQL Security

Ensure that VA setting Microsoft.Sql/servers
'Send scan reports
to' is configured
for a SQL server
(Automated)

Enable Vulnerability
Assessment (VA)
service scans for
critical SQL servers
and corresponding
SQL databases.
Enable Vulnerability
Assessment (VA)
Periodic recurring
scans for critical
SQL servers and
corresponding SQL
databases.
Configure 'Send scan
reports to' with email
IDs of concerned data
owners/stakeholders
for a critical SQL
servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

700


<!-- page 701 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Azure: SQL Security

Ensure that
Vulnerability
Assessment
Setting 'Also send
email notifications
to admins and
subscription owners'
is Set for

Microsoft.Sql/servers

Azure: SQL Security

Ensure that Azure
Active Directory
Admin is configured
(Automated)

Microsoft.Sql/servers

Azure: SQL Security

Ensure SQL server's
TDE protector is
encrypted with
Customermanaged
key (Automated)

Microsoft.Sql/servers

Description

Enable Vulnerability
Assessment (VA)
setting 'Also send
email notifications
to admins and
subscription owners'.

Use Azure
Active Directory
Authentication for
authentication with
SQL Database to
manage credentials in
a single place.
TDE with Customermanaged key support
provides increased
transparency and
control over the
TDE Protector,
increased security
with an HSM-backed
external service,
and promotion of
separation of duties.
With TDE, data is
encrypted at rest
with a symmetric key
(called the database
encryption key) stored
in the database or
data warehouse
distribution. To protect
this data encryption
key (DEK) in the past,
only a certificate that
the Azure SQL Service
managed could be
used.
Now, with Customermanaged key support
for TDE, the DEK can
be protected with an
asymmetric key that is
stored in the Key Vault.
Key Vault is a highly
available and scalable
cloud-based key store

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

701


<!-- page 702 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

which offers central
key management,
leverages FIPS 140-2
Level 2 validated
hardware security
modules (HSMs), and
allows separation
of management of
keys and data, for
additional security.
Based on business
needs or criticality
of data/databases
hosted a SQL server,
it is recommended
that the TDE protector
is encrypted by a
key that is managed
by the data owner
(Customer-managed
key).
Azure: Logging and
Monitoring

Ensure Diagnostic
Setting captures
appropriate
categories
(Automated)

Azure Subscription

The diagnostic setting
should be configured
to log the appropriate
activities from the
control/management
plane. A diagnostic
setting controls how
the diagnostic log is
exported. Capturing
the diagnostic
setting categories for
appropriate control/
management plane
activities allows
proper alerting
A diagnostic setting
controls how the
diagnostic log is
exported. Capturing
the diagnostic
setting categories for
appropriate control/
management plane
activities allows
proper alerting.

Azure: Logging and
Monitoring

Ensure that logging
Microsoft.KeyVault
for Azure KeyVault is
'Enabled' (Automated)

Enable AuditEvent
logging for key vault

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

702


<!-- page 703 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

instances to ensure
interactions with key
vaults are logged and
available.
Monitoring how and
when key vaults
are accessed,
and by whom
enables an audit
trail of interactions
with confidential
information, keys
and certificates
managed by Azure
Keyvault. Enabling
logging for Key Vault
saves information
in an Azure storage
account that the user
provides. This creates
a new container
named insightslogs-auditevent
automatically for the
specified storage
account, and this
same storage account
can be used for
collecting logs for
multiple key vaults.
Azure: Data Security

Ensure that
Microsoft.Compute/
'Unattached disks' are disks
encrypted with CMK
(Automated)

Ensure that
unattached disks in
a subscription are
encrypted with a
Customer Managed
Key (CMK).
Managed disks
are encrypted by
default with Platformmanaged keys.
Using
Customermanaged
keys may provide
an additional level
of security or meet
an organization's
regulatory
requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

703


<!-- page 704 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

Encrypting managed
disks ensures that
its entire content is
fully unrecoverable
without a key and thus
protects the volume
from unwarranted
reads.
Even if the disk is
not attached to any
of the VMs, there is
always a risk where
a compromised
user account with
administrative access
to VM service can
mount/attach these
data disks which
may lead to sensitive
information disclosure
and tampering.
Azure: Access Control Ensure the key
vault is recoverable
(Automated)

Microsoft.KeyVault

The key vault contains
object keys, secrets
and certificates.
Accidental
unavailability of
a key vault can
cause immediate
data loss or loss of
security functions
(authentication,
validation, verification,
non-repudiation, etc.)
supported by the key
vault objects.
It is recommended
the key vault be
made recoverable
by enabling the "Do
Not Purge" and "Soft
Delete" functions. This
is in order to prevent
loss of encrypted
data including storage
accounts, SQL
databases, and/or
dependent services
provided by key vault
objects (Keys, Secrets,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

704


<!-- page 705 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

Certificates) etc., as
may happen in the
case of accidental
deletion by a user
or from disruptive
activity by a malicious
user.

There could be
scenarios where users
accidently run delete/
purge commandson
key vault or attacker/
malicious user does it
deliberately to cause
disruption. Deleting
or purging a key vault
leads to immediate
data loss as keys
encrypting data and
secrets/certificates
allowing access/
services will become
non-accessible.
There are 2 key vault
properties that plays
role in permanent
unavailability of a key
vault.1.enableSoftDelete:Setting
this parameter to
true for a key vault
ensures that even if
key vault is deleted,
Key vault itself or
its objects remain
recoverable for next
90days. In this span
of 90 days either key
vault/objects can be
recovered or purged
(permanent deletion).
If no action is taken,
after 90 days key vault
and its objects will be
purged.2.enablePurgeProtection:enable
only ensures that key
vault is not deleted
permanently and will
be recoverable for
90 days from date of
deletion. However,
there are chances
that the key vault
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

705


<!-- page 706 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

Description

and/or its objects are
accidentally purged
and hence will not be
recoverable. Setting
enablePurgeProtection
to "true" ensures that
the key vault and its
objects cannot be
purged.Enabling both
the parameters on
key vaults ensures
that key vaults and
their objects cannot
be deleted/purged
permanently.
Azure: App Service
Security

Ensure Web App
Redirects All HTTP
traffic to HTTPS in
Azure App Service
(Automated)

Microsoft.Web/sites

Azure Web Apps
allows sites to run
under both HTTP and
HTTPS by default.
Web apps can be
accessed by anyone
using non-secure
HTTP links by default.
Non-secure HTTP
requests can be
restricted and all
HTTP requests
redirected to the
secure HTTPS port. It
is recommended to
enforce HTTPS-only
traffic.
Enabling HTTPS-only
traffic will redirect
all non-secure HTTP
request toHTTPS
ports. HTTPS uses
the TLS/SSL protocol
to provide a secure
connection, which is
both encrypted and
authenticated. So it is
important to support
HTTPS for the security
benefits.

Azure: App Service
Security

Ensure Web
App is using the
latest version of

Microsoft.Web/sites

The TLS(Transport
Layer Security)
protocol secures

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

706


<!-- page 707 -->
Cloud Configuration Governance Azure policies (continued)
Policy Set

Policy Name

Resource Type

TLS encryption
(Automated)

Description

transmission of data
over the internet using
standard encryption
technology.
Encryption should
be set with the latest
version of TLS. App
service allows TLS 1.2
by default, which is
the recommended
TLS level by industry
standards, such as
PCI DSS.
App service currently
allows the web app to
set TLS versions 1.0,
1.1 and 1.2. It is highly
recommended to
use the latest TLS 1.2
version for web app
secure connections.

Policy sets
The Cloud Configuration Governance policy sets and its policies are listed for your reference.
Cloud Configuration Governance policy sets
Policy Set Name Policies

Description

AWS 1.4.0

Amazon Web
Services
Foundations
Benchmark
(Automated)
v1.4.0 05-28-2021

Ensure IAM Users Receive Permissions Only Through
Groups (Automated)
Ensure no Network ACLs allow ingress from 0.0.0.0/0 to
remote server administration ports (Automated)
Ensure IAM password policy requires minimum length of 14
or greater (Automated)
Ensure a support role has been created to manage
incidents with AWS Support (Automated)
Eliminate use of the 'root' user for administrative and daily
tasks (Automated)
Ensure hardware MFA is enabled for the 'root' user account
(Automated)
Ensure that Object-level logging for write events is enabled
for S3 bucket (Automated)
Ensure access keys are rotated every 90 days or less
(automated)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

707


<!-- page 708 -->
Cloud Configuration Governance policy sets (continued)
Policy Set Name Policies

Description

Ensure there is only one active access key available for any
single IAM user (automated)
Ensure IAM policies that allow full "*:*" administrative
privileges are not attached (Automated)
Ensure that all the expired SSL/TLS certificates stored in
AWS IAM are removed (Automated)
Ensure IAM password policy prevents password reuse
(Automated)
Ensure that IAM Access analyzer is enabled for all regions
(Automated)
Ensure multi-factor authentication (MFA) is enabled for all
IAM users that have a console password (Automated)
Ensure credentials unused for 45 days or greater are
disabled (Automated)
Ensure that S3 Buckets are configured with 'Block public
access (bucket settings)'
Ensure no security groups allow ingress from 0.0.0.0/0 to
remote server administration ports (Automated)
Ensure no 'root' user account access key exists (Automated)
Ensure MFA is enabled for the 'root' user account
(Automated)
Ensure that Object-level logging for read events is enabled
for S3 bucket (Automated)
Azure 1.4.0

Ensure that logging for Azure KeyVault is
'Enabled' (Automated)
Ensure Web App is using the latest version of TLS
encryption (Automated)

Microsoft Azure
Foundations
Benchmark
v1.4.0 11-26-2021

Ensure that Vulnerability Assessment (VA) is enabled on a
SQL server by setting a Storage Account (Automated)
Ensure Storage logging is Enabled for Blob Service for
'Read', 'Write', and 'Delete' requests (Automated)
Ensure Diagnostic Setting captures appropriate categories
(Automated)
Ensure that VA setting 'Send scan reports to' is configured
for a SQL server (Automated)
Ensure That 'Notify about alerts with the following severity' is
Set to 'High' (Automated)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

708


