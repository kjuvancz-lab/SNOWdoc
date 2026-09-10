# Zurich IT Operations Management — Cloud Action Library

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 709–737 of 4823

Sections: Cloud Action Library (p709)

---

<!-- page 709 -->
Cloud Configuration Governance policy sets (continued)
Policy Set Name Policies

Description

Ensure 'Additional email addresses' is Configured with a
Security Contact Email (Automated)
Ensure Web App Redirects All HTTP traffic to HTTPS in
Azure App Service (Automated)
Ensure That 'All users with the following roles' is set to
'Owner' (Automated)
Ensure Storage Logging is Enabled for Table Service for
'Read', 'Write', and 'Delete' Requests (Automated)
Ensure Storage Logging is Enabled for Queue Service for
'Read', 'Write', and 'Delete' requests (Automated)
Ensure that 'Unattached disks' are encrypted with CMK
(Automated)
Ensure that VA setting 'Periodic recurring scans' to 'on' for
each SQL server (Automated)
Ensure SQL server's TDE protector is encrypted with
Customermanaged key (Automated)
Ensure the key vault is recoverable (Automated)

Cloud Action Library
®

Use the ready-to-use actions and subflows of the ServiceNow Cloud Action Library application
®
to interact with the cloud resources of the organization. ServiceNow ITOM Cloud Accelerate
features, such as Cloud Configuration Governance, use these actions to operate.

Explore
Explore Cloud Action Library

Set up

Develop

• Install Cloud Action Library

• Developer training

• Set up Cloud Action Library
for Amazon Web Services
(AWS)

• Developer documentation

• Set up Cloud Action Library
for Microsoft Azure

• Cloud Action Library
reference

Troubleshoot and get help
• Ask or answer questions
in the Cloud Action Library
forum on the ServiceNow
Community

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

709


<!-- page 710 -->
• Search the Known Error
Portal for known error
articles
• Contact Customer Service
and Support

Exploring Cloud Action Library
Understand the typical Cloud Action Library workflows and high-level tasks.
To use the Cloud Action Library actions and workflows to interact with the cloud resources,
perform the following tasks:
1. Install Cloud Action Library. For more information, see Install Cloud Action Library.
2. To use Cloud Action Library for interactions with Amazon Web Services (AWS) resources, see
Set up Cloud Action Library for AWS.
3. To use Cloud Action Library for interactions with Microsoft Azure resources, see Set up Cloud
Action Library for Microsoft Azure.
Install Cloud Action Library
You can install the Cloud Action Library application (sn.itom.cal) if you have the admin role. The
®
application installs related ServiceNow Store applications and plugins if they are not already
installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Cloud Action Library
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

Several plugins are installed with the Cloud Action Library application. For more information, see
Cloud Action Library .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Cloud Action Library application (sn.itom.cal) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

710


<!-- page 711 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Set up Cloud Action Library for AWS
Set up access to the Amazon Web Services (AWS) cloud accounts in Cloud Action Library to
enable interaction between the application and the cloud.

Before you begin

Role required: admin

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

Note: Cloud Action Library doesn't use a MID Server-based assume role setup to access
the trusting accounts.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

711


<!-- page 712 -->
Field

Description

Active

Option to use the credential.

Access Key ID

The access key ID that you generated on the AWS management
console.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

712


<!-- page 713 -->
Field

Description

Discovery The credentials needed for ServiceNow applications to access the cloud
credentials account. You can configure the discovery credentials at a later stage, while
configuring access to the AWS accounts.
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
6. Optional: To use a management account to scan the member accounts of the AWS
organization, create an assume role configuration for the management account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

713


<!-- page 714 -->
a. Optional: If you don't want to use the OrganizationAccountAccessRole to access the
member account, Configure trusting account for Cloud Action Library.
For more information, see Configure the trusting account for Cloud Configuration
Governance and Cloud Action Library.
b. Optional: Repeat step 6.a for each member account that needs to be scanned through the
management account without using the OrganizationAccountAccessRole.
c. Optional: If you want to use the OrganizationAccountAccessRole to access the member
account, create an assume role configuration for the management account.
For more information, see Create an assume role configuration.
7. Optional: To use a trusted account to scan the trusting account, configure trusting account for
Cloud Action Library.
The trusted account and trusting account can be in different AWS organizations or they can be
in the same AWS organization.
a. Configure trusting account for Cloud Configuration Governance.
For more information, see Configure the trusting account for Cloud Configuration
Governance and Cloud Action Library.
b. Repeat step 7.a for each trusting account that needs to be scanned through the trusted
account.
Set up Cloud Action Library for Microsoft Azure
Set up access to the Microsoft Azure cloud accounts in Cloud Action Library to enable
interaction between the application and the cloud.

Before you begin

Role required: admin

Procedure
1. Create Microsoft Azure credentials that can access the Microsoft Azure account.
For more information, see Create Azure cloud credentials.
2. Create an Integration Hub connection for Microsoft Azure.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

714


<!-- page 715 -->
Field

Description

Replace {tenant} with the Microsoft Azure tenant ID.
d. Select Create and Get OAuth Token.
Domain separation and Cloud Action Library
Domain separation is not supported in Cloud Action Library . Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Cloud Action Library reference
Reference topics provide additional information about the Cloud Action Library application.
AWS Enable EC2 Instance Monitoring action
Action that turns on monitoring for the selected Amazon Web Services (AWS) Virtual Machine
(VM) instance.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the ec2:MonitorInstances cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Instances
Data type: String
AWS instance ID. Enter the comma-separated list of AWS instance IDs.
Example: i-1234567890abcdef0, i-1234567761abcdek1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

715


<!-- page 716 -->
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False
Not supported.

Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: True/False
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
Error Message
Data type: String
Error message returned for the failed call.
Result
Data type: True/False
Status of the action.
• True: Successful
• False: Failed
Error Code
Data type: String
Client error code returned for the failed call.
AWS Get IAM Login Profile action
Action that retrieves the user name for the specified Amazon Web Services (AWS) Identity
Access Management (IAM) user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

716


<!-- page 717 -->
Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the iam:GetLoginProfile cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False
Not supported.
IAM Account
Data type: String
AWS IAM user name.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: True/False
Status of the action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

717


<!-- page 718 -->
• True: Successful
• False: Failed
AWS List Images action
Action that describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the
images available to you.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the ec2:DescribeImages cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Version
Data type: String
Version of the AWS API.
Limit
Data type: Integer
Number of pages to return per call.
Next Token
Data type: String
Starting page token.
Credential Alias
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

718


<!-- page 719 -->
Data type: Record
Credential alias for the AWS credential.
Filters
Data type: Object
A filter name and value pair that is used to return a specific list of results from
the describe operation. Filters can be used to match a set of resources based on
criteria such as tags, attributes, or IDs.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: Object
A complex object containing information about the images.
AWS Put S3 Bucket Encryption action
Action that configures the default encryption and Amazon Web Services (AWS) S3 Bucket Key for
an existing bucket.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the s3:PutEncryptionConfiguration cloud
permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Bucket Name
Data type: String
Name of the AWS S3 bucket.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

719


<!-- page 720 -->
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False
Not supported.

Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: String
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
Bucket Region
Data type: String
Datacenter where the specified AWS S3 bucket is hosted.
Error Code
Data type: String
Client error code returned for the failed call.
Result
Data type: True/False
Status of the action.
• True: Successful
• False: Failed
Redirected
Data type: String
If the AWS S3 bucket is not available in the specified datacenter, the Bucket
Region variable specifies the datacenter of the AWS S3 bucket.
Error Message
Data type: String
Error message returned for the failed call.
AWS Turn Off EC2 Instance action
Action that stops the specified Amazon Web Services (AWS) Virtual Machine (VM).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

720


<!-- page 721 -->
Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the ec2:StopInstances cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Instances
Data type: String
AWS instance ID. Enter the comma-separated list of AWS instance IDs.
Example: i-1234567890abcdef0, i-1234567761abcdek1
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False Not supported.

Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: True/False
Server authorization status of the call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

721


<!-- page 722 -->
• True: The server has authorized the call
• False: The server didn't authorize the call
Error Message
Data type: String
Error message returned for the failed call.
Result
Data type: True/False
Status of the action.
• True: Successful
• False: Failed
Error code
Data type: String
Client error code returned for the failed call.
Azure Turn Off Virtual Machine action
Action that stops the specified Microsoft Azure Virtual Machine (VM).

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the Microsoft.Compute/
virtualMachines/*/powerOff cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

722


<!-- page 723 -->
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False
Not supported.
VM Identifier
Data type: String
URI of the VM resource.

Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: True/False
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
Error Message
Data type: String
Error message returned for the failed call.
Result
Data type: True/False
Status of the action.
• True: Successful
• False: Failed
Error Code
Data type: String
Client error code returned for the failed call.
CAL - AWS List S3 Buckets action
Action that returns a list of all the Amazon Web Services (AWS) buckets owned by the
authenticated sender of the request.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

723


<!-- page 724 -->
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the s3:ListBucket cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Next Token
Data type: String
Starting page token.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Limit
Data type: Integer
Number of pages to return per call.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: Object
A complex object containing information about the images owned by the
authenticated sender of the request.
CAL - AWS List VMs action
Action that returns a list of all Amazon Web Services (AWS) Virtual Machines (VM) that belong to
the specified logical datacenter.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

724


<!-- page 725 -->
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the ec2:DescribeInstances cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Location
Data type: String
Name of the datacenter.
Use Mid
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Version
Data type: String
Version of the AWS API.
Limit
Data type: Integer
Number of pages to return per call.
Next Token
Data type: String
Starting page token.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Filters
Data type: Object
A filter name and value pair that is used to return a specific list of results from
the describe operation. Filters can be used to match a set of resources based on
criteria such as tags, attributes, or IDs.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: Object
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

725


<!-- page 726 -->
A complex object containing information about the VMs hosted on the specified
logical datacenter.
CAL - Azure List VMs action
Action that returns the list of Microsoft Azure Virtual Machines (VM) that belong to the specified
logical datacenter.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the Microsoft.ResourceGraph/resources
cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Location
Data type: String
Name of the datacenter.
Version
Data type: String
Version of the Microsoft Azure API.
Credential Alias
Data type: Record
Credential alias for the Microsoft Azure credential.
Limit
Data type: Integer
Number of pages to return per call.
Next Token
Data type: String
Starting page token.
Filters
Data type: Object
A filter name and value pair that is used to return a specific list of results from
the describe operation. Filters can be used to match a set of resources based on
criteria such as tags, attributes, or IDs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

726


<!-- page 727 -->
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
Account Id
Data type: String
Microsoft Azure account ID.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: Object
A complex object containing information about the VMs hosted on the specified
logical datacenter.
CAL - Azure VM IP Metric action
Action that returns the IP details of the specified Microsoft Azure Virtual Machine (VM).

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the Microsoft.ResourceGraph/resources
cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the Microsoft Azure credential.
Version
Data type: String
Version of the Microsoft Azure API.
VM
Data type: Array.Object
URI of the VM resource.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

727


<!-- page 728 -->
Outputs
You can use these outputs as inputs for other actions.
Result
Data type: Object
A complex object containing the IP details of the specified Microsoft Azure VM.
CAL - Azure VM Monitoring Metric Data action
Action that returns monitoring information for the specified Microsoft Azure Virtual Machine (VM).

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the Microsoft.Compute/
virtualMachines/{vmName}/instanceView cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the Microsoft Azure credential.
Version
Data type: String
Version of the Microsoft Azure API.
VM
Data type: Object.Array
URI of the VM resource.

Outputs
You can use these outputs as inputs for other actions.
Result
Data type: String
The result variable contains the monitoring information for the specified Microsoft
Azure VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

728


<!-- page 729 -->
CAL - Integer Stream action
Action that returns an array of integers in the specified range.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
You don't need any cloud permission to execute this action.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
start
Data type: Integer
An integer specifying at which position to start.
end
Data type: Integer
An integer specifying at which position to stop. The returned integer stream doesn't
include the end integer.
step
Data type: Integer
An integer specifying the increment interval for the integer stream.

Outputs
You can use these outputs as inputs for other actions.
Integer Stream
Data type: Array.Integer
An array of integers.
Disable AWS IAM User action
Action that deletes the password for the specified IAM user, which terminates the user's ability to
access Amazon Web Services (AWS) services through the AWS Management Console.

Roles and availability
Subscription requirements
To use this action in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

729


<!-- page 730 -->
Role requirements
This action requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this action, the caller must have the iam:DeleteLoginProfile cloud
permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Location
Data type: String
Name of the datacenter.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Gov Cloud
Data type: True/False
Not supported.
IAM Account
Data type: String
AWS IAM user name.

Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: String
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
error_code
Data type: String
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

730


<!-- page 731 -->
Client error code returned for the failed call.
result
Data type: True/False
Status of the action.
• True: Successful
• False: Failed
error_message
Data type: String
Error message returned for the failed call.
CAL - AWS Generate Credential Report subflow
Subflow that lists all users in your account and the status of their various credentials, including
passwords, access keys, and MFA devices.

Roles and availability
Subscription requirements
To use this subflow in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This subflow requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this subflow, the caller must have the Iam:GetCredentialReport and
Iam:GenerateCredentialReport cloud permission.

Inputs
Provide a value for each input that your subflow needs. To add dynamic values, you can also
select data pills using the pill picker.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Use Mid
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
Mid Server
Data type: Record
MID Server for making the outbound calls.
Api Version
Data type: String
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

731


<!-- page 732 -->
Version of the AWS API.

Outputs
You can use these outputs as inputs for other subflows.
Error
Data type: String
Description of the error returned by the AWS endpoint.
credential_report_list
Data type: Array.Object
Complex object containing all fields of the credential report.
CAL - AWS S3 Get Encryption subflow
Subflow that returns the default encryption configuration for an Amazon Web Services (AWS) S3
bucket.

Roles and availability
Subscription requirements
To use this subflow in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This subflow requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this subflow, the caller must have the s3:GetEncryptionConfiguration
cloud permission.

Inputs
Provide a value for each input that your subflow needs. To add dynamic values, you can also
select data pills using the pill picker.
Bucket Name
Data type: String
Name of the AWS S3 bucket.
Credential Alias
Data type: String
Credential alias for the AWS credential.
Use Mid
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

732


<!-- page 733 -->
MID Server for making the outbound calls.

Outputs
You can use these outputs as inputs for other subflows.
Is Access Denied
Data type: True/False
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
Is Encrypted
Data type: True/False
Encryption status of the AWS resource.
Bucket Region
Data type: String
Datacenter of the AWS S3 bucket.
KMS Masterkey Id
Data type: String
Customer AWS Key Management Service (KMS) key ID used for the default
encryption.
Encryption Algorithm
Data type: String
Server-side encryption algorithm used for the default encryption.
Bucket Key Enabled
Data type: String
Specifies whether Amazon S3 uses an S3 Bucket Key with server-side encryption
using KMS (SSE-KMS) for new objects in the bucket.
Error Code
Data type: String
Client error code returned for the failed call.
CAL - Resolve Credential Alias subflow
Subflow that returns the credentials alias for the mentioned credential.

Roles and availability
Subscription requirements
To use this subflow in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This subflow requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

733


<!-- page 734 -->
Cloud permission
You don't need any cloud permission to execute this action.

Inputs
Provide a value for each input that your subflow needs. To add dynamic values, you can also
select data pills using the pill picker.
Service Account
Data type: Record
Service account for which a suitable credential alias is sought.

Outputs
You can use these outputs as inputs for other subflows.
Credential Alias
Data type: Record
Credential alias for the AWS credential.
Error
Data type: String
If the underlying Cloud Action Library (CAL) action fails to return a credential alias,
it returns an error message that explains the reason behind the failure. The Error
variable contains the error message returned by the underlying CAL action.
CAL - Resolve MID subflow
Subflow that returns a suitable MID Server based on the specified MID Server selection criteria.

Roles and availability
Subscription requirements
To use this subflow in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This subflow requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
You don't need any cloud permission to execute this action.

Inputs
Provide a value for each input that your subflow needs. To add dynamic values, you can also
select data pills using the pill picker.
Service Account
Data type: Record
Service account for which a suitable MID Server is sought.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
Outputs
You can use these outputs as inputs for other subflows.
Mid Server
Data type: Record
Resolved MID Server.
Error
Data type: String
Error encountered during identification of the MID Server.
CAL - AWS S3 Get ACL subflow
Subflow that retrieves the Access Control List (ACL) details for the specified Amazon Web
Services (AWS) S3 bucket.

Roles and availability
Subscription requirements
To use this subflow in custom flows, you must obtain an Integration Hub Enterprise
subscription or an App Engine subscription. For more information, see Request
Integration Hub .
Role requirements
This subflow requires roles granted by delegated development or assigned to the
user. For more information, see User access to Flow Designer .

Cloud permission
To execute this subflow, the caller must have the s3:GetBucketAcl cloud permission.

Inputs
Provide a value for each input that your action needs. To add dynamic values, you can also select
data pills using the pill picker.
Bucket Name
Data type: String
Name of the AWS S3 bucket.
Use MID
Data type: True/False
Selection to indicate whether to use a MID Server to make the outbound calls.
MID Server
Data type: Record
MID Server for making the outbound calls.
Credential Alias
Data type: Record
Credential alias for the AWS credential.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
Outputs
You can use these outputs as inputs for other actions.
Is Access Denied
Data type: True/False
Server authorization status of the call.
• True: The server has authorized the call
• False: The server didn't authorize the call
Bucket Region
Data type: String
Datacenter where the specified AWS S3 bucket is hosted.
Error Code
Data type: String
Client error code returned for the failed call.
Owner write
Data type: True/False
The bucket owner can write into the bucket.
Owner full control
Data type: True/False
The owner has all the permissions for the bucket.
Owner listing
Data type: True/False
The bucket owner can list the contents of the bucket.
Public write
Data type: True/False
Anyone (public access) can write into the bucket.
Public listing
Data type: True/False
Anyone (public access) can list the contents of the bucket.
Public full control
Data type: True/False
Everyone (public access) has all the permissions.
Auth Users Write
Data type: True/False
Authenticated user groups (users with an AWS account) can write into the bucket.
Auth Users Full Control
Data type: True/False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
Authenticated user groups (users with an AWS account) have all the permissions for
the bucket.
Owner Read ACL
Data type: True/False
Owner of the bucket can read the bucket ACL.
Owner Write ACL
Data type: True/False
Owner of the bucket can write or update the bucket ACL.
Public Read ACL
Data type: True/False
Anyone (public access) can read the bucket ACL.
Public Write ACL
Data type: True/False
Anyone (public access) can write or update the bucket ACL.
Auth Users Read ACL
Data type: True/False
Authenticated user groups (users with an AWS account) can read the bucket ACL.
Auth Users Write ACL
Data type: True/False
Authenticated user groups (users with an AWS account) can write or update the
bucket ACL.
Auth Users Listing
Data type: True/False
Authenticated user group (users with an AWS account) can list the contents of the
bucket.
Owner ID
Data type: String
Canonical user ID of the AWS account.
Owner Display Name
Data type: String
Display name of the resource owner.
For federated login, the subflow doesn't return any Owner Display Name.
Cloud profiles with minimal permissions for Cloud Action Library actions and subflows
You need appropriate cloud permissions to execute the Cloud Action Library actions and
subflows. Edit the cloud permissions profile JSON to suit the needs of your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


