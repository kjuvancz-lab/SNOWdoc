# Zurich IT Operations Management — Cloud Migration Assessment / Cloud Provisioning and Governance

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 492–634 of 4823 | Part 3 of 3

Sections: Cloud Migration Assessment (p192); Cloud Provisioning and Governance (p192)

---

<!-- page 492 -->
Pool

Based on this table

Filter type

Filter name and description

SecurityGroupProfilePool
Compute Security
Query
Group Profile
[sn_cmp_security_grp_profile]

Filters the names of security
group profiles.

SSHKeyPool

Filters user keys by user.

CMP SSH Key Pair
Script
[sn_cmp_ssh_credentials]

StorageAccountPool Cloud Storage
Script
Account
[cmdb_ci_cloud_storage_account]

Filters cloud storage accounts
based on the logical datacenter
they belong to.

StorageVolumePool

Storage Volume
Query
[cmdb_ci_storage_volume]

Filters the names of storage
volumes.

SubnetPool

Cloud Subnet
Script
[cmdb_ci_cloud_subnet]

• Filters the subnet by the
network it belongs to.
• getObjectIdByNetwork: Filters
subnets based on the network
they belong to.

UserGroupPool

Group
[sys_user_group]

Script

Returns only the groups that the
user belongs to.

VirtualMachinePool

[sn_cmp_resource_pool]
Script

getByAvailabilityZone: Filters
virtual machine IDs based on the
availability zone that they belong
to.

VmFolderPool

VMware
Script
vCenter folder
[cmdb_ci_vcenter_folder]

Filters VM folders based on the
logical datacenter they belong to.

Create a resource pool
Based on blueprint settings, resource pools control the values that a user sees in a catalog item
when they request a resource. Only values that pass the pool filter or script appear as options on
the catalog item request form.

Before you begin

Role required: sn_cmp.cloud_governor

Procedure
1. In the Cloud Admin Portal, navigate to Manage > Resource Pools.
2. Click New, enter a unique and descriptive Resource Pool Name, and then fill in the form.

Field

Description

Type

Select the type that determines whether the total count of
available values for the option the user is selecting will remain
the same (Static) or decrease by one (Diminishing).

Lookup Table

Select the table that contains the records that should appear
as options in the catalog item for the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

492


<!-- page 493 -->
Field

Description

Lookup Field

Select the table field that contains the values to display to the
user. The display value for the lookup field is not used on the
Cloud User Portal. Instead, use the Lookup label field(s).

[Not necessary if using a
script. This field is ignored if
you configure a script filter.]
Lookup label fields

Enter the lookup field label that should appear to the user.

[Not necessary if using a
script. This field is ignored if
you configure a script filter.]
3. Right-click in the header and select Save.
4. On the Resource Pool Filters related list, click New, enter a unique and descriptive Filter
Name, and then fill in the form.

Field

Description

Resource Select the resource pool that the filter belongs to.
Pool
Type

Select the type of filter:
◦ Query: Perform a query on records in the table that you specified for the
Lookup Table based on the Lookup Field that you specified.
◦ Script: Run a script to filter the records. Enter the code in the Script text box.

The resource pool filter is created.
5. Right-click the form header and select Save.
If you must return a filter value to the pool and that value is mapped to another table, create a
record in the Resource Pool Filter Values related list.
6. On the Resource Pool Filter Values related list, click New, fill in the form, and then click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

493


<!-- page 494 -->
Field

Description

Resource Pool
Filter

Enter the name of the filter that the filter value belongs to.

Type

Enter the type of filter value:
◦ Query:
◦ Metadata Rule:

Metadata Rule
Name
[Appears if
you select the
Metadata Rule
type]
Operator

Enter the metadata rule name.
This field appears only when Metadata Rule is selected from the Type
field.

Select either:
◦ AND
◦ OR

Field

Enter the field that is in the Lookup Table. For example, CloudAccount.

Value

Enter the value that you are passing back to the resource pool in the
format ${field}, where field is the value in the Field field. For
example, ${CloudAccount}.

Order

Enter an order number that determines when the value applies, relative
to other resource pool filter values. Lower values are applied first.

The resource pool filter is created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

494


<!-- page 495 -->
Bind a parameter to a resource pool
To make catalog ordering less error-prone, you can bind a parameter to an resource pool (a pool
provided in the base system). Parameters that are based on an resource pool list only specified
values from existing tables on the catalog order form in the Cloud User Portal.

Before you begin

Role required: sn.cmp.cloud_service_designer

About this task

The catalog order form lists only parameters values that have the datasource specified. For
example, if you use the Resource Group Name parameter in your template, you can bind the
Resource Group Name field to an existing SN pool (ResourceGroupPool) in the metadata
section.
When you create a resource block using a cloud template, you can bind a parameter to an SN
pool in the metadata section of the Azure Resource Manager (ARM) or CloudFormation (CF)
template. All SN pools are listed in the procedure.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud Catalog Items.
2. Select an existing template or click New to create a new cloud template.
If you select an existing template, rename the template.
In the next step, you modify the template definition for the appropriate template type (choose
ARM or CloudFormation). You specify the SN pool filter as the datasource value.
SN pools to use as the datasource value
SN Pool

AvailabilityZonePool

Filter

getAllObjects: Gets all availability zones.
getObjectsByLDC: Gets availability zone depending on LDC.

HardwareTypePool
ImagePool
LoadBalancerPool
NetworkPool

All: Gets all load balancers.
getAllObjects: Gets all networks.
getObjectsByLDC: Gets networks depending on LDC.

ResourceGroupPool

getObjectsByLDC: Gets resource groups depending on LDC.

SecurityGroupPool

getObjectsByNetwork: Gets all security groups.

SecurityGroupProfilePool

All: Gets all security group profiles.

SSHKeyPool

UserKeys: Gets all SSH keys.

StorageAccountPool

getObjectsByLDC: Gets storage accounts depending on LDC.

StorageVolumePool

All: Gets all storage volumes.

SubnetPool

getObjectsByNetwork:Gets all subnets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

495


<!-- page 496 -->
SN Pool

Filter

VirtualMachinePool

getByAvailabilityZone: Gets all virtual machines.

3. Modify an ARM template definition:
a. Add the attribute SNC::Parameter::Metadata in the parameters metadata section.
b. For the SNC::Parameter::Metadata attribute, add datasource
as the key and enter an SN pool filter for the value, such as
StorageAccountPool.getObjectsByLDC as shown in this example.
"parameters": {
"newStorageAccountName": {
"type": "string",
"metadata": {
"description": "Unique DNS Name for the Storage
Account where the Virtual Machine's disks will be placed.",
"SNC::Parameter::Metadata": {
"allowedPattern": "[0-9a-z]{1,11}",
"ConstraintDescription": "must be a alphanumeric ",
"datasource":"ServiceNow::Pools::StorageAccountPool.getObjec
tsByLDC",
}
}
}
4. Modify a CloudFormation template definition:
a. Add the attribute SNC::Parameter::Metadata and define the custom attribute name
(VpcId) with a datasource.
For the datasource value, enter an SN pool filter such as
NetworkPool.getObjectsByLDC in this example.
b. Define the datasourceFilter mapping attribute to bind the custom name (VpcId) to
the actual attribute name (Network).
"Parameters" : {
"VpcId" : {
"Type" : "AWS::EC2::VPC::Id",
"Description" : "VpcId of your existing Virtual Private
Cloud (VPC)",
"ConstraintDescription" : "must be the VPC Id of an
existing Virtual Private Cloud."
},
"SubnetId" : {
"Type" : "AWS::EC2::Subnet::Id",
"Description" : "SubnetId of an existing subnet (for
the primary network) in your Virtual Private Cloud (VPC)",
"ConstraintDescription" : "must be an existing subnet
in the selected Virtual Private Cloud."
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

496


<!-- page 497 -->
},
"Metadata": {
"SNC::Parameter::Metadata": {
"VpcId":{
"datasource":"ServiceNow::Pools::NetworkPool.getObjectsByLD
C",
"datasourceFilter":{"Network":"VpcId"}
},
"SubnetId":{
"datasource":"ServiceNow::Pools::SubnetPool.getObjectsByNetw
ork",
"datasourceFilter":{"Network":"VpcId"}
}
}
}
5. Click Submit.
6. After the resource block, blueprint, and catalog items are created, the cloud service user sees
only the list of values of the pool data for the parameter in the catalog order form.
Example resource pool that limits choices to cost center
You can use resource pools with blueprints to limit the choices on the cloud catalog request
form.

Use case: Restrict cost center selection
In this example, the cost of the cloud asset is charged against the budget of the cost center of
the user. The base-system UserCostCenter resource pool ensures that a user can select only
resources in their cost center.

Assumptions
• The Cost Management [con.snc.cost_management] plugin is active.
• Cost centers are defined and users are associated with the cost centers.
• At least one blueprint is defined. This example uses a blueprint named AWS Virtual Server.
• You are assigned the sn_cmp_cloud_admin role and know JavaScript and JSON scripting.

Components
Review resource pool filter
1. On the Cloud Admin portal navigate to Manage > Resource Pools.
2. Open the CostCenterPool and review the related Resource Pool Filters.
◦ All is a query filter that returns all cost centers in the table.
◦ UserCostCenter is a script filter that looks up the cost center associated with
the user who is ordering the item.
Here is the script for the UserCostCenter filter:
getFilteredRecords();
//Do not remove function declaration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

497


<!-- page 498 -->
/**
* @returns filtered records in the format
[{"value"="lookupValue",label="displayValue"}]
*/
function getFilteredRecords() {
var filteredRecords = [];
var userId = gs.getUserID();
var userGr = new GlideRecord('sys_user');
if (userGr.get(userId)){
var costCenterId = userGr.getValue('cost_center');
if (costCenterId){
var costCenterGr = new
GlideRecord('cmn_cost_center');
if (costCenterGr.get(costCenterId)){
var costCenter = {};
costCenter.value = costCenterGr.getUniqueValue();
costCenter.label = costCenterGr.getValue('name');
filteredRecords.push(costCenter);
}
}
}
//force to string
return new global.JSON().encode(filteredRecords);
}
Blueprint catalog form parameters
1. Navigate to Design > Blueprints, and then click the tile for the blueprint you want
to open.
2. With the blueprint in Draft state, click the Provision operation tile on the Catalog
> Request Operation tab.

3. In the Variable sets related list, click the General Info variable set. By default, the
CostCenter variable is in this variable set.
4. In the Cloud Variables related list on the Variable Set form, click the CostCenter
variable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

498


<!-- page 499 -->
5. On the Cloud Variable form, click the Type Specifications tab.
6. Look at the Pool and Pool Filter fields that refer to the resource pool and filter.
◦ CostCenterPool is the name of the resource pool.
◦ UserCostCenter is the filter script that pulls in the cost center options for
the user to select from.

7. Set the blueprint to Published.
Cost center user
Identify a user who is a member of a cost center and who has access to the Cloud
User Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

499


<!-- page 500 -->
Testing the resource pool filter
After reviewing the components that comprise this use case, test the cloud catalog item to verify
that users can select only their cost center.
1. Impersonate the user, Alene Rabeck in this example.
2. On the Cloud User Portal, click Launch a Stack, and then select the cloud catalog item (AWS
Virtual Server in this example).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

500


<!-- page 501 -->
3. Review the selections in the Cost Center list.

With the CostCenterPool::UserCostCenter datasource value for this catalog item, the
only option for the Cost Center is the cost center the user is a member of.

Changing the resource pool filter
Test that the resource pool filter is controlling the behavior of the Cost Center field by changing it
and viewing the results.
1. On the Cloud Admin Portal, navigate to Design > Blueprints and then click AWS Virtual
Server.
2. Click the Provision operation tile.
3. In the Variable sets related list, click the General Info variable set. By default, the CostCenter
variable is in this variable set.
4. In the Cloud Variables related list on the Variable Set form, click the CostCenter variable.
5. On the Cloud Variable form, click the Type Specifications tab.
6. Edit the Pool filter field to change the filter from UserCostCenter to All.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

501


<!-- page 502 -->
7. Click Update, then clickPublish..
8. Impersonate the user, Alene Rabeck in this example.
9. On the Cloud User Portal, launch a stack, and then select AWS Virtual Server.
10. Verify that all cost centers are listed.

Quotas and resource order controls
Quotas are limitations or requirements for groups and users on CIs or cloud resources. Use
quotas to prevent wasteful resource usage in your cloud environment.
You apply quotas to a resource, such as a virtual server, datacenter, or a generic cloud resource,
and to users of a particular group. You can set a per-user limit, and a total limit for the group for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

502


<!-- page 503 -->
the resource. For example, a quota might limit the number of virtual servers allowed for users in
the Database group.
After this kind of quota is set, users who try to provision additional virtual servers will receive
an error message and they will not be able to proceed with provisioning virtual servers until the
resource count is under the quota limit. If a user belongs to more than one group, they receive
the total quota limit from both groups combined.

Note: You can also set per-datacenter limitations on resources by using capacity limits in
cloud accounts. See Set capacity limits on user requests for resources.

Resource block types, quota types, and attributes
You can assign quotas to users or groups for the following resource block types:
• Virtual Servers
• Storage Volume Size
• Network
• Stacks
Quota types include:
Sum
The sum of all attributes for a resource, such as the sum of all virtual CPUs.
Count
The total number of attributes for a resource, such as the number of virtual
machines.
Create a cloud quota definition
A cloud quota definition specifies the limitations on a resource block. You can use templates or
manually create different types of configurations for each quota definition.

Before you begin

Role required: sn_cmp.cloud_governor

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Quota.
2. Click New.
3. On the form, fill in the fields.
Quota Definition form
Field

Description

Quota
Definition

A unique identifier for the quota definition. Typically it is the resource
name_count or resource name_size. For example: Network_Count,
VM_Count, or StorageVolume_Size.

Quota
Type

Type of quota restriction to set:
◦ Count
◦ Size

Resource
Name

The Resource Block type to apply the quota to. Select from the lookup list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

503


<!-- page 504 -->
Field

Description

For example, select Cloud Resource for any template-based cloud resource. For
more information, see Resource blocks in Cloud Provisioning and Governance.
Calculation The unit this quota is calculated in:
Unit
◦ GB
◦ Single
CI Class

The CMDB CI class to be selected from the lookup list.

Attribute

The column name from the underlying CI type on the resource block that
holds the value to restrict with the quota. For example, if your quota limits
the CPU count on a virtual server, the table of the underlying CI type is
cmdb_ci_vm_instance. The cpus column holds that CPU data. So you would
enter cpus.
You can also enter instance.

Template
[optional]
Template
Attribute
[optional]

The table name of a resource type, for example Hardware Type
[cmdb_ci_compute_template] or Image [cmdb_ci_os_template].
A column from the table you specified in the Template field. This it the
attribute on which the quota is set. For example, if you selected the
[cmdb_ci_compute_template] template and you want to put a quota on the
virtual CPUs, you would enter vcpus. That column stores the virtual CPU count
for all records in the [cmdb_ci_compute_template] table.

4. Right-click the header and select Save.
The Quota Configurations, Default Quotas, and Cloud Template Resources related lists appear.
5. In the Quota Configurations related list, click New.
6. On the form, fill in the fields:
Quota Configuration form
Field

Description

Group Name

A unique name for the configuration group.

Group Maximum Limit

The maximum limit for the group's quota.

Quota Definition Type

The quota definition name.

Per User Limit

The maximum quota limit for each user in the group.

7. Click Submit.
8. Optional: You can specify optional default quotas that will be set on the resource block by
clicking New in the Default Quotas related list, and then filling in the form.
Default Quotas form
Field

Description

Group Maximum Limit

The maximum quota limit for the group.

Quota Definition

The quota definition for which you are setting the default values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

504


<!-- page 505 -->
Field

Description

Per User Limit

The quota limit applicable to each user in this group.

9. Click Submit.
10. Map catalog item to which the quota you defined applies by clicking New in the Cloud
Template Resources related list.

Note: If you do not map quota to a catalog, quota is not calculated for that catalog.
11. On the form, fill in the fields.
Cloud Template Resources form
Field

Description

Domain

The domain to which this quota applies.

Quota Definition

The name of the quota definition you are
applying.

Catalog Item

The catalog item or cloud resource you are
mapping to the quota.

12. Click Submit.

Result

You have specified the cloud quota definitions and quota limits for users and user groups.
Related topics
Resource blocks in Cloud Provisioning and Governance
Resource order controls for template-based cloud catalog items
Use resource order controls to perform quota checks for template-based catalog items using
quota definitions and policies. Quota limits enable you to control provisioning or ordering
resources for users and groups. Configure policy actions to trigger notifications, an approval
subflow, or both.

Resource Order Controls
Resource order controls enable you to control the quota limit of resources provisioned through
template-based catalogs. Quota checks for cloud template-based catalog items are available
beginning with the Zurich release.
You can now map quota limits to template-based catalogs and trigger notifications or an approval
subflow when the resource limit or quota definitions you specify for a user or user group is
exceeded. For more information, see Resource Quota.
Use resource controls to perform the following actions:
• Calculate quota and capacity for template-based catalog items.
• Set limits for stack quota during provisioning for the cloud user.
• Create a policy to be triggered when a quota limit is exceeded.
• Add a policy notification and request for approval when a quota limit is exceeded.
• Show user and user group quotas for template-based catalogs in the Cloud User portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

505


<!-- page 506 -->
How resource order controls work
Resource order control applies only when the quota has exceeded. If the quota exceeds during
catalog provisioning for the first time after resource order controls are configured, the cloud
resources continue to be provisioned. However, if the cloud user tries to provision a resource that
breaches the configured quota limits again, the Resource order limit exceeded policy action set
up for the Resource Order Control policy is triggered.

Note: If quota is not mapped to a template-based catalog, quota calculations for that
catalog are not performed, even if users exceed their quota limits.
For example, say you specify a quota limit of 20 GB for a storage volume for a cloud user and the
user provisions a 40 GB storage volume. The first time, the storage volume is provisioned even
though it exceeds the quota limit. However, provisioning will fail the next time the user attempts
to provision a cloud resource over 20 GB.

Stack count quota
The stack count quota introduces a default base system quota for template-based cloud
catalog items. The Stack count quota counts all active stacks (identified by the Stack CI class)
provisioned by users and user groups. The stack count quota applies to all template-based
cloud resources and you do not need to map catalog items to quota definitions. Once the stack
quota is enabled, whenever a user from the group mapped to the stack quota provisions a cloud
resource, the quota is calculated. When users from the mapped group try to provision resources
beyond the limit defined in the quota definition for stacks, the Resource Order Control policy and
on Resource Limit exceeded policy action is triggered.

Note: The base system stack count quota does not have predefined default quotas to
preserve stacks that might have been created prior to upgrading to Zurich. You must specify
default quota limits for users and user groups to enable the Stack count quota.

Resource Order Control Policy
The Resource Order Control policy is a base system policy that is in the Draft state by default.
You can customize the default policy to meet your requirements and publish it, or create a new
policy and define quotas, rules and actions to enable resource order controls. The 'on Resource
Limits exceeded' policy action triggers the Resource Order Control policy when any resource
exceeds the defined quota limit. You can determine whether to initiate an approval subflow, a
notification, or a combination of both when the resource limit exceeded policy is triggered. For
more information, see Create an action for an 'on Resource Limit exceeded' policy.

Note: You cannot provision catalog items once the user or user group quota is exceeded
without the policy being published because the existing quota behavior disables further
provisioning and does not process the request further.

Next Steps
Set up resource order controls
Create quota definitions and policies mapped to cloud-template based catalog items. Use policy
rules and actions to trigger an approval subflow or notification when the quota limit defined for
the group or user exceeds.

Before you begin

You must have the following items:
• One or more cloud policy groups.
• Cloud template-based catalog items.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

506


<!-- page 507 -->
• Ensure that your CMDB is updated through event-driven discovery for precise quota
enforcement.
• Ensure that you map quota to a catalog in the Cloud Template Resources related list, when you
configure quota definitions.
Role required: sn_cmp.cloud_governor

About this task

Consider the following points before you begin setting up resource order controls:
• Quota is calculated only for the resource blocks that are bound to a CI class on the CMDB.
If you create custom resource blocks that do not map to CI class on the CMDB, no quota
calculation is performed for those resource types.
• If you have configured both Resource Order Control policy and a blueprint provision approval
policy, the blueprint provisioning policy takes precedence over the Resource Order Control
approval policy.

Procedure
1. Define the quota or use a base system quota definition for a resource block.
a. In the Cloud Admin Portal, navigate to Govern > Quota > Quota Definition.
b. Specify quota definitions.
The Resource Order Control base system policy has the default ServiceNow approval policy
rule configured by default. If you want to trigger other actions such as notifications or a
custom approval subflow when the resource limit is exceeded, you can either modify the
base system policy action or create a custom policy for your instance.
◦ Modify a base system quota definition by specifying the default quota values per user and
user group and the user groups to which the defined quota applies.
The following predefined base system quotas have default quota definitions:
▪ VM_Count
▪ vCPUs Count
▪ StorageVolume_Size
▪ Stack_Count
▪ Network_Count

Important: Stack_Count is applicable only to template-based cloud
resources.
◦ Create a quota definition.
For more information see, Create a cloud quota definition.
2. Map the quota to a template-based cloud catalog item.

Important: If quota is not mapped to template-based catalogs when you configure
quota definitions, quota calculations for those catalogs are not performed, even if userdefine quotas exceed. For more information, see Create a cloud quota definition

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

507


<!-- page 508 -->
a. In the Cloud Template Resources related list, click New.
b. In the Catalog Item field, select the catalog item you want to map this quota definition to.
c. Click Submit.
3. Configure a policy rule.
a. Navigate to Govern > Policies.
b. Open the base system Resource Order Control policy.
By default, the base system resource order control policy is in Draft state.
c. Navigate to the Rules related list and either modify a base system rule or configure a new
rule if you have numerous customizations.
◦ Select the base system approveresourcelimit rule and modify it to include a policy
action triggering a custom subflow or a notification.

Note: By default, only the ServiceNow approval action is configured for the
approveresourcelimit rule.

◦ Click New and configure a new policy rule.
For more information, see Configure a cloud policy rule.
4. Configure a policy rule action.
◦ Select the base system approve policy rule action in the Policy Rule Actions related list to
include a notification or a custom approval subflow.
◦ Create a cloud policy rule action in the Policy Rule Actions related list, to trigger custom
approval subflows or notifications, if you created a policy rule in the previous step.
For more information, see Create an action for 'on Resource Limit exceeded' policy.

Note: In the Policy Group field, ensure that the policy group you want this policy to
apply to is selected.
5. Publish the policy to activate resource order controls by clicking Update and then Publish.

Result

Based on the Policy Rule action you configured for the Resource order control policy, either
an email notification or an approval subflow or both will be triggered if the specified quota is
exceeded.
If you have configured an approval policy, the requester receives a notification stating that the
approval request has been sent to a designated approver on exceeding the specified quota.
Typically, the assigned approver designed the template used to create the cloud resource and
has the sn_cmp.cloud_service_designer role.
Use the Cloud Operations Dashboard
The Cloud Operations Dashboard breaks down cloud service requests from your end users and
cloud stacks that you offer in the Cloud User Portal.

Before you begin

Role required: sn_cmp.cloud_operator or sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

508


<!-- page 509 -->
Procedure
1. In the Cloud Admin Portal, navigate to Operate > Cloud Operations Dashboard.
The Cloud Operation Dashboard appears, showing you Cloud Service Requests and Stacks.
Requests are also broken down by requester in the bar chart below. Stacks are broken down
by datacenters.
An example Cloud Operations Dashboard

2. Do any of the following to obtain the tag data you want on the report.
Goal

Do this

See data grouped by another attribute

Select a value in the Group by choice list for
either chart.
Point to the top of any of the charts until the

See updated data

refresh icon (
icon.

) appears, and then click the

Point to any of the charts until the options
Save an image of a chart

icon ( ) appears, and then select Save as
PNG or Save as JPEG.

Use Cloud Root Cause Analysis reports
Root Cause Analysis reports help you troubleshoot issues with Cloud Provisioning and
Governance. Use the reports to view details about the Cloud Orchestration Trail and the Cloud
API Trail.

Before you begin

Role required: sn_cmp.cloud_operator or sn_cmp.cloud_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

509


<!-- page 510 -->
Procedure
1. In the Cloud Admin Portal, navigate to Operate > Root Cause Analysis Dashboard.
The Root Cause Analysis dashboard appears, with the Cloud Root Cause Analysis Dashboard
displayed by default. This gives you a graphical summary of the Cloud Orchestration Trail with
trail records under the reports. These charts group records by different attributes:
◦ Trails: groups data by the template, which is the component, such as a resource block or
blueprint, on which a Cloud Provisioning and Governance action was applied.
◦ Stages: groups data by the stage, which identifies when the transaction took place.
◦ Components: groups data by the component in the system that was involved in the
transaction.
◦ Steps: groups data by the step, which is the descriptive step associated with a stage and
component.
See The Cloud Orchestration Trail for a list of possible steps.
Requests are also broken down by requester in the bar chart below. Stacks are broken down
by datacenters.
The Cloud Root Cause Analysis dashboard

2. Select an option to obtain the tag data that you want on the report.
Goal

Do this

Filter the data

Select from the options, such as the Level,
Date, and the Request Item.
Point to the top of any of the charts until the

See updated data

refresh icon (
icon.

) appears, and then click the

Point to any of the charts until the options
Save an image of a chart

icon ( ) appears, and then select Save as
PNG or Save as JPEG.

3. Click any Cloud Orchestration API Number to view that specific record.
See The Cloud Orchestration Trail for field descriptions.
4. To view reports about the Cloud API Trail, click the Cloud API Dashboard tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

510


<!-- page 511 -->
This dashboard shows you several reports for the Cloud API Trail grouped by provider, status,
and connectors. You can also see information the methods that were invoked and the API
invocations today.

Note:
Starting with Zurich the Cloud API dashboard will be hidden and no longer activated on
new instances but will continue to be supported. The Cloud Services Catalog application
provides this functionality now. The application is being prepared for future deprecation.
The Cloud API dashboard

5. Click any the data in the graphs to open the matching Cloud API Trail records.
See The Cloud API Trail for descriptions of the Cloud API Trail form fields.
The Cloud API Trail
The Cloud API Trail is an activity log for all activity that uses the Cloud API and goes through the
MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

511


<!-- page 512 -->
Cloud API Trail contents
CAPI trail form

Field

Description

Dynamic route ID

An auto-generated ID number for the entry.

Mid name

The name of the MID Server through which the
Discovery was performed.

Route status

Whether or not the Discovery operation run by
the API was successful. Possible values are:
• success
• error
• executing

Input parameters

The input parameter that generated the
API trail record. This value is usually the
datacenter in which the Discovery was run.

Interface name
Invoked by

This value is always CMP when running
Discovery.

Method name

The interface operation from the Cloud API
that processed this record.

Provider name

The cloud provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

512


<!-- page 513 -->
Field

Description

Version

The version specified in the Cloud API.

CAPI Trail Logs
The CAPI Trail Logs related list provides more details about Cloud API trail entry. The following
types of log keys are available:

Log key

Description

route_data

Information about the Cloud API calls.

dynamic_route Information about the actual route the data took, including URIs.
route_result

The payload received by the instance, or a description of the result of the data
transfer. The payload

chunk_number The number of data chunks that the instance received.
route_status

Whether the route connection and payload transfer was successful.

route_error

The error that occurred. For example, the error Failed to list
loadbalancer Failed : HTTP error code : 403 means that
your credentials were incorrect and Discovery could not access the cloud
resource.

error_detail

More details about the error, including the Cloud Provisioning and
Governance API and connector that was used in the attempted Discovery, and
the errors that the cloud provider threw.

An example of a route_error is as follows:
Failed to list loadbalancer Failed : HTTP error code : 403
An example of the error_detail entry for the same error is as follows:
com.snc.cmp.connector.cloud.loadbalancer.component.LoadBalancerE
xception: Failed to list loadbalancer Failed : HTTP error code :
403
at
com.snc.cmp.connector.cloud.loadbalancer.customizer.impl.AWSLoa
dBalancerCustomizer.listLoadBalancers(AWSLoadBalancerCustomizer.
java:56)
at
com.snc.cmp.connector.cloud.loadbalancer.component.LoadBalancer
Producer.process(LoadBalancerProducer.java:46)
at
org.apache.camel.util.AsyncProcessorConverterHelper$ProcessorTo
AsyncProcessorBridge.process(AsyncProcessorConverterHelper.java:
61)
at
org.apache.camel.processor.SendProcessor.process(SendProcessor.
java:145)
...
These two entries indicate that the credentials were incorrect, and Discovery could not access
the cloud resource. The load balancer interface throws the first error because the load balancer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

513


<!-- page 514 -->
device is the first device that allows access to the cloud resource. The org.apache.camel
errors indicated routing errors on the Amazon Web Services side.
The corresponding error on the instance side is captured in the Cloud Orchestration Trail.
Related topics
The Cloud Orchestration Trail
Open the Cloud API Trail
Open the Cloud API Trail to debug and troubleshoot issues like a failed policy or failed Discovery
of cloud resources.

Before you begin

Role required: sn_cmp.cloud_operator or sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Operate > Trails.
2. On the Cloud Api Trail tab, filter and sort the list of Cloud API Trail records as needed.
If you are looking for something like a failed Discovery, filter the list so the Route Status column
shows only entries with error.
3. Click a link in the Created column to open the Cloud API Trail record.
4. In the CAPI Trail Logs related list, open the log record that displays the information you want.
For example, open route_error or error_detail to debug a failed operation.
Cloud Provisioning and Governance dashboards and reports
Dashboards enable cloud admins and cloud users to view reports like cloud billing data and
cloud tag usage.
Demonstrates billing setup options for Cloud Provisioning and Governance. Follow this short
video to learn more about Cloud Provisioning and Governance dashboards.

Important: Starting with the Zurich release, the Billing dashboard is no longer available
if you have downloaded the ServiceNow Store Cloud Cost Management app. The following
changes occur:
• You are redirected to the Cloud Cost Management home page by default.
• The View Dashboard widget in the Cloud User portal is replaced by the View Resources
widget.
• The Current Month Spend widget and the Budget widget on the Cloud User portal do not
show any data if Cloud Cost Management is activated on the instance.
View cloud costs on the Billing dashboard
The Billing dashboard provides rich summary information on cloud usage, cost trends, and cost
aggregates.

Before you begin

Role required: sn_cmp.cloud_admin
Important: You can only access the Billing Dashboard, if you have not downloaded and
activated the ServiceNow Store Cloud Cost Management app. If you have activated the
Cloud Cost Management app, you can only navigate to the Billing Dashboard, if you are
using Cloud Provisioning and Governance on a domain separated instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

514


<!-- page 515 -->
Procedure
1. In the Cloud Admin Portal, navigate to Analyze > Billing > Billing Dashboard.
The Billing dashboard shows the Cloud Cost tab by default. This tab displays these two
graphs:
◦ Cost Trend: A line graph showing daily costs over time for the selected Usage Date.
◦ Cost Aggregate: Total costs for each tag value for the selected Group by tag.
Cloud Cost tab on the Billing dashboard

2. Perform any of the following actions to obtain the tag data you want on the report.
Goal

Action

Update the billing period

Select a new option from the Usage Data
choice list.

See data grouped by another tag

Select a value in the Group by choice list un­
der either chart.

Filter by tag values

Select a tag value from the list.
Point to either donut chart until the options

Save an image of a chart

icon ( ) appears, and then select Save as
PNG or Save as JPEG.

3. To view the areas with the highest level of spending, click the Top Spends tab.
Bar charts showing the total cost for each tag display by default. You can further filter the data
by Service Category, Provider, and Datacenter.
4. Click any part of the charts to see cost records for the selected criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

515


<!-- page 516 -->
The list view of the cost records appear. You can view information such as usage quantity and
specific cost per usage date.
Example cost records

View tagged resources on the Tag dashboard
The Tag dashboard shows all tagged resources. Use the Tag dashboard to see specific tag
values for a group of resources such as stacks or virtual machines.

Before you begin

Role required: sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Analyze > Tag.
The Tag Dashboard tab displays the Tag dashboard where all tagged resources are broken
down by tag.
The Tag dashboard

2. Perform any of the following actions to obtain the tag data you want on the report.
Goal

Action

See tag values for a specific resource group

Click a section of the Tagged Resources
donut chart.

See data grouped by another tag

Select a value in the Group by choice list un­
der the Assigned Tag Values donut chart.
Point to the top of either chart until the re­

See updated data

fresh icon (
icon.

) appears, and then click the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

516


<!-- page 517 -->
Goal

Action

Point to either chart until the options icon
Save an image of a chart

(
) appears, and then select Save as PNG
or Save as JPEG.

3. To view a specific tag history record, click any section in the Assigned Tag Values chart.
A list of tag histories appears that matches the CI class for the selected tag value.
A tag history record

Field

Description

Created

The date the tag history was created.

Current

If selected, indicates if the current record is the must current.

CMDB CI

The actual CI in the CMDB. Click the record icon to see the CI form.

User group

The group tag associated with this CI.

User

The user tag associated with this CI.

Application

The application tag associated with this CI.

Stack

The stack tag associated with this CI.

Business service

The business service tag associated with this CI.

ServiceNow instance

The instance tag associated with this CI.

Cost center

The cost center tag associated with this CI.

Time provisioned

The date the machine was provisioned.

Project

The project tag associated with this CI.

Custom values

Any custom values tagged to the CI.

Budget-based notification and approval
Administrators can assign a budget for a group and a user within the group. When the user or
group reaches the budget limit threshold, notifications are sent alerting them about it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

517


<!-- page 518 -->
Important:
• The budget-based notification and approval feature is no longer available if you are using
the Cloud Cost Management app for cloud billing.
• You can only continue using the Budget Consumption feature if you are using Cloud
Provisioning and Governance on a domain separated instance, or have switched back to
the native Cloud Provisioning and Governance billing feature.
Administrators can assign a budget (in USD) on a weekly, monthly, quarterly, or yearly basis.
The budget set for a user and for a group are independent of each other. For example, a group
consisting of five users can have a budget of $100 and each user in that group can be assigned
a limit of 25 dollars. An organization decides on the frequency of the budget and all the groups
in that organization follow the same frequency. For example, if an organization decides on a
monthly budget, then all the groups and users in that organization follow a monthly budget. See
Configure budgets.
A default budget is given to each new group and new user. A new group gets a default budget of
$1000 and a new user gets a default budget of 100 dollars.
Administrators can increase or decrease the budget at any given time. Notifications are sent to
the user and the group when the budget limit reaches its threshold limits. Notifications trigger as
part of the billing process. Billing discovery is scheduled for each user and group. At the end of
the billing discovery, a comparison is made between the budget limit and the actual cost and if
the threshold has reached or has exceeded, notifications are triggered.
Administrators can set up a policy whereby if the budget limit reaches a particular threshold or
exceeds the limit, the administrator gives an approval for the user or the group to continue using
the resources. For example, the administrator can create a policy for a group whereby when
the group's budget threshold reaches 90%, an approval is required for the group to continue
consuming resources. If the administrator does not set up a policy for the budget, the user or the
group can continue using the resources.
You can view the budget details on the at Analyze > Budget Consumption. You can view the
budget consumption details for a user as well as for groups.
Configure budgets
You can configure budgets for groups and users within that group. You can set up a budget
period for the group, allocate a budget limit to a group and to each user within that group.

Before you begin

Role required: admin

Procedure
1. In the Cloud Admin Portal, navigate to Govern > Budget.
2. Click New next to Budget Configuration.
3. Fill in the form fields (as shown in the table)

Field

Description

Group Name

Select a group from the list.

Budget Period

Select a budget period for the group: weekly,
monthly, quarterly, or yearly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

518


<!-- page 519 -->
Field

Description

Group Max Limit

Enter a budget limit for the group. By default,
the budget limit for each new group is 1000
dollars.

Per User Limit

Enter a budget limit for each user in that
group. By default, the budget limit for each
new user is 100 dollars.

4. Click Submit.
Tags for cloud resources
Tags categorize cloud resources to provide richer and more detailed tracking and billing report
data.
Create tags to enable Cloud Provisioning and Governance to automatically categorize cloud
resources after they are provisioned. Each tag associates a specific key:value pair with a
requested cloud resource, such as Application=HRMS.
After the cloud resource is provisioned, the key:value information in tags become part of the
resource's metadata and are saved along with all other parameters about the resource. Because
a cloud resource can have multiple tags, you can view cost items from multiple perspectives.

Tag definitions
Tag definitions are records that associate a tag name with a value type. These value types are
available:

Value
type

Description

Variable A value that user enters or selects from a choice list. This value is stored as a service
catalog variable.
If a table is associated with a variable tag, the values in the field marked as the
Display field are displayed to the user when they request the instance. In most
cases, this is the Name field. For example, the names of the business services in the
Service table display to the user. If no table is specified in the tag definition, the user
is presented with a text field.
Script

A script that obtains a value from the instance, such as the current time on the
instance. The script must obtain the value via the base-system API and return
the value to the answer variable. For example, to obtain the current time on the
instance, the script would be:
answer = new GlideDateTime().getValue();

Default tags
These tags are provided by default.

Important: Do not deactivate the default tags, as this action will delete all the
corresponding catalog item variables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

519


<!-- page 520 -->
Default Cloud Tags
Label

Name

Value type

Table that provides choices

Application

application

variable

Application [cmdb_ci_appl]

Business Service

business_service

variable

Service [cmdb_ci_service]

Cost Center

cost_center

variable

Cost Center
[cmn_cost_center]

Project

project

variable

n/a

ServiceNow instance

sn_instance

script

n/a

Stack

stack

variable

Stack [sn_cmp_stack]

Time Provisioned

time_provisioned

script

n/a

User

user

order field

User [sys_user]

User Group

user_group

variable

Group [sys_user_group]

Cloud administrators can also create custom tags to suit the specific needs of the organization.
For example, you can create a Location tag can to track the location of the resource.

AWS tags
Tags generated for Amazon Web Services (AWS) resources are sent to AWS and are also
available from your AWS console.
Related topics
View tagged resources on the Tag dashboard
Create a custom tag for cloud resources
Cloud Administrators can create custom tags in addition to the default tags to categorize cloud
resources.

Before you begin

Role required: sn_cmp.cloud_admin

About this task

If a resource was provisioned prior to the existence of a particular tag, then that tag must be
manually added to the record for that resource.

Procedure
1. In the Cloud Admin Portal, navigate to Analyze > Tag > Tag Management > Tag Definitions.
2. Select New.
3. On the form, fill in the fields.

Field

Description

Label

Name to display on screen for the cloud user.

Name

Name of the key. The name is stored in all tables, along with the value.

Value type

The type of value for this tag.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

520


<!-- page 521 -->
Field

Description

Variable name

The name of the variable. This option appears if you select the Variable
value type.

Table

The table that provides the choices for the Variable value type field.
Select a table from the system. If you do not select a table, cloud users are
presented with an empty text field for the variable.

[optional]
Order field

The field on the request form. Click the down arrow next to Click to select,
and then select the field from the Orders [sn_cmp_order] table.

Active

An indicator that specifies if the tag is in use. Select this option to apply the
tag to all new requests.

Related topics
View tagged resources on the Tag dashboard
Group billing data using custom tags from provisioned resources
Configure user-defined tags to view and analyze billing data using custom tags existing on
provisioned resources.

Before you begin
• Perform cloud discovery in Cloud Provisioning and Governance for provisioned resources.
• Run a billing download job for the associated service account.
Role required: Resource Policy Contributor role in Azure Service account and
sn_cmp.cloud_admin in the instance.

About this task

Provisioned resources with existing tags are discovered as part of Cloud discovery. Existing tags
are considered user-defined tags in Tag Management. By default, the imported (user-defined)
tags are not displayed in the Billing dashboard, restricting you from filtering and analyzing billing
data using imported (user-defined) tags.

Important: Starting with the Rome release, billing and budgeting features are no longer
supported for Cloud Provisioning and Governance running on a non-domain-separated
instance. However, if you are using Cloud Provisioning and Governance on a domainseparated instance, there is no change in functionality for the billing and budgeting
features.

Procedure
1. In the Cloud Admin portal, navigate to Analyze > Tag > Tag Management.
The Tag Definitions list displays discovered resources provisioned with existing tags labeled
as User-defined.
2. Open a tag record of type User-defined.
3. In the Tag Definition form, change the tag from User-defined to ServiceNow (Custom):
a. In the Tag type field, select ServiceNow (Custom).
b. Copy the Label field value to the Variable field.
c. Select the Active and Visible check boxes.
d. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

521


<!-- page 522 -->
4. Repeat Steps 2 and 3 for all the user-defined tags that you wish to enable in the Billing
Dashboard.
5. Perform Cloud Discovery again to view updated ServiceNow (Custom) tags.
For more information, see Cloud Discovery.
6. Run the Billing schedule.
a. In the Cloud Admin Portal, navigate to Analyze > Billing > Billing Schedule.
b. Create a schedule or open an existing schedule.
c. Select Execute Now.
d. On the Retrieve Billing Data dialog box that appears, select a date range and then click
Download.
The ServiceNow (Custom) tags now show up in the Tags field on the Billing Dashboard.

What to do next

View cloud costs on the Billing dashboard.
Configure and perform life-cycle operations on discovered resources
®

Configure life-cycle operations on cloud resources that are not provisioned using ServiceNow
Cloud Provisioning and Governance. Provision resources and modify resource block operations
to perform day-2 operations on cloud resources that are discovered using Cloud Discovery but
not provisioned using Cloud Provisioning and Governance.

Before you begin
• Assign the configuration item (CI) to a user who performs the operation.
• Role required: sn_cmp.cloud_service_user, root_admin, admin, or sn_cmp.cloud_admin

About this task

If a resource is provisioned from the Cloud Provisioning and Governance catalog, you can
perform base system life-cycle operations on a stack or on a resource. However, if a resource
is discovered as part of Cloud Discovery and is not provisioned from Cloud Provisioning
and Governance, the same Start/Stop, Deprovision operations are not available, by default.
The following procedure is applicable for a Stop operation on a virtual machine that is not
provisioned from Cloud Provisioning and Governance.

Procedure
1. Navigate to All > Cloud Admin Portal > Design > Resource Blocks.
2. Search and open the resource/CI you want to perform life-cycle operations on.
3. Set toggle switch to Draft, to make the resource block editable.
4. In the selected Resource Block > Operations tab, select the required Interface and Operation
from their respective lists.

Note: The Interface and Operations fields are only available for resources that are
discovered but not added or generated to catalog.
5. Click the Override Operation icon.
6. In the Override Operation dialog, specify a name for the Interface-operation.
The Create New check box is selected, by default.
7. Click Submit.
You have enabled the selected operation for the interface you created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

522


<!-- page 523 -->
8. In the Input Parameters form, click the Add Input Parameters icon.
9. Specify resourceID as the parameter Name and click Save.
By default, a system assigned expression is generated and appears in the Mapping field.
10. For the ServerID parameter, replace the default expression in the Mapping field with
${parameter.resourceId} and click Save.
11. Navigate to Operations > Steps subtab.
12. In the Input form, change the NodeId parameter value to ${parameter.resourceId}.
13. Navigate back to the Input Parameters form, and click Generate Catalog.
14. Set toggle switch to Published, to publish the resource block again.
You have configured the resource operation for the specific resource/CI.
15. Optional: Navigate to Cloud User Portal > Resources > Virtual Machine Instance, and select
the virtual machine instance for which you created the resource operation.
16. Optional: Select the new interface operation you created from the Select Resource
Operations list.

What to do next

Navigate to the Cloud User Portal > Resources > Virtual Machine Instance and select the new
interface operation you created from the Select Resource Operations list.
Pattern-based targeted discovery
Automatically discover the newly provisioned cloud resources and store their information in the
®
®
ServiceNow ServiceNow Configuration Management Database (CMDB) by using patternbased targeted discovery.
After the cloud provisions the resources mentioned in the resource template, such as Azure
Resource Manager (ARM) or CloudFormation Template (CFT), it sends a response to the
Cloud Provisioning and Governance application. The response contains information about the
provisioned resources. Cloud Provisioning and Governance uses this information to launch
a discovery—called targeted discovery—to discover only the newly provisioned or modified
resources and update their attributes in the appropriate CMDB CI class.
The pattern-based targeted discovery offers an easier alternative to the existing CAPI-based
approach. Cloud Provisioning and Governance uses single-resource-discovery patterns to
discover only the newly provisioned or modified resources. Contrary to the other patterns, the
single-resource-discovery pattern doesn’t scan the entire cloud landscape for changes. It only
discovers the newly provisioned or modified resource of a given type.
The Cloud Resource Types [sn_capi_resource_type] table stores the one-to-one association
between the resource type and the single-resource-discovery pattern used to discover the
resource. Cloud Provisioning and Governance uses the sn_capi_resource_type table to identify
the appropriate pattern for the given resource type. For more information on patterns, see
Discovery patterns used by ITOM Visibility.
In the base system, Cloud Provisioning and Governance supports pattern-based targeted
discovery for a wide variety of resource types. If required, you can use custom patterns that you
created to perform targeted discovery. For more information, see Associate a resource type with
a single-resource-discovery pattern.
Cloud Provisioning and Governance checks the following conditions to invoke the pattern-based
targeted discovery:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

523


<!-- page 524 -->
• The CAPI-based targeted discovery isn’t implemented for the resource type.
• The sn_cmp.targeted.disco.patterns system property is set to True.
• The sn_capi_resource_type table contains a one-to-one association between the resource
type and the single-resource-discovery pattern.
For example, If you use CFT to provision an Amazon S3 bucket, Cloud Provisioning
and Governance reads the resource type from the cloud response (AWS::S3::Bucket),
and then identifies the appropriate pattern ( AWS S3) from the sn_capi_resource_type
table. Then, it invokes the pattern to discover the newly provisioned Amazon S3 bucket
only, and update its attributes in the appropriate CMDB CI class (Cloud Object Storage
[cmbd_ci_cloud_object_storage] table).
If both CAPI-based targeted discovery and pattern-based targeted discovery are implemented
for the resource type, then the system uses CAPI-based targeted discovery.
If both CAPI-based and pattern-based targeted discovery are not implemented for the resource
type, the resource type is classified as a generic cloud resource in the Cloud Resources
[cmdb_ci_cmp_resource] table. In such cases, you can create a single-resource-discovery
pattern and associate it with the resource type. For more information, see Create or customize
patterns and Associate a resource type with a single-resource-discovery pattern.
Related topics
Configure a response processor
Create or extend a CAPI interface
Associate a resource type with a single-resource-discovery pattern
Define a one-to-one association between the resource type and the single-resource-discovery
pattern in the Cloud Resource Types [sn_capi_resource_type] table. The pattern-based targeted
discovery feature uses this information to invoke the appropriate pattern and discover the
provisioned resource.

Before you begin
• Ensure that the Cloud Provisioning and Governance application is deployed.
• Ensure that the latest Discovery and Service Mapping is installed.
• Ensure that the application scope is Cloud API.
Role required: sn_cmp.cloud_service_designer or sn_cmp.cloud_admin

Procedure
1. Navigate to the sn_capi_resource_type table.
2. Select the appropriate resource type record.
3. On the form, fill in the fields.
The example values provided in this table establish a one-to-one relationship between the
AWS::S3::Bucket resource type and its corresponding single-resource-discovery pattern
(Amazon AWS S3).

Field

Description

Name

Cloud resource type that you want to
discover

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

524


<!-- page 525 -->
Field

Description

Example: AWS::S3::Bucket
Product

(Optional) Product category
Example: AWS Simple Storage Service

CI Class

CMDB CI table name. The system writes the
discovered information into this table.
Example: Cloud Object Storage
[cmdb_ci_cloud_object_storage]

Pattern

A single-resource-discovery pattern to
discover the resource
Example: Amazon AWS S3

Dependency sequence

(Optional) Order for triggering the pattern.

4. Select Update.
Troubleshooting tools for Cloud Provisioning and Governance
The Cloud Provisioning and Governance application provides several tools to help you
troubleshoot errors you might encounter during the Discovery of cloud accounts, the
provisioning and managing of cloud resources, and the updating of the CMDB.
These troubleshooting tools are available:
Cloud Orchestration Trail
The Cloud Orchestration Trail is an activity log for all cloud resource activity on
the instance. Use the Cloud Orchestration Trail to find errors that occur with cloud
resources, such as credential errors during Discovery or API execution errors.
See Open the Cloud Orchestration Trail for instructions.
Cloud API Trail
The Cloud API Trail is an activity log for all activity that uses the Cloud API and goes
through the MID Server. Use the Cloud API Trail to see API invocations and errors
related to the route data, specific API route errors, and Java runtime exceptions.
See Open the Cloud API Trail for instructions.
Root Cause Analysis Dashboard
The Root Cause Analysis Dashboard brings together records from the cloud
orchestration trail and cloud API trail and presents them in useful, filterable, lists and
charts.
See Use Cloud Root Cause Analysis reports for instructions.
Cloud Orchestrations
Cloud Orchestrations are the orders that your instance processed for each
attempted operation on a stack. Use Cloud Orchestration records to view status
messages for operations that are run on cloud resources and for details about each
API step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

525


<!-- page 526 -->
See Open cloud orchestrations for instructions.
The Cloud Orchestration Trail
The Cloud Orchestration Trail is an activity log for all cloud resource activity on the instance.

Cloud Orchestration Trail contents
Cloud orchestration trail form

Field

Description

Number

An auto-generated number for the trail entry.

Level

One of the following:
• Debug
• Info
• Warn
• Error

Template

The component, such as a resource block or blueprint, on which a Cloud
Provisioning and Governance action was applied.

Template
Instance

The datacenter in which the cloud resource is located.

User

The user involved in the transaction.

User
group

The user group that the user belongs to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

526


<!-- page 527 -->
Field

Description

Created

The date and time that the system created the entry.

Milestone If this transaction is a milestone. You can configure the form to see this field.
Request
Item

The service catalog request generated for the transaction.

Step

The step that identifies additional information about the transaction, including the
component and the stage. You can configure the form to see this field.

Catalog
Item

The catalog item, if any, that was involved in the execution.

Message

The error message or successful completion message. This could include items like
the ID of the corresponding message in the Cloud API Trail record or the Cloud API
that was invoked.

Message
details

Details about the error, such as an HTTP error.

An example of an error message detail is as follows:
Failed to list loadbalancer Failed : HTTP error code : 403
This indicate that the credentials were incorrect, and Discovery could not access the cloud
resource. The load balancer interface throws the first error because the load balancer device is
the first device that allows access to the cloud resource.
A corresponding error on the MID- Server is captured in the Cloud API Trail.

Steps, stages, and components
Each Cloud Orchestration entry has identifying attributes that explain what the triggering
transaction was about. Steps group these attributes together and identify the component in the
system that was involved in the transaction and the stage at which the transaction took place.
You can configure the Cloud Orchestration Trail form to show the Step field if it is not already
visible.

Step

Component

Stage

Apply API Parameter

CAPI Probe

Cloud API Orchestration

Apply Config Parameter

CAPI Probe

Cloud API Orchestration

Apply Endpoint Binding

CAPI Probe

Cloud API Orchestration

Apply Policy

Policy Engine

Workflow and Policy Execution

Apply Policy Rule Action

Policy Engine

Workflow and Policy Execution

Call Cloud API

BP DSL Executor

Cloud Orchestration

Call Cloud API Connector

CAPI Probe

Cloud API Orchestration

Check Cloud Match

BP DSL Validator

Cloud Orchestration

Check Datacenter Capacity

BP DSL Validator

Cloud Orchestration

Check Resource Block Policies

BP DSL Executor

Cloud Orchestration

Check User Permissions

BP DSL Validator

Cloud Orchestration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

527


<!-- page 528 -->
Step

Component

Stage

Check User Quota

BP DSL Validator

Cloud Orchestration

Complete Cloud Orchestration

BP DSL Executor

Cloud Orchestration

Execute Cat Item Policy

Dynamic Forms

Catalog Item Request

Execute Form Rules

Dynamic Forms

Catalog Item Request

Execute Resource Block Operation

BP DSL Executor

Cloud Orchestration

Execute Resource Instance Script

BP DSL Executor

Cloud Orchestration

Get Quota Details

Dynamic Forms

Catalog Item Request

Get Response

CAPI Orchestrator

Cloud API Orchestration

Handle Cloud API Response

BP DSL Executor

Cloud Orchestration

Handle Policy Execution Response

BP DSL Executor

Cloud Orchestration

Handle Response and Chunking

CAPI Probe

Cloud API Orchestration

Invoke Cloud Orchestration

Workflow Engine

Workflow and Policy Execution

Invoke Policy Engine

Workflow Engine

Workflow and Policy Execution

Invoke Pre-Process Workflow

Workflow Engine

Workflow and Policy Execution

Launch Cat Item

Catalog Item

Catalog Item Request

Notify Caller

CAPI Orchestrator

Cloud API Orchestration

Prepare BP Execution Plan

BP DSL Executor

Cloud Orchestration

Prepare Runnable API

CAPI Orchestrator

Cloud API Orchestration

Publish API Route Request

CAPI Orchestrator

Cloud API Orchestration

Send Cloud API Response

CAPI Probe

Cloud API Orchestration

Show Form with Filters

Dynamic Forms

Catalog Item Request

Submit Form

Catalog Item

Catalog Item Request

Validate Inputs

BP DSL Validator

Cloud Orchestration

See Use Cloud Root Cause Analysis reports for instructions on how to access reports related to
the Cloud Orchestration Trail.
Related topics
The Cloud API Trail
Open the Cloud Orchestration Trail
Open the Cloud Orchestration Trail to debug and troubleshoot issues like a failed policy or failed
Discovery of cloud resources.

Before you begin

Role required: sn_cmp.cloud_operator or sn_cmp.cloud_admin

Procedure
1. In the Cloud Admin Portal, navigate to Operate > Trails.
2. On the Cloud Orchestration Trail tab, filter and sort the list of Orchestration API Trail records
as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

528


<!-- page 529 -->
If you are looking for something like a failed Discovery, filter the list so the Level column shows
only entries with Error.
3. Click a link in the Created column to open the Orchestration API Trail record.
4. In the CAPI Trail Logs related list, open the log record that displays the information you want.
For example, open route_error or error_detail to debug a failed operation.
Open cloud orchestrations
Cloud orchestration records show you the orders that your instance processed for each
attempted operation on a stack. They also show you the values of the fields that the user
submitted through the Cloud User Portal. Use cloud orchestrations to troubleshoot issues that
occur when a user provisions a cloud resource or runs another operation on an existing cloud
resource.

Before you begin

Role required: sn_cmp.cloud_operator or sn_cmp.cloud_admin

Procedure
1. On the instance (not the Cloud User Portal), enter the following text into the application filter:

The list of Cloud Orchestrations appear.
2. Sort and filter the list to find the error or other message you are looking for.
For example, to sort the list by date, click the Order Date column. To show only errors that
occurred, right-click Error in a cell and select Show Matching.
3. Open a cloud orchestration record by clicking the Order Date field.
4. Review the form fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

529


<!-- page 530 -->
The example form shows you the type of message you can see when an operation fails due to
the incorrect credentials. The OrderForm Data field shows the Sys ID of the credential record
and the service account ID.

Field

Description

Service Request Item

A service catalog request, if any, associated with this
transaction.

Context Key

A key identifier for this message.

Context Object

This field is typically empty.

Context Instance

The blueprint used in transactions on a stack or the
resource block used in transactions on a cloud resource.

Owner Instance

The Owner Instance is the resource block on which the
transaction took place. This field is only populated when
the Entity Type is Resource.

Owner Table

The owner table is always Stack [sn_cmp_stack] for
the provisioning of a stack. Otherwise, the table is
the CI type of the resource, such as Virtual Machine
[sn_cmp_vm_instance].
Entity Type

Whether the transaction occurred on Blueprint or a
Resource (resource block).

Operation Name

The interface and operation that is triggered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

530


<!-- page 531 -->
Field

Description

Order Date

The date of the transaction.

OrderForm Data

The data submitted through the user form.

Tag values

Any tag values involved in the transaction.

Resource

The resource block on which the operation took place.
This field is populated only when the value of the Entity
type field is Resource.

Status

The status of the message. If you are viewing an error, the
Error option is listed.

Stack

The stack that the resource belongs to.

Status Message

The status message that explains the issue. Search the
cloud provider documentation for the status codes and
messages that appear in this field. The cloud provider
might provide solutions available to you.

User

The user who triggered the operation.

Mid name

This field can show the name of the MID Server involved
in the transaction. It is often left blank.

Moving Cloud Provisioning and Governance content across environments
You can move the content in the Cloud Provisioning and Governance application from one
environment to the other. For example, develop an application in an environment and then move
the application and all its dependencies to another environment for testing or production.

Content entities that can be moved
The Cloud Provisioning and Governance application consists of code, resources, content, and
configurations.
You can move the following content entities across environments:
• Blueprints
• Resource blocks
• Cloud APIs
Use the update sets to move the content entities. Update sets, which are XML files, group all the
content into named sets and then moves these sets, as a unit, to other systems for testing or
deployment. For information on how system update sets work, see System update sets
.

Content entity dependencies
Each of the content entities has some direct dependencies that are automatically moved with
the content to the new environment.
The direct dependencies for each of these content entities are:

Content entity

Blueprint

Dependencies

• Resource blocks
• Cloud APIs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

531


<!-- page 532 -->
Content entity

Dependencies

• MID scripts
• Resource pools
• Policies
• Script includes
• Cloud scripts
Resource blocks

• Resource pools
• Resource operation policies
• Script includes
• Cloud APIs
• Dependant resource blocks
• MID scripts

Cloud API

MID scripts

Related topics
Move a blueprint from one environment to another
Move a resource block from one environment to the other
Move a cloud API from one environment to the other
Move a blueprint from one environment to another
Use update sets to move a blueprint and its dependencies from one environment to another.
Update sets let you group a blueprint and its dependencies into a named set and then move
them as a unit to other systems for testing or deployment. For example, you can move a blueprint
from a development environment to a production environment.

Before you begin

Role required: sn_cmp.cloud_service_designer or admin
• Users with the sn_cmp.cloud_service_designer role can only export update sets.
• Users with the admin role can export and import update sets.

About this task

Package the blueprint as an update set. Then export the update set from its current environment
and import it to another environment.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Blueprints.
All blueprints, in published and draft mode, appear in the Blueprints window.
2. Export the blueprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

532


<!-- page 533 -->
a. Click the Export icon ( ) for the blueprint that you want to export.
Blueprint exporter window

The Blueprint Exporter window has a list of all the indirect dependencies (Policy, MID Server
Script Includes, MID Server Script Files, Script Includes, and Workflows) for the blueprint.
Objects such as policies, pools, MID scripts, script includes, and workflows are not directly a
part of a blueprint, but a blueprint might depend on these objects to work correctly.
b. In the Blueprint Exporter window, click an object in the Type column.
In the right column, select the object's corresponding entries that you want to export with the
blueprint. For example, if you select MID Server Script Includes, all the corresponding script
includes appear in the right column. If a workflow contains subworkflows, select the parent
workflow and all the subworkflows in order for the workflow to be exported. If there are any
custom activities associated with a workflow, export those activities first and then export the
workflow.
c. Click Next.
A window opens with a summary of the indirect dependencies that you chose to include in
the export update set.
d. ClickExport Update Set.
The Blueprint Exporter window opens with the Success check box selected in green
indicating that the blueprint has been successfully exported along with all its dependencies.
By default, all the files listed under Exported Update Set(s) get downloaded onto your system
automatically. However, if the files are not automatically downloaded, follow these steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

533


<!-- page 534 -->
Note: The number of update sets created is based on the scope of records that
are being exported. For example, assume the blueprint that you are exporting has
100 records in all: 60 records are in scope one, 20 records are in scope two, and the
remaining 20 records are in scope three. In such a scenario, three update sets are
created. One update set for each scope.
3. Make sure that the files are downloaded.
If the files are not downloaded, complete these steps.
a. Click the metadata file.
The metadata file mentions the order in which the exported files should be imported. In
this example, the file blueprint10 is the first file to be exported followed by the file
blueprint11.
b. Based on the order mentioned in the metadata file, click the appropriate file to open it.
A window opens with a list of all the files contained in the update set.
c. To download the first XML file (in this example, the file is blueprint10) onto your system,
click Export to XML.
Import all the exported files into another environment. Users with the admin role can import
the files. For example, you may have created the export update set in a system that runs the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

534


<!-- page 535 -->
development environment and want to import it into another system that runs the production
environment.
d. Open the other XML file (in this example, the file is blueprint11) and download that file
onto your system, too.
4. Import the blueprint.
a. In the environment and the new instance where you want to import the files, enter
Retrieved Update Sets in the filter navigator and then press the Enter key.
b. Click the Import Update Set from XML related link.
c. In the Import XML window that appears, click Choose File, select the export file, and click
Upload.

Note: If a blueprint that you exported from the source environment exists in the target
environment, and both the blueprints have a different sys_id, when you import the
blueprint, an error appears and the import process stops. Export a different blueprint
from the source environment or delete the blueprint with the same name in the target
environment. If a blueprint that you exported from the source environment exists in the
target environment and both the blueprints have the same sys_id, then the blueprint in
the target environment gets updated with the blueprint that you exported from the source
environment.
5. To verify that the blueprint is imported into the new environment, go to your instance in the
new environment and in the Cloud Admin Portal, navigate to Design > Blueprints.
The blueprint you imported should appear in the listed blueprints.
Move a resource block from one environment to the other
Use update sets to effortlessly transfer resource blocks and their dependencies between
environments. Group them into a named set, facilitating seamless movement for testing or
deployment. Simplify processes such as transferring a resource block from development to
production, ensuring efficient and organized transitions across different systems.

Before you begin
• Users with the sn_cmp.cloud_service_designer role can only export update sets.
• Users with the admin role can export and import update sets.
Role required: sn_cmp.cloud_service_designer or admin

About this task

Package the resource block as an update set. Then export the update set from its current
environment and import it to the other environment.
Note: If a resource block that you export from the source environment exists in the target
environment, when you import this resource block, it results in two resource blocks with
the same name: one resource block that existed before the import and another resource
block which you just imported. For example, if you export the AWS Datacenter resource
block from the development environment and you already have a resource block with the
same name in the production environment, then when you import the AWS Datacenter
resource block to the production environment, two resource blocks with the same name,
AWS Datacenter, reside in the production environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

535


<!-- page 536 -->
Procedure
1. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
All resource blocks, in published and draft mode, appear in the Resource Blocks window.
2. Export the resource block.
a. Click the Export Resource block icon ( ) for the resource block to export.
Resource block exporter window

a. In the Resource Block Exporter window, click an object in the Type column.
In the right column, select the corresponding entries for the object that you want to export
with the resource block. For example, if you select MID Server Script Includes, all the
corresponding script includes appear in the right column.
If a workflow contains subworkflows, select the parent workflow and all the subworkflows
in order for the worklow to be exported. If there are any custom activities associated with a
workflow, export those activities first and then export the workflow.
b. Click Next.
A window opens with a summary of the indirect dependencies that you chose to include in
the export update set.
c. Click Export Update Set.
The Resource Block Exporter window opens with the Success check box selected in
green indicating that the resource block has been successfully exported along with all its
dependencies. By default, all the files listed under Exported Update Set(s) get downloaded
onto your system automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

536


<!-- page 537 -->
Note: The number of update sets created is based on the scope of records that are
being exported. For example, assume the resource block that you are exporting has
100 records in all: 60 records are in scope one, 20 records are in scope two, and the
remaining 20 records are in scope three. In such a scenario, three update sets are
created. One update set for each scope.
3. Make sure that the files are downloaded.
If the files are not downloaded, complete these steps.
a. Click the metadata file.
The metadata file mentions the order in which the exported files should be imported. In this
example, the file Azure Datacenter0 is the first file to be exported followed by the file
Azure Datacenter1.
b. Based on the order mentioned in the metadata file, click the appropriate file to open it.
A window opens with a list of all the files contained in the update set.
c. To download the first XML file (in this example, the file is Azure Datacenter0) onto your
system, click Export to XML.
d. Open the other XML file (in this example, the file is Azure Datacenter1), and download
that file onto your system.
You must import all the exported files into another environment. For example, you may have
created the export update set in a system that runs the development environment and want
to import it into another system that runs the production environment.
4. Import the resource block.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

537


<!-- page 538 -->
a. In the environment and the new instance where you want to import the files, enter
Retrieved Update Sets in the filter navigator and then press the Enter key.
b. Click the Import Update Set from XML related link.
c. In the Import XML window that appears, click Choose File, select the export file, and click
Upload.

Note: If a resource block that you exported from the source environment exists in the
target environment, and both the resource blocks have a different sys_id, when you
import the resource block, an error appears and the import process stops. Export a
different resource block from the source environment or delete the resource block with
the same name in the target environment. If a resource block that you exported from
the source environment exists in the target environment and both the resource blocks
have the same sys_id, then the resource block in the target environment gets updated
with the resource block that you exported from the source environment.
5. To verify that the resource block is imported into the new environment, go to your instance in
the new environment and in the Cloud Admin Portal, navigate to Design > Resource Blocks.
The resource block you imported should appear in the listed resource blocks.
Move a cloud API from one environment to the other
Use update sets to move a cloud API from one environment to another. Update sets let you
group a cloud API and its dependencies into a named set and then move them as a unit to other
systems for testing or deployment. For example, you can move a cloud API from a development
environment to a production environment.

Before you begin
• Users with the sn_cmp.cloud_service_designer role can only export data sets.
• Users with the admin role can export and import update sets.
Role required: sn_cmp.cloud_service_designer or admin

About this task

Package the cloud API as an update set. Then export the update set from its current environment
and import it to the other environment.
Note: If a cloud API that you export from the source environment exists in the target
environment, when you import this cloud API, it results in two cloud APIs with the
same name: one cloud API that existed before the import and another cloud API which
you just imported. For example, if you export the Ansible Configuration API from the
development environment and you already have a cloud API with the same name in the
production environment, when you import the Ansible Configuration API to the production
environment, two cloud APIs with the same name, Ansible Configuration API, reside in the
production environment.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud API > API.
All cloud APIs appear in the Cloud API window.
2. Export the cloud API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

538


<!-- page 539 -->
a. Click the Export Cloud API icon ( ) for the cloud API to export.
The Cloud API Exporter window

b. In the Cloud API Exporter window, click an object in the Type column.
In the right column, select the corresponding entries for the object that you want to export
with the cloud API. For example, if you select MID Script, all the corresponding MID scripts
appear in the right column.
c. Click Next.
A window opens with a summary of the indirect dependencies of the cloud API that you
chose to include in the export update set.
d. Click Export Update Set.
The Cloud API Exporter window opens with the Success check box selected in
green indicating that the cloud API has been successfully exported along with all its
dependencies. By default, all the files listed under Exported Update Se(t)s get downloaded
onto your system automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

539


<!-- page 540 -->
Note: The number of update sets created is based on the scope of records that
are being exported. For example, assume the cloud API that you are exporting has
100 records in all: 60 records are in scope one, 20 records are in scope two, and the
remaining 20 records are in scope three. In such a scenario, three update sets are
created. One update set for each scope.
3. Make sure that the files are downloaded.
If the files are not downloaded, complete these steps:
a. Click the metadata file.
The metadata file mentions the order in which the exported files should be imported. In this
example, the file titled Ansible Tower Configuration API0 is the first file to be
exported, followed by the file titled Ansible Tower Configuration API1.
b. Based on the order mentioned in the metadata file, click the appropriate file to open it.
A window opens with a list of all the files contained in the update set.
c. To download the first XML file (in this example, the file is API0 2018-05-03) onto your
system, click Export to XML.
d. Open the other XML file (in this example, the file is API1 2018-05-03), and download
that file onto your system.
Import all the exported files into another environment. For example, you may have created
the export update set in a system that runs the development environment and want to import
it into another system that runs the production environment.
4. Import the cloud API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

540


<!-- page 541 -->
a. In the environment and the new instance where you want to import the files, enter
Retrieved Update Sets in the filter navigator and then press the Enter key.
b. Click the Import Update Set from XML related link.
c. In the Import XML window that appears, click Choose File, select the export file, and click
Upload.
The cloud API gets imported to your new environment.
5. To verify that the blueprint is imported into the new environment, go to your instance in the
new environment and in the Cloud Admin Portal, navigate to Design > Cloud API > API.
The cloud API you imported should appear in the list of cloud APIs.

Cloud API (CAPI)
The Cloud API (CAPI) enables you to integrate Cloud Provisioning and Governance with cloud
providers using REST APIs.

CAPI components
Integration with cloud providers is performed through REST calls, such as PUT, GET, POST, and
DELETE. CAPI provides the framework for you to integrate a cloud vendors REST API so that your
instance can communicate with the cloud provider to manage cloud resources.
See Browse APIs by product

to learn more.

CAPI contains these components:
CAPI overview

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

541


<!-- page 542 -->
Providers
Cloud providers are the clouds that you can connect to. By default, Cloud
Provisioning and Governance includes the most commonly used providers, such
as AWS, Azure, and VMware. Each provider has many products, each of which
provide resource types. Each resource type maps to a single CI type. For example,
the AWS provider includes the AWS Elastic Compute Cloud product,
which includes the AWS::EC2::Instance resource type. This resource type is
one of the most common cloud resources that you can create. It maps directly to the
Virtual Machine Instance [cmdb_ci_vm_instance] CI type, where virtual machines
are saved in the CMDB.
Interfaces
Interfaces define the framework that the system needs to structure the REST calls
that the cloud provider APIs expect. Interfaces define operations, also called
methods, and the parameters that each method requires.
Interfaces are reusable. If you extend CAPI to include new products and APIs, you
can use existing interfaces to make the same REST calls.
APIs
CAPI APIs are the core component of CAPI that ties a product and interface
together. The APIs include the actual code that the system executes.
Each CAPI API includes these components:
• CAPI Method Mappers provide the methods that are mapped to the operations
defined in the interface. From CAPI method mappers, you create MID Server
script includes in JavaScript to tell the cloud provider exactly what to do. It is
through the script includes that the connection to the cloud provider occurs.

Note: If you create custom CAPI APIs, the system provides an empty script
include for you to customize. You can also modify existing script includes
on method mappers if necessary. However, many of the default APIs that
come with the Cloud Provisioning and Governance application do not use
modifiable script includes. The connections are hard-coded in Java. You can
still use these APIs in new resource blocks that you create, but you cannot
modify the APIs.
• API Config Overrides contain the identity, such as a key, and credentials, such as
the secret key, and other important parameters required by the cloud provider.
These parameters help the cloud provider perform the operations in the CAPI
Method Mappers related list. API Config Overrides are necessary because, when
the system calls the cloud provider API via REST, credential data is not included.
Resource blocks use the parameters and values that you define in the API Config
Overrides to query the credential store. When your API executes, the attributes
are made available to all method calls in your script includes.
The overrides are scoped only for this API. The overrides do not override anything
in other APIs.
Because you can define multiple versions of a CAPI API with slight variations, you
can extend (without overwriting) an existing API while retaining desired functionality.
This image illustrates the components of CAPI that are used when you provision an Azure virtual
machine using the default CAPI settings provided with Cloud Provisioning and Governance:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
CAPI Azure

In this example, the Microsoft.Compute product is contained in the Azure provider.
Azure uses the Microsoft.Compute product for virtual machines. In your instance, the
Microsoft.Compute product maps to the Microsoft.Compute/virtualMachines
resource type, which is associated to the Virtual Machine Instance CI type in the
CMDB.
The Compute interface contains definitions for methods like CreateNode, which defines
how to create the actual virtual machine. Of the many parameters that CreateNode uses,
Location captures the datacenter where the virtual machine resides.
The Azure Compute API pulls together the Microsoft.Compute product and the
structure defined in the Compute interface. The implementation of the CreateNode method
calls the azure-compute-1.0-CreateNode MID Server script include, which calls the
AzureComputeVirtualMachine MID Server script include. The script includes make
the actual calls to the Azure API. To access the Azure account, the SecretKey, ClientID,
TenantID, and other methods are passed in Config Overrides.

How CAPI integrates with the instance
CAPI integrates these components in your instance:
Cloud Provisioning and Governance resource blocks
A resource block represents a single cloud resource, such as a virtual server, virtual
server storage, or a datacenter. You can also think of it as a CI type in the CMDB. You
put many resource blocks together in a blueprint, which appears as a catalog item
(also called a stack) to your users in the Cloud Catalog.
In the system, each resource block is like a container that references CAPI, and
links responses from the cloud provider to a specific CI. Resource blocks use:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
• Operational steps that call CAPI for each operation, such as the provision
operation, and pass along necessary parameter values that the cloud provider
needs to execute the operation.
• Response processors that process and parse the REST response from the
provider and update records in the CMDB.
The CMDB
Each resource block is based on a CI type from the CMDB. For Cloud Provisioning
and Governance, all cloud-related CI types are based on the Virtual Machine
Object CI class, which provides all the attributes that you need for all the cloud
resources supported by default. If a CI type for a cloud resource does not exist in
the base system, you must create a new CI class and add the necessary attributes.
If you do create a new CI class, you must also create:
• A CI class for each of the resources that are available to your users. All CI classes
are based on the virtual machine object class.
• An identification rule that specifies an Object ID. Whenever components of Cloud
Management refer to a specific cloud resource in the CMDB, they need the
Object ID to find the correct cloud resource.
• A relationship rule that specifies how the CI class for the resource is related to
other CI classes. For example, a virtual server CI must have a Hosted
on::Hosts relationship with a datacenter CI. These relationship rules
are necessary for CI uniqueness when processed by the Identification and
Reconciliation Engine (IRE). The combination of the service account, the object
ID of the resource, and the datacenter (or location) where the resource is located
determines the uniqueness.
MID Server script include
Each operation in the CAPI API has a MID Server script include that you configure.
The script include calls the JavaScript classes that are already in other script
includes in the system, or JavaScript classes that you create. Eventually, the invoker
class is called to trigger the REST call. MID Server script includes are configured on
your ServiceNow instance, but run on the MID Server.
This image illustrates how the components work together when a user provisions a resource from
the Cloud User Portal:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
REST calls to the cloud provider
REST calls to the cloud provider are triggered from the MID Server script includes that are
referenced from scripted CAPI Method Mappers inside CAPI API records. To create your own
CAPI APIs, or to create custom MID Server script includes (which are part of CAPI Method
Mappers), you must understand:
• The classes that are available for you to call in MID Server script includes. See CAPI classes in
MID Server script includes.
• How the cloud provider implements REST. See:
◦ Azure REST API Reference
◦ AWS Guides and API References
For example, to learn how to make a REST call to Azure to create a resource group, review this
Azure topic: Resource Groups - Create Or Update . You can find the endpoint, parameters, and
request body that Azure requires, and the responses it provides. You can see that:
• The endpoint is management.azure.com
• The method to call with a PUT operation is subscriptions/{subscriptionId}/
resourcegroups/{resourceGroupName}?api-version=2018-02-01, where
you specify the subscription ID, the resource group name, and the API version.
Remember that the REST API calls take place inside the MID Server script includes that are
associated with CAPI API method mappers. Call the methods that CAPI already makes available
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
for you by using the classes extended from CloudAPIBase and CloudRESTAPIInvoker.
You can also create more script includes to extend these base classes and create your own
classes. Familiarize yourself with these base classes and the methods available within them.

Get started here
1. Review CAPI APIs that are provided with Cloud Provisioning and Governance by default.
2. Review the CAPI classes that are provided by default. These classes can be called from the
MID Server script includes in your CAPI API operations.
3. Walk through the provisioning of an Azure virtual machine and an AWS virtual machine to
see how the components work together. The Azure walkthrough uses a MID Server script
include so you can see the various CAPI classes used in the provision operation. The AWS
walkthrough does not use a MID Server script include.
4. Add a product to an existing provider in CAPI.
5. Create a CI class for a virtual cloud resource.
6. Create or extend a CAPI interface.
7. Create a CAPI API, and a custom MID Server script include that makes the REST calls to the
cloud provider. An empty MID Server script include is always generated for new CAPI APIs.
Modify it with the calls to other JavaScript classes and methods, such as the methods in the
Invoker class.
Default CAPI APIs
Several CAPI APIs are provided by default with the Cloud Provisioning and Governance
application.
CAPI APIs refer to the API records that link a CAPI product and a CAPI interface. They do not
refer to the CAPI classes that you can call from MID Server script includes in CAPI APIs. For an
overview of CAPI classes, see CAPI classes in MID Server script includes.
View Cloud APIs by navigating to Cloud API > Library in the base system instance interface, or
by navigating to Design > Cloud API in the Cloud Admin Portal.
CAPI APIs

Note: You can customize scripted connectors using MID Server script includes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
API

Interface

Product

Scripted

Ansible Tower
Configuration API

Configuration
Management
Interface

Ansible-Tower

YES*

AWS Auto Scaling API

Auto Scaling Interface AWS Elastic Compute
Cloud

YES*

AWS Blob Storage API Blob Storage Interface AWS Simple Storage
Service

NO

AWS Block Storage
API

Block Storage
Interface

AWS Elastic Block
Storage

NO

AWS Compute API

Compute Interface

AWS Elastic Compute
Cloud

NO

AWS Compute API

Compute Interface

AWS Elastic Compute
Cloud

YES*

AWS Load Balancer
API

Load Balancer
Interface

AWS Elastic Load
Balancing

NO

AWS Network API

Network Interface

AWS Virtual Private
Cloud

NO

AWS Stack
Orchestration API

Stack Orchestration
Interface

AWS CloudFormation

YES*

Azure Alert API

Event Interface

Azure Alert

YES*

Azure Blob Storage
API

Blob Storage Interface Microsoft.Storage

Azure Block Storage
API

Block Storage
Interface

Microsoft.BlockStorage YES*

Azure Compute API

Compute Interface

Microsoft.Compute

YES*

Azure Extensions API

Azure Extensions
Interface

Microsoft.Compute

YES*

Azure Load Balancer
API

Load Balancer
Interface

Microsoft.LoadBalancer YES*

Azure Network API

Network Interface

Microsoft.Network

YES*

Azure Stack
Orchestration API

Stack Orchestration
Interface

Azure ARM

YES*

Infoblox IPAM API

IPAM Interface

Infoblox

NO

ServiceNow Store
IPAM API

IPAM Interface

ServiceNow

YES*

SSH API

SSH Interface

SSH

NO

vSphere Block
Storage API

Block Storage
Interface

VMware VDisk

NO

VMware vSphere

NO

vSphere Compute API Compute Interface

YES*

*You can customize how scripted APIs make REST calls to the cloud provider.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
CAPI classes in MID Server script includes
Cloud Provisioning and Governance provides several JavaScript classes that make REST calls to
cloud providers. These classes are called from MID Server script includes (for Azure by default)
or from Java calls in the system (for AWS by default). If you create custom providers, interfaces,
or CAPI APIs (for any cloud provider), you can use MID Server script includes to call the classes.

Note: In CAPI APIs, there are no MID Server script includes (in Method Mappers) that you
can customize to call the AWS classes. By default, the CAPI APIs for AWS make Java calls
to then call the AWS classes. However, if you create CAPI APIs, you can also create custom
script includes to call the classes.
View CAPI classes by navigating to MID Servers > Script Includes in the base system instance
interface (not the Cloud Admin Portal). You search for the name of a class in the Go to search box
using the Name column:

Base classes
These base classes are available by default. They form a basis for the Azure and AWS classes
that make the actual REST calls.
CloudAPIBase
CloudAPIBase is a provider-agnostic API that communicates with all types of cloud
APIs. It provides functions for basic debugging and logging, and for collecting proxy
information on the MID Server. It also defines Headers, Parameters, Endpoints, and
this.parameter.
AWSCloudAPIBase
This class is extended from CloudAPIBase and provides functions that call the
invoker to make GET, PUT, POST, and DELETE requests. The class provides the
option of an executeAction method, which is an AWS implementation of GET, or
the invoke method, which provides REST API calls.
AzureCloudAPIBase
This class is extended from CloudAPIBase and provides functions that do these
actions:
• Fetch resource IDs.
• Fetch endpoint properties.
• List resources.
• Call the invoker to make GET, PUT, POST, and DELETE requests.
AzureCloudAPIBase utilizes the _invokeRequest method to make REST API calls to Azure
using the standard REST API calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
Base APIs

Invoker classes
Invoker classes perform the actual REST calls to the cloud provider. If you create a custom CAPI
interface and API, you should extend CloudRestAPIInvoker to create your REST calls.
CloudRestAPIInvoker
This class is an abstracted class for making REST API calls. If there are headers
and/or parameters to send with a request, classes that implement the invoker
must extend this object. They also must provide overrides for getEndpointUrl
to return the targeted endpoint, and for getHeaders and getParameters.
For example, with Azure REST APIs, authentication requires the passing of a
token as a header. The extension implementing it should provide a response from
getHeaders that performs the token creation or retrieval and sets it. This base
object invokes getHeaders and sends whatever it gets back with the request.
This class also provides a getResponse method to handle the response from the
cloud provider.
If you create a custom CAPI API, you should extend CloudRestAPIInvoker to
make REST calls to the cloud provider.
AmazonWebServicesAPIInvoker
This class is extended from CloudRestAPIInvoker and provides methods for
making REST API calls to the cloud provider.
AzureAPIInvoker
This class is extended from CloudRestAPIInvoker and provides functions that
make these REST API calls to Azure Resource Manager:
• Sets the Service Principal, headers, and parameters for REST calls.
• Gets the endpoint URL, token (client ID, tenant ID, and secret key), and headers/
parameters.
• Retrieves and decodes the JSON response body from the cloud provider.
AzureEAAPIInvoker
This class returns the token for access to the Azure Enterprise Agreement (EA) REST
API.
AzureStorageAPIInvoker
This class makes REST calls for Azure storage. The functions in this class can get
the token, response, headers, and parameters.
This graphic illustrates how these base classes are used to extend AWS-specific and Azurespecific classes:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
Invoking REST calls

Exceptions
RESTAPIException
This base class handles exceptions that might occur during the REST call. It returns
the response code from the cloud provider.
AWSAPIException
This class handles exceptions that might occur during the REST call.
AzureAPIException
This class throws a runtime exception when needed during Azure API invocation.
Handling exceptions

Classes for credentials
CloudRESTRequestSigningUtil
This class uses overrides that are specified in CAPI API Config Overrides. The
AmazonWebServicesRequestSigner class extends this class. For Azure,
many signers are built into the MID Server script includes for Method Mappers in
Azure CAPI APIs.
AmazonWebServicesRequestSigner
This class sets up a secure session for the REST API call by taking information about
a request, and creating a signature v4 -signed string for the request. This class is
extended from CloudRESTRequestSigningUtil.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
Other Azure classes
Classes that extend AzureCloudAPIBase
Class

Description

AzureAlertRule

Class to create and delete Azure alert rules.

AzureAuthorizationPolicy

Class to assign tag policies.

AzureComputeAvailabilitySet

Class to fetch Azure availability sets. Refer to: https://
docs.microsoft.com/en-us/rest/api/compute/
availabilitysets

AzureComputeHardware

Class to fetch Azure sizes. Refer to: https://
docs.microsoft.com/en-us/rest/api/compute/
virtualmachinesizes

AzureComputeImage

Class to handle Azure API calls against image. Refer to:
https://docs.microsoft.com/en-us/rest/api/manageddisks/
images/images-rest-api

AzureComputeVirtualMachine

Class to handle Azure API calls against virtual machines.
Refer to: https://docs.microsoft.com/en-us/rest/api/
compute/virtualmachines VM Size and Capacities: https://
docs.microsoft.com/en-us/azure/virtual-machines/virtualmachines-windows-sizes https://docs.microsoft.com/
en-us/azure/virtual-machines/virtual-machineslinux-sizes Cloud-Init supported Versions: https://
docs.microsoft.com/en-us/azure/virtual-machines/linux/
using-cloud-init

AzureDeployment

Class to handle Azure ARM template deployment.

AzureDeploymentOperation

Class to handle Azure ARM template deployment
operation.

AzureImages

Class to handle Azure Images.

AzureLoadBalancer

Class to handle Azure API calls against load balancers.
Refer to: https://msdn.microsoft.com/en-us/library/azure/
mt163651.aspx

AzureLocalNetworkGateways

Class to create and retrieve local network gateways.

AzureNetworkNIC

Class to handle Azure API calls against network interface
cards. Refer to: https://msdn.microsoft.com/en-us/library/
azure/mt163579.aspx

AzureNetworkPublicIP

Class to handle Azure API calls against public IP
addresses. Refer to: https://msdn.microsoft.com/enus/library/azure/mt163638.aspx

AzureNetworkRouter

Class to handle Azure API calls against route table. Refer
to: https://docs.microsoft.com/en-us/rest/api/network/
route-tables

AzureNetworkSecurityGroup

Class to handle Azure API calls against network interface
cards. Refer to: https://msdn.microsoft.com/en-us/library/
azure/mt163579.aspx

AzureNetworkVirtualNetwork

Class to handle Azure API calls against virtual networks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
Classes that extend AzureCloudAPIBase (continued)
Class

Description

AzureProvider

Class to get Azure provider details, such as the provider
URL and version.

AzureRegion

Class to fetch Azure regions.

AzureResource

Deals with the object referenced by ObjectID in the
parameters. It also fetches the API version. This class
is Intended mostly to get unsupported types or delete
resources.

AzureResourceGroupManager

Class to handle Azure ARM resource groups.

AzureResponseUtil

Class to translate Azure API response to DTO object.

AzureStorageAccount

Class to handle Azure API calls against storage account.
Refer to: //https://msdn.microsoft.com/en-us/library/
azure/mt163638.aspx

AzureStorageBlob

Class to create and manipulate storage containers and
blobs.

AzureStorageManagedDisk

Class to handle Azure API calls against managed disk.
Refer to: https://docs.microsoft.com/en-us/rest/api/
manageddisks/disks/disks-create-or-update

AzureSubscription

Class to fetch Azure subscriptions.

AzureVirtualNetworkGateways

Class to create and manipulate virtual network gateways.

AzureCloudEAAPIBase

Base object for Azure EA API handlers. Azure EA APIs
have a base URL of https://consumption.azure.com
and require the enrollment number in the path. This
class handles marshalling of the EnrollmentNumber and
EnrollmentToken parameters.

Other AWS classes
Class

AmazonImages

Description

Class to handle Amazon machine images.
http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/
AMIs.html

AmazonResponseProcessorUtil
AWSAutoScalingGroups

Class to handle AWS REST API response.
Class to handle AWS API calls to create and manipulate
Auto Scaling Groups .

AWSCloudFormation

Handler for AWS CloudFormation API calls.

AWSEC2

Handler for AWS EC2 API calls.

AWSKeyValuePair

Class to import and manipulate key pairs.

AWSLaunchConfigurations

Helper class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
Class

Description

AWSS3

Handler for AWS S3 API calls.

AWSTopics

Class with AWS topics

.

Azure VM provisioning walkthrough
This example walks you through the components of Cloud Provisioning and Governance that
function during the provisioning of a virtual machine in an Azure datacenter. Topics covered
include blueprints, resource blocks, the Cloud API (CAPI), and MID Server script includes.

Before you begin

Role required: admin

About this task

This walkthrough starts with a Linux VM that a user already provisioned in Azure. Next, it walks
you through the blueprint with the VM, the resource blocks, and then the CAPI calls specified
from the resource blocks. Finally, the walkthrough shows you how a MID Server script include
eventually, through several CAPI calls, makes the actual REST calls to the Azure API.
This example uses default resource blocks and script includes that are available in your instance.
Therefore, although you might not have a provisioned VM on your instance, you can still follow
these steps and view the components used in this example to understand how the components
work.
For an example of a VM in AWS, see AWS VM provisioning walkthrough.

Note: The terms virtual machine, VM, and virtual server are used interchangeably in this
example.

Procedure
1. Look at a provisioned VM in the Cloud User Portal, and focus on some of the details about the
VM:
a. In the base system instance interface, open the Cloud User Portal (Cloud User Portal).
b. On the Cloud User Portal, view a provisioned VM in a stack, such as this VM, by clicking
Stacks, and then clicking the name of the stack.
In this example, the stack is named MyAzureVM.
c. Under Resources, click the VM in the stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
d. View the properties of the VM, and notice that it is in an Azure Datacenter in region eastus.

2. Look at the blueprint on which the VM is based:
a. Navigate to Design > Blueprints, and then open a blueprint with a virtual server in the
Azure datacenter. The Deployment Model tab appears by default, showing you the various
components of the blueprint.
This example blueprint has three components: the container, the virtual server, which is the
actual VM that is provisioned, and the Azure datacenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
b. Click the Operations tab on the bottom, and then click Provision.

The Provision operation is the operation that the system triggered when it created the VM.
Other default operations are available, but this example focuses on the Provision operation.
c. Click the Provision block for Blueprint Container Resource.

d. On the right, notice that one of the parameters in the Inputs list is Location.
This parameter holds the value eastus, which is where the VM lives in the datacenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
Inputs can be specified on the container, as it is in this example, or on any other resource
block. By default, the Location parameter is already specified for you in the Blueprint
Container resource block, so that you can use it in every blueprint like this one. If you switch
the blueprint to Draft, you can add more parameters to the Blueprint Container resource
block. You cannot add parameters to the Virtual Server resource block. For this walkthrough,
no additional parameters are necessary.
3. View the Virtual Server and Datacenter resource blocks used in this blueprint:
a. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
b. Search for and open the Virtual Server resource block, which is provided by default with
Cloud Provisioning and Governance.

c. On the Resource Block form, click the Host Resource related list to view the list of supported
host resource blocks.
d. Notice the host interface and host resource that are already specified:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
▪ The Host Interface field specifies the interface that must match the guest interface in
the resource block that hosts this virtual machine. In this case, the host interface is the
Compute Interface, which is also the guest interface on the Azure Datacenter resource
block. By default, the datacenter resource blocks provide several guest interfaces that
other resource blocks like virtual storage can use to connect to the datacenter.
▪ The HostResource column in the Host Resource related list already specifies Azure
Datacenter, which means that the Azure datacenter resource block is a valid host for this
VM.
e. Click the Operations tab, and then click the Steps subtab.

f. Select Provision from the Operation list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
Remember that the Provision operation is the operation that the system used to create
the VM. Other default operations are available, but this example focuses on the Provision
operation.
g. Notice the step that appears in the list and the full step description that appears above the
input parameters:

▪ Host Resource Operation: indicates that this step calls an operation on the host resource
(the Azure datacenter in this example).
▪ Compute Interface is the guest interface on the Azure datacenter that this step is using.
▪ ConnectAndCreateVirtualMachine is the operation in the Azure datacenter that this step
calls.

Note: In this case, the step calls an operation from another resource block: the Azure
datacenter. Steps can also call CAPI directly, and then CAPI can execute REST calls
to the cloud provider API. You can see that when you look at the Azure datacenter
resource block.
h. Navigate back to Design > Resource blocks.
i. Open the Azure Datacenter resource block, which is the host resource block that the virtual
server is connected to.
j. Notice the supported guest interfaces in the Guest Interface related list:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
These guest interfaces are the interfaces that the Azure datacenter makes available to other
resource blocks. The Compute Interface is provided so that the Virtual Server resource
block, which specifies the Compute Interface as its host interface, can connect to the
datacenter.
k. Click the Operations tab, and then click the Steps subtab.

l. In the Interface list, select Compute Interface if it is not already selected.

Remember that this interface is specified in the Virtual Server resource block.
m. In the Operation list, search for and select ConnectAndCreateVirtualMachine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
Remember that this operation is specified in the Virtual Server resource block.
n. Notice the CAPI call that is used in the only step for the ConnectAndCreateVirtualMachine
operation:

▪ Cloud API: indicates that this step calls CAPI, so that CAPI can execute a REST call to the
cloud provider, which in this case is Azure.
▪ Compute Interface specifies the CAPI interface that this step calls.
▪ CreateNode indicates the method that is executed. As the name suggests, this method
tells the cloud provider to create the virtual machine.
o. To open the step configuration: With the resource block in the Draft state, point to the
highlighted (blue) step, and then click the Edit Step icon that appears.

p. Look at the step configuration and notice the settings that integrate with CAPI:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
Field

Description

Operation Type

Invoke Cloud API specifies that this step should call the CAPI
via the specified provider, interface, and method.

API Provider (which is
actually the product)

Microsoft.Compute is a product (not the actual provider) that
belongs to the Azure provider as defined in CAPI.

API Interface

Compute Interface is a product that belongs to the Azure
provider as defined in CAPI.

API Method

CreateNode is the method that calls Azure to create the VM.

Note: The CAPI API definition ties together the provider (Azure), the product
(Microsoft.Compute), the interface (Compute Interface), and the method (CreateNode).
q. Close the window.
r. With the Compute Interface.CreateNode step selected, click the Response Processor tab,
and notice the Create_Virtual_Server_Response_Processor script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
This script is the response processor that updates the CMDB in your instance after the
virtual machine is created.
s. View an explanation of the script and the example that is a part of the topic at Create a
Response Processor.
When you finish reviewing that topic, return to this topic.
4. Look at the CAPI components that work together to provision the VM:
a. In the Cloud Admin Portal, navigate to Design > Cloud API.
b. Click the API tab and then search for an open Azure Compute API.
c. Look at how this CAPI API ties together an interface and a product:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
Field

Description

Cloud API Interface

Compute Interface is the same interface that you can see
specified in the resource block. The interface contains
the definition for methods, including the CreateStack
method.

Connector

Script Connector indicates that this CAPI provides a
MID Server script include for each operation. The script
include calls the API. You can modify the script include or
even create a new one.

Version

1.0 indicates the version of the API. You could have
multiple versions of this API with different version
numbers. Remember that in the step in the datacenter
resource block that creates the VM, a Version field is
provided. Although it was blank in this example because
there is only one version of this API, you can specify a
different version number.

Product

Microsoft.Compute is the product that belongs to the
provider in CAPI. This product is provided by default with
Cloud Provisioning and Governance, and is one of the
most commonly used products for creating VMs on Azure.

d. In the CAPI Method Mappers related list, click the record preview icon for the CreateNode
record, and then click Open Record.

e. Look at the CreateNode method mapper:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
Notice that the Endpoint operation is Execute Script, which indicates that a customizable
script include is used to call functions in CAPI, which eventually makes the REST calls to
Azure. The azure-compute-1.0-CreateNode MID Server script include is specified in
the Request script field.
This graphic illustrates how the components — from the resource block to the script include
— are connected:

f. Click the record icon (

) for the Request script.

The azure-compute-1.0-CreateNode MID Server script include opens.
g. Review the contents of the script.

createNode();
function createNode(){
var acp = new AzureComputeVirtualMachine(this.parameters,
this.headers);
var vm = acp.createVirtualMachine();
return vm;
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
The script calls the createVirtualMachine function in the
AzureComputeVirtualMachine class. It returns the virtual machine that is created.
The AzureComputeVirtualMachine class extends AzureCloudAPIBase, which is
one of the base APIs in Cloud Provisioning and Governance.
h. To see the AzureComputeVirtualMachine class, which is a MID Server script include,
open the base system instance interface (not the Cloud Admin Portal), and then navigate to
MID Server > Script Includes.
i. Search for and open AzureComputeVirtualMachine.

j. Review the createVirtualMachine function:
The function defines many variables that are required to create a VM, including the
Location (datacenter) and the name of the VM, and so on.

var location = this.parameters.get('Location');
var vmName = this.parameters.get('NodeName');
...
This line of code calls the _performVMOperation function in this same script include
and passes in the parameters that are necessary. Notice that an empty value '' is passed
for the action parameter:
var response = this._performVMOperation(subscriptionId,
resourceGroup, vmName, '', 'PUT', jsonObj.encode(params));
The _performVMOperation function calls the function _invokeRequest, which is
located in the AzureCloudAPIBase class:
return this._invokeRequest(this.pathDefault, param, method,
requestBody);
The PUT method for the REST call is specified in the method parameter.
Look at the AzureCloudAPIBase MID Server script include. The _invokeRequest
function first calls the _getEndpoint function to get the endpoint and the
_getAPIInvoker function to identify the AzureAPIInvoker class as the class that
invokes the actual PUT call:
var apiInvoker = this._getAPIInvoker(apiEndpoint,
this.apiVersion);

AzureAPIInvoker is extended from CloudRESTAPIInvoker, which provides
the base functions for all invokers. Once the correct invoker class is identified, a
response variable is created to hold the value returned from invokePut function in the
CloudRESTAPIInvoker:
response = apiInvoker.invokePut(requestBody);

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
Look at the CloudRESTAPIInvoker, which is the base class for all invokers. The
invokePut function specifies the PUT method and calls getRequest, and it returns the
response from the getResponse function, which gets a status code and the response
from Azure. This invoker class is where the connection to Azure is made.
Return to the AzureComputeVirtualMachine MID Server script include and find these
lines:

var response = this._performVMOperation(subscriptionId,
resourceGroup, vmName, '', 'PUT', jsonObj.encode(params));
this._compareVMState(response.id, 'PowerState/running');
var nodeResponse = this.getVirtualMachine(response.id);
Remember that the variable response is returned from the call to
_performVMOperation, which has the response from the API invoker that
triggered the PUT method. The nodeResponse variable holds the response from the
getVirtualMachine function, which is passed the ID of the virtual machine that is in the
response. The getVirtualMachine function calls _getVMInfo, which calls the same
_invokeRequest function that was called earlier. This call is another connection to the
invoker, which performs the actual REST calls. In this case, the REST call is a GET REST call
to Azure to obtain the identify of the VM.
The return nodeResponse; line returns nodeResponse in the
createVirtualMachine function, which was called from the MID Server script include
on the createNode operation.
This graphic illustrates the classes involved:

k. Navigate back to the Azure Compute API form.
l. Click the API Config Overrides related list, and review the items that are required for
authentication.

Config Parameter and Override Value

ClientID

Description

The client ID is necessary to identify the application in Azure.

$(CloudCredential.client_id)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
Config Parameter and Override Value

EndpointURL

Description

The endpoint URL is the authorizing input in Azure.

$(CloudCredential.URL)
SecretKey

The secret key is used to authorize the client.

$(CloudCredential.secret_key)
TenantID

The tenant ID is the globally unique identifier for your tenant.

$(CloudCredential.tenant_id)
EnrollmentNumber

Azure enrollment number and the token to access the enrollme

$(CloudCredential.sn_cmp_ea_credential.enrollment_number)
EnrollmentToken
$(CloudCredential.sn_cmp_ea_credential.access_key)
See Store the Azure service principal credentials in the instance for more information on the
Azure information that is used in these overrides.
m. Navigate back to Design > Cloud API, and then click the Interface tab.
n. Search for and open Compute Interface.
o. Review the contents of the interface.
Notice that the interface provides REST response structures for methods like CreateNode.
You typically do not need to modify existing interfaces.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


<!-- page 568 -->
Note the service category and the operations:

Field or related
list

Description

Service
Category

The service category classifies the interface. The category for the
Compute Interface is also Compute.

CAPI Interface
Operations

The interface operations define the JSON structure for the REST call and
the parameters that are required for the interface.

p. Click the CreateNode CAPI interface operation.
This operation is the operation that provides the framework for creating the EC2 virtual
server.
q. Review the components of the operation:

Field or
related list

Response
structure

Description

The response structure is the JSON framework for REST API call. It provides
a list of attributes that the provider can use to create the virtual resource
with empty values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
Field or
related list

Description

Interface
Operation
Parameters

These parameters are also the parameters that the CAPI interface needs
from the system so it can pass it in the REST call to the cloud provider.

r. Navigate back to Design > Cloud API and then click the Provider tab.
s. Open the Azure provider.
The Azure Cloud Provider form opens, showing you that this provider is based on an existing
CMDB class: Azure Datacenter [cmdb_ci_azure_datacenter].
t. Click the Cloud Products related list, and sort the list by the Name column.
Notice that several Azure products are available by default. One of the most commonly used
Azure products created from templates is Microsoft.Compute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
u. Click Microsoft.Compute in the Name column.
Notice that the product specifies many resource types, each of which is mapped to a CI
class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
These resource types indicates some of the CIs, but not all, that are related to the virtual
machine. The response processor in the resource block populates CIs with data when the
cloud provider provisions the VM.
5. To see the important CIs that are related to the VM:
a. On the Cloud User Portal, click Stacks, and then open the stack containing the VM.
b. Click the View Dependency icon.

The dependency map displays the stack CI at the top, the VM in the middle, and the various
related CIs, such as the image, at the bottom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
c. To view the form for the VM in the CMDB, right-click the arrow next to any CI.

d. From the menu, select View Form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
The CI form opens, showing you much of the information is already available on the Cloud
User Portal when you view the properties of the VM.

The VM CI form

VM properties in the Cloud User Portal

AWS VM provisioning walkthrough
This example walks you through the components of Cloud Provisioning and Governance that
function during the provisioning of a virtual machine in an AWS datacenter. Topics covered
include blueprints, resource blocks, the Cloud API (CAPI), and MID Server script includes.

Before you begin

Role required: admin

About this task

This walkthrough starts with a Windows VM that a user already provisioned in AWS. Next it walks
you through the blueprint with the VM, the resource blocks, and then the CAPI calls specified
from the resource blocks. Finally, the walkthrough shows you how a base MID Server script
include makes the actual calls to the AWS API.
This example uses default resource blocks and script includes that are available in your instance.
Therefore, although you might not have a provisioned VM on your instance, you can still follow
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
these steps and view the components used in this example to understand how the components
work.
For an example of a VM in Azure, see Azure VM provisioning walkthrough.

Note: The terms virtual machine, VM, and virtual server are used interchangeably in this
example.

Procedure
1. Look at a provisioned VM in the Cloud User Portal, and focus on some of the details about the
VM:
a. On your instance, open the Cloud User Portal (Cloud Provisioning and Governance Cloud
User Portal).
b. View a provisioned VM in a stack, such as this Windows VM, by clicking Stacks, and then
clicking the name of the stack.
In this example, the stack is named MyStack.

c. Under Resources, click the VM in the stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
d. View the properties of the VM, and notice that it is in region us-east-1 in an AWS Datacenter.

2. Look at the blueprint on which the VM is based:
a. Navigate to Design > Blueprints, and then open a blueprint with a virtual server in the
Azure datacenter. The Deployment Model tab appears by default, showing you the various
components of the blueprint.
This example blueprint has three components: The container, the virtual server, which is the
actual VM that is provisioned, and the AWS datacenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
b. Click the Operations tab on the bottom, and then click Provision.

The Provision operation is the operation that the system triggered when it created the VM.
Other default operations are available, but this example focuses on the Provision operation.
c. Click the Provision block for Blueprint Container Resource.

d. On the right, notice that one of the parameters in the Inputs list is Location.
This parameter holds the value eastus, which is where the VM lives in the datacenter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
Inputs can be specified on the container, as it is in this example, or on any other resource
block. By default, the Location parameter is already specified for you in the Blueprint
Container resource block, so that you can use it in every blueprint like this one. If you switch
the blueprint to Draft, you can add more parameters to the Blueprint Container resource
block. You cannot add parameters to the Virtual Server resource block. For this walkthrough,
no additional parameters are necessary.
3. Look at the Virtual Server and AWS Datacenter resource blocks used in this blueprint:
a. In the Cloud Admin Portal, navigate to Design > Resource Blocks.
b. Search for and open the Virtual Server resource block, which is provided by default with
Cloud Provisioning and Governance.

c. On the Resource Block form, click the Host Resource related list to view the list of supported
host resource blocks.
d. Notice that the host interface and host resource are already specified:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
▪ The Host Interface field specifies the interface that must match the guest interface in
the resource block that hosts this virtual machine. In this case, the host interface is the
Compute Interface, which is also the guest interface on the AWS Datacenter resource
block. By default, the datacenter resource blocks provide several guest interfaces that
other resource blocks like virtual storage can use to connect to the datacenter.
▪ The HostResource column in the Host Resource related list already specifies AWS
Datacenter, which means that the AWS datacenter resource block is a valid host for this
VM.
e. Click the Operations tab, and then click the Steps subtab.

f. Select Provision from the Operation list.

Remember that the Provision operation is the operation that the system used to create
the VM. Other default operations are available, but this example focuses on the Provision
operation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
g. Notice the step that appears in the list and the full step description that appears above the
input parameters:

▪ Host Resource Operation: indicates that this step calls an operation on the host resource
(the AWS datacenter in this example).
▪ Compute Interface is the guest interface on the AWS datacenter that this step is using.
▪ ConnectAndCreateVirtualMachine is the operation in the AWS datacenter that this step
calls.

Note: In this case, the step calls an operation from another resource block: the AWS
datacenter. Steps can also call CAPI directly, and then CAPI can execute REST calls to
the cloud provider API. You can see that when you look at the AWS datacenter resource
block.
h. Navigate back to Design > Resource blocks.
i. Open the AWS Datacenter resource block,which is the host resource block that the virtual
server is connected to.
j. Notice the supported guest interfaces in the Guest Interface related list:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
These guest interfaces are the interfaces that the AWS datacenter makes available to other
resource blocks. The Compute Interface is provided so that the Virtual Server resource
block, which specifies the Compute Interface as its host interface, can connect to the
datacenter.
k. Click the Operations tab, and then click the Steps subtab.

l. In the Interface list, select Compute Interface if it is not already selected.

Remember that this interface is specified in the Virtual Server resource block.
m. In the Operation list, search for and select ConnectAndCreateVirtualMachine.

Remember that this operation is specified in the Virtual Server resource block.
n. Notice the CAPI call that is used in the only step for the ConnectAndCreateVirtualMachine
operation:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
▪ Cloud API: indicates that this step calls CAPI, so that CAPI can execute a REST call to the
cloud provider, which in this case is AWS.
▪ Compute Interface specifies the CAPI interface that this step calls.
▪ CreateNode indicates the method that is executed. As the name suggests, this method
tells AWS to create the virtual machine.
o. With the resource block in the Draft state, point to the highlighted (blue) step and then click
the Edit Step icon to open the step configuration.

p. Look at the step configuration, and notice the settings that integrate with CAPI:

\

Field

Description

Operation Type

Invoke Cloud API specifies that this step should call the CAPI
via the given provider, interface, and method.

API Provider

AWS Elastic Compute Cloud is a product (not that actual
provider) that belongs to the AWS provider as defined in CAPI.

API Interface

Compute Interface is a product that belongs to the AWS
provider as defined in CAPI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
Field

Description

API Method

CreateNode is the method that calls AWS to create the VM.

Note: The CAPI API definition ties together the provider (AWS), the product
(AWS Elastic Compute Cloud), the interface (Compute Interface), and the method
(CreateNode).
q. Close the window.
r. With the Compute Interface.CreateNode step selected, click the Response Processor tab,
and notice the Create_Virtual_Server_Response_Processor script.

This script is the response processors that updates the CMDB in your instance after the
virtual machine is created in AWS.
s. View an explanation of the script and the example that is a part of the topic at Create a
Response Processor.
When you finish reviewing that topic, return to this topic.
4. Look at the CAPI components that work together to provision the VM:
a. In the Cloud Admin Portal, navigate to Design > Cloud API.
b. Click the API tab.
c. Search for an open AWS Compute API.
There are two AWS Compute API records. Open the first one in the list that matches the
image in the next step.
d. Look at how this CAPI API ties together an interface and a product:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
Field

Description

Cloud API Interface

Compute Interface is the same interface that you can see
specified in the resource block. The interface contains
the definition for methods, including the CreateNode
method.

Connector

Cloud Compute Connector indicates that this CAPI
makes Java calls to the system, which then calls the AWS
API. This connector is not scripted. If this were a scripted
connector, it was have a MID Server script include that
calls the AWS API.

Note: Most AWS-related APIs that are provided in
the Cloud Provisioning and Governance application
by default are not scripted, like this one, and cannot
be modified. But you can create your own scripted
APIs.
Version

1.0 indicates the version of the API. You could have
multiple versions of this API with different version
numbers. Remember that in the step in the AWS
Datacenter resource block that creates the VM, a Version
field is provided. Although it was blank in this example
because there is only one version of this API, you could
specify a different version number.

Product

AWS Elastic Compute Cloud is the product that belongs
to the AWS provider in CAPI. This product is provided by
default with Cloud Provisioning and Governance, and is
one of the most commonly used products for creating VMs
on AWS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
e. In the CAPI Method Mappers related list, click the record preview icon for the CreateNode
record, and then click Open Record.

f. Look at the CreateNode method mapper:

Notice that the Endpoint operation is not Execute Script. This value indicates that the
CreateNode method is using a Java call within the Cloud Provisioning and Governance
application on your instance to make a REST call to the AWS API. Therefore, you cannot
modify how the CreateNode method works. If the value was Execute Script, you would see a
MID Server script include specified in the Request script field. You would be able to modify
that script include, or specify a new one, to customize the REST calls to the AWS provider.
g. Scroll down and look at parameters in the CAPI Parameter Mappers related list.
Notice that important parameters, such as Location, are provided.
h. Navigate back to the AWS Compute API form.
i. Click the API Config Overrides related list, and review the items that are required for
authentication:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
Config Parameter and Override
Value

AccountAliasName
$(CloudCredential.Alias)
Credentials
$(CloudCredential.secret_key)

Endpoint
$(CloudCredential.URL)
Identity

Description

The account alias is an optional value that you can create
in your AWS account. It is a secondary name for your
account ID. See the AWS documentation
for more
information.
The secret key is used with the access key for
authentication. You configured this value in your AWS
credential record during setup. To refer to that procedure,
see Configure access to the AWS accounts using
permanent AWS credentials.
The endpoint is the URL that your users must log in to and
authenticate. It uses the account ID or the account alias.
See the AWS documentation
for more information.
The Identify record holds the AWS access key, which
AWS requires for authentication.

$(CloudCredential.access_key)
j. Navigate back to Design > Cloud API, and then click the Interface tab.
k. Search for and open Compute Interface.
This interface is the interface specified in the resource block and the AWS Compute API
CAPI API.
l. Review the contents of the interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
Notice that the interface provides REST response structures for
methods like CreateNode. You typically do not need to modify existing

interfaces.
Note the service category and the operations:

Field or related
list

Description

Service
Category

The service category classifies the interface. The category for the
Compute Interface is also Compute.

CAPI Interface
Operations

The interface operations define the JSON structure for the REST call and
the parameters that are required for the interface.

m. Click the CreateNode CAPI interface operation.
This operation is the one that provides the framework for creating the EC2 virtual server in
AWS.
n. Review the components of the operation:

Field or related
Description
list

Response
structure

The response structure is the JSON framework for REST API call. It
provides a list of attributes that AWS can use to create the virtual resource
with empty values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
Field or related
Description
list

Interface
Operation
Parameters

These parameters are also the parameters that the CAPI interface needs
from the system so it can pass it in the REST call to the cloud provider.

o. Navigate back to Design > Cloud API, and then click the Provider tab.
p. Open the AWS provider.
The AWS Provider form opens, showing you that this provider is based on an existing CMDB
class: AWS Datacenter [cmdb_ci_aws_datacenter].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
q. Click the Cloud Products related list if it is not already selected, and sort the list by the Name
column.
Notice that several AWS products are already available by default. One of the most
commonly used AWS products is Elastic Compute Cloud (EC2).

r. Click AWS Elastic Compute Cloud in the Name column.
Notice that the product specifies many resource types, each of which is mapped to a CI
class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
These resource types indicates the some of the CIs, but not all, that are related to the virtual
machine. The response processor in the resource block populates CIs with data when AWS
provisions the VM.
5. To see the important CIs that are related to the VM:
a. On the Cloud User Portal, click Stacks, and then open the stack containing the VM.
b. Click the View Dependency icon.

The dependency map displays the stack CI at the top, the VM in the middle, and the various
related CIs, such as the image, at the bottom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
c. To view the form for the VM in the CMDB, right-click the arrow next to any CI, such as the VM.

d. From the menu, select View Form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
The CI form opens, showing you that much of the information is already available on the
Cloud User Portal when you view the properties of the VM.

VM properties in the Cloud User Portal

Add a product to an existing provider in CAPI
The Cloud Provisioning and Governance Cloud API (CAPI) offers many providers, such as AWS
and Azure, and products, such as EC2 instances. However, you can add products to existing
providers for new types of cloud resources.

Before you begin
• Role required: admin
• Review Default CAPI APIs and make sure the provider and product that you want to create are
not already provided.
• Familiarize yourself with the cloud provider API so that you know how to create REST calls to
the provider. If you are not familiar with the headers, authentication requirements, endpoint,
and data that you can pass into the provider API, you cannot build your own CAPI components.

About this task

This topic provides general instructions for extending an existing cloud provider, product, and
resource type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
Procedure
1. In your instance (not in the Cloud Admin Portal), enter the following text into the application
filter:
sn_capi_product.list

2. Press ENTER.
The list of products that belong to all providers appears. You can filter the list to verify that the
product you want to create is not already provided.
3. Click New and then enter a name and choose one of the existing service categories that is
most appropriate.
4. Click Submit.
The list of products appears again.
5. Find the product that you created, and then double-click the empty cell in the Provider
column.

6. Add the correct provider.
7. Add a unique provider name: Double-click the cell in the Provider Name field and then change
the name.
The system can auto-generate a provider name for you, but you should modify it to avoid
conflicts with existing provider names.
8. In the Cloud Admin Portal, navigate to Design > Cloud API.
9. Click the tile for the provider to which you added the new product.
10. Verify that your product is in the Cloud Products related list.
11. Click the information icon (

) for the cloud product, and then click Open Record.

12. In the Cloud Resource Types related list, click New and then fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
Field

Description

Name

A unique and descriptive name.

Product

The Cloud Product for which you're creating the Resource
type. Select from the lookup list or create new.

CI Class

A CMDB table you need to associate with the resource
type. If you do not see the correct CMDB table, see Create
a CI class for a virtual cloud resource for instructions on
how to create one.

Pattern

The pattern that is used to discover the resource type.
Select from the Discovery patterns lookup list or create a
new pattern.

Dependency Sequence

The order in which resource type is provisioned or
discovered.
Specify the order based on inter-dependencies of
resources. For example, if you have a network and a subnet
that you want to discover or create, specify a higher order
for network than subnet, so that discovery or creation of
resources is performed logically and sequentially.

13. Click Submit.

What to do next

Create a CI class for a virtual cloud resource if necessary, or Create or extend a CAPI interface
Create a CI class for a virtual cloud resource
If the base system does not provide a CI type for cloud-based virtual resources, you can create a
CI class based on the virtual machine object class.

Before you begin

Role required: admin

About this task

This topic provides general instructions for extending an existing cloud provider, product, and
resource type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
Procedure
1. Navigate to All > Configuration > CI Class Manager.
2. Click Open Hierarchy.

3. On the CI Classes pane, enter Virtual Machine Object in the search field, and then
select Virtual Machine Object.

4. Click the Virtual Machine Object link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
5. Click Add Child Class.
6. In the Provide Basic Info step that appears, enter a name and a description.
When you move the focus of the cursor away from the Display Name field, the Table Name
field automatically populates with the same name in lower case. For a table in a scoped
application, the name is prefixed with a namespace identifier to indicate that it is part of
an application. For a table in the global application, the name is prefixed with the string
u_cmdb_ci. You cannot modify the prefix; however, you can modify the rest of the table name.
The name can contain only lowercase alphanumeric ASCII characters and underscores (_).
The maximum string length is 80 characters.
7. Click Next.
8. On the Add Attributes step, click Derived, and then review the attributes that are inherited
from the Virtual Machine Object class.
Most attributes that you need are provided.
9. Optional: To add an attribute:
a. Double-click the Insert a new row text in the Column label field.
b. Enter a name for the column and then click the green arrow.
c. Fill out the rest of the fields in the row.
See Dictionary entry form
for a description of all the fields.
10. Click Next.
11. On the Set Identification Rule step, create an identification rule that specifies a unique Object
ID, which is required for identification.

Important: Cloud Provisioning and Governance depends on the Object ID to uniquely
identify an instance of the CI Class Type.
a. Click Replace on the default rule under Identification Rule.
b. Enter a name for the rule and select the Dependent option.
c. Click Save.
d. Under Identifier Entries, click Add.
e. Move Object ID from the Available column to the Selected column.
f. Click Save.
12. Click Next.
13. On the Add Dependent Relationships step, click Override Dependencies.
14. Configure the relationship between this virtual resource and the logical datacenter on which it
resides:

Field

Value

Rule Type

Hosting

Relationship

Hosted on (Hosted on::Hosts)

Target Class

Logical Datacenter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
15. Click Save.
16. Click Next.
17. Click Next again to skip the Add Reconciliation Rules step, and then click Done to skip the
Add Suggested Relationships step.

What to do next

Use the CI class in a resource type for a cloud provider. See Add a product to an existing provider
in CAPI for instructions.
Your response processor, which is part of the resource block, must also specify the necessary
CI class types so it can update the CMDB. Usually, the response processor needs the object ID,
the specific datacenter, and the cloud service account. See Virtual server response processor
example for example response processor code that uses CI classes.
Create or extend a CAPI interface
You can create a new CAPI interface or extend an existing one by adding new operations.

Before you begin
• Role required: admin
• Review Default CAPI APIs and make sure the provider and product that you want to create do
not exist.
• Familiarize yourself with the cloud provider API so that you know how to create REST calls to
the provider. If you are not familiar with the headers, authentication requirements, endpoint,
and data that you can pass into the provider API, you cannot build your own CAPI components.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
About this task

Usually, you can use the default interfaces that are provided in the Cloud Provisioning and
Governance application. To create a custom interface, base it on an existing one that is similar.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud API, and then click the Interface tab.
2. Click New.
3. In the Add Cloud interface window, enter a name for the interface, a helpful description, and
select the most relevant category to which the API interface should belong.
This example shows an interface for Azure storage:

4. In the CAPI Interface Operations related list, click New.
Each operation that you create corresponds to a different REST API call.
5. Provide a name for the operation that corresponds to the API you want to call in the provider.
For example, you can create an operation called CreateContainer that corresponds to the
Create Container operation in Azure.

6. Right-click the header and select Save.
7. In the Interface Operation Parameters related list, click New.
8. Create a parameter that the operation needs as defined by the cloud provider REST API
documentation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
If you do not know the parameters, the operation fails. In the Azure storage example, the
CreateContainer operation must have the name of the container that is referred to here
as ContainerName.

9. Click Submit.
10. Add as many parameters as you need for the operation, and then add all the operations you
need.

What to do next

Create a CAPI API
Create a CAPI API
If the existing CAPI APIs do not integrate with the CAPI interface for a provider, you can create an
API. The steps in resource blocks can call your API methods when operations are executed.

Before you begin
• Role required: admin
• Review Default CAPI APIs and make sure the provider and product that you are creating do not
exist.
• Familiarize yourself with the cloud provider API so that you know how to create REST calls to
the provider. If you are not familiar with the headers, authentication requirements, endpoint,
and data that you can pass into the provider API, you cannot build your own CAPI components.

About this task

This topic provides instructions for creating a CAPI API. It also cover the configuration of CAPI,
resource blocks, blueprints, and credential mappings.

Procedure
1. In the Cloud Admin Portal, navigate to Design > Cloud API.
2. Click the API tab.
3. Click New.
4. Fill out the form fields (see table):

Field

Description

Cloud API

Provide a descriptive name.

Interface

Select from among the existing interfaces that provide the
operations you need.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


<!-- page 599 -->
Field

Description

Connector

Script Connector appears in this field if the connector is a Java
connector that is available out-of-box and cannot be modified.
You do not need to modify these script connectors.

Product

Select the product that is part of the provider. The product
includes resource types in the CMDB.

Version

Provide a version number to identify this API. Enter 1.0 if this API
is the first version. You can create several versions of the same
API and then refer to the specific versions in the operation steps
of resource blocks.

Scripted

This field is selected if the Interface value is Script Connector.

Script Type

Select the language for the script.

Note:
JavaScript is recommended. The method mappers use MID
Server script includes written in Javascript.
ExecuteScriptOnInstance
Description

Provide a description for this API.

5. Verify that all the operations you need appear in the CAPI Method Mappers related list.
The operations in the CAPI Method Mappers list are the same operations in the interface
that you selected. They are bound to this API. You cannot add or remove any operations from
the list. Some of the operations, especially Azure operations, use MID Server script includes
that perform the actual implementation for the API. The script includes a call to the REST API
for the provider, such as AWS or Azure. You should be able to find the API in the provider's
documentation.
6. To see the script include for a CAPI Method Mapper:
a. Click the gear icon ( ) on the CAPI Method Mappers related list, add the Request Script
field to the Selected column, and then click OK.

The MID Server script includes now appear in the list of method mappers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
b. Click the name of a script to view the script include.
In this example, the CreateNode operation uses the azure-compute-1.0CreateNode script include.

That script include contains the following code:
createNode();
function createNode(){
var acp = new AzureComputeVirtualMachine(this.parameters,
this.headers);
//this passes the parameters and headers into the
AzureComputeVirtualMachine script include.
var vm = acp.createVirtualMachine();
return vm;
}
Notice that the code calls the AzureComputeVirtualMachine script include, which is
available by default with the Cloud Provisioning and Governance application. It contains all
the API calls to Azure against virtual machines.
7. Create an API config override to pass the necessary credential information to the cloud
provider.
You also need to pass header information required by the cloud provider REST API. API config
overrides are necessary because credential data is not included when your instance makes
the REST call to the cloud provider API.

Tip: If you do not know which API config overrides to create, look at a similar API that
exists in CAPI, and use the same overrides. For example, if you are creating an API for
something like AWS storage, look at other AWS APIs such as AWS Block Storage or AWS
Compute.
a. In the API Config Override related list, click New.
b. Click the lookup icon and select an existing config parameter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
Many useful parameters are provided by default, such as Identity, Credentials, and so on.
c. Enter an Override value.
You can set a static value, or you can pull a value from the system in the form of
$(CloudCredential.attribute_name). The CloudCredential portion unlocks
it from the credential store. The attribute_name portion is an attribute that depends on
the particular credential or alias or endpoint URL that you are trying to retrieve.
If you navigate to Connections and Credentials > Credentials and open your AWS
credential, you can right-click the Access Key ID field and see the name of the
column in the Credentials table where the access key is stored. In this case, the
access key is stored in the access_key column. So your Override value should be
$(CloudCredential.access_key).

8. If you need to create a configuration parameter to use in the API Config Override, follow this
procedure:
a. On the API Config Override form, click the lookup icon in the Config Parameter field.
b. Click New on the Configuration Parameter window and then fill in the form.

Field

Description

Config
parameter
name

Enter a descriptive name.

Default
value

Set an optional default value.

Endpoint

This field is read only.

Description Enter a helpful description.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

601


<!-- page 602 -->
Field

Description

Config data Select the type of data:
type
▪ String
▪ DateTime
▪ Date
▪ Long
▪ Password
▪ Boolean
Config type Select the type of configuration:
▪ Header: Use this value to pass the override values as headers. If your have
a MID Server script include as part of your API and it uses this.headers
as a parameter, the override values are passed to the provider API.
▪ Config
▪ URI Config
9. If necessary, modify the script includes that execute the operations against the cloud provider
API:
a. On the Cloud API form, in the CAPI Method Mappers related list, click the information icon
(
) next to the CAPI interface operation.
Do not click the CAPI Interface Operation name itself.
b. Click Open Record.
c. On the operation form, you can modify the following field values:

Field

Description

Endpoint
operation

Keep the default Execute Script endpoint operation.

Supported You typically do not need to change this value.
in version
Change the Supported in version to use the method mapper in a different
version of the API. By default, the method mappers are set to the same version
number as the API they belong to.

d. In the Request Script field, click the information icon (
Server script include to modify it.

) next to the placeholder MID

e. On the script include form, create your script.
The following example JavaScript lists Azure load balancers. Note the helpful comments:

getResourceInfo();
function getResourceInfo() {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
var anpi = new AzureLoadBalancer(this.parameters,
this.headers);
//this calls the 'AzureLoadBalancer' MID Server script
include, which in turn
//calls the 'AzureCloudAPIBase' script include, both
of which
//are already in your instance by default.
//The 'AzureCloudBase' script include runs a query for
resources of a given type in a
//specified region.
var items = anpi.listResourcesByRegionOrIDs();
//This function is in the 'AzureCloudAPIBase' script
include. It calls the Azure API.
return items;
}
The overrides provided for this operation are what Azure needs to find the load balancers:
the Client ID, Tenant ID, the Secret Key, and the Endpoint URL:

For the Google Cloud integration example, a MID Server JAR file is also needed.
f. Click Submit.
g. Modify the script include for each operation.

Cloud User Portal
The Cloud User Portal gives you immediate access to all day-to-day cloud activities.

Cloud User Portal
Use the Cloud User Portal to perform the following actions:
• Monitor your quota, costs, budget, life-cycle events, stack health, and requests.
• Request stacks from the service catalog and track requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
• Request life-cycle operations for stacks and resources (for example, stop, start, or
deprovision).
• Create and track incidents.

Using the 'Overview' page

Tasks on the 'Overview' page
Launch a
Stack

Open the service catalog of items that you can request. You request an item
and, when your request is approved, the system launches the stack. See
Launch a stack.

Manage
Stacks

View the stacks assigned to you. See Manage a stack.

View
Activities

View activities for your stacks and resources. Activities include stack requests,
change requests, incidents, cloud events, and SSH keys. See View Activities.

View
Resources

Opens the Resource Details page to view details and status of a resource. See
Manage a resource.

Pending
Requests

When you submit a request for a stack, the Activities page displays the
progress and status of the stack request, and a Pending Requests link and
count appears. Click the link to view a summary of pending stack requests. See
Track a stack request.

Important: Starting with the Zurich release, the Current Month Spend and Budget
widgets are deprecated for non domain-separated instances.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
Quick-look status reports on the 'Overview' page
Views

A filter to view and manage your resources as well as the resources
assigned to the group you belong to.

Current Month
Spend

A chart that shows costs, by category, for your cloud resources.

Budget

A chart displaying an arc based on your consumption of budget allocated to
you.

Quota

A graph shows your quota consumption for quota-defined resource types
such as VM Count, vCPUs Count, Storage Volume Size, Network Count, and
Stack Count. You can view the quota that you have consumed compared to
your maximum allocated quota. See Viewing resource quota limits.

Recent Stacks

Ten stacks that you most recently requested. Each entry shows the Name,
Catalog item requested, Cloud account used to request the stack, and the
order status of the requested stack. Click a Name to view stack details.

Stack Health

Shows the most recent 10 items: Incidents created for provisioned stacks or
active stacks with a resource turned off. Also shows the resources which are
down. Click an item to view stack details. Color codes for incident type:
• Red: Outage.
• Orange: Performance issue or Something is broken.
• Grey: Question or Request.

Using the task bar
From the task bar, you can perform the following actions:

Overview

Return to the home page of the Cloud User Portal.

Catalog

View the Service Catalog of items that you can request to launch
stacks. When you select a Service Category (VM, Compute,
Network, Storage, and so on), the All Items section lists the items
in the selected category. Click Launch to request an item. See
Launch a stack.

Stacks

Lists all stacks that are assigned to you. Select a catalog item
to view the stacks that the item launches. Click a stack to view
details—all resources, resource properties, activities, and life cycle
operations. See Manage a stack.

Resources

Lists individual resources of the provisioned stacks that are
assigned to you, regardless of who requested the stack. See
Manage a resource.

Activities

Stack requests, change requests, cloud life cycle events (if
configured), and incidents that are associated with your stacks and
resources. SSH keys that you created or that were generated for
you. See View Activities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
Search the Cloud User Portal
The Search page returns search results and provides filters that help you to zoom in on the
results.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. On any portal page, enter text in the Search text box and press Return.
2. To filter the search results on the Cloud Search page, click a category.
In this example, only Stacks that include the search text s appear in the Search results list:

Launch a stack
Launch a stack of cloud resources to submit a request for an item in the service catalog. You can
launch a stack from the Cloud User Portal overview page.

Before you begin

Role required: sn_cmp.cloud_service_user
When you submit a request for an item in the service catalog, the system typically provisions the
stack immediately. Sometimes, your request must be approved first.
If a resource on a stack requires credentials when being accessed via SSH, then you must create
an SSH key pair before you can launch the stack. See Create an SSH key and Download an SSH
key.

Procedure
1. Open the request form using either of the following methods:
◦ On the overview page, click Launch a Stack. By default, all catalog items in all service
categories are listed. Select a Service Category, and then click a catalog item Name.
◦ Open the Catalog page. By default, all catalog items in all service categories are listed.
Select a Service Category and then click Launch on the catalog item.
2. In each section of the form, enter the values that configure your request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
The form fields differ for each catalog offering. Contact your Cloud Provisioning and
Governance administrator if you have any questions about the fields.

Important: When you select a user group on the form, the quota limits for you and the
user group (that you are part of) are shown in the Quota section.
The following sub-steps are applicable only if you are using the Terraform connector and
Terraform config installables.
a. On the General Info section, select Yes for the UseExistingWorkspace option, to use
existing workspaces that are already discovered.
b. Select the Workspace where your config installable resides, from the Workspace list.

Note: If you are configuring a Windows VM, set the IncludeManagementKey field to No.
After the VM is provisioned, you can use the day-2 operation called InfuseKey to add key
credentials (UserName and Password values) to the VM.
3. Optional: On the General Info section, select the Agent pool you have created in your
Terraform Enterprise organization to communicate with private or on-premise infrastructure.

Note: Agent pool selection is applicable only to VMware via Terraform Enterprise setups
for provisioning. You need to have created agent pools in your Terraform Enterprise
organization and have VMware-Terraform Enterprise templates in your workspaces for the
agent pools option to appear on the GUI.
4. Click the section header to move to the next section.
The remaining quota is updated based on the user group that you select. For required fields,
the system selects the first item in the list by default and you can select any value that you
need.
5. Click Submit to request the stack.
◦ The Activities page opens to the Status tab on the Track > Requests activity. The tab
displays the progress and status of the request. The following color codes show the stage of
the request:
◦▪ Green: Completed or Approved.
▪ Orange: Processing.
▪ Red: Rejected, Error, or Canceled.
◦ If approval is required, then after the administrator approves your request, the system
launches the stack and updates the Request Status.
◦ If the quota limit exceeds for you or your user group, then an error message appears or the
system triggers a policy-based approval. For more information about the quota limits, see
Viewing resource quota limits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
◦ Select another request to view its Request Status and Stack Status.
◦ To view a summary of all your pending requests, click the Pending Requests link in the title
bar at any time.

Viewing resource quota limits
View quota limits to see how many resources you have consumed and how many you can
provision based on quota limits set for you and your user group.

Allocated and consumed quota limits
To see the quota you have consumed for provisioning resources compared to the maximum
quota limit allocated to you, navigate to the Overview page. The following predefined resource
types in the system might have quota limits set for you and the user groups to which you belong:
• Stack Count
• VM Count
• vCPUs Count
• Storage Volume Size
• Network Count

Note: The Stack Count is a default base system quota limit available beginning with
the Zurich release. It is displayed on the Overview page if your Cloud Provisioning and
Governance administrator has set a Stack Count quota for you or your user group.
The Quota section on the Overview page displays the quota limits in a graph.
• Green indicates that sufficient resources are available.
• Red indicates that insufficient resources are available.
• If quota limits have been exceeded, the system might either display an error message or
trigger a policy-based approval when you attempt to provision a stack. For more information,
see Provisioning stacks based on quota limits.
The quota limit that is displayed on the Quota section is an aggregate from all of the user groups
to which you belong. To view quota limits separately for you and each of your user groups, click
View All. The Quota Details pop-up window is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
Quota Details pop-up window

The Quota Details pop-up window indicates your consumed quota compared to your allocated
quota limit for each resource type. For example, 0/5 for a resource type means that zero has
been consumed and five is the allocated quota limit.
The quota limit for a resource type appears as either a sum or count. For example, the Storage
Volume Size is shown as a sum in GB and the VM Count is shown as a number.
You can also view quota limits when launching stacks. For more information, see Launch a stack.
Provisioning stacks based on quota limits
The system calculates the quota allocated to you and the user groups to which you belong when
you provision stacks. If quota limits are exceeded, the system either displays an error message or
triggers a policy-based approval.
To view quota limits, navigate to the Overview page. For more information, see Viewing resource
quota limits.

Quota calculation for template-based stacks
The Stack Count is a default base system quota limit available beginning with the Zurich release.
It applies to all template-based stacks in the service catalog.
If your Cloud Provisioning and Governance administrator has set a Stack Count quota for you or
your user group, the system calculates the stack number when you provision a template-based
stack. After provisioning, the system increases the Stack Count quota by a value of 1 for each
provisioned stack.

Stack provisioning after exceeding quota limits
If the quota limit set for you or your user group has been exceeded, the system either displays an
error message or triggers an assigned policy when you attempt to provision a stack.
• If the system displays an error message indicating that the quota limit has been exceeded, you
cannot provision the stack. If you think the quota limit should be increased, contact your Cloud
Provisioning and Governance administrator.
• If a policy is defined in the system for exceeding the quota limit, that policy is triggered. Based
on the policy, the system raises an approval request or notification for increasing the quota
limit. The request follows a predefined subflow in the system for approval. If the request is
approved, the system deploys the stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
Policy triggered for provisioning a stack after exceeding the quota limit

Track a stack request
The system generates a request when you submit the form to launch a stack.

Before you begin

Role required: sn_cmp.cloud_service_user

About this task

If no approval policy is defined, requests are auto-approved. If a policy is defined, then a user on
the approver list must approve the request.
If the quota limit exceeds for you or your user group, then an error message appears or the
system triggers a policy-based approval. For more information about the quota limits, see
Viewing resource quota limits.

Procedure
1. Go to the Activities page or navigate to Overview > View Activities, then select Track >
Requests.
The following color codes show you the status of the request:
◦ Green: Completed or Approved.
◦ Orange: Processing.
◦ Red: Rejected, Error, or Canceled.
2. In the Requests list, click an entry.
Status tab
Request Status

Actions taken on the request. Click the down-arrow (
toggle between:

) to

◦ Verbose mode that describes each action and the status of
the action
◦ Icon-only mode that indicates only the status (pass/fail) of
an action.
Stack Status

Status of each stack request. If deployment fails, errors from
cloud orchestration are listed.

Comments / Work Notes tab
Item requested and request
number

Log of comments and notes made for the request. The itil role
is required to add a comment or work note.
To add a comment or work note:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
a. Enter text.
b. Select the Work notes check box to add a work note.
c. Click Send.
Request Details tab

Values that the requester submitted on the stack request form.

Tasks tab

Lists all the catalog tasks created for stacks that failed to
provision. Click a catalog task to view more details about that
task. See Resubmit a failed stack request.

Resubmit a failed stack request
The Cloud Provisioning and Governance application creates a remediation or a catalog task
when a request for a stack fails to provision. You can resubmit the failed request or assign it to
the Cloud Operator group to handle it for you.

Before you begin

Roles required: sn_cmp.cloud_service_user and sn_cmp.cloud_operator.

About this task

Task remediation captures every remediation applied to a failed request. You can view the
remediation carried out for a failed request and all the major milestones in the Comments/Work
Notes sub tab in the Cloud User Portal. Task remediation is available only for new provisioning of
stacks and not for life cycle or any other operation.
A stack may fail to provision for many reasons. A stack may fail if you have exceeded your cloud
quota, datacenter capacity, or have entered an invalid parameter in the request form (such as a
duplicate NIC).
If a stack fails to provision, a catalog task is created and assigned to you. An error message
pertaining to the failed request is displayed in the Status sub tab in the Cloud User Portal.

Procedure
1. In the Cloud User Portal, navigate to View Activities > Requests > Tasks.
2. Click the catalog task to resubmit.
3. Based on your preference, select an action:
◦ Retry: Resubmits the failed request. You can try to resubmit the failed request by resolving
the error if possible. If the error is due to exceeding the quota limit, you can try to deprovision
some resources that are not currently in use and then click Retry. When you click Retry, the
original request is resubmitted. A new request is not created.

Note: Any policy associated with a resource operation is re-executed.
◦ Ask for Help: Creates a new catalog task and assigns it to the Cloud Operator group to
resubmit the failed request. The Cloud Operator group can look more closely into the error
and try to resolve it for you. Every time the comments or work notes in the catalog task gets
updated by the Cloud Operator group, the changes are reflected in the Comments/Work
Notes sub tab in the Cloud User Portal. If necessary, the operator can cancel the failed
request.
◦ Cancel Order: Cancels the failed request and deprovisions all partially-provisioned
resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
Manage a stack
Use the Stack Details page to view details and status for a stack and to perform life-cycle
operations on a stack.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. Use one of the following methods to open the Stack Details page:
◦ Click Stacks on the toolbar.
◦ Use the Search text box to search for the stack.
◦ On the home page, click a stack in the Recent Stacks, or the Stack Health section.
◦ On the home page, click Manage Stacks.
By default, all stacks in all service categories are listed.
2. In the Stacks list, select a stack category, and then click a stack Name.
The Stack Details page displays the following information:

◦ Breadcrumb navigation
◦ Name of the stack. Click View Dependency to view the dependency map for the stack,
Manage Stack to view the resources, properties, and activities of the stack, and Track
Operations to view the list of lifecycle operations performed on the stack and its resources.
◦ Status information
◦ List of all resources in the stack. Click a resource to view details in the Properties section.
Color codes indicate status of the stack:
▪ Green: On/Active.
▪ Yellow: Turned off or Processing.
▪ Red: Terminated or Error.
◦ List of the stack properties. Some properties are set in the stack request form and others are
set by policy
◦ Activities associated with the stack. Click a tab to view:
▪ Change requests that are associated with the stack. See Track a change request.
▪ Incidents that were raised for the stack. See Submit an incident for a stack and Track an
incident.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
▪ Cloud events that are associated with the stack. Cloud Events appears only when a
resource is selected. See View cloud events.
▪ Catalog tasks associated with the stack. See Resubmit a failed stack request.
▪ Upcoming business hours schedule operations associated with the stack. You can skip an
upcoming operation or cancel a schedule associated with the stack. See Modify business
schedule operations for a stack.
◦ Operations you can perform on a stack. See Perform a life-cycle operation on a stack or
resource.
◦ Text box used to search the Cloud User Portal for stacks, resources based on types, stack
requests, change requests, incidents, keys, and catalog items.
Stack properties
Name

Name that you specified when requesting the stack.

Stack Status

Current status of the stack:
◦ Active (provisioned stacks)
◦ Terminated (deprovisioned stacks)
◦ Unmanaged (discovered stacks)
◦ Error (errored stacks)
◦ Processing (stacks being processed)

Assigned To

Owner of the stack configuration. This drives the access
controls and views in cloud portal.

Cloud Account

Cloud account that the stack is associated with.

Service Request Item

Record created in Request Item table when you ordered the
catalog which resulted in this stack.

Blueprint

Blueprint with which the stack is associated.

Owned by

User name of the requester.

Owner Group

Name of the group the owner of the stack belongs to.

Schedule

The schedule is associated with the stack.

Output

Details specific to ARM/CFT stacks, such as the URL of an
application, names, or locations of any resources created.

Updated

Date and time the stack details were last updated.

Created

Date and time the stack was requested.

End Date

Date and time the stack terminates (unprovisioned).

Manage a resource
Use the Resource Details page to view details and status for a resource and to perform life cycle
operations on a resource.

Before you begin

Role required: sn_cmp.cloud_service_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
Procedure
1. Click Resources on the toolbar.
The Resources page lists all resource types in the left pane.

2. Navigate to the appropriate resource type to see the list of resources that you are interested in
and then click a resource name to view specific details about that resource.

The resource details screen contains the following information:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
◦ Breadcrumb navigation
◦ All properties specific to the resource
◦ Activities associated with the resource. Click a tab to view:
▪ Change requests that are associated with the resource. See Track a change request.
▪ Incidents that were raised for the resource. See Submit an incident for a stack and Track
an incident.
▪ Cloud events that happened to the resource. See View cloud events.
◦ Text box used to search the Cloud User Portal for stacks, resources based on types, stack
requests, change requests, incidents, keys, and catalog items.
Perform a life-cycle operation on a stack or resource
Operations like Start/Stop, Deprovision, and ExecuteScript are called life-cycle operations or
day-2 operations. When you request a life-cycle operation on a stack or resource, the system
generates a change request. An approval policy specifies either that the change is autoapproved or that a user on the approver list must approve the change.

Before you begin
Role required:

Life-cycle operations require the user with sn_cmp.cloud_service_user role who owns
the resource. A user with the root_admin, admin, or sn_cmp.cloud_admin role can also
perform the operation.

About this task
• As noted in the descriptions, not all operations are supported for all providers or for all service
categories (resource types).
• All other configuration management providers: If a stack or resource requires login, then you
must download the associated SSH key before you can access the resource. See Download an
SSH key.

Procedure
1. Select a stack or resource.
2. While viewing the Stack Details page, select the operation from the Select Stack Operation or
Select Resource Operation list.
For for full descriptions of the operations, see Life-cycle operations in Cloud Provisioning and
Governance.
Some operations require settings (for example, the name of a script or new schedule settings).
3. Enter the settings and then click OK.
The system submits a change request and the Activities > Change Requests page displays
the progress and status of the request.
Life-cycle operations in Cloud Provisioning and Governance
Operations like Start/Stop, Deprovision, and ExecuteScript are called life-cycle operations or
day-2 operations. When you request a life-cycle operation on a stack or resource, the system
generates a change request. An approval policy specifies either that the change is autoapproved or that a user on the approver list must approve the change.
To perform an operation, you select a stack or resource and then click Select Stack Operation
or Select Resource Operation. The list includes only appropriate operations for the selected
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
resource or stack. Some operations are provided by configuration management systems like
Ansible or Terraform.

Operations in the base system
Start
The Start operation starts selected VM. The resource status changes to On.
No setting is required.
Stop
The Stop operation stops the selected VM. The resource status changes to Off.
No setting is required.
Deprovision
The Deprovision operation terminates the selected stack and sends a
notification to the stack owner.
No setting is required.

Virtual Machine 'Store Extension Interface' operations
Only Google Cloud Platform and IBM Cloud support the Virtual Machine Store
Extension Interface operations. The Terraform Connector ServiceNow Store app
supplies the operations.
Virtual Machine Store Extension Interface.ExecuteScript
The ExecuteScript operation runs a script on the selected Windows or
Linux VM. For example, a script might install an application on a resource. See
KB0756431
for detailed instructions.

Note: To run the ExecuteScript operation, a VM must include
credentials. Linux VMs inherit management key credentials when they are
provisioned. For Windows VMs, use the InfuseKey operation to add
credentials to the VM.
In the pop-up, specify:
• ScriptType: Shell and PowerShell scripts are supported.
• Script: Name of the script.
Virtual Machine Store Extension Interface.InfuseKey
For Windows VMs, the InfuseKey operation adds key credentials (public and
private key pair values) to the VM.
As a result, you can view the credentials on the Properties list of the Windows
VM and can use the credentials to perform VM operations. For instructions on
generating a key, see Create an SSH key.
To add key credentials to a Windows VM:
1. Select the Windows VM.
2. In the Select Resource Operation list, select Virtual Machine Store Extension
Interface.InfuseKey.
3. In the pop-up, specify the key to use in the UserKey field and then click OK.
Virtual Machine Store Extension Interface.Execute Job Template
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
Ansible supplies the Execute Job Template operation. The operation
enables you to attach a node to an Ansible server and execute a package on that
VME. For example, a script might install an application on a resource. In the pop-up,
specify:

WorkloadConfigProviderType
WorkloadConfigProvider
Inventory
HostGroup

The list includes all possible
applications (called groups in Ansible),
not just the applications that the
configuration management provider
supports. Therefore, if users select
an unsupported application, the
provisioning fails.

ApplicationProfile

Select the application profile to execute
on the selected resource.

• ScriptType: For Google Cloud Platform, Shell is supported.
• Script: Name of the script.
Virtual Machine Store Extension Interface.Resize
The Resize operation changes the Size setting for a VM (called HardwareType in
the CI definition). In the pop-up, specify the new size in the HardwareType field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
Resize operation

'Compute Security Group Store Extension Interface' operations
The Compute Security Group Store Extension Interface operations are
supported for IBM Cloud only. The Terraform ServiceNow Store app supplies the operations.
Compute Security Group Store Extension Interface.Deprovision
The Deprovision operation terminates the selected compute security group
resource and sends a notification to the owner.
No setting is required.
The Status of the network interface changes to Terminated. In the Stack Health
section of the home page, the status of the stack indicates that some resources are
down.

'Load Balancer Store Extension Interface' operations
Load Balancer Store Extension Interface.Deprovision
The Deprovision operation terminates the selected load balancer and sends a
notification to the stack owner.
No setting is required.
The Status of the load balancer changes to Terminated. In the Stack Health section
of the home page, the status of the stack indicates that some resources are down.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
'Network Store Extension Interface' operations
'Network Store Extension Interface.Deprovision
The Deprovision operation terminates the selected network store and sends a
notification to the stack owner.
No setting is required.
The Status of the network store changes to Terminated. In the Stack Health section
of the home page, the status of the stack indicates that some resources are down.

'Storage Volume Store Extension Interface' operations
The Storage Volume Store Extension Interface operations are supported for IBM
Cloud only. The Terraform ServiceNow Store app supplies the operations.
Storage Volume Store Extension Interface.Create Snapshot
The Create Snapshot operation generates a read-only copy of the specified
volume.
In the pop-up, specify the SnapshotName to use as the label for the snapshot.
The snapshot is saved in the [cmdbci.ci_storage_vol_snapshot_list] table.
If approval is not required, the system immediately takes the snapshot. If approval
is required, there may be a delay while an admin approves the change. You receive
email when the admin approves. After the admin approves, return to the VM
Instance form and click the Proceed with Change related link.

Note: If the VM is running, the VM is shut down at the start of the snapshot
process and then restarted when the process finishes. The system autodeletes the oldest snapshot when the Snapshot eviction policy limit is
exceeded.
Storage Volume Store Extension Interface.Restore From Snapshot
The Restore From Snapshot operation restores the image from the specified
snapshot.
Select the SnapshotID to use to restore the volume.
Storage Volume Store Extension Interface.Delete Snapshot
The Delete Snapshot operation deletes the selected snapshot.
Storage Volume Store Extension Interface.Attach
The Attach operation attaches a VM to the selected volume.
1. Select the volume to attach. The Status of the volume must be Available.
2. Select the Storage Volume Store Extension Interface.Attach operation.
3. In the NodeId field on the pop-up, select the Instance ID of the server to attach to
the volume.
The status of the volume changes from Available to In Use.
Storage Volume Store Extension Interface.Detach
The Detach operation detaches a VM from the selected volume.
1. Select the volume to attach. The Status of the volume must be In Use.
2. Select the Storage Volume Store Extension Interface.Detach operation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
3. In the NodeId field on the pop-up, select the Instance ID of the host to detach
from the volume.
If this VM is the last or the only VM that is detached, then the status of the volume
changes from In Use to Available.
Storage Volume Store Extension Interface.Deprovision
The Deprovision operation terminates the selected volume and sends a
notification to the stack owner.
No setting is required.
• The billing item for the storage resource is removed.
• The Status of the volume changes to Terminated. In the Stack Health section of
the home page, the status of the stack indicates that some resources are down.
• For IBM Cloud: The storage volume is available in the IBM Cloud Console for an
extended period to enable the user to reclaim the storage volume.
Submit an incident for a stack
Submit an incident for a stack when it is not working as expected or you have questions. When
the user responds or solves the issue, the incident is closed.

Before you begin

Role required: sn_cmp.cloud_service_user

About this task

You can submit an incident for a stack or for an individual resource.
You can also Create an incident
through the incident application. Make sure that the Category
field is set to the value Cloud Provisioning and Governance. The configuration item should be the
stack name against which the incident should be raised and the caller name should be the name
of the person for whom this incident is created.

Procedure
1. View the stack details page using either of the following methods:
◦ On the Stack Details page, click the Incidents tab in the Activities section.
◦ On the Activities page, click Track > Incidents.
The Activities section lists all submitted incidents for the stack.
Incidents
Activities → Incidents

View and submit incidents of all types, for any
stack or resource.

Stacks → Stack Details → Incidents

View and submit incidents for the selected
stack.

Resources → Resource Details → Incidents

View and submit incidents for the selected
resource.

2. Click New Incident and fill in the form:

Incident type

Type that best matches your need.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
Stack / Resource [related fields]

Stack and resource that the incident applies
to.
◦ From the Activities page: Select the Stack
from the list of active stacks. Leave the
Resource field blank if the issue is not
associated with a particular resource.
◦ From the Stack Details page: The Stack
value is the current stack.
◦ From the Resource page: The Resource
value is the current resource.

Describe the issue

Describe the issue that you are experiencing
or enter your question. Give full information
on the behavior that is the issue.

What is the business impact

Specify how the incident affects your work
and the work of others, including your
customers.

Attach screenshots, logs, and so on

Click or drop to add files that clarify the issue
or question.

3. Click Submit.
The system generates the incident. The Incidents tab on the Activities page displays a
summary.

What to do next

To view a list of all submitted incidents, navigate to Activities > Incidents.
Using the Activities page
Use the Activities page to view and manage details of your cloud actions.

Track
Requests

Your requests for catalog items (stacks). See Track a stack
request.

Change Requests

Change requests that have been submitted for stacks or
resources that are assigned to you. The system generates
change requests when you perform any life cycle operations
on a stack or resource. See Track a change request and
Perform a life-cycle operation on a stack or resource.

Incidents

Incidents for stacks and their associated resources that are
assigned to you. See Track an incident.

Tasks

Catalog tasks created when a request for a stack fails to
provision. See Resubmit a failed stack request.

Lease Operations

View a list of all your stacks that are nearing their lease end
dates. You can extend the end date of a lease for any of the
stacks listed. See Modify the lease for a stack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
Business Schedule
Operations

View a list of upcoming business hours schedule operations
associated with stacks. You can skip an upcoming operation
or cancel a schedule associated with a particular stack. See
Modify business schedule operations for a stack.

Monitor
Cloud Events

List of life cycle events that affect resources assigned to you or
to a user in your group. See View cloud events.

Manage
Keys

View existing SSH keys that are assigned to you or generate a
key. See Create an SSH key.

Track a change request
The system generates a change request when you perform a life cycle operation on a stack or
resource.

Before you begin

Role required: sn_cmp.cloud_service_user

About this task

Each change request is either approved by default or, if an approval policy is in place, is
approved by a user that is on the approver list.

Procedure
1. Go to the Activities page or navigate to Cloud User Portal > View Activities, then select Track
> Change Requests.

Number

Unique auto-generated number.

Configuration item

The affected CI.

Category

Cloud Provisioning and Governance

Short description

Text that was entered by the requester.

Approval

Status.

2. In the Change Requests list, click an entry to view full details.
Track an incident
Before an incident is resolved and closed, you can view the state of the incident.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. View the Incidents page using either of the following methods:
◦ On the Activities page, click Track > Incidents.
◦ On the Stack Details page, click the Incidents tab in the Activities section.
The Activities section lists all submitted incidents for the stack.
2. In the Incidents list, click an entry to view details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
Number

Unique auto-generated number.

Category

Cloud Provisioning and Governance.

Subcategory

◦ Performance Issue: issue is associated with operation
performance.
◦ Request: request for a change.

Short description

Text that the submitter of the incident entered.

Configuration item

CI of the resource for the incident.

Impact

◦ Urgency, rated as follows:
◦ 1 - High
◦ 2 - Medium
◦ 3 - Low

State

◦ New: recently created incident.
◦ Closed: user in the Assigned to field responded to or
solved the issue and marked the incident as closed.
◦ Canceled: the 'Assigned to' user reviewed the issue, did
not take action, and canceled the incident.

Assigned to

The user who must respond to the incident.

View cloud events
You can view the events that are generated from your cloud resources if your administrator
configured Cloud Provisioning and Governance to monitor them. All events are listed on the
Cloud Events tab on the stack details page.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. View the cloud events page using either of the following methods:
◦ On the Activities page, click Monitor > Cloud Events.
◦ On the Stack Details page, click the Cloud Events tab in the Activities section.
The Cloud Events section lists all events for the stack.

Created

Timestamp of the arrival of the event.

Source

Source of the event:
◦ azure: Azure Alert
◦ aws: AWS Config
◦ vmware: VMware Events

Event name

Name that is provided by Amazon, Azure, or VMware.

Subject

Text that describes the event.

Event time

Timestamp of the event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
Resource ID

Unique ID of the resource that received the life cycle state
change or configuration change event.

2. Click an entry to view full details.
Create an SSH key
A stack might include a virtual machine that requires an SSH key for access. To request such a
stack, you can either use a key pair that is assigned to you or you can generate another key.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. On the Cloud User Portal, click Activities.
2. In the Activities list, select Manage > Keys.
3. On the SSH Key Pair page, click Generate Key Pair, specify a Name for the key, and then click
OK.

Result

The system generates the key pair with the Name that you specified.
Download an SSH key
If a resource on a stack requires login, then you must download the associated SSH key before
you can access the resource.

Before you begin

Role required: sn_cmp.cloud_service_user

Procedure
1. On the Cloud User Portal, click Activities.
2. In the Activities list, select Manage > Keys.
3. Click a key in the SSH Key Pair list and then click Download Private Key in the SSH private
key section.
Business hour scheduling
You can set up business hour scheduling on all virtual machines in a stack. Business hour
scheduling can be set up on stacks at the time of provisioning or on existing stacks.
Schedules can be set for when a stack should be started, stopped, and/or deprovisioned by
defining parameters such as business hours, holidays, long weekends.

Note: For Google Deployment Manager (GDM) based template catalog, business hour
scheduling and stack level operations are not supported.
The administrator can create schedule profiles in the Cloud Admin Portal. See Resource
Profiles.
While provisioning a stack in the Cloud User Portal, use the Schedule Profile list to select a
profile that has already been created by the administrator. Select a time zone in the Schedule
Time Zone list which defaults to your system's time zone and indicates the time zone in which
the schedule’s business hour time frames are enforced.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
You can also define the lease end dates for a stack during provision. The lease end date for a
stack can be modified at any time. See Modify the lease for a stack.
Once you provision a stack with a schedule and/or lease dates, a series of operations (start,
stop, deprovision) occur at the appropriate time set by you. You can skip a business schedule
operation or cancel the business schedule operations associated with a stack. See Modify
business schedule operations for a stack.
Modify the lease for a stack
When a stack reaches the end of its lease, the system notifies the stack owner and deprovisions
the stack. You can modify the lease for a stack before it approaches its end date.

Before you begin

Role required: sn_cmp.cloud_service_user

About this task

A lease end date is assigned to all provisioned stacks. A built-in policy titled Lease End
ServiceNow with an on Lease end policy trigger has rules defining notifications and
operations that are performed before, at, and after the end date of the lease. Lease dates can be
modified for active stacks. The system sends a notification to the stack owner one day prior to
the end of the lease. On the day the lease ends, the system stops the stack and sends another
notification. Seven days after the lease has ended, the stack is terminated and a final notification
is sent to the stack owner. You can modify the actions taken and the timings of these actions by
modifying the Lease End ServiceNow policy. You can modify the default lease duration for
all new stacks, going forward, by modifying the associated action script in the Scheduling
Defaults built-in policy.

Procedure
1. Navigate to All > Overview > View Activities, then select Lease Operations.
A list of stacks with upcoming lease-related operations is displayed.
2. Click the Select Action list associated with the stack and then select Modify Lease.
The Modify Lease option is also available from the stack details list in Manage Stacks.
3. Set a new date and time for the lease to expire and then click OK.
Modify business schedule operations for a stack
Business hours scheduling can be performed on stacks at the time of provisioning or on existing
stacks.

Before you begin

Role required: sn_cmp.cloud_service_user.

About this task

Once a stack is set up with a business schedule, the system generates a series of tasks for
starting and stopping the stack. You can view these tasks and can modify the business schedule
for any stack.

Procedure
1. Navigate to All > Overview > View Activities, then select Business Schedule Operations.
A list of stacks with upcoming business schedule operations is displayed.
2. From the Select Action list associated with the stack, perform either of the two operations:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
◦ Skip Operation- Click to skip a single business schedule operation on a stack. A
confirmation message appears. Click OK.
◦ Cancel Schedule- Click to cancel business hour scheduling on a stack. A confirmation
message appears. Click OK.
For modifying the schedule of an existing stack, navigate to the stacks details list in Manage
Stacks and select Modify Schedule from the Select Stack Operation list.
Manage personal and group resources
You can view and manage your resources as well as the resources assigned to the group
you belong to. If you belong to more than one group, you can view and manage all resources
assigned to those groups.

Before you begin

Role required: Root administrator [sn_cmp.cmp_root_admin] and System administrator [admin].

About this task

Only a Root Administrator and a System Administrator have access to all three filters: Mine, My
Groups, and All.

Procedure
1. On the Cloud User Portal, select Views filter, towards the right side on the banner.
2. Select an option:
◦ Mine: View and manage only resources that are assigned to you.
◦ My Groups: View and manage all resources that are assigned to you and that are assigned
to all members of all groups that you belong to.

Schemas of Cloud Provisioning and Governance tables
The tables are cloud-agnostic and can therefore hold data for any cloud provider.

Load balancer table
The load balancer table [cmdb_ci_cloud_load_balancer] extends from [cmdb_ci_vm_object],
which extends from [cmdb_ci]. Click to enlarge the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
Schema load balancer

Key native attributes of the cmdb_ci_cloud_load_balancer table
Attribute

Description

object_id

Identifier that typically holds the load balancer
name as the value.

canonical_hosted_zone_id

ID of the Amazon Route 53 hosted zone for the
load balancer.

canonical_hosted_zone_name

DNS name of the load balancer.

dns_name

Public DNS name of the load balancer.

fqdn

DNS name as fully qualified domain name. Can
also be a CNAME record pointed to the DNS
name.

state

State of the load balancer: available or
terminated.

Network resource table
The network resource table [cmdb_ci_network] extends from [cmdb_ci_vcenter_object], which
extends from [cmdb_ci_vm_object], which extends from [cmdb_ci]. Click to enlarge the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
Network table object model

Key native attributes of the cmdb_ci_network table
Attribute

Description

object_id

Identifier that typically holds the network ID as the value. Uniquely
identifies an object within a cloud.

name

Name of the network.

cidr

IP Address range. Classless inter-domain routing is a set of internet
protocol standards that is used to create unique identifiers for networks.

default_gateway

Holds InternetGatewayID if we attach IntenetGateway to the network.
A default gateway serves as an access point or IP router that a networked
computer uses to send information to a computer in another network or
Internet. The specified gateway is used by default unless an application
specifies a different gateway.

Broadcast_address

Is_shared

IP address used to transmit messages and data packets to network
systems.
Boolean.
true: Network shared across other projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
Key native attributes of the cmdb_ci_network table (continued)
Attribute

Description

false: Network not shared across other projects.
max_ports

Maximum number of hosts that can be connected to the network

is_external

Boolean.
true: Network is external.
false: Network is internal.

terminated_on

Time that the network was de-provisioned.

state

State of the network: available or terminated.

netmask

Type of CIDR. 32-bit mask that divides an IP address into subnets and
specify the hosts that are available on the network.

dhcp_enabled

Boolean:
true: Dynamic IP address is assigned to host
false: Static IP address is assigned to host

Storage volume resource table
The storage volume resource table [cmdb_ci_storage_volume] extends from [cmdb_ci]. Click to
enlarge the image.
Schema storage volume

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
Key native attributes of the cmdb_ci_storage_volume table
Attribute

Description

object_id

Identifier that typically holds the object ID as the value. Uniquely identifies
an object within a cloud.

volume_id

Identifier that typically holds the volume ID as the value. Uniquely identifies
an object within a cloud.

volume_container For NetApp only, LUN becomes the volume and NetApp volume becomes
the volume container.
sharable

Boolean.
true: Volume is shared by multiple VMs.
false: Volume is not shared by multiple VMs.

storage_type

Type of storage.
• AWS: Block
• Azure: PageBlob
• vSphere: VMware vdisk

size

Total capacity of the volume.

free_space

Available space of the volume

state

State of the volume: available or in_use.

share_count

Number of VMs that are shared by the volume.

Virtual server resource table
The virtual server resource table [cmdb_ci_vm_instance] extends from [cmdb_ci_vm_object],
which extends from [cmdb_ci]. Click to enlarge the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
Key native attributes of the cmdb_ci_vm_instance table
Attribute

Description

object_id

Identifier that typically usually holds the VM instance ID. Uniquely
identifies an object within a cloud.

name

Name of the VM.

state

State of the VML: on, off, or terminated.

cpus

Number of CPUs.

memory

Memory size in megabytes.

disks

Number of disk drives.

disk_size

Total size of disks in gigabytes.

nics

Number of network interface adapters.

terminated_on

Time that the instance was terminated.

termination_protection Boolean. Default value is false.
true: Can prevent the instance from being accidentally terminated
using Amazon EC2.
false: Cannot prevent the instance from being accidentally terminated
using Amazon EC2.

Quick start tests for Cloud Provisioning and Governance
Validate that Cloud Provisioning and Governance still works after you make any configuration
change such as applying an upgrade or developing an application. Copy and customize these
quick start tests to pass when using your instance-specific data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
Cloud Provisioning and Governance
Cloud Provisioning and Governance quick start tests require activating the following Cloud
Provisioning and Governance plugins:
• Cloud Provisioning and Governance (com.snc.cloud.mgmt)
• Domain Support- Domain Extensions Installer plugin
(com.glide.domain.msp_extensions.installer)
• Service Catalog- Domain Separation plugin (glideapp.servicecatalog.domain_separation)
Cloud Provisioning and Governance: Azure test suite
Test

Description

Release version

CMP: Add Azure Credentials

Add Azure credentials by
inserting the fields into the
Credentials table.

Orlando

CMP: Azure Service Account

Add Azure service account
by inserting the fields into the
service account table.

Orlando

CMP: Update datacenter type

Update the Cloud Service
account with the datacenter
type.

Orlando

CMP: Creating Resource
Group

Creating Resource Group to
Orlando
provision Azure stack via ARM
Template.

CMP: Create Azure Logical
datacenter.

Create Azure Logical
datacenter for provisioning
resources.

Orlando

CMP: Create "Contains:
Contained by" relationship.

Create "Contains: Contained
by" relationship between
Resource Group and Azure
datacenter.

Orlando

CMP: Create 'Hosted on'
relationship.

Create hosted on relationship
between logical datacenter
and Cloud Service account.

Orlando

CMP: Create Cloud Account

Create cloud account by
inserting the fields into the
cloud account table.

Orlando

CMP: Cloud account and
Create an association
Logical datacenter association between CMP cloud account
and Logical datacenter.

Orlando

CMP: Create Catalog Item

Create Cloud Catalog Item
with ARM Template.

Orlando

CMP: Create template version. Create Cloud Template
Version for Cloud Catalog
Item.

Orlando

CMP: ARM template body

Orlando

Update Cloud Template
Version with ARM template
body.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
Cloud Provisioning and Governance: Azure test suite (continued)
Test

Description

Release version

CMP: Open the 'ServiceNow
Cloud Template Versions'

Open the 'ServiceNow Cloud
Template Versions' GUI page.

Orlando

CMP: Activate Cloud Template Activate Cloud Template
Version
Version to create resource
block, blueprint, and catalog.

Orlando

CMP: Verify the Cloud
Template Version.

Validate whether status is
Success and state is active in
the Cloud Template Version
after Activation operation.

Orlando

CMP: Activate Cloud Catalog
Item

Activate Cloud Catalog Item to Orlando
display catalog order form to
the cloud user.

CMP: Add stack and resource
group name in Catalog item

Set the default value for stack
name and resource group in
the catalog item.

Orlando

CMP: Verify whether stack is
present

Validate whether stack
is available with name
"ATFARMStack".

Orlando

CMP: Open Cloud Catalog
Item page

Open Cloud Catalog Item
page in the Service Portal.

Orlando

CMP: Submit Catalog form

Submit the Catalog Form to
start provisioning ARM stack.

Orlando

CMP: Verify whether stack
status is active

Validate the status of a stack
after provisioning the stack.

Orlando

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
Day2 - Deprovision operation

Validate the status of the stack Orlando
status changed from 'On'
to 'Terminate' after the deprovisioning operation.

Cloud Provisioning and Governance: AWS test suite
Test

Description

Release version

CMP: Add AWS Credentials

Add AWS credentials by
inserting the fields into the
credential table.

Orlando

CMP: AWS Service Account

Add AWS service account by
inserting the fields into the
service account table.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
Cloud Provisioning and Governance: AWS test suite (continued)
Test

Description

Release version

CMP: Update datacenter type

Update the cloud service
account with the datacenter
type.

Orlando

CMP: Create logical
datacenter

Create Logical datacenter for
provisioning the resources.

Orlando

CMP: Create hosted on
relationship

Create hosted on relationship
between logical datacenter
and Cloud Service account.

Orlando

CMP: Create Cloud Account

Create cloud account by
inserting the fields into the
cloud account table.

Orlando

CMP: Cloud account and
Create an association
Logical datacenter association between CMP cloud account
and logical datacenter.

Orlando

CMP: Create Catalog Item

Create Cloud Catalog Item
with the CFT Template.

Orlando

CMP: Create template version

Created Cloud Template
Version for a Cloud Catalog
Item.

Orlando

CMP: CFT template body

Update Cloud Template
Version with the CFT template
body.

Orlando

CMP: Open the ' ServiceNow
Cloud Template Versions'

Open the ' ServiceNow Cloud
Template Versions' GUI page.

Orlando

CMP: Activate Cloud Template Activate Cloud Template
Version
Version to create resource
block, blueprint, and catalog.

Orlando

CMP: Verify the Cloud
Template Version

Validate the Cloud Template
Version whether status is
Success and state is active
after Activation operation.

Orlando

CMP: Activate Cloud Catalog
Item

Activate Cloud Catalog Item to Orlando
display the catalog order form
to the cloud user.

CMP: Add stack name in
Catalog item

Set the default value for stack
name in the catalog item.

Orlando

CMP: Verify whether stack is
present

Validate whether stack
is available with name
"ATFCFTStack".

Orlando

CMP: Open Cloud Catalog
Item page

Open the Cloud Catalog Item
page in the Service Portal.

Orlando

CMP: Submit Catalog form

Submit the Catalog Form to
start provisioning CFT Stack.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


