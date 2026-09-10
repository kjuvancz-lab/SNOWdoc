# Zurich Strategic Portfolio Management — Data Separation

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 884–894 of 2289

Sections: Data Separation (p884); Explore (p885); Configure (p888); Reference (p893)

---

<!-- page 884 -->
Target Source form (continued)
Field

Description

This field is available when the Type field is set to PA Indicator.
Custom script Custom script to fetch the required data from any ServiceNow AI Platform table
for the target source.
This field is available when the Type field is set to Custom. Or, when the Type
field is set to Assessment/Survey and the Advanced field is set to true.

Domain separation and Goal Framework
Domain separation is supported for Goal Framework and Goal Framework for SPM. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.

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

How domain separation works in Goal Framework and Goal Framework for SPM
After you enable domain separation on your ServiceNow instance, the Goal Framework and
Goal Framework for SPM data is automatically domain separated. The goals and targets data of
portfolio plans for different domains are visible to only those users who have access to these
domains.

Data Separation
®

The ServiceNow Data Separation application helps organizations restrict access to sensitive
data based on a lens hierarchy and its leaf node.

Note: This application is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
Alternatively, you can use Data Filters and access control lists (ACLs) to configure data
separation for your use cases. For details on how to enable data separation for different use
cases using data filters and ACLs, see the Managing data separation using data filters and
ACLs [KB0558290]
article in the Now Support Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
Data separation supports records, related items, planning consoles, workbenches, and reports.

Note: Currently, data separation is supported only for ServiceNow® Project Portfolio
Management.
Alternatively, you can define data filters along with other configurations to restrict access to
sensitive data (enable data separation). For details on how to enable data separation for different
use cases using data filters and ACLs, see the Managing data separation using data filters and
ACLs [KB1772519]
article in the Now SupportKnowledge Base.

Get started

Explore

Configure

Reference

Learn about Data
Separation features.

Learn how to configure
Data Separation
for restricting the
sensitive data.

Get details about
components like
fields, tables, roles,
and properties.

Supported tables

Limitations

See the list of tables
that are supported
for Data Separation.

See the limitations
of Data Separation.

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community.
• Search the Known Error Portal for known error articles. For more information, see Search the
Known Error Portal for known error articles .
• Contact Customer Service and Support. For more information, see Contact Customer Service
and Support.

Exploring Data Separation
Learn about the features, configuration, and benefits that Data Separation provides.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
Data Separation overview
®

Data Separation helps you restrict data in ServiceNow Strategic Portfolio Management based
on a lens hierarchy and its leaf node. The leaf node is the bottom-level entity in a lens hierarchy.
For example, if the Organization lens is used for data separation, the leaf node would be
Department for the base system lens.
You can enable Data Separation on select Demand, Project, Resource Plan, and Cost Plan
entities, as needed. Also, you can enable Data Separation on select Cost Plan Breakdown and
Project Task related entities.
Data Separation supports records, related items, planning consoles, workbenches, and reports.

Note: Access control list (ACL) and query Business Rule (BR) limitations apply even when
Data Separation is enabled. For example, reports with aggregate numbers may not be data
separated.
Data Separation applies even on child projects and sub-tasks based on the Data Separation that
is configured for the parent project or task.

Data Separation key components
• Hierarchy: Defines the hierarchy for enabling Data Separation using a lens and its leaf node.
• Supported Entities: Enables Data Separation on select entities and related entities, as needed.
• Entity-Group Mapping: Defines entity-group mappings between a business area and user
group.

Features
You can use the Data Separation features to do the following:
• Configure a data separation hierarchy using a lens hierarchy and its leaf node.
• Enable data separation on select entities and related entities, as needed.
• Create as many entity group mappings as required to restrict data to specified user groups.
• Grant access for the users who always need access to sensitive data by assigning the data
separation privileged user (sn_ds.ds_privileged_user) role.

How Data Separation works
The following is the process flow for restricting access to the sensitive data in Strategic Portfolio
Management using Data Separation.
• A lens is selected for defining a hierarchy for Data Separation. The Data Separation admin can
modify the hierarchy of the lens for data separation as needed.
• The required entities and related entities are enabled for Data Separation.
• An entity group mapping is created for each business group (where the business group could
be a business unit, department, or company) that defines the set of users that the access is
restricted to.
• The data of the business group is then restricted for the enabled entities only to the users that
are part of the user group populated in the entity-group mapping record.

Examples data separation
Example 1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
Consider a scenario where:
• The Data Separation hierarchy is defined using the Organization lens and the lens
structure is Company, Business Unit, and Department (from top-to-bottom).
• The entity mapping is created for the HR department (Department : HR) with the
group HR leads.
• Data Separation is enabled for the Demand and Project entities.
In this case, no user can access the project and demand records of the HR
department except the users that are part of the HR leads group. However, all users
(based on the ACLs that the user currently has) can access other records (for
example, the resource plan and cost plan) of the HR department.
Example 2
The Company XYZ has a data separation-enabled lens structure as shown
in the following image and wants to restrict data to specific groups based
on different use cases. Also, all the supported entities are enabled for
Data Separation. The following use cases help you understand how Data
Separation works and how to configure Data Separation for different use

cases.
• Case 1: Restrict data of the Payroll department to the Payroll managers
You can restrict data for this case by configuring Data Separation as follows:
◦ Create a Payroll managers user group.
◦ Create an entity-group mapping for the Payroll department with the lens entity
record (Department : Payroll) and the Payroll managers user group.
• Case 2: Restrict data of the HR business unit (both the Onboarding and L&D
departments) to the HR leads
You can restrict data for this case by configuring Data Separation as follows:
◦ Create an HR leads user group.
◦ Create an entity-group mapping for the HR business unit with the lens entity
record (Business Unit : HR) and the HR leads user group.
• Case 3: Restrict data of the entire organization to the Organization leads
You can restrict data for this case by configuring Data Separation as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
◦ Create an Organization leads user group.
◦ Create an entity-group mapping for the Company XYZ with the lens entity
record (Company : XYZ) and the Organization leads user group.

Configuring Data Separation
As an administrator, you can install Data Separation and assign the Data Separation roles to the
required users.

Configuration workflow
A Data Separation administrator can define Data Separation hierarchy, enable entities, and map
user groups for Data Separation.

Guided setup to configure Data Separation
Guided setup provides a sequence of tasks to help you with the required configuration on your
ServiceNow instances. After installing Data Separation, navigate to All > Data Separation >
Guided Setup to configure Data Separation.

Install Data Separation
You can install the Data Separation application (sn_ds) if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Data Separation requires the following plugin and store application. Ensure that the following
plugin and application is activated before you install Data Separation.
Required ServiceNow plugin
PPM Standard plugin (com.snc.financial_planning_pmo)
Activate the PPM Standard plugin (com.snc.financial_planning_pmo)
in your ServiceNow instance before you install Data Separation.
For more information see, Activate PPM Standard (Project Portfolio
Management).
Required ServiceNow Store application
Portfolio Planning (sn_align_ws)
Install the Portfolio Planning (sn_align_ws) application in your
ServiceNow instance before you install Data Separation. For more
information see, Install Portfolio Planning.
Role required: admin

About this task

The following items are installed with Data Separation:
• Plugins
• Roles
• Tables
For more information, see Components installed with Data Separation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


<!-- page 889 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Data Separation application (sn_ds) using the filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they’ll be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install Data Separation.
4. Select Install.

Assign roles for managing Data Separation
Assign Data Separation roles to user groups and to individual users based on user activities and
responsibilities.

Before you begin

Role required: admin

About this task

You can assign roles to individual users or groups. Applying roles to a group gives access to all
the members of the group. For more information on roles installed with Data Separation, see the
Roles installed table in Components installed with Data Separation.

Procedure
1. Navigate to All > Data Separation > Guided Setup.
2. Select Get Started.
3. Select Assign roles from the tasks list.
4. Select the required role (sn_ds.ds_admin or sn_ds.ds_privileged_user), select Configure, and
assign the role to a user or user group.

What to do next

Configure a data separation hierarchy for enabling Data Separation. For more information, see
Configure a lens for enabling Data Separation.

Configure a lens for enabling Data Separation
Configure a data separation hierarchy for enabling Data Separation using a lens hierarchy and its
leaf node.

Before you begin

Role required: sn_ds.ds_admin

About this task

Note: Only one lens can be enabled for Data Separation at a time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
Procedure
1. Navigate to All > Data Separation > Hierarchy.
The Lenses list view opens with the available lenses for data separation.
2. Open the lens record that you want to use as a hierarchy for configuring Data Separation.
3. On the Lens form, select Data separation enabled.
For a description of the field values, see Lens form.
4. Select Update to save the configuration.
5. Navigate to All > Data Separation > Hierarchy.
6. From the Lenses list view, select Sync data separation to synchronize the lens configuration
for Data Separation.

What to do next

Enable Data Separation on select entities as needed. For more information, see Enable entities
for Data Separation.

Enable entities for Data Separation
Enable Data Separation on select entities as needed.

Before you begin

Role required: sn_ds.ds_admin

About this task

You can enable Data Separation on the following entities and related entities.
• Entities:
◦ Demand [dmn_demand]
◦ Project [pm_project]
◦ Resource Plan [resource_plan]
◦ Cost Plan [cost_plan]
• Related entities:
◦ Cost Plan Breakdown [cost_plan_breakdown]
◦ Project Task [pm_project_task]

Procedure
1. Navigate to All > Data Separation > Supported Entities.
The list opens the entities supported for Data Separation.
2. Open each Supported Entity record that you want to enable Data Separation for.
3. On the form, fill in the fields.
Supported Entity form
Field

Description

Entity

Name of the entity table.

Enable data separation

Option to enable Data Separation for the
entity.

4. Select Update to save the configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
5. Navigate to All > Data Separation > Supported Entities.
6. From the Supported Entities list view, select Sync data separation to synchronize the entity
configuration for Data Separation.

Note: The related Cost Plan Breakdown and Project Task entities can be enabled only if
the Cost Plan and Project parent entities are enabled respectively.

What to do next

Map a user group for Data Separation. For more information, see Map a user group for Data
Separation.

Map a user group for Data Separation
Map a user group for Data Separation to restrict data only to the specified users of a group and
sub-groups.

Before you begin

Role required: sn_ds.ds_admin

About this task

You can create only one entity-group mapping per lens entity record.
For example, the following image shows that the leaf node is a Department and that IT is one
of the departments. You want to restrict the data of the IT department to a specific group. Then,
create an entity-group mapping for the IT department with the required user group.

If you want to grant access to the data of the IT department for more than one group, create a
parent user group and add all the other groups as sub-groups under the parent group. Then you
can map the parent group in the entity-group mapping record of the IT department.

Note: If you want to grant access to the data of all departments for a user group, create an
entity-group mapping with the parent entity of the department entity. Alternatively, you can
also create one entity-group mapping per department for the user group.

Procedure
1. Navigate to All > Data Separation > Entity-Group Mappings.
2. Select New.
3. On the Enity-Group Mapping form, fill in the fields.
For a description of the field values, see Entity Group Mapping form.
4. Select Submit to save the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

891


<!-- page 892 -->
5. Navigate to All > Data Separation > Entity-Group Mappings.
6. From the Entity-Group Mappings list view, select Sync data separation to synchronize the
entity-group mappings for Data Separation.

Result

The data is restricted to the user group populated in the entity-group mapping record for the
enabled entities.

Synchronize Data Separation
Synchronize Data Separation when the configuration is changed in the lens, supported entities,
or entity-group mappings tables.

Before you begin

Role required: sn_ds.ds_admin

About this task

The Is data synced field value must be true for all records of the Data Separation configuration
(lens, entities, entity-group mappings) to restrict the data according to the Data Separation
configuration. If the Is data synced field value for any part of the configuration record is false, the
data separation isn’t synchronized.
The Is data synced field value is false only when any of the configurations for Data Separation
are changed.

Procedure
Perform the following steps to synchronize data separation depending on the type of
configuration change made in Data Separation.

For this configuration change

Perform these steps

• Data Separation is turned off on the existing a. Navigate to All > Data Separation >
lens and then enabled again on the same
Hierarchy.
lens
b. From the Lenses list view, select Sync
• Data separation is turned off on the existing
data separation to synchronize the lens
lens and then enabled again on another
configuration for Data Separation.
lens
Data Separation is enabled or turned off for an
a. Navigate to All > Data Separation >
entity
Supported Entities.
b. From the Supported Entities list view, select
Sync data separation to synchronize the
entity configuration for Data Separation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
For this configuration change

Perform these steps

A group is added, removed, or updated for an
entity-group mapping record

a. Navigate to All > Data Separation > EntityGroup Mappings.
b. From the Entity-Group Mappings list
view, select Sync data separation to
synchronize the entity-group mappings for
Data Separation.

Data Separation reference
Reference information to provide additional details about Data Separation such as the fields,
user roles, tables, guidelines, and Data Separation information.

Components installed with Data Separation
Several types of components are installed with activation of the Data Separation plugin,
including user roles and tables.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role

Description

Contains roles

sn_ds.ds_admin

Can create/update/delete records in
the tables required to configure the
Data Separation feature.

sn_align_core.ap_read_only

sn_ds.ds_privileged_user Can create/update/delete records
of any business function in Strategic
Portfolio Management, even when
Data Separation is enabled.

None

Tables installed
Display name [Table name]

Description

Supported Entity

Stores the entity details (Demand, Project, Resource Plan,
Cost Plan, Cost Plan Breakdown, and Project Task) for
[sn_ds_data_separation_config] enabling Data Separation.
Entity-Group Mapping
[sn_ds_entity_group_mapping]

Stores the lens entity and user group details for Data
Separation.

Data Separation limitations
There are some types of data that Data Separation doesn’t work for even when Data Separation
is enabled.
The Data Separation limitations are as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


<!-- page 894 -->
• Data Separation supports only Project Portfolio Management and a subset of the Project
Portfolio Management tables.
• Access control list (ACL) and query business rules (BR) apply even when Data Separation is
enabled. For example, reports with aggregate numbers may not be data separated.
• Data Separation may have performance impacts to some extent.

Entity Group Mapping form
Learn about the fields of the Entity Group Mapping form. Use this form to define an entity group
mapping that enables Data Separation for the selected entity group and user group.
Entity-Group Mapping form
Field

Description

Lens entity table

Name of the lens entity table. For example,
Business Unit, Department, or Company.

Active

Indicates if the entity-group mapping is active.

Lens entity record

Brief description of the lens.
Entity group on which Data Separation is
enabled.

Group

User group that the data of the selected entity
is restricted to.

Lens form
Learn about the fields of the Lens form. Use this form to enable data separation based on the
lens hierarchy and its leaf node.
Lens form
Field

Description

Name

Name of the lens.

Active

Indicates if the lens is active.

Description

Brief description of the lens.
You can indicate the business purpose of this
lens and the planning managers that would
use this lens.

Planning items

Type of work that can be planned using this
lens.
Move the desired planning item types from the
Available list to the Selected list.

Bottom entity on planning item

Bottom entity in the lens hierarchy.

Data separation enabled

Option to enable data separation using the
lens hierarchy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


