# Zurich IT Operations Management — Cloud Migration Assessment / Cloud Provisioning and Governance

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 342–491 of 4823 | Part 2 of 3

Sections: Cloud Migration Assessment (p192); Cloud Provisioning and Governance (p192)

---

<!-- page 342 -->
6. Open each parameter with a Decision value of Pending, select a value, and then click the
check mark

.

Option

Description

Skip Update

Discards the updates to the template.

Use template

Applies the updates to the template.

7. After you update each Pending decision, click Activate.
The state of the template changes from Draft to Active and the system generates the catalog
item.
Sample CloudFormation JSON to create an AWS EC2 instance
Reference code sample to deploy an Amazon AWS Cloud EC2 instance.

Deploying an AWS EC2 instance using CloudFormation
• While designing a catalog item, review the cloud formation template to identify the services
that are being provisioned. Check that appropriate permissions for the services can be
granted, to ensure that no failures occur from lack of permissions when the stack is ordered.
For more information, see Configure permissions on the AWS console
• Make necessary modifications using this sample as your reference.
{
"AWSTemplateFormatVersion":"2010-09-09",
"Description":"AWS CloudFormation Sample Template
EC2InstanceWithSecurityGroupSample: Create an Amazon EC2
instance running the Amazon Linux AMI. The AMI is chosen based
on the region in which the stack is run. This example creates
an EC2 security group for the instance to give you SSH access.
**WARNING** This template creates an Amazon EC2 instance. You
will be billed for the AWS resources used if you create a stack
from this template.",
"Parameters":{
"KeyName":{
"Description":"Name of an existing EC2 KeyPair to
enable SSH access to the instance",
"Type":"AWS::EC2::KeyPair::KeyName",
"Default":"admin-Default",
"ConstraintDescription":"must be the name of an
existing EC2 KeyPair."
},
"InstanceType":{
"Description":"WebServer EC2 instance type",
"Type":"String",
"Default":"t2.micro",
"AllowedValues":[
"t1.micro",
"t2.nano",
"t2.micro",
"t2.small",
"t2.medium",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
"t2.large",
"m1.small",
"m1.medium",
"m1.large",
"m1.xlarge",
"m2.xlarge",
"m2.2xlarge",
"m2.4xlarge",
"m3.medium",
"m3.large",
"m3.xlarge",
"m3.2xlarge",
"m4.large",
"m4.xlarge",
"m4.2xlarge",
"m4.4xlarge",
"m4.10xlarge",
"c1.medium",
"c1.xlarge",
"c3.large",
"c3.xlarge",
"c3.2xlarge",
"c3.4xlarge",
"c3.8xlarge",
"c4.large",
"c4.xlarge",
"c4.2xlarge",
"c4.4xlarge",
"c4.8xlarge",
"g2.2xlarge",
"g2.8xlarge",
"r3.large",
"r3.xlarge",
"r3.2xlarge",
"r3.4xlarge",
"r3.8xlarge",
"i2.xlarge",
"i2.2xlarge",
"i2.4xlarge",
"i2.8xlarge",
"d2.xlarge",
"d2.2xlarge",
"d2.4xlarge",
"d2.8xlarge",
"hi1.4xlarge",
"hs1.8xlarge",
"cr1.8xlarge",
"cc2.8xlarge",
"cg1.4xlarge"
],
"ConstraintDescription":"must be a valid EC2 instance
type."
},
"SSHLocation":{
"Description":"The IP address range that can be used to
SSH to the EC2 instances",
"Type":"String",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
"MinLength":"9",
"MaxLength":"18",
"Default":"0.0.0.0/0",
"AllowedPattern":"(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\
\d{1,3})/(\\d{1,2})",
"ConstraintDescription":"must be a valid IP CIDR range
of the form x.x.x.x/x."
},
"Network":{
"Description":"The Network to the EC2 instances",
"Type":"String"
},
"AvailabilityZone":{
"Description":"The AZ of the EC2 instance",
"Type":"String"
},
"SubnetPool":{
"Description":"The IP address range that can be used to
SSH to the EC2 instances",
"Type":"String"
}
},
"Metadata":{
"SNC::Parameter::Metadata":{
"SubnetPool":{
"datasource":"ServiceNow::Pools::SubnetPool.getObjectsByNetwor
k",
"datasourceFilter":{
"Network":"Network"
}
},
"Network":{
"datasource":"ServiceNow::Pools::NetworkPool.getObjectsByLDC"
},
"KeyName":{
"datasource":"ServiceNow::Pools::CloudKeyPairPool.getObjectsByL
DC"
}
}
},
"Mappings":{
"AWSInstanceType2Arch":{
"t1.micro":{
"Arch":"PV64"
},
"t2.nano":{
"Arch":"HVM64"
},
"t2.micro":{
"Arch":"HVM64"
},
"t2.small":{
"Arch":"HVM64"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
},
"t2.medium":{
"Arch":"HVM64"
},
"t2.large":{
"Arch":"HVM64"
},
"m1.small":{
"Arch":"PV64"
},
"m1.medium":{
"Arch":"PV64"
},
"m1.large":{
"Arch":"PV64"
},
"m1.xlarge":{
"Arch":"PV64"
},
"m2.xlarge":{
"Arch":"PV64"
},
"m2.2xlarge":{
"Arch":"PV64"
},
"m2.4xlarge":{
"Arch":"PV64"
},
"m3.medium":{
"Arch":"HVM64"
},
"m3.large":{
"Arch":"HVM64"
},
"m3.xlarge":{
"Arch":"HVM64"
},
"m3.2xlarge":{
"Arch":"HVM64"
},
"m4.large":{
"Arch":"HVM64"
},
"m4.xlarge":{
"Arch":"HVM64"
},
"m4.2xlarge":{
"Arch":"HVM64"
},
"m4.4xlarge":{
"Arch":"HVM64"
},
"m4.10xlarge":{
"Arch":"HVM64"
},
"c1.medium":{
"Arch":"PV64"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
},
"c1.xlarge":{
"Arch":"PV64"
},
"c3.large":{
"Arch":"HVM64"
},
"c3.xlarge":{
"Arch":"HVM64"
},
"c3.2xlarge":{
"Arch":"HVM64"
},
"c3.4xlarge":{
"Arch":"HVM64"
},
"c3.8xlarge":{
"Arch":"HVM64"
},
"c4.large":{
"Arch":"HVM64"
},
"c4.xlarge":{
"Arch":"HVM64"
},
"c4.2xlarge":{
"Arch":"HVM64"
},
"c4.4xlarge":{
"Arch":"HVM64"
},
"c4.8xlarge":{
"Arch":"HVM64"
},
"g2.2xlarge":{
"Arch":"HVMG2"
},
"g2.8xlarge":{
"Arch":"HVMG2"
},
"r3.large":{
"Arch":"HVM64"
},
"r3.xlarge":{
"Arch":"HVM64"
},
"r3.2xlarge":{
"Arch":"HVM64"
},
"r3.4xlarge":{
"Arch":"HVM64"
},
"r3.8xlarge":{
"Arch":"HVM64"
},
"i2.xlarge":{
"Arch":"HVM64"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
},
"i2.2xlarge":{
"Arch":"HVM64"
},
"i2.4xlarge":{
"Arch":"HVM64"
},
"i2.8xlarge":{
"Arch":"HVM64"
},
"d2.xlarge":{
"Arch":"HVM64"
},
"d2.2xlarge":{
"Arch":"HVM64"
},
"d2.4xlarge":{
"Arch":"HVM64"
},
"d2.8xlarge":{
"Arch":"HVM64"
},
"hi1.4xlarge":{
"Arch":"HVM64"
},
"hs1.8xlarge":{
"Arch":"HVM64"
},
"cr1.8xlarge":{
"Arch":"HVM64"
},
"cc2.8xlarge":{
"Arch":"HVM64"
}
},
"AWSRegionArch2AMI":{
"us-east-1":{
"PV64":"ami-2a69aa47",
"HVM64":"ami-6869aa05",
"HVMG2":"ami-a41a3fb3"
},
"us-west-2":{
"PV64":"ami-7f77b31f",
"HVM64":"ami-7172b611",
"HVMG2":"ami-caf253aa"
},
"us-west-1":{
"PV64":"ami-a2490dc2",
"HVM64":"ami-31490d51",
"HVMG2":"ami-00347e60"
},
"eu-west-1":{
"PV64":"ami-4cdd453f",
"HVM64":"ami-f9dd458a",
"HVMG2":"ami-e2f7bd91"
},
"eu-central-1":{
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
"PV64":"ami-6527cf0a",
"HVM64":"ami-ea26ce85",
"HVMG2":"ami-d2ff04bd"
},
"ap-northeast-1":{
"PV64":"ami-3e42b65f",
"HVM64":"ami-374db956",
"HVMG2":"ami-4c78d52d"
},
"ap-northeast-2":{
"PV64":"NOT_SUPPORTED",
"HVM64":"ami-2b408b45",
"HVMG2":"NOT_SUPPORTED"
},
"ap-southeast-1":{
"PV64":"ami-df9e4cbc",
"HVM64":"ami-a59b49c6",
"HVMG2":"ami-f3f95990"
},
"ap-southeast-2":{
"PV64":"ami-63351d00",
"HVM64":"ami-dc361ebf",
"HVMG2":"ami-3a122e59"
},
"ap-south-1":{
"PV64":"NOT_SUPPORTED",
"HVM64":"ami-ffbdd790",
"HVMG2":"ami-21a7d34e"
},
"us-east-2":{
"PV64":"NOT_SUPPORTED",
"HVM64":"ami-f6035893",
"HVMG2":"NOT_SUPPORTED"
},
"sa-east-1":{
"PV64":"ami-1ad34676",
"HVM64":"ami-6dd04501",
"HVMG2":"NOT_SUPPORTED"
},
"cn-north-1":{
"PV64":"ami-77559f1a",
"HVM64":"ami-8e6aa0e3",
"HVMG2":"NOT_SUPPORTED"
}
}
},
"Resources":{
"EC2Instance":{
"Type":"AWS::EC2::Instance",
"Properties":{
"InstanceType":{
"Ref":"InstanceType"
},
"KeyName":{
"Ref":"KeyName"
},
"SubnetId":{
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
"Ref":"SubnetPool"
},
"ImageId":{
"Fn::FindInMap":[
"AWSRegionArch2AMI",
{
"Ref":"AWS::Region"
},
{
"Fn::FindInMap":[
"AWSInstanceType2Arch",
{
"Ref":"InstanceType"
},
"Arch"
]
}
]
}
}
},
"InstanceSecurityGroup":{
"Type":"AWS::EC2::SecurityGroup",
"Properties":{
"GroupDescription":"Enable SSH access via port 22",
"SecurityGroupIngress":[
{
"IpProtocol":"tcp",
"FromPort":"22",
"ToPort":"22",
"CidrIp":{
"Ref":"SSHLocation"
}
}
]
}
}
},
"Outputs":{
"InstanceId":{
"Description":"InstanceId of the newly created EC2
instance",
"Value":{
"Ref":"EC2Instance"
}
},
"AZ":{
"Description":"Availability Zone of the newly created
EC2 instance",
"Value":{
"Fn::GetAtt":[
"EC2Instance",
"AvailabilityZone"
]
}
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
}
}
Create pre-provisioning operations
Pre-provisioning operations streamline catalog item deployment by automating tasks like
notifications, workflows, or scripts before provisioning. Configuring these operations eliminates
manual steps, saving time and effort as the system automatically executes specified actions
when a provisioning request is submitted, such as notifying users about the impending item
provisioning process.

Before you begin

Role required: sn_cmp.cloud_service_designer.

About this task

You can create pre-provisioning tasks only for catalog items that are based on templates.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog Items.
2. Open a catalog item, click the Pre Provisioning Operation tab, click New, and then fill in the
form.

Field

Description

Step Type

Pre-provisioning operation. Based on the
type of pre-provisioning operation you select,
additional fields appear.
◦ CAPI:
▪ CAPI Provider
▪ CAPI Method
▪ CAPI Version
◦ InstanceScript:
Script: Enter the name of the script.
◦ Resource:
▪ Resource Interface
▪ Interface Operation
◦ Flow: Select a subflow. All active s in the
instance are listed.

Note: For more information, see
Subflows
Order

.

Order of pre-provisioning operation. Enter the
order that pre-provisioning operation should
be invoked. Lower numbers are invoked first.
For example, if you enter 2 for CAPI and 3 for
InstanceScript, then CAPI is invoked first and
then the InstanceScript gets invoked. If you
do not enter any value in this field, the system

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
Field

Description

automatically enters a value in increments of
20.
Enabled

Option for enabling the pre-provision
operation you want invoked.

3. Click Submit.
Parameters for the pre-provisioning operations are created as operation attributes in the
Manage Attributes page.
4. To add values for the pre-provision operation attributes, click Manage Attributes.
The Manage Attributes screen appears.
5. Click PreProvision.
All attributes for the pre-provision operation are listed.

6. Either create expression mappings for an attribute (in the Mapping field) or generate variables
for an attribute.
See Manage operation attributes for more information.
7. Click Apply Changes.
All the configurations you made to the attributes are saved and you are returned to the Cloud
Catalog Items screen.
Create post-provision operations
Create post-provision tasks for newly provisioned catalog items by defining subflows, scripts,
CAPI calls, or resource operations. For efficiency, set up a post-provision operation, eliminating
the need for manual invocation. This approach enhances time management, ensuring seamless
execution of desired actions on the catalog item after resource provisioning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
Before you begin

Role required: sn_cmp.cloud_service_designer

About this task

You can create post-provision operations only for catalog items that are based on templates.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog Items.
2. Open the catalog item, click the Post Provisioning Operation tab, and then click New.
3. On the form, fill in the fields.
Operation Setup form
Field

Description

Step Type

Post-provision operation. Based on the postoperation you select, additional fields appear.
◦ CAPI:
▪ CAPI Provider
▪ CAPI Interface
▪ CAPI Method
▪ CAPI Version
◦ InstanceScript:
Script: Enter the name of the script.
◦ Resource:
▪ Resource Interface
▪ Interface Operation
◦ Flow: Select a subflow. All active subflows
in the instance are listed.

Note: For more information, see
Subflows

.

Order

Order of post-provision operations. Enter the
order (in numerals) in which you want the
post-provision operation to be invoked. For
example, if you enter the value 2 for CAPI and
the value 3 for InstanceScript, then CAPI is
invoked first and then the InstanceScript gets
invoked. If you do not enter any value in this
field, the system automatically enters a value
in increments of 20.

Enabled

Option for enabling the post-provision
operation you want invoked.

4. Click Submit.
Parameters for the post-provision operation are automatically created as operation attributes
on the Manage Attributes form.
5. To set attribute values for a post-provision operation:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
a. Click the Manage Attributes related link.
The Manage Attributes form opens.
b. Select the post-provision operation to update.
All attributes for the selected operation appear in the Operations list. You can either create
expression mappings (shown in the Mapping column) for an attribute or can you generate
variables for an attribute. See Manage operation attributes for more information.

c. On the Operation Attributes form, edit the values in the Mapping field as needed.
d. To set a value and not show the field to the cloud user, set Generate Variable to false.
For VMware post-provision operations, you can set the following attribute values:
Post-provision operation attributes for VMware
Attribute name

<Value field> to set in the Mapping expression

NodeCredential

$(capiResolver.NodeCredentialResolver nodeCredentialId=<
SysID>)

Note: You must create the credentials
manually to be able to specify the
sys_id in the expression
NodeAddress

$(Script:CMPVMUtils.getReachableIp[arg=
$(Stack.items[<VM
Name>].attributes[sys_id])])

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
Attribute name

<Value field> to set in the Mapping expression

ScriptExpression

${CloudScript.scripts.<Script Name>}

e. Click Apply Changes.
All configurations are saved and the Cloud Catalog Items page opens.
Add pre- or post-provisioning operations to a template-based catalog item
Create a post-provisioning operation using subflows on a template-based catalog item.

Before you begin

Verify that the Orchestration application is installed.
Role required: Cloud user, designer, admin, sn_cmp.cloud_service_designer

Procedure
1. In the Cloud Admin portal, navigate to Design > Cloud Catalog Items.
2. Open a catalog item.
3. Select the Pre Provisioning Operation or Post Provisioning Operation tab.
4. Select New.
5. From the Step Type list, select Flow.
6. Select the Search icon on the Flow field.
7. From the Subflow look-up list, select an active subflow.
The look-up table lists all active flows and subflows in the instance.

Note: You cannot invoke flows while adding a resource operation step. This is a known
limitation.
8. In the Order field, specify an order for this operation.
9. Enable the operations by selecting the Enabled check box.
10. Select Submit.
The subflow operation step is attached to the catalog item and appears on the Pre-Provision
Operation or Post-provision Operation related list.
11. Select the subflow operation step from the relevant related list to add or modify input
parameters.

Note:
When creating a post-provision action, include CMPTfeReturnAction as the final step in
the flow.
Verify the following steps:
◦ Verify that control returns to the main order so that data and responses flow back
correctly and the process closes successfully.
◦ Configure parameters to indicate whether the step resulted in an error.
◦ Send an error from this action if the step is designed to fail.
◦ Include the correlation ID. The flow will not function without it.
Any input parameters associated with the subflow you selected are auto-populated on the Key
Values related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
What to do next
• Verify that the flowcorrelationid input parameter is created in the subflow with the
following expression string:

Key

Value

flowcorrelationid

$(Script:CMPFlowStepHandler.generateCorrelationId)

• To check whether the flow completes successfully, see Create a response action for Cloud
Provisioning and Governance.
Make catalog item visible
You can use the catalog items created in cloud management, in standard service portal.

Before you begin

Role required: admin

Procedure
1. Navigate to a cloud catalog item.
2. Add Service Catalog or your specific catalog to the Catalog item.
3. Save it.
4. Select categories from Related list items.
5. Edit the categories and add a category from service catalog or your specific catalog.
6. Visit the service catalog page or your specific catalog page.
The new catalog item shows up.
Create a variable set for Cloud Provisioning and Governance
Reduce the number of steps required to create and manage multiple catalog items and
order guides by creating variable sets. With variable sets, you don't have to create variables
individually for each catalog item.

Before you begin

Role required: sn_cmp.cloud_service_designer

About this task

Create a collection of structured variables that can be reused across multiple catalog items and
order guides using variable sets.
A new variable set will be relevant to add when there are specific request form variables needed
for running actions such as a post-provisioning action or for collecting additional information
such as custom tags.
You can modify the variable set and the changes are reflected across all the catalog items that
are associated with the variable set. Variable sets also allow you to define catalog client scripts
and UI policies that are applicable to the variables in the set.
When you generate a catalog item, two variable sets, General Info and Provision, are
automatically created. Create as many variable sets as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
Procedure
1. Open a cloud catalog item and in the Variable Sets tab, click New.
The Variable Set screen appears.
2. Fill in the form details (as shown in the table).

Field

Description

Title

Unique name for the variable set

Internal Name

A (unique) variable set name for internal use.

Note: If this field is empty, its value

is auto-populated based on the Title
field for all variable types except break,
container split, and container end.
Layout

Layout display selections from: 1 Column
Wide, 2 Columns Wide alternating sides, or
2 Columns Wide, one side, then the other.

Order

Order number for the variable set.

Description

Description for the variable set.

3. Click Submit.
The new variable set is created and appears in the Variable Sets tab. Open the new variable
set and click New in the Cloud Variables tab to create variables for the set.
Manage operation attributes
You can specify attribute values for catalog items help cloud users to correctly provision catalog
items. You can configure and manage attributes for provision, pre-provision, and post-provision
operations.

Before you begin

Role required: sn_cmp.cloud_service_designer.

About this task

The attributes for provision, pre-provision, and post-provision operations are generated
automatically. You can generate variables for these attributes and also create new attributes for
the resource operation. You can also use the Pre-Provision Operation, Post-Provision Operation
or Lifecycle Operations related lists to create variables for Orchestration attributes.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog Items.
2. Open a catalog item and click the Pre-Provision Operation or Post-Provision Operation related
list.
The Operations Step page lists the operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
3. Click an operation to view its corresponding attributes.
4. Configure the attributes for each operation.
◦ Mapping: View the auto-generated mapping values for each attribute. Mappings specify
where to pull the information in the system. To modify the expression mappings, double-click
the mapping value and enter new values. Then click the check mark icon ( ). Expressions
can hold the values for information that's dynamically generated in the system, such as the
values for the selections that users make in the Cloud User Portal. See Using expressions in
Cloud Provisioning and Governance.
◦ Generate Variable: Generates a variable for an attribute. Double-click the value (false),
select True, and click the check mark icon ( ).
5. Click Apply Changes after you've made all the required changes.
All the configurations you made to the attributes are saved and you're returned to the Cloud
Catalog Items screen.
Cloud Provisioning Blueprints
A blueprint is a specialized catalog item template for offering cloud services, or stacks, to cloud
users. Blueprints work with any cloud service provider, such as Amazon AWS Cloud or Microsoft
Azure Cloud. Blueprints are in restricted usage from the Orlando release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
Blueprint components

Note:
• Starting with Orlando, Cloud Provisioning blueprints are available on instances upgraded
from a previous release but you cannot create new blueprints. Existing blueprints and
catalog items from those blueprints remain unaffected and continue to work.
• Use Cloud Provisioning cloud templates to create catalog items in place of blueprints.
Cloud Provisioning cloud templates allow you to ingest Azure ARM, AWS CFT, Google
Deployment Manager (GDM) and Terraform specification syntax in cloud catalog items to
run your cloud deployment orchestration.
The blueprint is the mechanism that is passed to the cloud provider to establish the cloud
assets. Requesting a cloud catalog item is called launching a stack. After the cloud asset is
obtained, it can then be discovered, managed, and maintained.
Blueprint deployment model components

Resource blocks
The cloud resources included in the blueprint (catalog item). For example, a
resource block can contain a virtual machine, an app that runs on the VM, and
information about the datacenter that hosts the VM. Also referred to as resources.
Connections
The relationship between resources. For example, the VM has a host relationship
with the app. There are two types of connections, containment and attached to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
• Containment: a connection where resource block contains another, visually
depicted as a top-down relationship as shown in the image. For example, the
blueprint container must contain at least one other resource block.
• Attached to: a connection between resources that require binding for direct
communication to each other, visually depicted as a side-by-side relationship. For
example, the binding between a virtual machine and storage forms an attached to
relationship.
Operations
The actions that are performed on resource blocks or on the resource stack to
manage the resources. For example, the cloud user can provision, start, and stop a
resource.
Resource operations
The steps to perform the operation on the resource. For example, to provision the
catalog item, the system must provision the VM and the app that runs on the VM.
Click an operation to drill into the resource operations.
Attributes
The details of the resource. Attributes can appear on the catalog item form as
catalog properties. For example, the blueprint can provide the version of the app to
provision to the VM.
Constraints
An attribute option to constrain a cloud-agnostic resource block, such as a logical
datacenter, to be used with a specific cloud provider. For example, a logical
datacenter can be constrained to Amazon AWS Cloud. Later, if you switch or add
Microsoft Azure Cloud or another cloud provider, you can change the constraint as
needed.

Planning blueprints
Before creating blueprints, plan the stacks you want to offer in the service catalog. Prepare the
following information before you begin development.
Resource blocks
Plan the resource blocks you want to use in blueprints. Ensure that the appropriate
resource blocks are available to use in blueprints, and add them if necessary.
Service offerings (stacks)
To plan a service offering or stack, diagram the resource blocks that it needs, and
how they are connected.
Cloud accounts and datacenters
Obtain a list of the cloud accounts and datacenters that the cloud administrator has
configured. Determine whether any are constrained.
Service catalog variables and variable sets
Ensure that you have an understanding of how service catalog items use variables
and variable sets. Understanding service catalog items and processes help with
your understanding of blueprints.

Start here
Build a Cloud Provisioning blueprint

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
Build a Cloud Provisioning blueprint
Use the blueprint designer to create custom blueprints for the Cloud Provisioning and
Governance application. Blueprints are deprecated in the Orlando release.

Before you begin

Role required: sn_cmp.cloud_service_designer

Note:
• Starting with Orlando, Cloud Provisioning blueprints are available on instances upgraded
from a previous release but you cannot create new blueprints. Existing blueprints and
catalog items from those blueprints remain unaffected and continue to work.
• Use Cloud Provisioning cloud templates to create catalog items in place of blueprints.
Cloud Provisioning cloud templates allow you to ingest Azure ARM, AWS CFT, Google
Deployment Manager (GDM) and Terraform specification syntax in cloud catalog items to
run your cloud deployment orchestration.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Blueprints.
2. Click New, enter a unique and meaningful Name and Description, and then specify the
service Category.
Several categories are provided by default.
3. Click Submit.
The system creates the blueprint record and displays the Deployment Model tab of the
blueprint designer. The Deployment Model tab is a visual canvas where you drop resource
blocks. Each resource block represents a CI in a multi-tier application stack. The Deployment
Model specifies the resources and connections between resources for the cloud items that
you are defining.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
4. To add a resource to the deployment model, click Resources and then select the resource
from the list.
The resources appear on the canvas. Move the resource to an appropriate location for the
model that you have in mind. Add as many resources as needed.
5. Connect the container resource to the first resource to deploy.
To create a connection between resources, select the parent resource, click the connection
pad in the resource, and then drop the connection in any resource with a dotted outline. The
system does not allow certain connections (for example, an AWS datacenter cannot host an
ARM resource).
6. Add and connect all resources that make up the blueprint.
You must add and connect all resources before you configure operations and attributes in the
Operations section. As you update the resources in the Deployment Model tab, the system
generates the Cloud Template: a complete representation of the blueprint in YAML script. You
can export the Cloud Template representation of the deployment model and later import it into
the Cloud Provisioning and Governance application on another instance.
7. Configure the operations that the system performs on the resources and the attributes to use
while performing the operations.
By default, Provision, Stop, Start and Deprovision operations are provided. You can either
select an existing operation or create a new blueprint operation.
◦ Select an existing operation: In the Operations section, select the Provision operation
check box and click Provision to view a graph. You can rearrange the graph by deleting
and adding operations. You can click Optimize All Plans for the Cloud Provisioning and
Governance application to suggest an optimized plan for you. The Cloud Provisioning and
Governance application looks at the blueprint you created and based on the attributes, the
mappings, and the dependencies of each resource, suggests an optimized plan to execute.
All the attributes for the Provision operation appear in the window. You can select or deselect any attribute. Once you configured the Provision operation, you can select the next
operation and configure its attributes as needed.
◦ Create a new blueprint operation: Click New in the Operations section. The New Blueprint
Operation dialog box appears. Enter a name, select an operation type, enter input
parameters for the new operation, and click Save. The new blueprint operation appears in
the Operations section.
8. If you have completed the design of the blueprint and you do not want to configure the
blueprint any further, click the Draft toggle button to publish the blueprint.
A message appears saying that your blueprint has been published. To continue configuring the
blueprint, then skip this step.
9. To configure parameters such as variable sets, rules, life cycle operations for the blueprint
catalog item, click the Catalog tab and then click the catalog.
The Cloud Catalog Item screen appears.
10. Click Update if you made any changes to the form.
11. Click Publish to publish the blueprint.
To view all published catalog items, click Published in the Blueprints landing page.
Add a resource operation to the execution plan
The base system includes a large set of predefined resource operations. Rarely, you might add a
custom operation for a resource.

Before you begin

Role required: sn_cmp.cloud_service_designer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
Procedure
1. While working in the blueprint designer, click the Operations tab and select the appropriate
blueprint operation.
As an example, you may select the Provision operation.
2. Click Add.
The Add Resource Operation dialog box appears.
3. Fill in the form fields (as shown in the table).

Resource

Select a resource to perform the operation
on.

Interface

Select an interface for the resource.

Operation

Select an operation to perform for the step.
By default, Provision, Stop, Start and
Deprovision are provided. You at least need
a provision operation for a user to order a
cloud catalog item.

4. Click Submit.
The new operation is added to the operation graph. The system adds the appropriate
parameters for the operation.
5. Click the Create Form Parameter check box to select a parameter.
Parameters differ for each operation. Enter a mapping expression for the selected parameter in
the Mapping field. See Using expressions in Cloud Provisioning and Governance.
6. Click Save.
Execute blueprint operations in parallel
You can execute your blueprint resource operations to run in a linear or in a parallel way.

Before you begin

Role required: sn.cmp.cloud_service_designer.

About this task

By default, the blueprint resource operations are listed serially and follow an order. You can
run operations in parallel by arranging them in branches. Identify the operations specified in a
blueprint that have no dependencies and can run in parallel. Arrange such operations in a single
branch. The Blueprint Designer runs these operations together. If an error occurs in a branch,
the operations in the affected branch cease to execute. However, the operations in the other
branches, that are unaffected by the error, continue to execute. The parallel way of executing
operations hence cuts down time in provisioning stacks.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Blueprints.
2. Click a blueprint, click the Deployment Model tab and then click Operations.
All the operations for the blueprint are listed.
3. Click an operation to view a graph.
You can rearrange the graph by deleting and adding operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
4. Click Optimize Plan for the Cloud Provisioning and Governance application to suggest an
optimized plan for you.
The Cloud Provisioning and Governance application looks at the blueprint that you created
and based on the attributes, the mappings, and the dependencies of each resource, the
application suggests an optimized plan to execute.
Blueprint attributes
When you add a blueprint operation to a resource, the system adds the appropriate attributes.
You can choose whether or not to make the attributes available as catalog properties on the form
when the system performs the operation.

Common attributes for the provisioning operation for virtual machines
Attribute

Description

VmFolderName

The name of the virtual machine folder.

ResourceGroupName The name of the resource group to which the resource belongs.
StackName

The name of the stack that the user is provisioning.

CloudAccount

The cloud account to which the resource stack belongs.

OSProfile

The resource profile, in this case the Operating System profile, upon
which the cloud resource is based.

DiscoverAndAttachIP Finds a free elastic IP and assigns it to a virtual machine on AWS. By
default, if a VM is deployed on a VPC in AWS, it will not get a public IP. If
elastic IPs are not available, no IP can be assigned to the VM.

Warning: It is recommended that you do not use KeyPreference. If you use the
attribute, do not set KeyPreference to user.
Configure a blueprint rule
Configure a rule that contains actions the system can take on blueprint attributes.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. Open a blueprint that has the attribute for which you want to create a rule.
2. On the Catalog tab, click the operation, such as the provision operation, that contains the
attribute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
3. In the Variable Sets related list on the Cloud Catalog Item form, click the name of the variable
set that contains the variable.
4. In the Cloud Variables related list on the Variable Set form, click the name of the variable for
which you want to crate the rule.
5. In the Rules related list, click New and then fill in the form.

Field

Description

Name

Enter a name and description.

Description
Order

Enter a number that tells the system which record to evaluate first in relation to
others. The record with the lowest number runs first.

6. Right-click the form header and select Save.

Example:

This example rule is based on the CloudAccount property and contains an action that tells
the system to update the list of locations when the user changes the cloud account.
Example blueprint rule

What to do next

Configure an optional condition and a mandatory action.
Configure a blueprint rule condition
Configure the condition on a blueprint form event rule that determines when the actions in the
rule can run. Conditions are optional.

Before you begin

Role required: sn_cmp.cloud_service_designer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
Procedure
1. Open a rule for a variable on a blueprint.
2. On the Conditions related list, click New.
3. Fill out the form fields (see table).

Field

Description

Operand

Enter the property against which you can perform the condiontal
evaluation. For example, if your blueprint has a property which
holds the value of a datacenter, enter the property name here.

Operator

Select an operator that evaluates the operand.

Value

Enter a value that the evaluated event rule must match.

Condition Type

If you configure multiple conditions, select the logical operator that
determines how the system evaluates the condition in relation to
the next condition (the next condition is determined by the Order
field):
◦ AND: this condition the next condition must meet the criteria
before the policy is eligible for execution.
◦ OR: this condition or the next condition that matches the criteria
can allow the policy to be eligible for execution.
If you do not select an option, AND is used by default.

Order

Status

Enter a number that tells the system which record to evaluate first
in relation to others. The record with the lowest number runs first.
Keep the status active to have the system process the condition.
Change the status to inactive when you do not want the system to
process the condition.

4. Click Submit.

Example:

This example condition applies when the user selects the AWS Datacenter for the
Logical_Datacenter property, which is a field on the catalog item form:
Example blueprint condition

What to do next

Configure a blueprint action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
Configure a blueprint action
Configure actions that the system runs when blueprint form attribute actions or event actions are
triggered. You can configure actions like making a field mandatory, showing or hiding a field, or
automatically populating a field.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. Open a rule for a property or an event on a blueprint.
2. On the Actions related list, click New and then fill in the form.

Field

Description

Name

Unique and descriptive name.

Action Type

Select an action type:
◦ Reload:
◦ Show:
◦ Hide:
◦ MakeMandatory:
◦ MakeNonMandatory:
◦ TriggerChangeEvent:
◦ SetValue:

Datasource

Select an action type:
◦ Reload Cloud Account:
◦ Reload Cloud Location:
◦ Check Quota:
◦ Reload Resource Profile:
◦ Reload From Profile:

Target Field

Enter the name of the field on the form that the action applies to.
For example, if you selected TriggerChangeEvent for the action
type, the value of the field changes when something changes on
the form, as specified in the blueprint rule.

Value

Enter an optional value that you want to assign to the target field.
For example, if you selected SetValue for the Action Type field
and you want to update the Resource Group Name, you can use
the value ${ResourceGroup}, which pulls the names of the
resource groups from the blueprint.

Order

Enter a number that tells the system which record to evaluate first
in relation to others. The record with the lowest number runs first.

3. Right-click the header and select Save.
4. Optional: Enter a Key and Value in the KeyValues related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
The value in the Value field is applied to the attribute in the Key field.
5. Create as many actions as necessary.

Example:

This example action applies to the blueprint rule example, which is based on the CloudAccount
attribute. The action tells the system to update the list of locations when the user changes the
cloud account.
Example blueprint action

What to do next

Publish a blueprint as a cloud catalog item.
Form configuration with blueprints
Blueprints control what the user sees on the catalog order form. You can configure the form to
show or hide fields, populate fields with default values, and otherwise create a unique form for
the user based on criteria.

Note:
• Starting with Orlando, Cloud Provisioning blueprints are available on instances upgraded
from a previous release but you cannot create new blueprints. Existing blueprints and
catalog items from those blueprints remain unaffected and continue to work.
• Use Cloud Provisioning cloud templates to create catalog items in place of blueprints.
Cloud Provisioning cloud templates allow you to ingest Azure ARM, AWS CFT, Google
Deployment Manager (GDM) and Terraform specification syntax in cloud catalog items to
run your cloud deployment orchestration.
You can also change the values in form fields using policies. See Create a cloud policy and
Create a policy action script for examples.

Components of blueprint form configuration
Blueprints use these components to control how the system uses catalog form fields:
• Catalog variables define the basic structure of each field on catalog order forms.
• Rules specify an action that the system takes on a field when a condition is met.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
• Scripts query the system for information that you need to show the catalog requester, populate
form fields, and process the data that users submit.
• UI groups to put related fields together in a tab. Users can progress through tabs to fill out all
the form fields.

Start here
These tasks show you the basics of form configuration with blueprints:
• Add fields to a cloud catalog item order form
• Control visibility default values for Cloud catalog items
• Create a variable set for Cloud Provisioning and Governance

Examples
These examples guide you through form configuration based on a specific goal: Cloud catalog
form configuration examples.
Add fields to a cloud catalog item order form
You can add fields to a cloud catalog form if you want the user to enter additional information
beyond what a default blueprint provides.

Before you begin
• You need a blueprint that you published to the catalog. The blueprint should be in the draft
state. See Build a Cloud Provisioning blueprint if you did not complete this prerequisite.
• By default, cloud items appear in the Cloud Catalog, rather than the standard service catalog
that comes with your instance. However, Blueprints utilize several features from the standard
service catalog. It is suggested that you familiarize yourself with how the service catalog works.
See Service Catalog
to get started.
• Role required: sn_cmp.cloud_service_designer

About this task

Fields are represented as variables in blueprints. To add a field, you add a variable to an
operation in the blueprint.

Procedure
1. Open a blueprint that you already created.
2. Click the Catalog tab, and then click the operation, such as Provision, that you want to add the
variable to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
The Cloud Catalog Item form opens.
3. In the Variable Sets related list at the bottom, click the set in which you want the variable to
belong.
For example, click General Info, which is a default variable set for all blueprints, to have the
field appear in the first tab on the catalog order form.
The Variable Set form opens.
4. In the Cloud Variables related list at the bottom, click New.
5. Fill in the important form fields, such as:

Field

Description

Type

Select the type of variable, such as Single Line Text for a text field, CheckBox, or
Date, for example.

Question In Question, which is the value the user sees for the field on the catalog order
tab
form, enter a name. The Name field, which is the actual name of the variable, is
automatically populated with the same value in lower case.
Other
tabs

Fill in other fields on the remaining tabs to control the field's visibility, form help
text, default value, and access rights.

Note: This variable will not be available for orchestration. If you intend to use this
variable for orchestration, please add it through Cloud Template or Blueprint instead.
An example variable for an email address

6. Click Submit.
The Variable Set form opens, showing the new variable in the Cloud Variables related list.
7. To control the position of the field on the form, change the value in the Order column.

Note: A lower order value moves the field higher up on the form, and vice versa.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
In this example, the order is set to 1, which means the Email address field appears after the
Logical Datacenter field and before the Cloud Account field.
8. On the form banner in the upper-left, click Try It to preview the order form as it would look to a
user from the Cloud Catalog.
The form appears with the new field that you created.

9. Click the back arrow on the upper-left of the form.
10. Toggle the catalog item to Publish.

Control visibility default values for Cloud catalog items
Through blueprints, you can control how form fields appear to users in the cloud catalog. For
example, you can control where the fields appear to users on the catalog item form, and whether
they are read only or mandatory.

Before you begin

Role required: admin

Procedure
1. Open the blueprint to modify, and then toggle it from Published to Draft.
2. Click the Catalog tab.
The Request Operation sub-tab opens and displays the published catalog items for the
Provision operation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
3. Click the Provision tile for the catalog item.
The settings in the Provision operation control the form that the user sees upon initial request
of the item, before it is provisioned.

The Cloud Catalog Item form opens.
4. In the Variable Sets related list at the bottom, click the set in which you want the variable to
belong.
For example, click General Info, which is a default variable set for all blueprints, to have the
field appear in the first tab on the catalog order form.
5. In the Variable Set form, select the variable that you want to modify.
6. In the Cloud Variable form, complete any of the following actions.
To

Action

Make the field mandatory

Select the Mandatory check box. Clear the
check box to make the field optional.

Make the field read-only

Click the Availability tab, and then select the
Read Only check box. Clear the check box to
make the field editable.
Use this option to automatically populate a val­
ue in the field that the user cannot change.

Show or hide the field

Click the Availability tab, and then select or
clear the Visible check box.

Move the field to another tab

Select a different Variable set. General Info
and Provision are provided in the base sys­
tem, and you can configure additional form UI
groups. To add a new tab for organizing fields
in the catalog item, see Create a variable set
for Cloud Provisioning and Governance.

Set a default value

Click the Default Value tab and enter the val­
ue in Default value. If the field is not read-on­
ly, users can change the value on the cloud
catalog form.
Reference fields must use the Sys ID of the
record that represents the default value.
Do any of the following:

Add help for the user

◦ Click the Question tab, and add a value in
the Tooltip field to show a bubble with the
text when the user hovers the cursor over
the field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
To

Action

◦ Click the Annotation tab, select Show help,
and then enter values in the Help text or In­
structions fields to display additional text
to the user above the field.
7. Click Update.
8. Toggle the catalog item to Publish.

Example:

In this example, the Business Service field:
• Is populated with the Email business service record from the cmdb_ci_service table based on
the Sys ID of the record.
• Is read-only so users cannot change it.
• Is mandatory because it is considered necessary before the system can provision the virtual
resource.
• Contains help text to tell the user that the default selection is Email.
On the catalog order form, the field appears like this graphic:

Cloud catalog form configuration examples
Several examples are provided to help you understand how to manipulate Cloud catalog order
forms. These example cover blueprint rules, blueprint variables, and blueprint form UI groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
Blueprint components
used

Example

Goal

Populate the location based
on the cloud account

Use existing blueprint rules to
illustrate how the Location field
is populated based on the Cloud
Account that the user selects.

This example illustrates
rules.

Remove a field from a cloud
catalog form

Hide the Cost Center field on the
catalog form when the catalog
requester belongs to the Database
group.

This example illustrates:
• Rules
• Resource pools

Populate stack name with a
script

Give the catalog requester a preThis example illustrates:
defined stack name that includes
• Rules
the ID of the catalog requester. The
field remains editable to the user can • Resource pools
change it if necessary.
• Scripted values

Add fields to a cloud catalog
item order form

Create a catalog variable and
property, and use it to publish a new
filed on a form.

This example illustrates:
• Catalog variables
• Field order
• Rules
• Resource pools
• Scripted values

Set default values for a cloud Set a default value on a property and This example illustrates:
catalog form fields
on a blueprint rule.
• Default variables
• Rules
Add a UI group with
additional fields

Group catalog form fields into tabs to This example illustrates
better organize the form and guide
UI groups (tabs).
the user from one set of settings to
another.

Populate the location based on the cloud account
This example walks you through an existing set of blueprint rules that Cloud Provisioning and
Governance provides by default.

Before you begin

Before you can follow this example, you should be familiar with creating blueprints and blueprint
rules. See these resources:
• Cloud Provisioning Blueprints
• Build a Cloud Provisioning blueprint
• Configure a blueprint rule
Role required: sn_cmp.cloud_service_designer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
About this task

The goal of this example is to show you how a default set of blueprint rules accomplishes the
task of populating the Location field based on the Cloud Account. Because this example walks
you through default data, you do not need to create any records if you are following these steps.
This blueprint, which includes a virtual server that can be provisioned in an AWS datacenter, is
used to illustrate the example:

Procedure
1. Open a similar blueprint with a virtual server or similar.
2. On the blueprint form, click the Catalog tab, and then click the tile that represents the
Provision operation.

3. Click the General Info variable set in the Variable Sets related list.
4. Click the CloudAccount variable to open the Cloud Variable form.
Notice these items:
◦ In the Rules related list at the bottom, two rules are provided:
▪ ReloadLocation reloads the value in the relocation field. This rule runs first because it has
a lower order number than the other rule.
▪ TriggerChangeEvent Location tells the system to trigger the actions for the rules that are
already configured for the Location variable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
◦ The Lookup Select Box field specifies that the Cloud Account field provides a selection for
the user to make. The options that the user can select comes from the CloudAccountPool,
which is on the Type Specifications field.

5. Click the Reload Location rule, and then click the Reload Location action from the Actions
related list.
Notice these items:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
◦ The Action Type is Reload, which tells the system to reload the catalog item form so that a
new value for the field specified in the Target Variable (the Location) can be populated.

◦ The DataSource field tells the system to reload the location.
◦ The KeyValues list, which is only used when you specify a Reload action type, specifies
that the user is passing in the cloud account via the form. The cloud account is necessary
to reload the correct value for the location because the location is loaded from a pool. That
pool has a filter that requires the input of the cloud account to return the correct location
options.
6. Navigate back to the CloudAccount catalog property form and open the other rule:
TriggerChangeEvent Location.
7. Click the Actions related list, open the TriggerChangeEvent Location action, and then click
the TriggerChangeEvent Location action from the Actions related list.
Notice these items:
◦ The Action Type is TriggerChangeEvent, which tells the system to trigger the actions for
the rules that are already configured for the Location property. By default, several rules are
already configured for the Location property. These include rules that reload other fields, like
OS Profile, Network, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
◦ No KeyValues are required because this action is not a reload action.
The result of these two rules on the CloudAccount attribute is illustrated in the following
example:

8. Perform these steps to see why the system populated the value AWS Datacenter - us-east-1
in the Location field and how the system determines which location is related to the My Cloud
Account value:
a. In the same blueprint, open the General Info variable set, and then open the Location
parameter.
b. Click the Type Specifications tab.
Notice the values that can be populated for the Location field from the
CloudLocationPool resource pool.
c. Navigate to Manage > Resource Pools, open CloudLocationPool, and notice these items:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
▪ The locations come from the records in the Lookup Table, which in this example is
Associated Datacenter [sn_cmp_ca_assc_datacenter].
▪ The actual value to display to users in the Location field on the catalog item form comes
from the Lookup Field. In this example, the Lookup Field specifies the Alias column from
the Associated Datacenter [sn_cmp_ca_assc_datacenter] table. The Alias column holds
the actual, user-readable names for all locations.
d. Go to the standard interface of your instance, not the Admin Portal, and enter
sn_cmp_ca_assc_datacenter.list in the navigation filter.

The list of datacenters that are already associated with cloud accounts appears.

Notice that the My Cloud Account cloud account is already associated with AWS
Datacenter - us-east-1, which is the value that the user sees in the Location field. The
system knew to display that value because of the association in this Associated Datacenter
table. The system created this association when your Cloud Provisioning and Governance
administrator created the cloud account for AWS, and then ran discovery on the us-east-1
datacenter in that cloud account.
It is possible that multiple datacenters could be associated with My Cloud Account. In that
case, the Location field reloads all the associated datacenters and in the Location field.
Since the Location field is of type Select, the field allows the user to select which location to
choose.
Remove a field from a cloud catalog form
Remove a field from the Cloud Provisioning and Governance catalog form when the user belongs
to a specific group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
Before you begin

Role required: sn_cmp.cloud_service_designer
Before you can follow this example, you should be familiar with creating blueprints and blueprint
rules. See these resources:
• Cloud Provisioning Blueprints
• Build a Cloud Provisioning blueprint
• Configure a blueprint rule

About this task

The goal of this example is to hide the Cost Center field on the catalog form when the catalog
requester belongs to the Database group. You can follow an example like this one when you want
to show or hide catalog item fields based on values in other fields.

Procedure
1. Create a blueprint with a virtual server.
For this example, a blueprint with a virtual server on an AWS datacenter is used.

2. On the blueprint form, click the Catalog tab, and then click the tile that represents the
Provision operation.

3. Click the General Info variable set in the Variable Sets related list.
4. Click the CostCenter variable to open the Cloud Variable form.
5. Configure the rule that removes the cost center based on the user group:
a. In the Rules related list, click New.
b. Fill out the Name and description Fields.
c. Right-click the form header and select Save.
6. Configure the condition that requires the User Group to equal Database:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
a. In the Conditions related list, click New.
b. On the form, fill in the fields.

Field

Value to enter or select

Description

Operand UserGroup

This value is the User Group field that
the user selects.

Operator --None--

Keep this value --None-- because this
condition is the only condition you need
to configure. If you add more conditions,
you can select another operator to
determine how the system evaluates
this condition in relation to the others.

Value

287ee6fea9fe198100ada7950d0b1b73 This value is the Sys ID of the Database
user group, which is provided as part of
the demo data in your instance. See Sys
ID
for more information.

c. Click Submit.
7. To understand why the Sys ID of the user group is required for the system, perform these
steps:
a. Open the blueprint again and click the Provision operation again.
b. Click the General Info from the Variable Sets related list.
c. Click the UserGroup variable.
Notice that on the Type Specifications tab, the system populates user groups from
UserGroupPool. The system runs the scripted pool filter named GroupsUserBelongsTo.

d. In the Cloud Admin Portal, navigate to Manage > Resource Pools.
e. Find and open UserGroupPool.
Notice that the values for the pool are derived from the table in the Lookup Table field, which
in this case is the Group [sys_user_group] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
Also notice that there are two queries in the Resource Pool Filters related list:
▪ All is a generic query that returns the list of all records from the Lookup Table. The value it
returns from that table is from the Lookup Field, which in this case is the Sys ID. However,
the system ignores the All query in this case because the scripted query is present.
▪ GroupsUserBelongsTo is a scripted query that returns the Sys ID of records in the Lookup
Table.

Important: When a scripted query is present, the system uses it instead of the
generic ALL query.

Both the generic query and the scripted query return the Sys ID of the record in the lookup
table. But what is actually happening here is that the system ignores the All query and the
value specified in the Lookup Field, and it uses the GroupsUserBelongsTo script.
A scripted query

Populate stack name with a script
This example illustrates how to populate the name of the stack that a user requests from the
Cloud Provisioning and Governance catalog by utilizing the user's ID. The example uses a script
include that you can call from a blueprint rule action.

Before you begin

Role required: sn_cmp.cloud_service_designer
Before you can follow this example, you should be familiar with creating blueprints and blueprint
rules. See these resources:
• Cloud Provisioning Blueprints
• Build a Cloud Provisioning blueprint
• Configure a blueprint rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
This example uses a script include. If you want to create similar script includes, familiarize
yourself with the Glide System APIs that are part of your instance. See the Developer site
for a
comprehensive list of all APIs. See Script Includes
for more information about how the system
uses these scripts.

About this task

The goal of this example is to take the ID of the catalog requester and populate it in the Stack
Name field. The field remains editable. Follow an example like this one when you want to loosely
enforce a naming or labeling convention on certain values, but still allow the user to enter the text
that they want.

Procedure
1. Create a script include that returns the user ID of the person requesting the catalog item:
a. In the standard interface for the instance (not in the Cloud Admin Portal), click the gear icon
(

) in the upper left, and then click Developer.

b. In the Application field, select Cloud Provisioning and Governance.

The application scope of your instance changes toCloud Provisioning and Governance.
This selection means that the Cloud Provisioning and Governance application can find the
script include.
c. Close the System Settings window.
d. Navigate to System Definition > Script Includes.
e. Click New.
f. Fill in the form fields (see table):

Field

Description

Name

Provide a descriptive name without spaces.

Accessible from

Select All application scopes.

Script

Enter this script:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
Field

Description

var SetFields = Class.create();
SetFields.prototype = {
initialize: function() {
},
setStackName: function(){
return gs.getUserName();
},
type: 'HideFormAttributes'
};
The function setStackName() returns the user name of the catalog item requester. You
can call this function from a blueprint rule action.

g. Click Submit.
h. Click the gear icon (
Global.

) in the upper left again, and then change the Application back to

2. In the Cloud Admin portal, navigate to Design > Blueprints and open the relevant blueprint.
3. On the blueprint form, click the Catalog tab, and then click the tile that represents the
Provision operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
4. Click the Stack Name variable set in the Variable Sets related list.
Notice that Stack Name is a single line text field that takes text input.
5. Create a rule to populate the stack name:
a. Scroll down to the bottom of the form and click New in the Rules related list.
b. Provide a name and description.
c. Click Submit.
6. Configure the action as follows:
a. From the Rule form, scroll down and click New in the Action related list.
b. Configure the rule as follows:

Field

Description

Name

Provide a meaningful name and description, such as Set Stack Name to
User ID.

Action
Type

Select SetValueByScript to tell the system to call the script include that you
specify in the Value field.

Target
Variable

Select StackName to tell the system to set the value of the Stack Name field.

Value

Call the method in the script include that returns the user ID. The call must be
in the following syntax:
$(Script:ScriptIncludeName.methodName[])
In this example, use $(Script:SetFields.setStackName[])

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
c. Click Submit.

Result

In the Cloud User Portal, the catalog order form for the Provision operation shows the user ID
of the logged-in user. This example uses the user Able Tutor, which comes in the base system
as demo data. The value in the Stack Name field is the same value as in the User ID field on the
User [sys_user] table. The profile icon for the same logged in user is also displayed in the upper
right of the Cloud User Portal.

Set default values for a cloud catalog form fields
You can set default values for all users or you can populate fields with default values based on
conditions. This example shows you how to set a default schedule profile and business service.

Before you begin

Role required: sn_cmp.cloud_service_designer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
Before you can follow this example, you should be familiar with creating blueprints and blueprint
rules. See these resources:
• Cloud Provisioning Blueprints
• Build a Cloud Provisioning blueprint
• Configure a blueprint rule

About this task

The goal of this example is to display a default value for both the schedule profile and the
business service field. Each field derives its values differently:
• The schedule profile derives its values from a pool filter that returns a text value. Therefore, you
must set the default value by applying the correct, matching text for one of the schedule profile
options that appear to the user in a list.
• The business service derives its values from a reference to the Service [cmdb_ci_service]
table. Therefore, you must set the value by specifying the Sys ID of the record that you want to
display.
The example in this topic sets the values in different ways:
• The schedule profile default value is set directly on the Schedule Profile property and applies
to all users without any conditions. You might want to do this to limit the use of virtual resources
to specific schedule, such as during business hours only, for all users.
• The business service default value is set using an action on a blueprint rule. You might want to
use a rule to set a default value when you want the value to be the default only when certain
conditions are met. For example, if the user belongs to a user group that deals with only one
business service, set the value for the user so they do not have to sort through a long list of all
the business services in your organization.

Procedure
1. Create a blueprint with a virtual server.
For this example, a blueprint with a virtual server on an AWS datacenter is used.

2. On the blueprint form, click the Catalog tab, and then click the tile that represents the
Provision operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
3. Click the General Info variable set in the Variable Sets related list.
4. Click the ScheduleProfile variable.
Notice that the Pool field on the Type Specifications tab specifies the pool from which the
values for the schedule profile are derived: ScheduleProfilePool.
The ScheduleProfilePool pool specifies the All filter, which returns the values
in the Name field from the Schedule Profile [sn_cmp_schedule_profile] table.
These values are static text values, which means that you can specify the exact
text value for the name of the schedule profile that you want to make the default.

5. On the Default Value tab of the ScheduleProfile property form, enter the text that matches the
value in the Name field from the Schedule Profile [sn_cmp_schedule_profile] table.
In this example, that value is 8-5 weekdays.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
6. Click Update.
7. Click the BusinessService variable.
Notice that the Reference field on the Type Specifications tab specifies the Service
[cmdb_ci_service] table, from which the values for the business service are derived.

By default, to refer to a specific record in a table, you must know the Sys ID of the record.
8. To obtain the Sys ID of a business service:
a. In the main interface for the instance (not the Cloud Admin Portal interface), enter
cmdb_ci_service.list in the application filter.
b. Find the business service that you want to make the default.
c. Right-click the record, and then select Copy sys_id.
This example uses Workday Enterprise Services.

9. On the BusinessService variable form, create a rule, action, and condition with these values:
a. In the Rule related list, click New.
b. Provide a name and a description.
c. Right-click the form header and select Save.
d. In the Action related list for the rule, click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
e. Provide a name, and then configure these fields as specified:

Field

Value

Action
Type SetValue
This option tells the system to change the field to the value you specify. Selecting
this option is the same as entering a default value on the property form.
Target BusinessService
Field
Value

The Sys ID of the business service that you copied.

In this example, the business service is set to Workday Enterprise Services by default, which
is represented in the system with the Sys ID that you already copied.

f. Click Submit.

Result

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
What to do next

You can create a condition or multiple conditions that must be met before the system sets the
default value for the business service. For example, you might want to change the default value
of business service to Workday Enterprise Services only when the group that the user belongs to
is the Workday Admins group.
Resource blocks in Cloud Provisioning and Governance
Resource blocks act as a type of middleware component between catalog items, the Cloud API
(CAPI), and the CMDB.
The following graphic illustrates how resource blocks fit between other components in the
system:

Blueprints
Each resource block becomes a building block within a blueprint. The blueprint
eventually becomes a catalog item (also called a stack) that a user provisions from
the Cloud Catalog.
Cloud API (CAPI)
Each resource block defines allowable operations, such as Provision and
Deprovision. These operations call various components within CAPI to carry out the
operation that is received from the stack.
The CMDB
Each resource block is based on a CI type from the CMDB. Resource blocks also
have a response processor that handles responses from the cloud provider to take
some type of action in the CMDB, such as creating or updating a CI.

How resource blocks are connected
Resource blocks are connected to each other in blueprints. For example, in this blueprint, a
virtual server resource block is connected to storage. The virtual server and the storage are both
connected to an AWS datacenter resource block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
Blueprint server with storage

For these connections to be successful, each resource block needs to specify a type of
interface. This graphic illustrates these interfaces:
Types of interfaces for resource blocks

• The guest interface connects to the resource that is above it. The guest interface contains
the operations (also called operation signatures), which allows users to take action on their
resource.
• The host interface connects to the resource below the resource block in the blueprint. The
host interface also contains operation signatures.
• The bindings connect adjacent resources.
Resource blocks can have as many guest interfaces, host interfaces, and bindings as necessary.
Connections can be made in different directions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
• Vertical connections require the top resource block to have the same host interface as the
bottom resource block guest interface.

Note: In blueprints, this vertical connection is called a containment connection.
• Horizontal connections bind one resource to another, but both resources have to reside on top
of the same resource block.

Note: In blueprints, this horizontal connection is called an attached-to connection.
The same example blueprint with a virtual server with attached storage on an AWS datacenter,
the resource blocks are configured as this graphic illustrates:
Interfaces for resource blocks

Resource
block

Virtual
server

Interfaces and bindings

• Host interface: Compute
• Binding: to Storage Volume

AWS
Datacenter

• Guest interface: Compute
• Guest interface: Storage Server interface

Storage

Host interface: Storage Server interface
The binding between the virtual server and the storage is unidirectional. You
configure the binding on the virtual storage resource block only by specifying

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

392


<!-- page 393 -->
Resource
block

Interfaces and bindings

the storage resource block. You do not need to configure another binding on the
storage resource block.

Guest interfaces and operations
Each guest interface provides a default set of operations (also called operation signatures)
that allow the user to choose what they want to do with a virtual resource. The most common
operation is Provision, which means that a virtual resource is created. Many guest interfaces and
corresponding operations are provided by default with the Cloud Provisioning and Governance
application. You can use these default guest interfaces for many of your resource blocks.
If you do need to create a new guest interface, these operations are provided by default:
• Start
• Stop
• Provision
• Deprovision
• Cleanup
• ModifySchedule
• ModifyLease

Resource block component details
Each resource block contains these components:
Layers
The logical layer in the stack that this resource block belongs to. By default, Cloud
Provisioning and Governance provides the layers. When you configure resource
blocks, you can choose the one that relates to you.
Operations for each guest interface
As mentioned, each guest interface provides operations. For example, the most
common operations for a virtual server are Provision, Deprovision, Start, Stop.
Input parameters for each operation
The input parameters hold values that the cloud provider uses, via CAPI, when
operations are run. These parameters hold the information that the user selects
while performing an operation, such as provisioning, on a stack.
For example, a user typically must specify the location, which is a datacenter, that
a stack belongs in. The value that the user selects in the Location field is held in
the Location parameter. The system takes this parameter, which is available by
default for the virtual server resource block, and passes it to the CreateNode
CAPI interface operation. The CreateNode interface operation tells the cloud
provider to create (or provision) the actual virtual server.
Steps for each operation
Each operation requires a step to do the actual work. Each step calls a specific
interface and method in CAPI, and passes along the input parameters required
by that method. For example, the Provision operation on a virtual server provides
one step to first connect and create a virtual machine, and another step to create
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


<!-- page 394 -->
the node in the cloud provider. Each step provides different input parameters.
To connect and create a virtual machine, the cloud account, among many other
parameters, is required. To create the node, the cloud account is not required.
You can add as many steps as needed for each operation. You can also use output
attributes to pass values in attributes from one step to another step, or from steps
in one operation to steps in a subsequent operation. For example, the Provision
operation for a virtual server can provide an output attribute for the network
interface ID and another for the node ID. When the cloud provider sends the
response, the actual ID of the network and node are parsed out of the response and
saved in the output attributes. Subsequent steps can then use the IDs to perform
actions.
Response processors
Response processors tell the system what to do in the CMDB. When the cloud
provider sends a response after an operation is run, the processor handles the
response.

Note: These processors are scripts that are system includes. They are not
MID Server script includes like the CAPI scripts that you can create to integrate
with the cloud provider.
How components work together

Users can see catalog items, also called stacks, in the Cloud Catalog. A catalog item is based on
a blueprint, which in turn is composed of resource blocks that are connected together.
1. The user kicks off the process by requesting a stack. The request is the Provision operation in
the system.
2. The system runs the steps in order for the Provision operation for the resource blocks that
comprise the stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

394


<!-- page 395 -->
3. Each step calls CAPI to determine which method to run, while also passing in values for
necessary parameters.
4. CAPI interfaces with the API of the cloud provider to provision the actual resource.
Process flow when a resource is created in the cloud provider

1. The cloud provider provisions the resource and responds with JSON.
2. The system parses the response inside the resource script in the resource block.
3. The system updates the CMDB. When provisioning a new resource, the system creates a CI in
the correct table.
4. The new stack appears in the cloud user portal for the user to manage.

The Resource Blocks page
Manage resource blocks in the Resource Blocks page. Open the Cloud Admin portal, and then
navigate to Design > Resource Blocks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

395


<!-- page 396 -->
Resource Blocks page components

Create a custom resource block
If the blocks in the base system do not provide the cloud resources that you need to provision,
you can create a custom resource block.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. Navigate to All > Cloud Provisioning and Governance > Cloud Admin Portal > Design >
Resource Blocks and click New.
2. Enter a unique and meaningful Name and Description for the resource block, and then enter
the following settings:

Layer

Select the layer that represents the type of resource block:
◦ Application: Resources that are applications. For example, the 'PetStore'
application might exist on a Tomcat or WebLogic platform.
◦ Platform: Resources that are typically hosted on a virtual server like MySQL,
Tomcat, or Apache.
◦ Logical DataCenter: Resources that are datacenters like AWS, Azure, or
vSphere.
◦ Virtual Infrastructure: Resources that are virtual and still provide infrastructure
for the virtual world like NetApp SVM, NetApp CDOT, CISCO ICF Cloud, or
VMware NSX.
◦ Virtual Workload: Resources that are hosted on a datacenter. For example,
Virtual Server, Storage Volume, Network, or Gateway.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

396


<!-- page 397 -->
Note:
◦ Applications are deployed on Platforms.
◦ Platforms are deployed on Logical Datacenters or Virtual Infrastructures.
CI type

Select the type of CI in your CMDB that the resource block represents. When the
user launches a stack, the cloud resources are provisioned and actual CIs that for
the resources are created in the CMDB in this CI type.
For example, if you select Storage Volume, the system creates a record in the
Storage Volume [cmdb_ci_storage_volume] table when the user provisions a new
volume.

Note: Each resource block is based on a CI type from the CMDB. Ensure
that you do not have more than one resource block bound to a CI type.
Default
Select the guest interface that contains the operations you need for the resource.
Guest
Interface Later you can further define and select the operations to use for this default guest
interface. The system gives you a set of default operations for each interface.
Create
interface If another resource block specifies a Host interface (see the Host interface field
description) that matches what you specify here in the Guest interface field, that
resource block can be a potential host for this resource block.
If you select the Create interface check box, enter a name for the guest interface.
The system creates the guest interface, opens the resource block that you are
configuring in the resource block form, and lists the new interface in the Resource
Guest Interface related list. See the description of the Resource Guest Interface in
the following steps.
If you create a new guest interface, also keep in mind that other resource blocks
can use the interface.
Host
interface Select the interface that the potential host of this resource block must offer up.
Any other resource block that offers up a default guest interface of the same type
you specify here can become a host of this resource. Later on, you can select one
or more actual host resources.
For example, by default the AWS Datacenter resource block specifies the
Compute interface as a default guest interface. That means the AWS Datacenter
is offering the Compute host interface to other resource blocks through which to
connect to the AWS Datacenter.
Specify the Compute interface here as the host interface of the resource block
so the resource block can look for any other resource block using the Compute
interface as its guest interface. Since the AWS Datacenter does use the Compute
interface as its guest interface, later you can select the AWS Datacenter as the
actual host in the Host Resource related list.
Other resource blocks that offer the Compute interface by specifying Compute as
the guest interface, are also potential hosts for this resource block.
You must know which interfaces the potential host resources offer as guest
interfaces. And determine which operations are part of those guest interfaces.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

397


<!-- page 398 -->
3. Click Submit.
Continue updating settings on the related lists, as needed.
4. Optional: Complete the following steps to add another guest interface.
You can specify an additional guest interface to offer to other resource blocks. For example,
a datacenter resource block might offer a Compute interface, a Network Service Container
interface, and a Firewall interface for other resource blocks to use.
a. Under Guest Interface, click New.
b. In the Guest interface field, select an interface.

(Optional)
c. Click Submit or Update.
5. In Host Resource, specify the resource that can host this resource block, typically the one that
offers the interface you specified in the Host Interface field.
The selected host resource block handles the provisioning of this resource block. For example,
the host resource is a virtual machine resource block that can host an Apache Web server. The
host resource selection limits the options that are presented to users when they select a host.
Example
For example select vSphere Datacenter in the Host Resource field for this resource to be
hosted in a VMWare cloud.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

398


<!-- page 399 -->
Note: You can select only the host resources that support the Host interface previously
specified for this resource block.
6. Optional: Complete the following steps to add bindings.
A binding is another resource block that this resource block can connect to. Select resource
blocks that support the same Guest interface configured for this resource block.
When you create a blueprint, you can add an attach connection between two resource blocks
that are connected with this binding. Understanding the direction of the binding is essential to
configuring the resource block. You attach a virtual server to a network, or you attach storage to
a virtual server. You cannot reverse these directions.
a. Under Bindings, click New.
b. In the Host Resource field, select a resource in the Guest Resource field.
The guest resource is the resource block that you are attaching to the current resource
block.
c. Click Submit or Update.
Example
For example, a virtual server can connect to virtual storage. By default, the base system
provides a Virtual Server resource block with a binding to the Storage Volume resource block
to enable this connection.

(Optional)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

399


<!-- page 400 -->
7. Complete the following steps to configure endpoint operations between the two resources to
bind.
The endpoints call operations during binding. For example, a storage volume can specify an
endpoint with required conditions and the operations to execute to make a connection to a
virtual server. The virtual server must also support a binding interface to the storage volume.
Implement an endpoint type, such as Block EP, for the virtual server to consume the endpoint.
Later, when you create blueprints, create the binding between the storage volume and the
virtual server.
Example of binding in a blueprint

a. Under Endpoint Operations, click New.
b. In Binding Resource, select the resource block that consumes the endpoint from this
resource block.
c. Select the type of endpoint that the Source Resource presents.
d. In Operation implementation, select the implementation that performs the operation you
are defining in this endpoint mapping.
e. Select the Type of operation to perform for the mapping.
Only operations that are appropriate for the specified Endpoint appear in the list.
Do not change the settings in Source Resource.
f. Click Submit or Update.
Specify a host resource for a resource block
Hosts that support the Host interface of a resource block are potential hosts for the resource
block. You use the Host interface setting to further limit the options that are presented to the
stack requester while selecting a host type.

Before you begin

Role required: admin

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Select the resource block and then select Draft on the Resource Blocks form:

3. In the Host Resource related list, click New.
On the Resource Host form, the Application and the Guest Resource (the resource block that
you are currently configuring) are already specified.
4. Specify the Host Resource.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

400


<!-- page 401 -->
For example, for a virtual server, you might select AWS Datacenter or Azure Datacenter as
potential host types.
5. Click Submit.
Specify the bindings for resource blocks
Bindings represent endpoint relationships. For example, a storage volume might implement
an endpoint type of Block EP (cmdb_ci_endpoint_block). A virtual server might consume
an endpoint of that type. Bindings must support the Guest interface that is specified for the
resource block.

Before you begin

Role required: admin

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Select the resource block and then select Draft on the Resource Blocks form:

3. In the Resource Bindings related list, click New.
4. On the Resource Binding form, the Application and the Guest Resource (the resource block
that you are currently configuring) are already specified.
Specify the Binding Resource.
5. Click Submit.
Configure endpoint operation mapping
You can configure endpoint mapping on a storage volume to make a connection to a resource.

Before you begin

Role required: admin

About this task

In the following example, the endpoint mapping that is configured for a storage volume specifies
the conditions that must be met and the operation to execute to make a connection to a resource
(a virtual server in the example) that supports a binding interface to a storage volume. The
storage volume implements the endpoint (type Block EP in the example) and the virtual server
consumes the endpoint:
Endpoint mapping for a storage volume

The settings on the example Resource Endpoint Mappings related list specifies the conditions
and an action:
• For a resource block that supports a binding interface to a Storage Volume
• For a Source resource with CI type of Storage Volume
• With an Endpoint type of Block EP (cmdb_ci_endpoint_block)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

401


<!-- page 402 -->
Use the Attach operation to implement the connection. Use the specified Operation
Implementation to perform the Attach operation.
Storage volume for a resource block

Procedure
1. While configuring a resource block, open the Resource Endpoint Mapping related list, click
New, and then specify the following settings:

Binding Resource

Resource block that consumes the Endpoint that the
Source Resource presents.

Endpoint

Type of endpoint that the Source Resource presents.

Type

Type of operation to perform for the mapping. Only
operations that are appropriate for the specified Endpoint
appear in the list.

Operation implementation

Implementation that is called to perform the operation that
you are defining in this mapping.

Application

Read-only. Cloud Provisioning and Governance
application.

Source Resource

Resource block that can present an Endpoint of the type
that you specified. You typically do not change this setting.

2. Repeat the process for as many mappings as are needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

402


<!-- page 403 -->
Configure resource block input parameters
You can configure operations for each interface of a resource block by specifying input
parameters, steps, and output attributes. Input parameters hold values that the system requires
to identify and manage a virtual resource, such as the datacenter and resource group that the
resource is in.

Before you begin

Role required: sn_cmp.cloud_service_designer

About this task

The system automatically associates default operations from the Cloud API (CAPI) to the
resource block when you add interfaces to it. It also provides default input parameters for each
operation.

Procedure
1. Open a resource block, and then click the Operations tab.

The Input Parameters sub-tab appears by default.
2. Select the interface from the Interface choice list.
The interfaces in this choice list are derived from the Resource Guest Interface list on the
General Information tab that you already configured when you created a resource block.

3. Select the operation on which you want to modify the input parameters.
You can also create a new operation.
a. Click the Add Operation icon.

b. Fill out the form (see table):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

403


<!-- page 404 -->
Field

Description

Name

Enter a descriptive name.

Operation Select the type of operation from the choice list.
type
Access
type

Select Public to make the resource block operation available from the catalog
order form when a user manages a stack that they own. The actual operations
appear in a list on the catalog order form:

Select Private to prevent the operation from being used when a user launches
a stack.
This setting applies at the catalog-item level, not the whole-stack level. You can
control the access type on the whole stack when you configure blueprints.
As an example, you might want to mark the Deprovision operation as
private for an individual VM, but not for the whole stack. This allows the user to
deprovision everything at once and prevents the user from just deprovisioning
the VM.
c. Click Submit.
4. Configure the input parameters to provide a way to input the items you need to run the
selected operation.
For example, if you add a Provision operation for an AWS resource, you need, at minimum,
the CloudAccount parameter and the Location parameter to perform the operation. You
need to know the providers API to know what to pass to it. For example, if you want to add a
provision operation for an S3 bucket on AWS, you need to know the allowable AWS operations
on buckets
and the Request Elements for things like creating a bucket (the PUT Bucket
operation ). You can typically find these resources in the AWS and Azure documentation.
a. Click the Add Input Parameters icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

404


<!-- page 405 -->
b. Add the Name of the parameter that you obtained from the cloud provider API.
In this example, you could add CreateBucketConfiguration for an AWS S3 bucket

.

c. In the Datasource column, select the type of input parameter you are configuring.
This value specifies the source or location where the parameter value comes from:
▪ Text: a text value that the user passes.
▪ Pools: the query that you want to run against a pool to get a value back
from it. The pool Datasource Value should follow this convention:
ServiceNow::Pools::PoolName.Pool-Filter-Name. See Pools and Filters for
Cloud Provisioning for more information on pools.
▪ CSVList: values from a comma-separated value list that you enter into the Datasource
Value.
▪ Array: an array of values. You can programmatically send it an array in JavaScript. The
format is as follows: ['abc','def'].
▪ FormData: data submitted from the form configured in the blueprint.
▪ ResourceScript: an expression that passes a value. The expression should follow this
convention in the Mapping field:
$(Script:script-name.function[arg1=${value-to-pass},arg2=
${value-to-pass}])
▪ TLR: the value inherited from the top-level resource container above this resource block in
the blueprint.
d. Click Save.
e. In the Mapping column, you can view the auto-generated mapping values.
Mappings specify where to pull the information in the system. You do not have to change
the mapping values except for ResourceScript type parameters, where you must enter the
expression.
f. In the Default Value column, specify a value that you want the system to use if the user does
not pass any value or if you did not enter anything in the Datasource Value.
g. Select Create Form to make this attribute available in the order form that the user sees when
trying to provision the stack item.
You can also select Mandatory to force the user to enter a value.

h. In the Restricted To column, click the restricted icon (
), and then select a resource
block to restrict the attribute to be passed to a specific host.
In this example, you are configuring a resource block for a virtual server on vSphere,
which requires the name of the VM folder (represented by the VmFolderName attribute).
Other datacenter types do not need the name of the VM folder. Therefore, you can restrict
VmFolderName to the vSphere datacenter resource block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

405


<!-- page 406 -->
This image illustrates how the VMFolderName attribute is restricted to the vSphere

Datacenter.

Add operation steps to a resource block
After you configure operations and input parameters for your resource block, add steps for each
operation to tell the system which Cloud API (CAPI) to call. Each step is a separate call to CAPI.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. On the resource block, click the Steps sub-tab under Operations.
2. Click Add Step.
3. Fill in the form fields.

Field

Operation Type

Description

Select the type of operation:
◦ Invoke Cloud API: Select this option to select a provider, interface,
and method from CAPI.
◦ Invoke Host Resource Operation: Select this option to use an
operation (also called an operation signature) from the host interface
that you already specified for this resource block.
◦ Invoke Script: Select this option to invoke a method from an existing
MID Server script include.
◦ Invoke Flow: Select this option to invoke subflows from a list of active
subflows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

406


<!-- page 407 -->
Field

API Provider
[Operation Type =
Invoke Cloud API]

Description

Select the API that provides the interfaces you need. The providers are
part of the Cloud API (CAPI).
For example, CAPI supplies the AWS provider, which has products,
some of which have provider names.
This value appears if you select the Invoke Cloud API operation type.

API Interface
[Operation Type =
Invoke Cloud API]
API Method
[Operation Type =
Invoke Cloud API]
CAPI Version

Select the interface that has the methods you want to use. For example,
the Blob Storage Interface provides the CreateContainer interface,
which the system uses during provisioning.
Select the method to perform the operation. In this example,
CreateContainer is required to provision storage.

Enter the version of the CAPI API.

[Operation Type =
Invoke Cloud API]
Host Interface
[Operation
Type = Invoke
Host Resource
Operation]
Interface
Operation
[Operation
Type = Invoke
Host Resource
Operation]
Scripts
[Operation Type =
Invoke Script]
Flow
[Operation Type
= Invoke Flow >
Subflow]
Condition

Select the interface from which to call an operation. You can only select
the same interface that you configured on the General Information tab
of the resource block.
To change the interface, navigate back to the General Information tab
and select another value in the Host Interface field.
Select the operation from the host interface. For example, if you
select Storage Server Interface, you can call all the operations in that
interface, such as CreateStorageVolume.

Enter the script you want to invoke, along with a method in the script.
Use this syntax: script-name.method.

Select the subflow from the Subflows list. For example, if you select
a Terraform Enterprise Provision subflow, you can simply reuse the
existing subflow to populate the Inputs&Outputs

Enter an optional condition that must be met before the system uses
this step.

If you look at the Azure API and the CreateNode method mapper, you can see that the
endpoint operation is a script. It calls the MID Server script include, which shows you the
createNode() function. This function uses AzureComputeVirtualMachine script
include. Take time to review and understand this script include.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

407


<!-- page 408 -->
4. Click Submit.
The Input and Response Processor tabs appear for the step.
5. On the Input tab, configure the CAPI operation inputs.
On the CAPI interface, which in this case is Blob Storage Interface, open
CreateContainer method. The inputs from CAPI are shown on the Input tab, where you
create parameters.
Remember that the parameters on the Input Parameters tab is where users enter values.
You can map those input parameters to the parameters on the Input tab. To do this, copy the
Mapping value from the Input Parameters tab into the Value field on the Steps > Input tab.
If this step is invoking a script, and that script requires arguments to return values, you
can add a new input parameter for each argument. Use this syntax in the Value field:
${parameter.arg1}.
6. If any subsequent steps in this operation or subsequent operations require parameters values
from this step to be passed to them, configure output attributes.
For example, the Provision operation for a virtual server can provide an output attribute for
the network interface ID and another for the node ID. When the cloud provider sends the
response, the actual ID of the network and node are parsed out of the response and saved in
the output attributes. Subsequent steps use the IDs to perform actions.
a. Click the Output Attributes tab.
b. Enter code in the following notation:

{
"Attribute": "${Value}"
}
Where the value comes from a mapping to the interface and the operation.
For example, in the following output attribute:
{
"NodeId": "${Compute
Interface.CreateNode.Output.resp.nodeId}"
}
▪ NodeId is the attribute.
▪ Compute Interface specifies the interface.
▪ CreateNode is the name of the method that creates the node.
▪ Output.resp is a mandatory part of the syntax.
▪ nodeId
Add a resource operation step to invoke a subflow
Invoke a subflow by adding an operation step to a resource and linking it to a new or existing
subflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

408


<!-- page 409 -->
Before you begin

Make sure the Orchestration application is installed.
Role required: Designer or admin

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Set the resource block to Draft state by toggling the publish and then select Operations >
Steps > Add Step.
The Add Operation Steps form appears.
3. From the Operation Type list, select Invoke Flow.
4. From the Content Type list, select Subflow.

Note: You cannot invoke flows while adding a resource operation step. This is a known
limitation.
5. Select an active subflow from the Flow/Subflow lookup list.
6. Optional: Specify a condition in the Condition field.
7. Select Submit.
The subflow operation step is attached to the resource block and appears on the page. Any
input parameters associated with the subflow you selected are auto-populated on the Input
tab.
8. In the Inputs subtab, select the

icon to add a new step parameter.

a. Add the following key value pair to the subflow.

Key

Value

flowcorrelationid

$(Script:CMPFlowStepHandler.generateCorrel

9. Select the Response Processor tab and then select the plus icon.
The Add Response Processor dialog box appears.
10. In the Script Name list, select a script for the response processor.
For a script to appear in the Script Name list, the script should already have been created in
the Resource Script tab. For more information, see Configure a response processor.
11. Select Submit.
12. Set the resource block to Publish state to incorporate your changes and publish the resource
block.

What to do next

Create a response action for Cloud Provisioning and Governance
Extend Cloud Provisioning and Governance resource blocks with an override operation
You can extend your existing guest interface to create a new operation. You can also create a
new guest interface with its own operations, parameters, and inputs.

Before you begin

Become familiar with resource block input parameters, operations, and steps. See Configure
resource block input parameters and Add operation steps to a resource block for instructions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

409


<!-- page 410 -->
Role required: sn_cmp.cloud_admin

About this task

The Cloud Provisioning and Governance application is bundled with several useful resource
blocks. Create extensions to the existing resource block interfaces to add more functionality
to these resource blocks. After creating an interface extension, use it in a blueprint to execute
a customized operation. For example, if you do not like the way a virtual server is provisioned,
extend the virtual server resource block interface by adding operations or overriding existing
operations.

Note: Operations in resource blocks are also called operation signatures.
Procedure
1. Open a resource block.
2. Change the status of the resource block from Published to Draft.
3. Click the Operations tab.
4. Click the Override Operation icon.

5. Select an existing guest interface or select the Create new check box to create a new guest
interface.
6. Optional: If you create an interface, enter a name in the Interface field.
7. Click Submit or Update.
The new operation appears in the Operation list. If you create a new interface, it appears in the
Interface list.
8. Configure the necessary input parameters, steps, and output attributes for your new guest
interface.
9. To edit the operation or to change the access type:
a. Click the Edit Operation Signature icon.

b. Change the Operation Type if necessary, and add, edit, or remove input parameters at the
bottom.
c. If you want the blueprint designer to perform the operation directly on the resource only
when it is instantiated, select Private for the Access Type.
d. Click Update.
10. After completing the customizations, toggle the switch to Published.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

410


<!-- page 411 -->
11. Navigate to Cloud Admin Portal > Design > Blueprints.
12. Follow the steps in Build a Cloud Provisioning blueprint to add a blueprint.
13. Click Operations and click the operation to modify in the resource block.
The default resource block interface appears in the right column.
14. Click the Edit Resource Operation (pencil) icon to apply the interface extension you created.
15. Click Submit.
The blueprint gets executed with the customized interface extension.

Result

After you add this resource block to a blueprint, the parameters you added are available for you
to customize.
Add a resource script to a resource block
A resource script operates on a resource during deployment or returns data to the CMDB after a
resource is deployed.

Before you begin

Role required: sn_cmp.cloud_service_designer

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Open the resource block and then set it to Draft
state.
3. On the Resource Script tab, specify a unique and meaningful Name and then define the
script:

Script

Script code.

Type

Type of script:
◦ Instance Script: Javascript that performs an
operation on the instance (for example, a
subflow).
◦ PowerShell Script
◦ Python Script
◦ Response Processor: Converts return
data from the external cloud API to the
operation implementation into a format that
the CMDB can accept.
◦ Shell Script

4. Click Submit.
Add as many scripts as are needed.
Configure a response processor
Configure a response processor to handle responses from datacenters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

411


<!-- page 412 -->
Before you begin
• The CI class types for your resources must already exist in the CMDB. If you created custom
products or providers in CAPI, you must also create custom CI types so the response
processor knows how to identify CIs. See Create a CI class for a virtual cloud resource for
information on creating CI types.
Role required: sn_cmp.cloud_service_designer

About this task

After each step is completed, the datacenter sends a response to the ECC Queue of the MID
Server. For example, if a user provisions a virtual server on an AWS datacenter, AWS sends
information about the new virtual server to the ECC Queue. The system needs to create a CI in
the CMDB for the virtual server. It does this using a response processor.
Alternatively, you can use pattern-based targeted discovery to handle responses from the
datacenters. For more information, see Pattern-based targeted discovery.

Note: The resource type for which you are adding the response processor script must
exist in the [sn_capi_resource_type] table.

Procedure
1. Open a resource block, and click the Resource Script tab.
Ensure that the resource block is not in the published state.
2. Click New.
3. In the Name field, enter the name for the resource script.
4. In the Script field, enter a script.
5. Click Submit.
6. Click the Operations tab on the resource block.
7. Click the Steps sub tab.
8. Click a step.
9. Click the Response Processor tab for the step.
10. Click the add icon (

).

11. In the Script Name field, select the processor you just created.
12. Click Submit.
The response processor script can process the response from the cloud provider for the CI
type of the resource block.
Execute response processor for subflow
Execute a response processor for a subflow to get the subflow data back into a configuration
item (CI). The response processor picks up the data, sends the data to the CMDB, which in turn
puts the data in a CI.

Before you begin

Role required: sn_cmp.cloud_service_designer

About this task

Before you execute a response processor for a subflow, you must create a subflow, attach the
subflow to a resource block operation step, and then generate the catalog. To return a response
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

412


<!-- page 413 -->
from the subflow to the Cloud Provisioning and Governance application, the subflow must create
a record in the sn_cmp_flow_result table with the appropriate details as follows.

flow_type
: 'sys_flow_context'
flow_correlation_id : flowcorrelationid (This variable must
be present in the Resource Block as mentioned here Add a resource
operation step to invoke a subflow.
flow_output
: String that will be processed by Response
Processor
flow_error
: Error string if there is any error
error_detail
: Error detail string if there is any error

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Open a resource block that is in a draft state and navigate to Operations Steps.
3. Select Add Step.
The Add Operation Steps dialog box appears.
4. Add a workflow operation step.
See Add operation steps to a resource block.
The workflow operation step gets attached to the resource block and appears on the page.
Any input parameters associated with the workflow appear on the Input tab.
5. Select Generate Catalog.
The workflow appears in the Cloud User Portal as an operation. Select the workflow from the
Select Operation picker to execute the operation. The status of the operation is visible in the
Track operation subtab.
6. Select the Response Processor tab and then select the plus icon.
The Add Response Processor dialog box appears.

7. In the Script Name list, select a script for the response processor.
For a script to appear in the Script Name list, the script should already have been created in
the Resource Script tab.
8. Select Submit.
The script appears in the Response Processor tab. You can open the script and modify the
script.
Virtual server response processor example
The Create_Virtual_Server_Response_Processor script, which is available by
default in Cloud Provisioning and Governance, is the response processor that handles the
creation of AWS virtual machine CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

413


<!-- page 414 -->
Create Virtual Server
The Create_Virtual_Server_Response_Processor resource processor script is available by default
on the Virtual Server resource block. Its job is to create a virtual server record in the Virtual
Machine Instance [cmdb_ci_vm_instance] table when a new virtual server is provisioned.
All response processors have this first line with these common parameters:
function processResponse(response, cloudServiceAccountId, ldc,
correlationId,step, requestorContext) {
This brings in the response from the cloud provider and the important information, such as the
account ID, that is required for the new CI that the system can create. All of these parameters are
required for all response processors.
Line 10 parses the response into JSON so that the system can process it. The information is held
in the vmResponse variable:

var vmResponse = global.JSON.parse(response);
Whenever you create or edit a response processor, you must know which inputs are required for
the CI type. Line 11 handles one of the necessary inputs, the hardware ID, that the CMDB record
requires:

var hardwareId = vmResponse.hardwareId;
Line 39 shows the information that is required for the system to identify the new virtual server
and related CIs, so the information can be put into the CMDB. In this case, the service account
object ID identifies the account associated with the virtual server, the datacenter object ID
identifies the datacenter in which the virtual server lives, and the virtual machine instance
object ID identifies the virtual server itself. This identification code block prevents the creation of
duplicate CIs.

var vmInfo = {
"cmdb_ci_vm_instance": {
"validator": "virtual_machine_create_update_validator",
"validator_overrides": {},
"identification": {
"cmdb_ci_cloud_service_account": {
"criterion": {
"object_id": cloudServiceAccountId
}
},
"cmdb_ci_aws_datacenter": {
"criterion": {
"object_id": ldc
}
},
"cmdb_ci_vm_instance": {
"criterion": {
"object_id": vmResponse.nodeId
}
}
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

414


<!-- page 415 -->
Attributes are populated into the fields on in the cmdb_ci_vm_instance table. These attributes
are defined in line 61:

"attributes": {
"name": vmResponse.nodeName,
"object_id": vmResponse.nodeId,
"state": status_map[vmResponse.state],
"dns_suffix": vmResponse.dnsSuffix,
"cpus": vmCPUs,
"memory": vmMemory,
"disks": vmResponse.volumes.length,
"disks_size": "",
"nics": vmResponse.networkInterfaces.length,
"terminated_on": "",
"termination_protection": "",
"ip_address": vmPubIPAddr,
"assigned_to": reqContext.userId,
"assignment_group": reqContext.groupId
},
References to other CIs can also be included in the response processor. In this case, the OS
template that the virtual server is based on is identified by first identifying the object ID of the
service account and the datacenter along with the actual OS template.

"references": {
"cmdb_ci_os_template": {
"identification": {
"cmdb_ci_cloud_service_account": {
"criterion": {
"object_id": cloudServiceAccountId
}
},
"cmdb_ci_aws_datacenter": {
"criterion": {
"object_id": ldc
}
},
"cmdb_ci_os_template": {
"criterion": {
"object_id": imageIdTrim
}
}
},
The following code block adds the object ID of the OS image to the attributes list so that this
information can be populated into the virtual server CMDB record.

"attributes": {
"object_id": imageIdTrim
}
This code block performs additional identification on the Compute template (the hardware type)
and then add it to the attributes:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

415


<!-- page 416 -->
"cmdb_ci_compute_template": {
"identification": {
"cmdb_ci_cloud_service_account": {
"criterion": {
"object_id": cloudServiceAccountId
}
},
"cmdb_ci_aws_datacenter": {
"criterion": {
"object_id": ldc
}
},
"cmdb_ci_compute_template": {
"criterion": {
"object_id": vmResponse.hardwareId
}
}
},
"attributes": {
"object_id": vmResponse.hardwareId,
"name": vmResponse.hardwareId
}
}
Additional code sections make the relationship with network interfaces and identify any storage
attached to the virtual server.
This mandatory code block pushes the data to the CMDB and returns the JSON string:

cloudModelString.push(vmInfo);
return global.JSON.stringify(cloudModelString);
Add Terraform Orchestration interface on a resource block
After you have activated the Terraform store app for Cloud Provisioning and Governance, to
support cloud-based operations for cloud providers using Terraform Open Source Edition. Add
the Terraform Orchestration interface on resource block, to execute cloud-based operations via
terraform templates.

Before you begin

Role required: sn_cmp.cmp_root_admin, sn_cmp.cloud_service_designer

Procedure
1. On the Cloud Admin portal, navigate to Design > Resource Block.
2. Click the resource block, for example Azure Datacenter.
3. Move the state of the resource block from Published to Draft to make it editable.
4. Navigate to General Information > Guest Interface, and then click New.
5. Search for and select the Terraform Orchestration Interface from the Guest Interface list, and
click Submit.
6. Click the Operations tab.
7. In the Input Parameterstab, navigate to Interface and select Terraform Orchestration
Interface
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

416


<!-- page 417 -->
8. On the Input Parameters tab, configure the CAPI operation inputs.
On the CAPI interface, which in this case is Terraform Orchestration Interface, open
CreateStack method. The inputs from CAPI display on the Input tab, where you create
parameters.
The Input Parameters tab is where users enter values. You can map those input parameters
to the parameters on the Input tab. To do this, copy the Mapping value from the Input
Parameters tab into the Value field on the Steps > Input tab.
If this step is invoking a script, and that script requires arguments to return values, you
can add a new input parameter for each argument. Use this syntax in the Value field:
${parameter.arg1}.
9. Click the Steps sub-tab under Operations.
10. Click Add Step.
11. Fill in the form fields.

Field

Description

Operation
Select the type of operation.
Type
Invoke Cloud API: Select this option to select a provider, interface, and method
from CAPI.
API
Provider

Select the API that provides the interfaces you need. The providers are part of
the Cloud API (CAPI).
For example, CAPI supplies the Terraform OpenSourceprovider, which provides
the Configuration Orchestration Interface.
This value appears if you select the Invoke Cloud API operation type.

API
Interface

Select the interface that has the methods you want to use. For this example, the
Configuration Orchestration Interface provides multiple interfaces or methods,
which the system uses during provisioning.

API
Method

Select the method to perform the operation. In this example, ExecuteCommand
is required to provision terraform templates.

CAPI
Version

Enter the version of the CAPI API.

Condition Enter an optional condition that must be met before the system uses this step.
12. Click Submit.
The Input and Response Processor tabs appear for the step.
13. On the Input tab, configure the CAPI operation inputs.
On the CAPI interface, which in this case is Configuration Orchestration Interface, open
ExecuteCommand method. The inputs from CAPI show on the Input tab, where you create
parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

417


<!-- page 418 -->
Remember that the parameters on the Input Parameters tab is where users enter values. You
can map those input parameters to the parameters on the Input tab. Copy the Mapping value
from the Input Parameters tab into the Value field on the Steps > Input tab.
If this step is invoking a script, and that script requires arguments to return values, you
can add a new input parameter for each argument. Use this syntax in the Value field:
${parameter.arg1}.

Note: Map the values as mentioned in the following table for the following parameters:
Parameter

Value

AdditionalParameters

Enter the following script:
{"ServerType":"$(Script:sn_cmp_terraform.Ter
raformCommandUtils.
getConfigProviderServerTypeByName[arg=${para
meter.WorkloadConfigProvider}])"}

ConfigMgmtProviderInfo

Node Address

Script

$(capiResolver.NodeCredentialResolver#nodeCr
edentialId=$(ci.sn_cmp_wl_cfg_mgmt_provider
[name=${parameter.WorkloadConfigProvider}].c
redential))
$(ci.cmdb_ci_workload_config_provider[name=$
{parameter.WorkloadConfigProvider}].url)
${CloudScript.scripts.TerraformDeploy}

For CreateStack
operation
Script

${CloudScript.scripts.DestroyTerraform}

For DeleteStack
operation
14. On the Response Processor tab, configure the response processors by attaching resource
scripts.
You would have added Resource Scripts to the resource block, while creating the Resource
Block.
15. From the Operation list, select the CreateStack or DeleteStack operation.
16. Click the add icon

for Add Response Processor.

17. Click the Resource Script sub tab, and then click New.
18. Complete the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

418


<!-- page 419 -->
New Record
Field

Description

Name

Enter a name (For example,
Create_AzureTF_Stack_Response_Processor)
for the resource script.

Type

Select a type (Response Processor) for the
script.

Script

Enter the following script:

Resource Script for Create

Script
Resource Script for Delete

function processResponse
(response,
cloudServiceAccountId, ldc,
correlationId, step,
requestorContext, stackId) {
var responseObject =
global.JSON.parse(response);
var tfState =
global.JSON.parse(responseOb
ject.terraform.state);
var processor = new
sn_cmp_terraform.TerraformRe
sponseProcessor();
var processedResponses =
processor.processResponse(tf
State, cloudServiceAccountId,
ldc,
correlationId,
step, requestorContext,
stackId);
return
global.JSON.stringify(proces
sedResponses);
}
Enter the following script:
function processResponse
(response,
cloudServiceAccountId, ldc,
correlationId, step,
requestorContext, stackId) {
var responseObject =
global.JSON.parse(response);
var tfState =
global.JSON.parse(responseOb
ject.terraform.state);
var processor = new
sn_cmp_terraform.TerraformRe
sponseProcessor();
var processedResponses =
processor.processResponse(tf
State, cloudServiceAccountId,
ldc,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

419


<!-- page 420 -->
Field

Description

correlationId,
step, requestorContext,
stackId);
return
global.JSON.stringify(proces
sedResponses);
}

19. From the Script Name list, select the script corresponding to the selected operation, and click
Submit.
20. Move the state of the resource block from Draft to Published.
The datacenter resource block moves from the draft to the published state and you cannot
make further changes to the resource block. You can only modify a resource block after you set
the status to Draft.
Create a resource block for Microsoft Azure Cloud
Resource blocks are the building blocks of cloud catalog items. Create a resource block for the
Microsoft Azure Cloud Platform provider, based on a CI type from the CMDB.

Before you begin

Role required: sn_cmp.cmp_root_admin

Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
2. Click New to open the Create Resource Block dialog box and then fill in the form.
For a detailed description of each field, see Create a custom resource block.

Field

Description

Name

Enter a name (Azure Datacenter) for the
resource block.

Description

Enter a valid description

Layer

Select the type of resource block (Logical
Datacenter).

CI Type

Select the CI type (Azure Datacenter) that
the resource block represents.

Guest Interface

Select a default guest interface (Compute
Interface) to use when you add a resource
block to a template.

3. Click Submit.
The resource block information appears.
4. Click the Resource Script sub tab and then click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

420


<!-- page 421 -->
Field

Description

Name

Enter a name (For example,
Create_AzureTF_Stack_Response_Processor)
for the resource script.

Type

Select a type (Response Processor) for the
script.

Script

Enter the following script:

Resource Script for Create

Script
Resource Script for Delete

function processResponse
(response,
cloudServiceAccountId, ldc,
correlationId, step,
requestorContext, stackId) {
var responseObject =
global.JSON.parse(response);
var tfState =
global.JSON.parse(responseOb
ject.terraform.state);
var processor = new
sn_cmp_terraform.TerraformRe
sponseProcessor();
var processedResponses =
processor.processResponse(tf
State, cloudServiceAccountId,
ldc,
correlationId,
step, requestorContext,
stackId);
return
global.JSON.stringify(proces
sedResponses);
}
Enter the following script:
function processResponse
(response,
cloudServiceAccountId, ldc,
correlationId, step,
requestorContext, stackId) {
var responseObject =
global.JSON.parse(response);
var tfState =
global.JSON.parse(responseOb
ject.terraform.state);
var processor = new
sn_cmp_terraform.TerraformRe
sponseProcessor();
var processedResponses =
processor.processResponse(tf
State, cloudServiceAccountId,
ldc,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

421


<!-- page 422 -->
Field

Description

correlationId,
step, requestorContext,
stackId);
return
global.JSON.stringify(proces
sedResponses);
}

5. Click Submit.
6. Click the Operations sub tab and then click Steps.
7. Select CreateStack from the Operations list.
8. Click the Add a Step plus icon to open the Add Operation Steps dialog box and then fill in the
form.

Field

Description

Operation
Type

Select the type of operation.
Invoke Cloud API: Select this option to select a provider, interface, and
method from CAPI.

API Provider

Select the API that provides the interfaces you need. The providers are part of
[Operation
the Cloud API (CAPI).
Type =
Invoke Cloud For example, CAPI supplies the Terraform OpenSourceprovider, which
provides the Configuration Orchestration Interface.
API]
This value appears if you select the Invoke Cloud API operation type.
API Interface Select the interface that has the methods you want to use. For this example,
the Configuration Orchestration Interface provides multiple interfaces or
[Operation
methods, which the system uses during provisioning.
Type =
Invoke Cloud
API]
API Method
[Operation
Type =
Invoke Cloud
API]

Select the method to perform the operation. In this example,
ExecuteCommand is required to provision terraform templates.

CAPI Version Enter the version of the CAPI API.
[Operation
Type =
Invoke Cloud
API]
Condition

Enter an optional condition that must be met before the system uses this step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

422


<!-- page 423 -->
9. Click Submit.
10. Click Response Processor and then click the plus icon.
The Add Response Processor dialog box appears.
11. Select Create_AzureTF_Stack_Response_Processor from the Script Name list and click
Submit.
12. Move the state of the resource block from Draft to Published.
The Azure Datacenter resource block moves from the draft to the published state and no
further changes can be made to the resource block. Changes to a resource block can be made
only if the status is set to Draft.
Cloud scripts and cloud script templates
In the Cloud Provisioning and Governance application, script execution is divided into cloud
scripts and cloud script templates. Use scripts in blueprints, resource blocks, OS profiles, and
use policy scripts to set request form attributes. Policy scripts cannot override user data.

Cloud scripts
Cloud scripts are simple java scripts that use platform features. An example of a sample cloud
script:
function evaluateTemplate() {
// Template Resolver is a helper function which we will use to
fetch a template and replace its parameters,
// var templateResolver=new TemplateResolver(); this comes
inbuild
// templateAttributes below will passed from the user.
var
listDir=templateResolver.getTemplate('Install',templateAttribut
es);
return listDir;
}
Each cloud script contains certain parameters. Parameters are the attributes that you want
to access. A parameter contains a name, a default value, and an override value. The default
value can be a string literal, a resource block parameter or a complex script expression used in
resource blocks.
A cloud script, by default, has access to the templateResolver object. The
templateResolver object has, by default, a getTemplate method, whose first
parameter is the cloud script template name. templateAttributes are the cloud script
parameters created as part of a cloud script. If needed, customizations can be done in
templateAttributes. As an example, see the following code snippet if the value of
DevName parameter needs to be changed from John to Emily.
function evaluateTemplate() {
// Template Resolver is a helper function which we will use to
fetch a template and replace its parameters,
// var templateResolver=new TemplateResolver(); this comes
inbuild
// templateAttributes below will passed from the user.
templateAttributes['DevName'] = 'Emily';
var customNodeName;
var now_GR = new GlideRecord('some_custom_table_to_query');
gr.addQuery('some_parameter','some_value');
gr.query();
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

423


<!-- page 424 -->
if(gr.next())
customNodeName=gr.getValue('some_custom_node_name');
templateAttributes['NodeName'] = customNodeName;
var
listDir=templateResolver.getTemplate('Install',templateAttribut
es);
return listDir;
}
evaluateTemplate();

Cloud script templates
Cloud script templates are actual executables which are passed to target a virtual machine for
execution. Cloud templates can be of any type (Shell/PowerShell/CloudInit) depending on the
execution context. You need to create a cloud template first and then associate it with a cloud
script.

Cloud scripts as CloudInit
Cloud providers provide a way to execute scripts at boottime for virtual machines. In the Cloud
Management application, you can specify a cloudinit script at various levels:
• Image level: At the time of creating a cloud script, you can specify an image against which
this script should be executed. Once an OS profile which contains this specific image gets
selected, the default cloud script against this image is executed. In the example below, an
Apache cloud script is associated with a particular image.

• OS profile level: You can run a cloudinit against a specific cloud provider and against a specific
AMI/image. You can also be generic and associate a cloudinit to an OS profile, irrespective of
the underlying image. In the following example, multiple images are associated with the OS
profile. You can map any cloud script to the OS profile in the Cloud Script OS Profile Mappings
tab. The mapping of a cloud script with an OS profile takes precedence over the image-level
cloud script association.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

424


<!-- page 425 -->
In this example, the Apache cloud script is mapped to the Centos OS profile. If needed, you
can override the script parameters in the OS Profile Mapping Overrides section.
• Resource blocks: While mapping a cloud script to an OS profile, you can choose whether
to execute the cloud script for a specific resource block used in a blueprint and against a
particular resource alias. See Create an OS profile.

Cloud scripts as Postinit
You can use cloud scripts as Postinit scripts in a resource block. Once you create a resource
block with a virtual machine to be provisioned, you can add an ExecuteScript operation.
The ExecuteScript operation takes a script parameter (a pool of cloud scripts) and you can
select any script to execute. Use the ScriptParameters attribute in the ExecuteScript
operation to override any script parameter. You can provide a JSON map of script parameter
and its override value. All expressions that are supported by Cloud Management work in the
ScriptParamters attribute.
Create cloud initialization script templates and a script
Create cloud initialization templates and a script to use during VM provisioning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

425


<!-- page 426 -->
Before you begin

Role required: cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Scripts > Cloud Script Templates.
2. Click New, enter the name and content of the script, and then click Submit.
Create as many script templates as needed.
3. In the Cloud Admin Portal, navigate to Design > Cloud Scripts.
4. Click New.
5. Enter a descriptive name and create script that uses the template name in the following line of
code (scriptName is the name of the template):
templateResolver.getTemplate(scriptName);

Note: For more information, see Cloud scripts and cloud script templates.
6. Click Submit.

What to do next

To run a script at the time a virtual resource is provisioned, map the script to an OS profile. To
run a post-provisioning script, create a blueprint and specify the script in the Execute Script
operation. See Example: Post-provision cloud script for an example.
Map a script to an OS profile
To execute scripted actions during VM provisioning, you can map a script to an OS profile. The
script runs on VMs that are created based on the image template in the OS profile.

Before you begin

Role required: sn_cmp.cloud_admin
You must have a cloud account with datacenters. You must run Discovery on the service
accounts to populate the datacenters.

About this task

In this procedure, you specify an existing script. See Create cloud initialization script templates
and a script.

Note: Profile mappings that specify more details run first. For example, a mapping that
specifies a blueprint, OS profile, and resource alias takes precedence over a mapping that
specifies only an OS profile.

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Profiles.
2. In the Profiles list, select OS Profile and then open the profile.
3. On the Cloud Script OS Profile Mappings related list, click New and then fill in the form.

Field

Description

Blueprint

Select a blueprint to limit the script to a specific resource block used in the
blueprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

426


<!-- page 427 -->
Field

Description

[Optional]
Cloud
script

Select a cloud script to map the OS profile to.

Active

Select the check box if the cloud script should be run after the virtual machine
is provisioned.

Application Cloud Provisioning and Governance is auto-selected.
OS profile

If you specify a blueprint, the cloud script is run when the blueprint is
provisioned.

Resource
Alias

If you specify a resource alias for the blueprint, then the cloud script is executed
when the blueprint with the specified resource alias is provisioned.

[Optional]
4. Right-click the form header and select Save.
The Name attribute [scriptName] appears in the OS Profile Mapping Overrides list.
5. In the OS Profile Mapping Overrides list, enter an attribute name and value to use when the
resource is provisioned.
Related topics
Create an OS profile
Example: Post-provision cloud script
This example shows a cloud script that runs after a user provisions a virtual machine.

Before you begin
• Role required: cloud_admin
• OS resource profile that is mapped to an image template. The user provisions a resource using
the profile. You must add basic authentication credentials
to the image.
• Compute resource profile that is mapped to a hardware type.

About this task

In this example, you create a cloud init script, customize a resource block, and provision a VM
from the Cloud User Portal.

Procedure
1. Create a cloud script template and a cloud script that refers to the template.
2. Open the virtual server resource block, and then follow these steps:
a. Set the Draft/Published switch to Draft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

427


<!-- page 428 -->
b. On the Operations tab, select Virtual Server Interface from the Interface list.

c. In the Operation field, verify that these operations exist:
▪ Block Until Ready
▪ Execute Script: This operation tells the blueprint to run a script.

d. Click the Input Parameters tab to view the inputs for each operation.
e. On the Steps tab, add steps as needed.
f. For the Script parameter on each step, clear the Script check box and
change the expression in the Mapping column to the following text:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

428


<!-- page 429 -->
$(CloudScript.scripts.scriptname), where scriptname is the name of the
script, not the script template, that you created earlier.

3. Publish the virtual server resource block, and use it in a blueprint that in turn is published to a
catalog item.
4. Launch a new stack to provision a VM and specify the OS profile and Compute profile that you
created as a prerequisite.

Result

The Stack Status page runs through the CreateNode, BlockUntilReady, and
ExecuteShellScript operations. The last operation kicked off the script you created.
Response Mappings
Response Mapping is the mechanism CMP uses to write back all the events and operations into
CMDB.

Response Mapping mechanism
CMP (Cloud Management Platform) is designed to actively engage with the cloud environment at
various critical stages, including Discovery, Provisioning, Day-2 operations, and Lifecycle events.
Throughout these processes, CMP is required to effectively record and store data within the
Configuration Management Database (CMDB). This data could encompass diverse information
ranging from system states to comprehensive sets of data.
To achieve this, CMP leverages its Response Processing mechanism to ensure the seamless and
accurate transfer of data back into the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

429


<!-- page 430 -->
Features of Response Mapping
• Maps external data format into ServiceNow format for IRE consumption.
• Supports simple, complex, scripted, binding and relationship mappings.
• Significant to add new/change mappings.
• Performant, used in CMP for the past few releases.
See https://www.servicenow.com/community/itom-articles/cmp-using-response-mapping-howto-populate-cmdb-using-cmp/ta-p/2323213
to learn more.
Validate a parameter value with the AllowedPattern property
The AllowedPattern property in an Azure Resource Manager (ARM) and CloudFormation
(CF) template performs input validation before sending a provisioning request.

Before you begin

Role required: sn.cmp.cloud_service_designer

About this task

You can provide rules to validate a parameter value before sending the provisioning
request to the cloud. To be notified with an error message if the validation fails, specify the
ConstraintDescription property in the template. You can customize the error message
in the ConstraintDescription property to make the message clear and explicit. Usually,
the CF templates already have the AllowedPattern and ConstraintDescription
properties. If these properties are not present, you can add them as mentioned in the following
procedure:

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Templates.
2. Select a template or click New to create a new cloud template.
If you select an existing template, rename the template.
3. In the Body text box, make the following changes in an ARM and a CF template.
a. In an ARM template, make these changes:
▪ In the parameters metadata section, enter SNC::Parameter::Metadata.
▪ Add the AllowedPattern key and enter a valid value range.
▪ Add the ConstraintDescription key and enter an error message.
"parameters": {
"newStorageAccountName": {
"type": "string",
"metadata": {
"description": "Unique DNS Name for the
Storage Account where the Virtual Machine's disks will be
placed.",
"SNC::Parameter::Metadata": {
"allowedPattern": "[0-9a-z]{1,11}",
"ConstraintDescription": "must be an
alphanumeric "
}}}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

430


<!-- page 431 -->
b. In a CF template, make these changes:
▪ Add the AllowedPattern key and enter a valid value range.
▪ Add the ConstraintDescription key and enter an error message.
"Parameters" : {
"SSHLocation" : {
"Description" : "The IP address range that
can be used to SSH to the EC2 instances",
"Type": "String",
"MinLength": "9",
"MaxLength": "18",
"Default": "0.0.0.0/0",
"AllowedPattern":
"(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\
\d{1,2})",
"ConstraintDescription": "must be a valid IP
CIDR range of the form x.x.x.x/x."
}
}
4. Click Submit.
Cloud Governance
Governance refers to the limitations that you can set on available cloud resources.

Types of governance
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

Permissions management for Cloud Governance roles
Permissions are user group-level access rights to features in the Cloud Provisioning and
Governance application and to specific records in the instance, such as blueprints or cloud
accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

431


<!-- page 432 -->
You can refine the actions that are allowed or prohibited for users based on user group. By
default, each role includes access rights, but not all users with the same role can see or edit
each others records. For example, by default users with the cloud_designer role have full read
and write access to their own blueprints, but they do not have read or write access to blueprints
created by other cloud designers. If you want them to have access, you must put the users into a
group that has the cloud_designer role, then give that group read and write access to particular
blueprints.

Permission types
Access [Read]
Users can see the record, but not edit or delete.
Manage [Create & Update]
Users can see the record and create and update new records in the same table, but
cannot delete any records.
Delete
Users can delete specified records or all records in the table.
Execute
Users can execute an action on records in the table.
All
Users have permissions on all records in the table.

Permissions suggestions
Consider granting these permissions in your organization:

Suggested group and
role

Type of users in the
group

Suggest permissions

Description

Users who order
similar items from the
Cloud user
catalog in the Cloud
[sn_cmp.cloud_service_user]
User Portal.

Access [read] or
Execute

Catalog items,
even after they are
published, cannot
be seen by users in
the Cloud User Portal
until you grant a user
group to which that
user belongs read
access to the items.
Grant Access and
Execute permissions
to cloud users on the
Blueprint Catalog Item
table and the Cloud
Account table.

Blueprint designers

Manage [Create and
update]

Blueprint designers
cannot see or edit
other blueprints or
catalog items by
default. To collaborate
or reuse existing
blueprints and catalog
items, blueprint

Catalog user group

Users who design
blueprints.

Service Designer
[sn.cmp.cloud_service_designer]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

432


<!-- page 433 -->
Suggested group and
role

Type of users in the
group

Suggest permissions

Description

designers need
access to each others'
blueprints through the
Manage permission.
Cloud admins

Users who create
and manage cloud
Cloud administrator
accounts.
[sn_cmp.cloud_admin]

Manage [Create and
update]

Cloud admins must
map templates to
appropriate resource
profiles. To collaborate
or reuse existing
resource profiles and
templates.

Assign a cloud permission
Assign a permission to refine the actions that are allowed or prohibited for users based on the
user group they belong to.

Before you begin
• Role required: sn_cmp.cloud_governor
• The user group

to which you want the permission applied.

Procedure
1. Navigate to All > Cloud Admin Portal > Governance > Permission.
2. Fill out the form fields (see table).
Read permissions on cloud accounts

Field

Description

Target type

Select the cloud table in which the target record belongs.

All Entities

Select this option to apply the permission to all records in the table.

Permission

Select the permission type.

Target Entity

Select the record that the permission is based upon.

Group

Select the user group.

3. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

433


<!-- page 434 -->
Policies for Cloud Provisioning
A cloud policy can override a property value set by a user, create an approval task, reserve
an IP address, pre-populate or hide form fields, execute custom scripts, call the Cloud API, or
start or abort subflows. A cloud policy gives you system-wide control over approvals, resource
operations, blueprint operations, or catalog item settings.

Example: A user requests a stack that triggers an approval policy
1. On the Cloud User Portal, a user submits a request to provision a particular blueprint. The
process of provisioning the blueprint is the trigger that causes the policy engine to apply an
approval policy. A cloud approval policy specifies the users who must approve a specified
cloud activity before the activity can proceed.
2. The policy engine determines that the request meets the condition specified in the rule for the
policy. In this example, the condition evaluates to true whenever a particular blueprint is being
provisioned.
3. Because the condition is met, the policy engine performs the action that is also specified in the
rule. In this example, the action is to create an approval action for the manager.
4. While the approver (the manager) reviews the approval request, the user sees a "waiting for
approval" status message on the Cloud User Portal.
5. After the manager approves, the blueprint is provisioned.
User waiting for approval

Note: You cannot invoke flows while adding a resource operation step. This is a known
limitation.

About policy triggers
Triggers are events that set the policy engine in motion. For example, the on Catalog item
request end trigger fires after a user submits a request form. When you think about defining a
policy, you might first consider how the policy will be triggered. Examples:
• A user requests a Stop operation on a virtual server (the on Stack resource
operation trigger fires)
• A resource reaches the end of its lease (the on Lease End trigger fires)
• A user requests a particular stack (the on Blueprint provision trigger fires)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

434


<!-- page 435 -->
You typically refer to a policy by the name of the trigger for the policy. For example, you might
refer to a policy that is triggered by the on Lease end trigger as a "Lease end policy." For more
detail on the types of trigger that you can implement, see Triggers for cloud policies.

How policies work
For each policy, you typically configure a trigger that starts the policy engine. The policy engine
enforces the policy by running all rules that are defined for the policy. A policy rule is a collection
of conditions and actions. If all conditions evaluate to true, the policy engine performs the
actions. If any condition evaluates to false, the policy engine does not perform the actions.
• Some policy types apply only to particular types of cloud operation, like start, stop, provision,
or deprovision, or to a particular target, like ‘on blueprint123 provision operation’ or ‘on catalog
item ABC launch’.
• You can configure a policy that does not specify a target, for example, ‘on any blueprint
provision operation’ or ‘on any catalog item launch’. Errors on policies that apply to any object
are ignored.
• If multiple policies apply, you can specify the order that the policies are applied (with an
exception that is described in a following section).
• Policies can work with dynamic forms to allow you to show or hide form fields from end users.
Users see only information that you decide they need for them to understand and complete
their tasks.

Policy groups
A cloud policy group is a container for related policies. Consider grouping policies that are
often used together or should be considered together. Grouping policies can help you to apply
policies consistently across your organization.

Order of execution when multiple policies apply
Order of execution when multiple "approval" policies apply:
When multiple "approval" policies apply, the policies are applied in the following order.
(The approval policies are on Blueprint provision (approval), on Stack
operation (approval), on Stack resource operation (approval), and on
Task remediation ):
1. Only the first successful approval policy is applied and no other approval policies are applied.
2. If the applied approval policy has multiple rules, only the first successful rule is used.
3. If a rule has multiple actions, only the first successful action is performed.
4. If the applied approval policy includes both a custom approval and a Service Now approval,
only the custom approval process is performed.
Order of execution for all other policy types:
• Policies are applied in the order that is specified by the Order of Execution property setting.
• If multiple policies have the same Order of Execution setting, then order is not guaranteed.

About operations in policies
Triggers are often based on user requests and the operations (start, stop, provision, or deprovision) that can run on a blueprint, a catalog item, a resource, or a stack. Some trigger types
do not specify a cloud operation. For example, the on Lease End trigger fires independently
of any operation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

435


<!-- page 436 -->
About policy rules
A policy rule is a collection of conditions and actions. If all conditions evaluate to true, the policy
engine performs the actions. If any condition evaluates to false, the policy engine does not
perform the actions.
• Conditions: Conditions can consider request form data, resource activity, or user activity.
Examples:
◦ Is the size of the requested CPU greater than 32?
◦ Is this a Stop operation?
◦ Is the lease for this resource ending in the next 7 days?
• Actions: If all conditions evaluate to true, the policy engine runs the actions that the rule
specifies. Expressions in policy actions can set or override values. Examples:
◦ Override the value that the user specified by changing the CPU size to 16 and then start the
approval process. (because the condition was met that the requested CPU is greater than
32).
◦ Create an approval task for the manager. (because the condition was met that a Stop
operation was requested).
◦ Send notifications to every user in the ABC group. (because the condition was met that the
lease ends in 7 days).

Policy action scripts
• Use policy action scripts to get, update, or set values in cloud requests.
• Your instance tracks tagged resources for billing and reporting. Policy action scripts can add
and modify resource tags.
Cloud policy example
A base system cloud policy, Lease End ServiceNow, uses the on Lease end trigger that
fires when a virtual resource is near the lease end date. If the conditions in the policy rule are
met, the policy engine sends a notification to the owner of the resource and performs operations
on the resource.

Before you begin

Role required: sn_cmp.cloud_governor or admin

About this task

In this example, you work with the Lease End ServiceNow policy. The policy performs the
following actions when the conditions in the policy rule are met:
• Send a notification to the owner of a cloud resource when the resource lease is about to
expire.
• Run a Stop operation on the resource.
• Run a Deprovision operation on the resource.
You can change any base-system policy by modifying settings or making the policy active or
inactive.

Note: Scheduled Start/Stop operations are not supported on the Terraform template and
the Google Deployment Manager (GDM) stacks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

436


<!-- page 437 -->
Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Search for and open the Lease End ServiceNow policy.
3. Notice that the trigger is on Lease end, which means that the policy is triggered when the lease
for the resource is near expiration.

4. Sort the Rules related list by Order of Execution.
The rule with the lowest number runs first.

Notice that a notification rule runs first, followed by the Stop and Deprovision operations
on the resource.
5. Click the Notify about upcoming lease end rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

437


<!-- page 438 -->
6. Notice that the rule specifies a condition: If it is one day before the end date, return true.

7. In the Policy Rule Actions related list, click the (empty) Name of the action.
8. On the Update Action pop-up window, enter an Action Name (the value is required), notice the
value of the Notification (you will use it in the next step), and then close the pop-up window.

9. Review the notification message other settings:
a. On the instance (not the Cloud Admin Portal), navigate to System Notification > Email >
Notifications.
b. Search for and open the notification that is specified in the action by entering the filter text
*Upcoming lease end for Name:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

438


<!-- page 439 -->
c. Click Upcoming lease end to open the notification form.
Notice that the Scheduled Operations [sn_cmp_scheduled_operation] table is specified.

Note: You base all notifications for Cloud Provisioning and Governance on this table.

d. On the When to send tab, notice the conditions that apply:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

439


<!-- page 440 -->
Condition

Description

Operation Type is
Notification

Specifies that the Operation Type field on the Scheduled
Operations table must be Notification.

Status

Specifies that the system should trigger the notification
when the status of the scheduled operation record is in
progress, rather than waiting until it is complete.

Notification

Specifies that the Upcoming lease end notification
must be specified.

Note: When you create a custom notification, use the default conditions, but change
the Notification condition to the name of your notification.
e. Click the Who will receive tab.
Notice that the Users/Groups in fields value is set to Target.Assigned to,
Target.Owned by. You should use these settings to send the notification to the owner of
the virtual resource.
10. In the Cloud Admin Portal, open the Lease End ServiceNow policy again, and then open the
Stop on lease end rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

440


<!-- page 441 -->
The rule has two actions — one action to send a notification and the other action to run the
Stop operation on the virtual resource.
11. Click the (empty) Action Name of the action for the Stop operation.

12. On the Update Action pop-up window, notice the settings:

Field

Description

Policy and
Rule Name

The policy and the rule to which this action belongs are specified in these
fields by default.

Action Type

Run An Operation tells the policy engine to trigger a standard operation
(Start, Stop, Deprovision, and so on) on the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

441


<!-- page 442 -->
Field

Description

Blueprint
Operation

The system runs the STOP operation on the resource.

The other rule, Deprovision after lease end, performs the Deprovision operation on the
resource so that it does not stay active after the lease end date.

What to do next

This example uses the settings available through the form configuration. To see example scripts
that you could use in addition, see Create a policy action script.
Triggers for cloud policies
Triggers are events that set the policy engine in motion. For example, the on Catalog item
request end trigger fires after a user submits a request form. When the trigger for a policy
fires, the policy engine tests the conditions specified in the policy rule and performs the actions
specified in the rule, if the conditions are met.

About triggers
• You typically refer to a policy by the name of the trigger for the policy. For example, you might
refer to a policy that is triggered by the on Lease end trigger as a "Lease end policy."
• Triggers are often based on user requests and the operations (start, stop, provision, or deprovision) that can run on a blueprint, a catalog item, a resource, or a stack. Some trigger
types do not specify a cloud operation. For example, the on Lease End trigger fires
independently of any operation.
• To optimize performance, limit the number of policies with general triggers like the on
Catalog item triggers.
• A trigger that does not specify a target (a blueprint, catalog item, stack, or resource) is always
executed. To optimize performance, therefore, minimize the use of such policies.

Important: Blueprints are deprecated. The trigger descriptions following the time-line
schema below, are applicable for creating cloud template based catalogs as well.
Provisioning trigger time-line

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

442


<!-- page 443 -->
Policy triggers
Types of policy trigger and the actions that are available for the associated policy rules
Trigger name and actions

on Blueprint provision
Actions:
• Execute a script
• Property override
• Abort process

Description

The on Blueprint provision trigger fires after execution
of on Catalog item request start policies. A policy
that is triggered by the on Blueprint provision trigger
can run a script, override a user-requested attribute value, or
abort and send a message about the provision operation.
Use this trigger to override a value that the user enters. For
example, when a user chooses a value for an attribute like the
stack name, a policy with this trigger can change the stack name.
In addition, another action can change the name again when the
user finally provisions the resource.
The user does not see the final value on the catalog item form
because the change is made at provision time.
Create an action for an 'on Blueprint provision' policy

Approval triggers
• on Stack operation
(approval): Triggered
during any stack
operation on the Cloud
User Portal.

A cloud approval policy specifies the users who must approve
a specified cloud activity before the activity can proceed.
Approvers can include the manager of the user making a request,
a specified user or group, or users with a specified role. You can
specify multiple approvers. Approvals occur in the order that you
specify. A policy that is triggered by one of the approval triggers
can start approval subflows.

The targeted approval policies complement the base-system
• on Stack resource
approval operations.
operation (approval):
Triggered during any
Note: The approval process is performed after properties
resource operation (start,
are set because property values that were overridden could
stop, provision, and so
change costs.
on) on the Cloud User
Portal.
on Blueprint provision (approval) is applied before
the blueprint is provisioned. Because the provisioning process
• on Task remediation:
can alter request data (and possibly change costs), approval
Triggered when a user
processes run after the blueprint is provisioned.
resubmits a failed
request.
Use on Stack operation (approval) to run an approval
workflow when an operation is performed on a stack. By default,
Actions:
a change request is generated when an operation is performed
on a stack, but it does not require an approval. This trigger can
• ServiceNow Approval
launch a mandatory approval.
• Custom Approval
Use on Stack resource operation (approval) to
run an approval workflow when an operation is performed on
a single resource that is part of a stack. By default, a change
request is generated when an operation is performed on a stack,
but it does not require an approval. This trigger can launch a
mandatory approval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

443


<!-- page 444 -->
Types of policy trigger and the actions that are available for the associated policy rules
(continued)
Trigger name and actions

Description

A policy that is triggered by the on Task Remediation
trigger can start approval subflows.
Create an action for an approval policy
on Catalog item launch
Actions:
• Execute a script
• Property override

The on Catalog item launch trigger fires when an order
form (stack request form) is launched for a catalog item. A policy
that is triggered by the on Catalog item launch trigger
can run a script or override a user-requested value (text values
only).
Use this trigger to control what the user sees in the form when it
first opens in the Cloud User Portal. For example, you can override
a default value that first appears to the user. The user can see this
value on the catalog item form.
When both a policy rule and a form rule overwrite a value, the
value in the form rule is used.
Create an action for an 'on Catalog item launch' policy

on Catalog item request
start
Actions:
• Execute a script
• Execute a workflow

The on Catalog item request start trigger fires after
the user opens a request form.
A policy that is triggered by the on Catalog item request
start or on Catalog item request end trigger can run
a script or execute a subflow.
You can use this trigger to run a custom script or workflow to fulfill
enterprise processes like custom approval before the catalog
item request is processed.​
Create an action for an 'on Catalog item request start/end' policy

on Catalog item request
end
Actions:
• Execute a script
• Execute a workflow

The on Catalog item request end trigger fires after a
user submits a request form.
A policy that is triggered by the on Catalog item request
start or on Catalog item request end trigger can run
a script or execute a subflow.
Use this trigger to launch a workflow after a catalog item request
is processed. Consider this trigger a post-provisioning step. For
example, you could launch a workflow to install MySQL on the
provisioned resource.
Create an action for an 'on Catalog item request start/end' policy

on Lease end
Actions:

A policy that is triggered by the on Lease end trigger can send
a notification or perform a Start, Stop, or Deprovision life
cycle operation.
Create an action for an 'on Lease end' policy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

444


<!-- page 445 -->
Types of policy trigger and the actions that are available for the associated policy rules
(continued)
Trigger name and actions

Description

• Run an Operation
• Send a Notification

on Resource operation
launch
Actions:
• Execute a script
• Property override

The on Resource operation launch trigger fires before
the catalog for a resource operation is loaded from the Cloud
User Portal. A policy that is triggered by the on Resource
operation launch trigger can run a script or can override a
user-requested value (text values only).
When both a policy rule and a form rule overwrite a value, the
value in the form rule is used.
Create an action for an 'on Resource operation launch' policy

on Resource operation
request start
Actions:
• Execute a script
• Execute a workflow

The on Resource operation request start trigger
fires after a user submits a resource operation request (Start,
Stop, Deprovision).
A policy that is triggered by the on Resource operation
request start or on Resource operation request
end trigger can run a script or override a user-requested attribute
value.
Create an action for an 'on Resource operation request start/end'
policy

on Resource operation
request end
Actions:
• Execute a script
• Execute a workflow

The on Resource operation request end trigger fires
before completion of a life cycle operation on a resource (Start,
Stop, Deprovision).
A policy that is triggered by the on Resource operation
request start or on Resource operation request
end trigger can run a script or override a user-requested attribute
value.
Create an action for an 'on Resource operation request start/end'
policy

• Execute a script

The on Resource operation trigger fires during the
Orchestration process when a user performs a Start, Stop,
or Deprovision life cycle operation on a specific resource.
A policy that is triggered by the on Resource operation
trigger can override a user-requested attribute value, run a
script, call a Cloud API, or perform an IP address management
operation.

• Call Cloud API

Create an action for an 'on Resource operation' policy

on Resource operation
Actions:
• Property override

• IP Address Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

445


<!-- page 446 -->
Create a cloud policy
A cloud policy can override a property value set by a user, create an approval task, reserve
an IP address, pre-populate or hide form fields, execute custom scripts, call the Cloud API, or
start or abort subflows. A cloud policy gives you system-wide control over approvals, resource
operations, blueprint operations, or catalog item settings.

Before you begin
• Optional: Create one or more cloud policy groups.
• Role required: sn_cmp.cloud_governor or admin

About this task

This procedure describes every policy type except approval policies (on Blueprint
provision (approval), on Stack operation (approval), on Stack
resource operation (approval), and on Task remediation). See Create a cloud
approval policy for instructions on creating a policy with an approval trigger.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Click New and then fill in the form.
Example policy form

Field

Description

Policy Name

A descriptive name that includes the word Policy. Do
not start the name with a number.

Description

A description of the intent of the policy.

Policy Group

A policy group to which the policy belongs.

Policy Trigger

A trigger that specifies when the policy should be applied.
For example, the on Lease end trigger applies the policy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

446


<!-- page 447 -->
Field

Description

when the lease for a stack ends. See Triggers for cloud
policies.
Resource Block

The resource block that the policy applies to.

[appears when the on

Resource Operation trigger
is selected]
Operation
[appears when the on

Blueprint provision,
on Blueprint provision
(approval) or on
Resource Operation trigger
is selected]

Select the operation that the policy applies to. For
example, a policy can apply to the Deprovision
operation only or to all operations on the blueprint or
catalog item.

Note: If no operation is specified, then the policy
applies for every operation. This condition can
decrease performance.
◦ All: Any operation executes.
◦ Start: The resource starts.
◦ Stop: The resource stops.
◦ Provision: The resource is provisioned.
◦ Deprovision: The resource is no longer available to
users.
◦ Execute Script: A script runs on the resource.

Moment

Specify when the policy should be enforced:

[appears when the on

◦ Pre-operation: Before the specified operation starts.

Resource Operation trigger ◦ Post-operation: After the specified operation finishes.
is selected]

Note: If you are integrating with Infoblox, use Pre-

operation for a vSphere virtual machine. Use Postoperation for AWS and Azure clouds because AWS
and Azure control the allocation of IP addresses.
You can register the IP address that is provided with
Infoblox.
Catalog item

Select the catalog item that the policy applies to.

[appears when an on Catalog
item launch, on Catalog
item request start, or on

Catalog item request
end trigger is selected]
Start Date / End Date

Specify the start date when the policy should be
considered and the end date when the policy should no
longer be considered.

Order of Execution

Specify a number that represents the order in which
the policy is applied. A policy with a lower number runs
before a policy with a higher number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

447


<!-- page 448 -->
Field

Description

For example, a policy with Order of 100 runs before a
policy with an Order of 200.

Note: The Order of Execution property does
not apply for on Blueprint provision
(approval), on Stack operation
(approval), on Stack resource
operation (approval), and on Task
remediation policies. See Create a cloud
approval policy for details.
Status

◦ Published policies are enforced. You cannot edit a
policy in the Published state. To edit a policy that is in
the Published state, click Draft on the form header.
◦ You can edit Draft policies. Draft policies are not
enforced. To enforce a policy, click Publish on the form
header.

3. Right-click in the header and select Save.

What to do next

Configure a cloud policy rule for the policy.
Configure a cloud policy rule
A policy rule is a collection of conditions and actions. If all conditions evaluate to true, the policy
engine performs the actions. If any condition evaluates to false, the policy engine does not
perform the actions.

Before you begin

Optional: Create one or more cloud policy groups.
Role required: sn_cmp.cloud_governor or admin

About this task
• A policy can include multiple rules. You can configure the order that rules are applied.
• Every rule is executed to completion.​
• Any rule error stops execution. Exception: Policies that do not specify an operation.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. On the Rules related list, click New and then enter a descriptive Name for the rule.
◦ The rule name cannot be the same as the policy name.
◦ The rule name should not start with a number.
4. Using the base-system condition builder, specify the Conditions that must be met for the
policy engine to perform the actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

448


<!-- page 449 -->
The following example rule is applied for a blueprint provision approval policy. The condition
evaluates to true if the OS profile field on the request form has the value “Windows”.

Field

Description

[Criteria
type]

Select one of the following options:
◦ Request Form: Base the condition on a property (attribute) value in the
request form in the Cloud User Portal. You specify which property to test. In the
example, the condition tests whether the OS profile field on the request form
has the value “Windows.”
◦ User: Base the condition on a user role or on the group that the user belongs
to.
For example, to create a condition that applies when the user belongs to the
Marketing group, select:
▪ [Criteria Type]: User
▪ [User Entity]: Group
▪ [Relational Operator]: Equals
▪ [Group]: Marketing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

449


<!-- page 450 -->
Field

Description

Note: You use different criteria to build a condition for policies that are
triggered by the on Lease end trigger. See the example that appears
after the table.
[Relational Select an appropriate operator.
Operator]
[Value]

Depending on the selected [Criteria type], enter or select a value.
◦ For Request Form, enter a value for the attribute.
◦ For User > Group, select a group.
◦ For User > Role, select a role.

[Logical
operator]

When defining multiple conditions, select a logical operator OR or AND that
specifies the logical relationship with the next condition.

5. Click Submit.

Example:

For policies that are triggered by the on Lease end trigger, use the base-system date
condition builder to configure the condition to test. In addition to the condition, the following
example shows the actions that the policy engine performs if the condition is met.
Condition and actions for a lease end policy

What to do next

Create the policy actions that should run when all conditions of the rule evaluate to true.
Using expressions in Cloud Provisioning and Governance
Expressions in policy actions can set or override values. Expressions in blueprints can access
attributes of resources and can map values to request form fields. Expressions are available in
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

450


<!-- page 451 -->
resource blocks, blueprints, policies, and anywhere that Cloud Provisioning and Governance
allows scripts.

Using expressions
Expressions can hold the values for information that is dynamically generated in the system,
such as the values for the selections users make on the Cloud User Portal. Expressions are
available in resource blocks, blueprints, policies, and anywhere that Cloud Provisioning and
Governance allows scripts.
Using expressions in resource blocks
Each resource block operation uses an expression to hold a value for each
parameter. The expression can use hard-coded values, data from the stack that the
user provisions in the Cloud User Portal, data in the CMDB, and data that is derived
from scripts. By default, Cloud Provisioning and Governance generates a set of
parameters and their expressions for each resource block operation.
For example, the parameter Location, which holds the datacenter that a resource
belongs to, uses the expression ${parameter.Location}
Expressions in a resource block

Using expressions in blueprints
Blueprints can use expressions to map input parameters for each operation on a
resource block. By default, the blueprint displays the same parameters and values
that are specified in the resource block.
You can access blueprint attributes with expressions. The expression in the
Mapping column defines blueprint attributes for each operation in a step. For
example, the Location attribute, which appears on the stack request form, is
accessible through the {$parameter.Location} expression. The Location
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

451


<!-- page 452 -->
parameter with the ${parameter.Location} value appears on the Inputs tab
when you select a blueprint operation.
Expressions in a blueprint

Using expressions in policy actions
Policy actions can use expressions to override parameter values that users submit
in a request form on the Cloud User Portal. You can also access and override user
data in stack operations. For example, use the following expression to rename a
stack: formData.Stackname = "your-naming-convention";.
Expressions in a policy script

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

452


<!-- page 453 -->
You can access blueprint attributes with expressions. The expression in the Mapping column
defines blueprint attributes for each operation in a step. For example, the Location attribute,
which appears on the request form for a virtual machine, is accessed in the following expression:
{$parameter.Location}.

Expression types
Definitional expressions
Definitional expressions are a form of early binding (or static binding). These
bindings refer to compile-time binding and are evaluated when the user
submits the stack request form (when stack or resource provisioning starts).
Definitional expressions do not have access to the data that is generated during
Orchestration. Definitional expressions are enclosed in curly braces. For example:
${parameter.CloudAccount}
Runtime expressions
Runtime expressions are a form of late binding (or dynamic binding). These
bindings refer to runtime binding and have access to the data that is created during
Orchestration (for example, stack items). Runtime expressions are evaluated when
called during an Orchestration run. Runtime expressions are typically used for dotwalking to data in tables. Runtime expressions are enclosed in parentheses. For
example: $(Stack.items[VM1].attributes[node_id])
Definitional/Runtime expressions
Some expressions include both definitional and runtime expressions.
Complex expressions
You can nest expressions of any type within other expressions.

Definition expression syntax and examples
Allowable syntax uses a dollar sign and curly braces. These types are available:
• ${parameter.}. Use this kind of expression to retrieve values from input attributes of
processes like blueprint provisions. Data is not fetched from tables.
• ${Stack.items[]}. Use this syntax to access attributes of specific items in a stack.
• ${randomNumber}. Use this syntax to generate a random number. For example, you can
provision a VM with a random node name or stack name.
Definition expression examples
Example

Description

${parameter.BillingCode}

This expression shows how a billing code
parameter appears in a blueprint.

${parameter.formData.CatalogAttributeType} This expression takes a catalog attribute that is
submitted by a user while the user fills out the
form for a catalog item in the Cloud User Portal.
${parameter.userData.userId}

This expression takes the ID of a user while the
user fills out the form for a catalog item in the
Cloud User Portal.

${Stack.items[Virtual
Server].attributes[sys_id]}

This expression gets the sys_id of a virtual server
that is apart of a stack. Virtual Server is the alias
of a resource block used in the stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

453


<!-- page 454 -->
Runtime expression syntax and examples
Allowable syntax uses a dollar sign and parenthesis. These types are available:
• $(ci.tablename) where tablename is a table in the system, usually a CI table in the
CMDB. Use this syntax to access values of fields in the table.
• $(Stack.items[]). Use this syntax to access attributes of specific items in a stack.
Runtime expression examples
Example

Description

$(ci.cmdb_ci_cloud_subnet[ sys_id=12231231231231231231].cidr)

This
expression
dot walks to
the Cloud
Subnet
table, finds
the specific
record with
the given
sys_id, and
takes the
value from
the cidr
column.

$(ci.sn_cmp _ip_pool[subnet=${parameter.formData.Subnet Id}])

This
expression
combines
runtime and
definition
type
expressions.
The equal
sign = is
used to
evaluate a
value for a
match. The
expression
dot-walks to
the IP Pool
table and
looks for
the subnet
that has the
subnet ID
that the user
submitted.

$(ci.cmdb_ci_cloud_subnet[${parameter.formData.SubnetId}].cidr) This
expression
combines
runtime and
definition
type
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

454


<!-- page 455 -->
Runtime expression examples (continued)
Example

Description

expressions.
The
expression
takes the
value of
the cidr
field from
a subnet
that the
user chose
during
provisioning.
The square
brackets
[] indicate
that the
expression
dot-walks to
the Cloud
Subnet table
and then
looks at
the subnet
value that
the user
submitted
on a
blueprint
provision.
The
expression
grabs the
cidr field
value and
then walks
to the value
in the cidr
field of the
sys_id of the
subnet.
$(Stack.items[Virtual Server].attributes[sys_id])

As in the
definition
expression
example,
this
expression
takes the
sys_id of
a virtual
server that
is apart of a
stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

455


<!-- page 456 -->
Example expression
$(ci.cmdb_ci_nic[$(Script:CMPVMNICs.getNICs[arg=
$(Stack.items[Virtual Server].attributes[sys_id])])].private_ip)
• $(ci: Runtime expression to retrieve data from table.
• cmdb_ci_nic: CI for NIC (Network Interface Card).
• $(Script: Script-based expression.
• CMPVMNICs: Script include.
• getNICs: Function inside a script include.
• arg: Arguments to script include function. Arguments are separated by "," when there are
multiple attributes.
• $(Stack.items: Runtime stack expression to retrieve stack item from a stack. Argument is
the alias specified in blueprint.
• Virtual Server: Alias of resource used in blueprint.
• $(Stack.items[Virtual Server].attributes[sys_id]): Retrieve sys_id of
stack item ("Virtual Server") resource instance in a stack.
• private_ip: Attribute from cmdb_ci_nic. Replace with public IP if required.

Expressions

Simple parameter mapping expression
This type of expression retrieves values from input attributes of processes, such as blueprint
operations, resource blocks, and policies. Data is not fetched from tables. Maps values from
one layer to another, such as from a Blueprint to a Resource to the Cloud API.
• Type: definitional
• Syntax: ${parameter.}
• Examples:
◦ ${parameter.BillingCode} returns the billing code.
◦ ${parameter.formData.CatalogAttributeType} takes a catalog attribute that
is submitted on the request form in the Cloud User Portal.
◦ ${parameter.userData.userId} takes the ID of a user working on the request
form in the Cloud User Portal.

Stack item expression
A CI instance in the CMDB represents each stack item. Use Stack Item expressions to look up
first-level properties on the CI that back the stack item or on the stack item itself.
• Type: definitional/runtime
• Syntax: ${Stack.items[]} or $(Stack.items[])
• Examples:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

456


<!-- page 457 -->
${Stack.items[VirtualServer1].attributes[sys_id]} is a definitional type
expression that gets the sys_id of a virtual server in a stack. VirtualServer1 is the alias
of a resource block that is used in the stack.
$(Stack.items[VirtualServer2].attributes[sys_id]) is a runtime type
expression that takes the sys_id of a virtual server that is a part of a stack.
${Stack.items[vm1].attributes[node_id]} reads the node_id attribute of
the CI that was created for the VM. vm1 is the stack item name (or the alias of the resource in
the blueprint).
$(Stack.items[vm1].status) reads the status of the stack item.

Property override expressions in policies
In policies, you can override properties by pulling a value from the system or by using a random
number. You can use data from both the forms in the Cloud User Portal and from the user who
performed the operation on the form.
• Type: definitional/runtime
• Syntax: ${parameter.formData.xyz} or ${this.parameter.userData.xyz}
• Examples:
The following value can set the stack name to Stack_Bob.Smith@company.com:
Stack_${parameter.userData.userId}
Set stack or table values using runtime expressions by taking the subnet from the IP Pools
table:
$(ci.sn_cmp _ip_pool[subnet=${parameter.formData.Subnet Id}])
In scripts, you can assign values as follows:
formData.App_Server_NodeName = "MyNodeName";
this.parameter.userData.userId == 'servicenowuserId';
• See also Create a policy action script.

Script expression
In the example, VMProperties is a script include with a function called getIP. A script
expression is also an example of a complex expression (the expression is nested).
• Type: runtime
• Syntax: $(Script:scriptName.function[])
• Examples:
$(Script:VMPropertiesUtil.getIP[ arg=
$(Stack.items[VM1].attributes[object_id])])
Expression for Private
IP:$(ci.cmdb_ci_nic[$(Script:CMPVMNICs.getNICs[arg=
$(Stack.items[Virtual
Server].attributes[sys_id])])].private_ip)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

457


<!-- page 458 -->
Expression for Public IP:
$(ci.cmdb_ci_nic[$(Script:CMPVMNICs.getNICs[arg=
$(Stack.items[Virtual Server].attributes[sys_id])])].public_ip)
Expression to get the credential alias:
$(Script:CMPVMUtils.getCredentialAlias[arg=
${Stack.items[Virtual Server].attributes[sys_id]}])
Expression to get the IP address: $(Script:CMPVMUtils.getReachableIp[arg=
$(Stack.items[Virtual Server].attributes[sys_id])])

CI lookup expression
Accesses values of fields in a table, usually a CI table in the CMDB.
• Type: definitional/runtime
• Syntax: $(ci.tableName)
• Examples:
$(ci.sn_cmp _ip_pool[subnet=${parameter.formData.Subnet Id}])
combines runtime and definition type expressions. The = operator evaluates a value for a
match. The expression dot-walks to the IP Pool table and looks for the subnet that has the
subnet ID that the user submitted.
$(ci.cmdb_ci_cloud_subnet[${parameter.formData.SubnetId}].cidr)
takes the value of the cidr field from a subnet that the user specified during provisioning.
The expression dot-walks to the Cloud Subnet table, looks at the subnet value that the user
submitted on a blueprint provision, extracts the cidr field value, and then walks to the value
in the cidr field of the sys_id of the subnet.

Random number expression
Generates a random number. For example, you can provision a VM with a random node name
or stack name.
• Type: runtime
• Syntax and example: ${randomNumber}

Scratchpad expression/Resource operation output attribute
expression
Reads output attributes from one operation into another operation.
• Type: runtime
• Syntax: varies
• Example: To set/expose outputs from one operation:
${Compute Interface.CreateNode.Output.resp.nodeId}
To read the output attributes (where VM1.Provision is the operation whose output
attributes are read):
$(Outputs[VM1.Provision].NodeId)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

458


<!-- page 459 -->
Conditions in expressions
You can use conditional expressions in blueprint steps and resource operation steps to
conditionally execute or skip the step. The conditional expressions are Javascript expressions
and they support expression substitutions.
• Type: definitional/runtime
• Syntax: varies
• Examples:
‘${parameter.CloudAccount}’==’Amazon Cloud Account’
‘$(Stack.items[vm1].attributes[node_id]) ’== ’VM1’

Complex expression
You can nest expressions. In the example, ${parameter.ServerID} maps the sys_id of
the CI and is replaced before the outer expression is consumed.
• Type: any
• Syntax: varies
• Example: $(ci.cmdb_ci_vm_instance[${parameter.ServerID}].name)

Order context
This expression is useful for life cycle operations and enables you to dot-walk on the order
attributes as part of the sn_cmp_order table.
• Type: runtime
• Syntax: $(context.order.column_name)
• Examples:
◦ Request Item: $(context.order.sc_req_item)
◦ Dot-walk on request item object: $(context.order.sc_req_item.number)
◦ Mixed Expression (Constant + Expression): "ram
$(context.order.sc_req_item.number)"
Create an action for an 'on Blueprint provision' policy
The on Blueprint provision trigger fires after execution of on Catalog item
request start policies. A policy that is triggered by the on Blueprint provision
trigger can run a script, override a user-requested attribute value, or abort and send a message
about the provision operation.

Before you begin

Optional: Create one or more cloud policy groups.
Configure a cloud policy rule
Role required: sn_cmp.cloud_governor or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

459


<!-- page 460 -->
Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

Settings for the 'Property Override' action
Field

Description

Property Specify the name of the property (attribute) on the user request form to override.
Value

Enter a value that overrides the value in the Property field. You can override
text values only. You can specify a static value, an expression, or both. The
example action, named SetTheCostCenter, specifies the value Marketing for the
CostCenter property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

460


<!-- page 461 -->
Field

Description

Configure a Property Override action

Note:
When both a policy rule and a form rule overwrite a value, the value in the
form rule is used.
Expressions can perform the following actions (see Using expressions in Cloud
Provisioning and Governance for details):
◦ Set form data values using definition expressions. For example:
${parameter.formData.CatalogAttributeType}
◦ Assign user data values using definition expressions. For example:
${parameter.userData.userId}
For example, the following value can set the stack
name to Stack_Bob.Smith@company.com: Stack_
${parameter.userData.userId}
◦ Set stack or table values using runtime expressions.
For example: $(ci.sn_cmp_ip_pool[subnet=
${parameter.formData.Subnet Id}]) takes the subnet from the IP
Pools table.
◦ Associate a random number with a field using static expressions. Use:
${randomNumber}
Is Script Select the check box to display the Script text box and then specify the script.
Based
You can use the following example script snippet to override a stack name. The
function( formData) section of the script modifies the values for fields on
the form. MyStack is the stack name in this example.
customScript : function( formData){
// Manipulation of form parameter is
only supported here.
// Change in any other attributes will
be ignored
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

461


<!-- page 462 -->
Field

Description

// data available for manipulation are
// Form Data - Ex. StackName can be
accessed
// through formData.StackName
// formData.StackName = "MyStack";
// User Data - Ex. User Id can be
accessed
// through this.parameters.userData
// if(this.parameter.userData.userId ==
'servicenowuserId')
formData.StackName = "MyStack";
return formData;
},

Setting for the 'Abort Process' action
Field

Description

Message

Enter the message to present to the requester when the process aborts.

Create an action for an approval policy
A policy that is triggered by one of the approval triggers can start approval subflows. The
approval triggers are ( on Blueprint provision (approval), on Stack
operation (approval), on Stack resource operation (approval), and on
Task remediation .

Before you begin

Optional: Create one or more cloud policy groups.
Configure a cloud policy rule and associated conditions.
Role required: sn_cmp.cloud_governor or admin

About this task

When multiple "approval" policies apply, the policies are applied in the following order.
(The approval policies are on Blueprint provision (approval), on Stack
operation (approval), on Stack resource operation (approval), and on
Task remediation ):
1. Only the first successful approval policy is applied and no other approval policies are applied.
2. If the applied approval policy has multiple rules, only the first successful rule is used.
3. If a rule has multiple actions, only the first successful action is performed.
4. If the applied approval policy includes both a custom approval and a Service Now approval,
only the custom approval process is performed.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

462


<!-- page 463 -->
5. Select any of the following actions.
◦ Custom Approval runs the subflow that you specify. The subflow should return a value of
approved to complete the operation. Follow Service Now Approval for use case.
◦ Service Now Approval supports differing approvers based on the trigger for the policy:
Trigger

Subflow

Available approvers

on Blueprint provision
(approval)

Cloud Approval Subflow

▪ Manager Approval
▪ Assignment Group
▪ User (lock)

on Stack operation (approval)

Cloud Operation Change
Request Subflow

Assignment Group

on Stack resource operation
(approval)

Cloud Operation Change
Request Subflow

Assignment Group

6. On the Approval form, specify a unique and meaningful Action Name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

463


<!-- page 464 -->
Action in the rule

7. If you select Custom Approval, specify the subflow and then click Submit and if you select
ServiceNow Approval, specify who should approve the cloud activity.
Approval fields
Field

Description

Manager
Approval

One or all of the following:
◦ Select the Manager Approval check box to require the manager of the
approver to also approve the request. The default approval subflow goes to
the manager first, then to the group, and finally to the user.
◦ Select a user group from the Assignment Group list.
◦ Unlock the User lock, select a user from the list, then close the lock.

Assignment Select the assignment group that can approve the request. Any user in the
group
group can approve the action using the default subflow. The approval then
goes to the users in the User field.

Note: Users in an assignment group that do not have the itil role still
receive an approval record and notification by default, but they cannot
perform the approval. Assign the itil role to any users or user groups that
must make operational and provisioning approvals.
User

Select one or more users to whom the approval action applies. All selected
users must approve the action using the default subflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

464


<!-- page 465 -->
Create an action for an 'on Catalog item launch' policy
The on Catalog item launch trigger fires when an order form (stack request form) is
launched for a catalog item. A policy that is triggered by the on Catalog item launch
trigger can run a script or override a user-requested value (text values only).

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

Settings for the 'Property Override' action
Field

Description

Property Specify the name of the property (attribute) on the user request form to override.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

465


<!-- page 466 -->
Field

Value

Description

Enter a value that overrides the value in the Property field. You can override
text values only. You can specify a static value, an expression, or both. The
example action, named SetTheCostCenter, specifies the value Marketing for the
CostCenter property.
Configure a Property Override action

Note:
When both a policy rule and a form rule overwrite a value, the value in the
form rule is used.
Expressions can perform the following actions (see Using expressions in Cloud
Provisioning and Governance for details):
◦ Set form data values using definition expressions. For example:
${parameter.formData.CatalogAttributeType}
◦ Assign user data values using definition expressions. For example:
${parameter.userData.userId}
For example, the following value can set the stack
name to Stack_Bob.Smith@company.com: Stack_
${parameter.userData.userId}
◦ Set stack or table values using runtime expressions.
For example: $(ci.sn_cmp_ip_pool[subnet=
${parameter.formData.Subnet Id}]) takes the subnet from the IP
Pools table.
◦ Associate a random number with a field using static expressions. Use:
${randomNumber}
Is Script Select the check box to display the Script text box and then specify the script.
Based
You can use the following example script snippet to override a stack name. The
function( formData) section of the script modifies the values for fields on
the form. MyStack is the stack name in this example.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

466


<!-- page 467 -->
Field

Description

customScript : function( formData){
// Manipulation of form parameter is
only supported here.
// Change in any other attributes will
be ignored
// data available for manipulation are
// Form Data - Ex. StackName can be
accessed
// through formData.StackName
// formData.StackName = "MyStack";
// User Data - Ex. User Id can be
accessed
// through this.parameters.userData
// if(this.parameter.userData.userId ==
'servicenowuserId')
formData.StackName = "MyStack";
return formData;
},
Create an action for an 'on Catalog item request start/end' policy
The on Catalog item request start trigger fires after the user opens a request form.
The on Catalog item request end trigger fires after a user submits a request form.
A policy that is triggered by the on Catalog item request start or on Catalog
item request end trigger can run a script or execute a subflow.

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

467


<!-- page 468 -->
Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

Configuring an 'Execute a Subflow' action to run the base-system 'Change
Request' subflow

Settings for the 'Execute a Subflow' action
Field

Description

Action Name

Specify a unique and meaningful name for
the action that starts the subflow.

Subflow

Select the subflow to execute.

Create an action for an 'on Lease end' policy
A policy that is triggered by the on Lease end trigger can send a notification or perform a
Start, Stop, or Deprovision life cycle operation.

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

468


<!-- page 469 -->
Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

Settings for the 'Run an Operation' action
Field

Description

Blueprint Operation

Specify Start, Stop, or Deprovision.

Settings for the 'Send a Notification' action
Field

Description

Notification

Select the text for the notification:
◦ Lease End Date Reached
◦ Stack Decommissioned (Lease End)
◦ Upcoming Lease End

Create an action for an 'on Resource operation' policy
The on Resource operation trigger fires during the Orchestration process when a user
performs a Start, Stop, or Deprovision life cycle operation on a specific resource. A policy
that is triggered by the on Resource operation trigger can override a user-requested
attribute value, run a script, call a Cloud API, or perform an IP address management operation.

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

469


<!-- page 470 -->
Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

Settings for the 'Property Override' action
Field

Description

Property Specify the name of the property (attribute) on the user request form to override.
Value

Enter a value that overrides the value in the Property field. You can override
text values only. You can specify a static value, an expression, or both. The
example action, named SetTheCostCenter, specifies the value Marketing for the
CostCenter property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

470


<!-- page 471 -->
Field

Description

Configure a Property Override action

Note:
When both a policy rule and a form rule overwrite a value, the value in the
form rule is used.
Expressions can perform the following actions (see Using expressions in Cloud
Provisioning and Governance for details):
◦ Set form data values using definition expressions. For example:
${parameter.formData.CatalogAttributeType}
◦ Assign user data values using definition expressions. For example:
${parameter.userData.userId}
For example, the following value can set the stack
name to Stack_Bob.Smith@company.com: Stack_
${parameter.userData.userId}
◦ Set stack or table values using runtime expressions.
For example: $(ci.sn_cmp_ip_pool[subnet=
${parameter.formData.Subnet Id}]) takes the subnet from the IP
Pools table.
◦ Associate a random number with a field using static expressions. Use:
${randomNumber}
Is Script Select the check box to display the Script text box and then specify the script.
Based
You can use the following example script snippet to override a stack name. The
function( formData) section of the script modifies the values for fields on
the form. MyStack is the stack name in this example.
customScript : function( formData){
// Manipulation of form parameter is
only supported here.
// Change in any other attributes will
be ignored
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

471


<!-- page 472 -->
Field

Description

// data available for manipulation are
// Form Data - Ex. StackName can be
accessed
// through formData.StackName
// formData.StackName = "MyStack";
// User Data - Ex. User Id can be
accessed
// through this.parameters.userData
// if(this.parameter.userData.userId ==
'servicenowuserId')
formData.StackName = "MyStack";
return formData;
},

Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

If you select the Call Cloud API action type and save the record, the Policy Rule Action
Attributes related list is populated with the attributes to pass to the provider. If you are
integrating with Infoblox, you must configure the DNSSuffix field. When you create a host,
for example, the value in the DNSSuffix field appears in Infoblox for the newly created virtual
machine.
Settings for the 'Call Cloud API' action
Field

Description

Action
Name

Enter a descriptive name for the action. In subsequent policy actions for the
same policy, you can reference this name in a Value field. It refers to the JSON
payload that is received from the cloud provider after an API call. For example,
to reference an allocated IP address that was returned by the action that is
named RefAction, you can use the following expression in the Value field of
another policy action: $(parameter.RefAction.Allocated_IP}.

Provider

Enter the cloud provider from the API library.

Version

Enter the version from the API library.

Interface

Select a CAPI interface. For Infoblox, select IPAM interface.

Operation

Select a CAPI interface operation to perform. For Infoblox, select
CreateHostRecord or DeleteHostRecord.

Credentials Enter the sys_ID of the necessary credentials.
You can also use an expression like:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

472


<!-- page 473 -->
Field

Description

$(ci.sn_cmp_infoblox_server[$(ci.sn_cmp_ip_pool[subn
et=${parameter.formData.SubnetId}].provider_instance
)].infoblox_server_credential)
Endpoint
URL

Enter the endpoint URL of the connector from the API library. For Infoblox, it is
the IP address of the Infoblox server.

Settings for the 'IP Address Management' action
Field

Description

IPAM Method Name

Select the IPAM Method Name. For Infoblox,
select one of the following options:
◦ Release IP Address: Release an IP
address from Infoblox when a machine is
deprovisioned.
◦ Register IP Address: Register a new virtual
machine to Infoblox. This option is used by
AWS and Azure clouds.
◦ Reserve IP Address: Reserve a new IP
address. This option is used by a vSphere
cloud.
See Register IP addresses for AWS and
Azure virtual machines in Infoblox, Reserve
IP addresses for VMware vSphere virtual
machines in InfoBlox, and IPAM integration.

Create an action for an 'on Resource operation launch' policy
The on Resource operation launch trigger fires before the catalog for a resource
operation is loaded from the Cloud User Portal. A policy that is triggered by the on Resource
operation launch trigger can run a script or can override a user-requested value (text
values only).

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

473


<!-- page 474 -->
Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

Settings for the 'Property Override' action
Field

Description

Property Specify the name of the property (attribute) on the user request form to override.
Value

Enter a value that overrides the value in the Property field. You can override
text values only. You can specify a static value, an expression, or both. The
example action, named SetTheCostCenter, specifies the value Marketing for the
CostCenter property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

474


<!-- page 475 -->
Field

Description

Configure a Property Override action

Note:
When both a policy rule and a form rule overwrite a value, the value in the
form rule is used.
Expressions can perform the following actions (see Using expressions in Cloud
Provisioning and Governance for details):
◦ Set form data values using definition expressions. For example:
${parameter.formData.CatalogAttributeType}
◦ Assign user data values using definition expressions. For example:
${parameter.userData.userId}
For example, the following value can set the stack
name to Stack_Bob.Smith@company.com: Stack_
${parameter.userData.userId}
◦ Set stack or table values using runtime expressions.
For example: $(ci.sn_cmp_ip_pool[subnet=
${parameter.formData.Subnet Id}]) takes the subnet from the IP
Pools table.
◦ Associate a random number with a field using static expressions. Use:
${randomNumber}
Is Script Select the check box to display the Script text box and then specify the script.
Based
You can use the following example script snippet to override a stack name. The
function( formData) section of the script modifies the values for fields on
the form. MyStack is the stack name in this example.
customScript : function( formData){
// Manipulation of form parameter is
only supported here.
// Change in any other attributes will
be ignored
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

475


<!-- page 476 -->
Field

Description

// data available for manipulation are
// Form Data - Ex. StackName can be
accessed
// through formData.StackName
// formData.StackName = "MyStack";
// User Data - Ex. User Id can be
accessed
// through this.parameters.userData
// if(this.parameter.userData.userId ==
'servicenowuserId')
formData.StackName = "MyStack";
return formData;
},
Create an action for an 'on Resource operation request start/end' policy
A policy that is triggered by the on Resource operation request start or on
Resource operation request end trigger can run a script or override a user-requested
attribute value.

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

About this task
• The on Resource operation request start trigger fires after a user submits a
resource operation request (Start, Stop, Deprovision).
• The on Resource operation request end trigger fires before completion of a life
cycle operation on a resource (Start, Stop, Deprovision).

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform, enter a unique and meaningful
Action Name, and then fill in the form for the action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

476


<!-- page 477 -->
Settings for the 'Execute a Script' action
Field

Description

Action Script Category

Select a category.

Action Script Name

Specify a unique and meaningful name for the script.

Action Script

Create the script in the text box.
See Create a policy action script for details.

Settings for the 'Execute a Subflow' action
Field

Description

Action Name

Specify a unique and meaningful name for
the action that starts the subflow.

Subflow

Select the subflow to execute.

Configuring an 'Execute a Subflow' action to run the base-system 'Change
Request' subflow

Create an action for an 'on Resource Limit exceeded' policy
Set the on Resource limits exceeded policy to automatically run approval subflows
or send notifications when an order form is submitted for a template-based catalog item that
exceeds the defined resource limit or quota values.

Before you begin

You must have configured the following items:
• One or more cloud policy groups
• Cloud policy
• Approval policy
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

477


<!-- page 478 -->
• Email notification
• Create a subflow in Workflow Studio
Role required: sn_cmp.cloud_governor or cloud_admin

About this task
The On resource limit exceeded base system policy action has a default ServiceNow
approval policy rule configured by default. If you want to trigger other actions such as
notifications or a custom approval subflow when the resource limit is exceeded, you can either
modify the base system policy action or create a custom policy for your instance.

Procedure
1. Modify or create a cloud policy action to use the on Resource limit exceeded trigger.
a. In the Cloud Admin Portal, navigate to Govern > Policies.
b. Modify a base system policy or create a new policy record.
◦ a. Open the base system Resource Order Control policy.
b. Modify the policy name, start, and end dates and order of execution.
c. Modify the policy rules conditions.
◦ Click New to create a new policy record.
For more information, see Create a cloud policy.
2. In the Rules related list, modify the base system rule or create a new rule.
◦ Open the base system approveresourcelimit rule that should perform the action and
customize it.
◦ Create a policy rule.
For more information, see Configure a cloud policy rule.
3. Specify a policy action.
a. In the Policy Rule Actions related list, click New.
b. Click Create next to the action you want to occur when the quota is exceeded.
Option

Steps

a. Enter a unique name for the action in the
Action Name field.
ServiceNow Approval

b. Select the Manager Approval option to au­
tomatically send the request for manager's
approval.
c. Select the Assignment group to which this
action applies.

Custom Approval

a. Enter a unique name for the action in the
Action Name field.
b. Select an existing custom workflow in the
Subflow field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

478


<!-- page 479 -->
Option

Steps

a. Enter a unique name for the action in the
Action Name field.
Send aNotification

b. Select a notification template in the Notifi­
cation field.
The base system notification email for the
'on Resource Limit exceeded' policy action
appears in the lookup table if you're using
the base system policy.

4. Click Submit.
Create an action for an 'on Task Remediation' policy
The on Task remediation trigger fires when a user resubmits a failed request. A policy that
is triggered by the on Task Remediation trigger can start approval subflows.

Before you begin
• Role required: sn_cmp.cloud_governor or admin
• Optional: Create one or more cloud policy groups.
• Configure a cloud policy rule and associated conditions.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and set the policy to the Draft state if needed.
3. Open the rule that should perform the action and then click New on the Policy Rule Actions
related list.
4. On the popup, click Create for the type of action to perform.

5. Select one of the following options.
◦ Custom Approval runs the subflow that you specify. The subflow should return a value of
approved to complete the operation.
◦ Service Now Approval supports differing approvers based on the trigger for the policy:
▪ Manager Approval
▪ Assignment Group
▪ User (lock)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

479


<!-- page 480 -->
6. On the Approval form, specify a unique and meaningful Action Name.
Action in the rule

7. If you select Custom Approval, specify the subflow and then click Submit and if you select
ServiceNow Approval, specify who should approve the cloud activity.
Approval fields
Field

Description

Manager
Approval

One or all of the following:
◦ Select the Manager Approval check box to require the manager of the
approver to also approve the request. The default approval subflow goes to
the manager first, then to the group, and finally to the user.
◦ Select a user group from the Assignment Group list.
◦ Unlock the User lock, select a user from the list, then close the lock.

Assignment Select the assignment group that can approve the request. Any user in the
group
group can approve the action using the default subflow. The approval then
goes to the users in the User field.

Note: Users in an assignment group that do not have the itil role still
receive an approval record and notification by default, but they cannot
perform the approval. Assign the itil role to any users or user groups that
must make operational and provisioning approvals.
User

Select one or more users to whom the approval action applies. All selected
users must approve the action using the default subflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

480


<!-- page 481 -->
Create a policy action script
Use policy action scripts to get, update, or set values in cloud requests.

Before you begin

Role required: sn_cmp.cloud_governor or admin.

About this task

For more information on using scripts, see Cloud scripts and cloud script templates.

Procedure
1. On the Cloud Admin Portal, navigate to Govern > Policies.
2. On the Policy Action Scripts tab, click New, enter a unique and descriptive Name and
Description, fill in the form, and then click Submit.
After you enter a name, a script appears with a variable that uses the name that you entered.

Field

Description

Action Script
Category

Choose another category or keep the one you created in an earlier step.

Script

Modify the customScripts function in the script. This is the only part of
the script that you need to modify.

Example:

The following example script determines whether the user belongs to a user group and then
overrides the user-specified application server node name value with the value MyNodeName.

customScript : function(formData){
var groups = this.parameters.userData.groups;
if( groups.length > 0){
formData.App_Server_NodeName = "MyNodeName";
}
return formData;
},
This example returns a random number:

customScript : function(formData){
var min = 10000;
var max = 99999;
var num = Math.floor(Math.random() * (max - min + 1)) + min;
formData.randomNumber = num + "";
return formData;
},
This example script adds three hours to the lease date using the base-system GlideDateTime
class.

var SetLeaseShort = Class.create();
SetLeaseShort.prototype =
Object.extendsObject(sn_cmp.PolicyExecutionBase, {
customScript : function(formData){
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

481


<!-- page 482 -->
// Manipulation of form parameters are supported. Changes in
any other attributes
// will be ignored.
// The data available for manipulation is as follows:
// Form Data - for example: StackName can be accessed through
formData.StackName
// formData.StackName = "MyStack";
// User Data - for example: User Id can be accessed through
this.parameters.userData
// if(this.parameter.userData.userId == 'servicenowuserId')
// this.info("id = " + formData.StackName);
// var leaseValue = now();
// leaseValue = leaseValue.setHours(leaseValue.getHours()+4);
// formData.LeaseEndDate = leaseValue;
if (formData.hasOwnProperty("LeaseEndDate")) {
gdt = new GlideDateTime();
// 10800 = 3 hours
gdt.addSeconds(10800);
formData.LeaseEndDate = gdt.getDisplayValue();
}
return formData;
},
execute: function() {
if(this.parameters != null && this.parameters.formData !=
null){
var inputData =
JSON.parse(JSON.stringify(this.parameters.formData));
var outputFormData = this.customScript(inputData);
if( outputFormData != null){
this.parameters.formData = outputFormData;
}
}
var output = {};
output.answer = this.parameters;
return JSON.stringify(output);
},
type : 'SetLeaseShort'
});
var SetLeaseShortObj = new SetLeaseShort(inputAttributes);
var outputParams = SetLeaseShortObj.execute();
gs.info( "Output of script is = " + outputParams);
This example script sets the user-specified Azure Wordpress DNS name field from the form to
the same name as the stack name:
var WordpressFill = Class.create();
WordpressFill.prototype =
Object.extendsObject(sn_cmp.PolicyExecutionBase, {
customScript : function(formData){
// Manipulation of form parameters are supported. Changes in
any other attributes
// will be ignored.
// The data available for manipulation is as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

482


<!-- page 483 -->
// Form Data - for example: StackName can be accessed through
formData.StackName
// formData.StackName = "MyStack";
// User Data - for example: User Id can be accessed through
this.parameters.userData
// if(this.parameter.userData.userId == 'servicenowuserId')
//this.info("id = " + formData.StackName);
formData.Azure_Wordpress_v6_vmDnsName = formData.StackName;
return formData;
},
execute: function() {
if(this.parameters != null && this.parameters.formData !=
null){
var inputData =
JSON.parse(JSON.stringify(this.parameters.formData));
var outputFormData = this.customScript(inputData);
if( outputFormData != null){
this.parameters.formData = outputFormData;
}
}
var output = {};
output.answer = this.parameters;
return JSON.stringify(output);
},
type : 'WordpressFill'
});
var WordpressFillObj = new WordpressFill(inputAttributes);
var outputParams = WordpressFillObj.execute();
gs.info( "Output of script is = " + outputParams);
Related topics
Example policy action script that tags resources
Example policy action script that tags resources
Your instance tracks tagged resources for billing and reporting. Policy action scripts can add and
modify resource tags. This example tags a storage volume resource.

Before you begin

Role required: sn_cmp.cloud_governor or admin

About this task

See Create a custom tag for cloud resources for information about how to create and use tags in
Cloud Provisioning and Governance.

Procedure
1. On the Cloud Admin Portal, navigate to Govern > Policies.
2. On the Policy Action Scripts tab, click New and then enter a unique and descriptive Name.
3. Click the lookup icon for Action Script Category, click New to create a new category, and then
click Submit.
4. On the Policy Rule Action Script page, enter the script for the resource you want to tag.
5. Click Submit to save the script.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

483


<!-- page 484 -->
The script appears in the list.
6. On the Policies tab, click New, enter a unique and descriptive Name for the policy, fill in the
form with the following example settings, and then click Save.

Policy Trigger

on Resource operation

Resource Block

Storage Volume

Operation

Storage Volume Interface.Provision

Moment

Pre Operation

7. On the Rules related list, click New, enter Add Custom Tags for Storage for the Name, accept
the default settings, and then click Submit.
8. On the Policy Rule Actions related list, click New.
9. At Execute a Script, click Create, fill in the form with the following example settings, and then
click Submit.

Action Name

CreateCustomTagsForStorage

Action Script Category

ScriptsForCustomTags

Action Script

AddCustomTagsForStorage

10. Click Update on the Policy Rule page.
11. Return to the Policy page and then click Publish.

Result

On the Cloud Admin Portal, launch the stack that is associated with the storage resource. You
can then confirm that the tags are applied.
Create a cloud approval policy
A cloud approval policy specifies the users who must approve a specified cloud activity before
the activity can proceed. Approvers can include the manager of the user making a request,
a specified user or group, or users with a specified role. You can specify multiple approvers.
Approvals occur in the order that you specify.

Before you begin

Optional: Create one or more cloud policy groups.
Role required: sn_cmp.cloud_governor or admin

About this task

In this example, a user requests a stack that triggers an approval policy.
1. On the Cloud User Portal, a user submits a request to provision a particular blueprint. The
process of provisioning the blueprint is the trigger that causes the policy engine to apply an
approval policy. A cloud approval policy specifies the users who must approve a specified
cloud activity before the activity can proceed.
2. The policy engine determines that the request meets the condition specified in the rule for the
policy. In this example, the condition evaluates to true whenever a particular blueprint is being
provisioned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

484


<!-- page 485 -->
3. Because the condition is met, the policy engine performs the action that is also specified in the
rule. In this example, the action is to create an approval action for the manager.
4. While the approver (the manager) reviews the approval request, the user sees a "waiting for
approval" status message on the Cloud User Portal.
5. After the manager approves, the blueprint is provisioned.
User waiting for approval

The targeted approval policies complement application-wide approval.
• on Stack operation (approval): Triggered during any stack operation on the Cloud User Portal.
• on Stack resource operation (approval): Triggered during any resource operation (start, stop,
provision, and so on) on the Cloud User Portal.
• on Task remediation: Triggered when a user resubmits a failed request.

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Click New and then fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

485


<!-- page 486 -->
Example approval policy

Field

Description

Policy name

Enter a descriptive name that includes the word Policy.
Do not start the name with a number.

Description

Enter a description of the intent of the policy.

Policy group

Optional: Select a policy group. Each policy in the group
is enforced.

Policy trigger

Select a trigger that specifies when the policy should be
applied. The following triggers can start approval policies:
◦ on Blueprint provision (approval)
◦ on Stack operation (approval)
◦ on Stack resource operation (approval)
◦ on Task remediation

Blueprint

Select the blueprint that the policy applies to.

[appears when the on Blueprint ◦ If no blueprint is specified, then the policy applies
for every blueprint. This setting can decrease
provision (approval) or on Stack
performance.
operation (approval) trigger is
selected]
◦ You can assign multiple policies to a blueprint. Multiple
policies running simultaneously, however, might
decrease performance. Publish a policy only when it
should be enforced.
Operation
[appears when the on Stack
resource operation (approval)
trigger is selected]

Select the operation that the policy applies to. For
example, a policy can apply to the Deprovision
operation only or to all operations on the blueprint or
catalog item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

486


<!-- page 487 -->
Field

Description

Note: If no operation is specified, then the policy

Reviewers: Does this also appear
for on Stack operation (approval)?

applies for every operation. This condition can
decrease performance.
◦ All: Any operation executes.
◦ Start: The resource starts.
◦ Stop: The resource stops.
◦ Provision: The resource is provisioned.
◦ Deprovision: The resource is no longer available to
users.
◦ Execute Script: A script runs on the resource.

Start Date / End Date

Specify the start date when the policy should be
enforced and the end date when the policy should no
longer be enforced.

Order of Execution

Specify a number that represents the order in which
the policy is applied. A policy with a lower number runs
before a policy with a higher number.
For example, a policy with Order of 100 runs before a
policy with an Order of 200.

Status

A new policy is in Draft state. Click Publish on the form
header to enforce the policy. After a policy is published,
you must set it to the Draft state to update it.

3. Right-click in the header and select Save.
4. When you are ready to enforce the policy, click Publish.

What to do next

Configure one or more cloud policy rules.
Create a cloud policy group
A cloud policy group is a container for related policies. Consider grouping policies that are
often used together or should be considered together. Grouping policies can help you to apply
policies consistently across your organization.

Before you begin

Role required: sn_cmp.cloud_governor or admin

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Policies.
2. Open a cloud policy and click the lookup icon for the Policy Group.
3. Select the group to add the policy to.
◦ To add the policy to an existing group, select the group and then click Submit.
◦ To create a policy group to add the policy to, click New on the Policy Groups list, specify a
unique and meaningful Name, and then click Submit. The policy is added to the new group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

487


<!-- page 488 -->
Export or import a cloud policy
To back up, move, or restore a policy, you can export and import the policy as an update set. The
update set includes rules, conditions, actions, scripts, and script categories.

Before you begin

Role required: sn_cmp.cloud_admin or admin.

Procedure
1. On the Cloud Admin Portal, navigate to Govern > Policies.
2. Perform the following action to export a policy:
a. Click the export icon for the policy.

The instance generates an update set.
3. To import a policy, install the update set as follows:
a. On the instance to import to, navigate to System Update Sets > Retrieved Update Sets.
b. Click the Import Update Set from XML related link.
c. In the Import XML popup, click Choose File, select the file, and then click Upload.
If a policy that you exported from the source environment exists in the target environment and
both policies have the same sys_id, then the policy in the target environment is updated.
Trouble?

Note: If the policy that you exported from the source environment exists in the target
environment, and the policies have different sys_ids, then an error occurs during the
import process. You must export a different policy from the source environment or delete
the policy with the same name in the target environment.
Related topics
System update sets
Pools and Filters for Cloud Provisioning
A resource pool is a query or script that filters a table. You configure a resource pool to limit the
values that are available to users when they request a catalog item.

Example use of a pool
To limit a user to only the networks in a particular logical datacenter, use the resource pool called
NetworkPool that runs against the Cloud Network [cmdb_ci_network] table. The resource pool
uses a script to filter networks based on the datacenter that the network belongs to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

488


<!-- page 489 -->
How pools work
The naming convention for pools is:
get<thisItem>By<condition>
Where the condition is the top-level entity that forms the relationship between the return
values. For example, getObjectIdByServiceAccount filters all ObjectIDs that are hosted
on the specified service account.
Filters query tables using only the specified condition. Any record that matches the condition is
therefore returned.

Pools and blueprints
When you configure blueprints, you specify variables for form behavior. You can specify resource
pools as the data source for each variable and select which resource pools to use. The variable
then uses the filtered values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

489


<!-- page 490 -->
Resource Pool in the base system
Pool

Based on this table

Filter type

Filter name and description

AnsibleInventoryPool Ansible Tower
Script
Inventory
[sn_cfg_ansible_inventory]

Filters the name of Ansible Tower
Inventory.

ApplicationPool

Filters the names of applications.

Application

Query

ApplicationProfilePoolApplication Profile
Script
[sn_cmp_application_profile]

Filters the name of application
profiles.

AvailabilityZonePool

Filters availability zones based
on the logical datacenter they
belong to.

Availability zone
Script
[cmdb_ci_availability_zone]

getNameByLDC: Filters
availability zones based on the
logical datacenter they belong to.
The Terraform template for
IBM requires the name of the
availability zone as input for
provisioning.
AzureDevOpsPipelinePool
Config Installable
Script
[sn_cmp_cfg_installable]

Filters the installable configs.

AzureDevOpsProjectPool
Azure DevOps
Script
Filters projects based on config
Project
provider.
[sn_itom_csc_cp_azure_devops_project]
BusinessServicePool Service
[cmdb_ci_service]

Query

Filters the names of business
services.

ChefServerPool

Chef Server
Script
[sn_cfg_chef_server]

Filters chef server credentials by
Chef server.

CloudAccountPool

Cloud Account
Query
[cmdb_ci_cmp_cloud_account]

Filters the names of cloud
accounts.

CloudKeyPairPool

[cmdb_ci_cloud_key_pair]
Script

getObjectIdByServiceAccount:
Filters cloud keypairs based on
the service account they belong
to.

ComputeProfilePool

Compute Profile
Script
[sn_cmp_compute_profile]

Filters compute profiles by the
logical datacenter and the cloud
account it belongs to.

ConfigMgmtPool

Script

Filters config management
workload provider.

CostCenterPool

Cost Center
[cmn_cost_center]

Script

Filters to list only the cost
centers that the user belongs to.

DatastorePool

VMware vCenter
Script
datastore
[cmdb_ci_vcenter_datastore]

Filters datastores based on the
logical datacenter they belong to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

490


<!-- page 491 -->
Pool

Based on this table

Filter type

Filter name and description

HardwareTypePool

[cmdb_ci_compute_template]
Script

getObjectIdByAvailabilityZone:
Filters hardware templates
based on availability zone they
belong to.

ImagePool

[cmdb_ci_os_template]Script

getObjectIdByServiceAccount:
Filters the resourceId of OS
Image by service account.
In IBM Cloud, OS Images are
not specific to a datacenter, so
they are hosted at the service
account level. Terraform requires
the resourceId as input for
provisioning.

IPAddressPool

Cloud IP Address
Query
[cmdb_ci_cloud_ip_address]

Filters the IP address.

LaunchConfigurationPool
Server Array Launch Query
Configuration
[cmdb_ci_sa_launch_config]

Filters the configuration pool.

NetworkInterfacePool Cloud Mgmt
Network Interface
[cmdb_ci_nic]

Script

Filters the network interface pool.

NetworkPool

Script

Cloud Network
[cmdb_ci_network]
table

• Filters networks based on the
logical datacenter they belong
to.
• getObjectIdByLDC: Filters
network IDs based on the
logical datacenter they belong
to.

OSProfilePool

OS Profile
[sn_cmp_os_profile]

ProjectsPool

Project [pm_project] Query

Filters the names of projects.

ResourceGroupPool Resource group
Script
[cmdb_ci_resource_group]

Filters resource group based
on the logical datacenter they
belong to.

ScheduleTimeZonePool
Choice [sys_choice]

Filters scheduled time zones.

SecurityGroupPool

Script

Script

Compute
Script
Security Group
[cmdb_ci_compute_security_group]

Filters compute profiles by the
logical datacenter and the cloud
account it belongs to.

• getByNetwork: Filters the
security group by the network
it belongs to.
• getObjectIdByServiceAccount:
Filters security group IDs
based on the service account
they belong to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

491


