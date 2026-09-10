# Australia Sales Customer Relationship Management — Order operations apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 826–837 of 1645

Sections: Order operations apps (p826)

---

<!-- page 826 -->
5. On the Inbound Queue page, select Create Order.
An order is created in the New state and can be viewed by navigating to Customer Orders >
All.

What to do next

Approve orders in Order Management
Related topics
Order management
Using Order Management
Configure a scheduled job for asynchronous order creation
Run a scheduled job in the Order Management application to create a customer order from the
Inbound Queue [sn_tmt_core_inbound_queue] table.

Before you begin

Role required: admin

About this task

The scheduled job runs on all the active nodes of a ServiceNow instance. This schedule job
picks up the order records in batches (the batch size that you have set) from the Inbound Queue
table. These order records are in the New state.

Note: If you can't create an order due to an error, the state of the record in the Inbound
Queue table is changed to an error, and an error message is displayed.
An email notification is triggered when the state of a record in the Inbound Queue table
changes to an error. The notification is sent to all Order Fulfiller Demo Group users.
You can also use the Create Order UI action on the Inbound Queue table to create orders
on demand.

Procedure
1. Navigate to All > System Scheduler > Scheduled Jobs > Today's Scheduled Jobs.
2. From the Name column, select the Create records from Inbound Queue table async
scheduled job.
3. On the form, fill in the fields.
For a description of the field values, see Create records from inbound queue table async form.
4. Select Update.

Result

Customer order records are created.
Related topics
Advanced options for scheduled jobs

Configuring the order operations applications
Learn how to configure the order operations applications to help sales and support teams to
monitor the sales processes, and manage post-sale support and returns respectively.
Installing and configuring the following applications involve installing the applications from
the ServiceNow Store store, assigning roles, and enabling app-specific features that support
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
post-sales processes and operational efficiency. It covers configuring Order Operations Case
Management for handling order-related issues, enabling Return Merchandise Authorization
(RMA) workflows, and setting up Lead-to-Cash process management to monitor the order life
cycle.
1. Order Operations Case Management
Install and configure the Order Operations Case Management application customer service
agents to create cases for multiple customer orders or for specific products in an order.
2. Configuring Lead-to-Cash Process Management
Install the Lead-to-Cash Process Management application, and set up business object groups
and relationships so that sales process managers can create and monitor sales process
records.
3. Activate the Return Merchandise Authorization plugin
Activate the RMA Case Management plugin that enables your sales organization to manage
and triage return cases for customer products and services, addressing returns, replacements,
and repair use cases.
Related topics
Order operations
Using order operations applications

Configuring Lead-to-Cash Process Management
Plan and configure your implementation of Lead-to-Cash Process Management.

Configuration overview
1. Review the dependencies for installing and using Lead-to-Cash Process Management.
◦ For sales process managers to be able to create and monitor sales process records through
the CSM Configurable WorkspaceCustomer Service Management (CSM) must be installed.
◦ To be able to monitor opportunities, quotes, or orders in the sales process, you must have
Opportunity Management, Quote Management, Order Management installed.
◦ Business Object Core (sn_bo_core) is automatically installed as a dependency when you
install the Lead-to-Cash Process Management application (app-l2c-cockpit).
2. Install Lead-to-Cash Process Management
You can install the Lead-to-Cash Process Management application (app-l2c-cockpit) if you
®
have the admin role. The application installs related ServiceNow Store applications and
plugins if they aren’t already installed. Install Lead-to-Cash Process Management on each of
your environments.
3. Assign roles to Lead-to-Cash Process Management users
Assign roles to your users so that they can access features, capabilities, and data in the Leadto-Cash Process Management application.
4. Set up business objects for sales process records
Create business object group and business object types. Define relationships between the
business object types, and add them as members under the business object group. This
enables the sales process managers to create sales process records using these entities.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
5. Customizing the sales process dashboard
Define the number of levels and tile content on the node map, and determine how tasks are
consolidated on the Tasks tab, to enhance clarity and control so sales process managers can
focus on relevant data and navigate through complex sales processes effectively.
6. Modifying data retention and table cleanup policy for Lead-to-Cash Process Management
Access and modify the default data retention and table cleanup policy to modify it to suit your
needs.
7. Setting conditions for enabling email access in Lead-to-Cash Process Management
Sales process managers can compose emails directly from the dashboard for sales entity
records that are monitored in a sales process record.
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Install Lead-to-Cash Process Management
You can install the Lead-to-Cash Process Management application (app-l2c-cockpit) if you have
®
the admin role. The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Lead-to-Cash Process Management
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Lead-to-Cash Process Management:
• Roles
• Tables
• Properties
For more information, see Components installed with Lead-to-Cash Process Management and
Properties installed with Lead-to-Cash Process Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Lead-to-Cash Process Management application (app-l2c-cockpit) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you is displayed.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Result

The Lead-to-Cash Process Management application is installed on your instance. The
Business Object Core application is auto-installed as a dependency. For more information, see
Components installed with Business Object Core.
The O2C Objects business object group also becomes available. It contains entities involved in
the opportunity-to-cash process, such as opportunity, quote, and order. You can use this group
provided you have Opportunity Management, Quote Management, and Order Management
apps installed on your ServiceNow instance.

What to do next

Assign roles to Lead-to-Cash Process Management users so that they can access features and
perform tasks using this app. For more information, see Assign roles to Lead-to-Cash Process
Management users.
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Assign roles to Lead-to-Cash Process Management users
Assign roles to your users so that they can access features, capabilities, and data in the Lead-toCash Process Management application.

Before you begin

Before you can assign roles to your users and groups, make sure you have created and
configured required users and groups.
Role required: admin

About this task

The following table lists the roles business object writers and sales process managers need to
access the tables necessary to perform their respective tasks.
Required roles for specific job functions
User
persona

Job function

Business Creates
object
business
writer
object
groups and

Role required

Business object writer
[sn_bo_core.business_object_writer]

Tables accessed

• Business Object Type
[sn_bo_core_obj_type]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


<!-- page 830 -->
Required roles for specific job functions (continued)
User
persona

Job function

Role required

defines
relationships
between the
business
object types.

Tables accessed

• Business Object Relationship
[sn_bo_core_obj_rel]
• Business Object Group
[sn_bo_core_obj_group]
• Business Object Group Members
[sn_bo_core_obj_group_members]

Sales
Creates
process sales
manager process
records,
monitors
tasks and
activities
on the
hierarchical
node map,
links and
delinks
nodes.

Sales process manager
[sn_l2c_cockpit.sales_process_manager]

• Sales Process Record
[sn_l2c_cockpit_sales_process_record]
• Business Process Record
[sn_bo_core_process_record]
• Business Process Resource
[sn_bo_core_process_resource]
• Business Process Task
[sn_bo_core_process_task]

You can assign roles to users and groups using either guided setup or through the following user
administration features:
• Assign a role to a user
• Assign a role to a group
Related topics
Creating users
Creating groups
Components installed with Lead-to-Cash Process Management
Components installed with Business Object Core
Set up business objects for sales process records
Create the business objects necessary for sales process managers to create sales process
records using these entities.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
Before you begin

Role required: Business object writer [sn_bo_core.business_object_writer]

About this task

https://player.vimeo.com/video/1102610152?
h=669291cfe1&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Create business object groups.
a. Navigate to All > Business Object Core > Business Object Group.
b. Select New.
c. On the form, fill in the fields.
Business Object Group form
Field

Description

Name

Name for the business object group.

Applies to

Workflow or process for which you're creating the business
object group. This value should be Sales Process Record
[sn_l2c_cockpit_sales_process_record].

Description A brief description of the business object group.
2. Create business object types to add as members in the business object group.
a. Navigate to All > Business Object Core > Business Object Types.
b. Select New.
c. On the form, fill in the fields.
Business Object Type form
Field

Description

Name Name for the business object type. For example, Opportunity.
Table Table associated with the business object. For example, if the business object type
name is Opportunity, you would enter the Opportunity [sn_opty_mgmt_core_opportunity]
table.
d. Select Submit.
3. Define relationships between the object types.
Relationships define how two object types are related by the source and destination columns
on the respective tables and govern the hierarchy of the records displayed on the node map.
For example, if you add Opportunity Line and Quote as child entities for the business object
type Opportunity, on the node map you would see the related Opportunity Line and Quote
records under an Opportunity node.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
You can add more than one child entity under a parent business object type. Ensure that you
avoid circular relationships.
a. Select the business object type you created.
b. On the Business Object Type page under the Business Object Relationships related list,
select New.
c. On the form, fill in the fields.
Business Object Relationship form
Field

Description

Source

The parent business object type for which you are creating the
relationships.

Destination

The child business object type that is related to the parent.

Source table name Table name of the parent business object type.
Destination table
name

Table name of the child business object type.

Source field

(Optional) The column on the source table used for establishing the
relationship.

Destination field

(Optional) The column on the destination table used for establishing
the relationship.

d. Select Submit.
4. Add business object types as members of business object group.
a. Navigate to All > Business Object Core > Business Object Group.
b. Under the Business Object Group Members related list, select New.
c. Select the business object type you want to add using the Lookup list icon

.

d. Select Submit.

Result

Business object group and business object types are available in Business process and
Business entity lists respectively in the Create new sales process record form in the CSM
Configurable Workspace.
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Customizing the sales process dashboard
Customizing the number of levels and tile content on the node map enhances clarity and
control so sales process managers can focus on relevant data and navigate more easily through
complex sales processes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Customize hierarchical node map levels for Lead-to-Cash Process Management
Customize the number of node levels to display in the Lead-to-Cash Process Management
hierarchical node map visualization.

Before you begin

Role required: admin

About this task

By default, the Lead-to-Cash Process Management hierarchical node map shows three node
levels. Although there is no upper limit on the number of node levels you can display, the node
map can display a maximum of 250 nodes at a time.

Procedure
1. Select All and in the navigation filter, enter sys_properties.list.
2. In the Name column, search for sn_l2c_cockpit.node_default_levels and select it.
3. If a message appears about the application scope, select here to be able to edit the record."
4. In the Value field, specify an integer for the number of node levels you want to display on the
hierarchical node map.
5. Select Update.
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Customize details displayed on node map tiles using a decision table
Customize the details displayed on the node map tiles in the Lead-to-Cash Process
Management using Decision Tables.

Before you begin

Role required: admin

About this task

You can add more columns to display additional lines. However, this would require you to make
code changes in the UI Builder.

Procedure
1. Navigate to All > System Definition > Decision Tables.
2. In the Name field of the system properties table, search for and select the Business object
type configuration decision table.
You are redirected to the decision table in Workflow Studio.
3. Change the values in the Field 1 and Field 2 columns depending on the information you want
to display in the node map tile.
4. Optional: Change the icon for the tile.
a. Access the Icon Gallery

to obtain the icon name corresponding to the icon you want to use.

b. Enter the icon name in the Node Icon field.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
5. Optional: Add decision rows for any additional business entities you created.
6. Optional: Verify the changes by selecting Test.
7. Select Save.
Related topics
Lead-to-Cash Process Management
Using Lead-to-Cash Process Management
Customize Tasks tab views using EVAM
Customize the sales entities from which the tasks are displayed, icon and fields that are
displayed on each task tile, and create custom options to filter and view consolidated tasks on
the sales process dashboard in Lead-to-Cash Process Management using Entity View Action
Mapping (EVAM).

Before you begin

Role required: admin or evam_admin

About this task

Note: Use SPR task EVAM definition for customizing Tasks tab views. Custom EVAM
definitions are not supported.

Procedure
1. Log in to your ServiceNow instance.
2. Select the Globe icon
Management.

and set the application scope to Lead-to-Cash Process

3. Navigate to All > Entity View Action Mapper (EVAM) > EVAM Definitions.
4. In the Name column, search for and select SPR task.
5. Optional: In the EVAM Datasource M2Ms tab, add or remove a data source.
◦ Create and Link: Define a new data source and then link this data source to your EVAM
definition. For more information, see Define a data source .

Note: When specifying a condition to define how the data is filtered from the selected
table, select the operator as is not empty for the business entity you're adding. For
example, [Quote][is not empty].
◦ Link Existing: Add a predefined data source to your EVAM definition.
◦ Unlink Selected: Unlink a data source you don't want to see on the Tasks tab in the sales
process dashboard.
6. Select Submit.
7. In the EVAM View Config Bundle M2Ms tab, add or remove a configuration bundle.
◦ Create and Link: Define a new configuration bundle and then link this bundle to your EVAM
definition. For more information, see Defining an EVAM configuration bundle
and Defining
an EVAM view template .
◦ Link Existing: Add a predefined configuration bundle to your EVAM definition.
◦ Unlink Selected: Remove the view config bundle for entities you don't want to display.
8. Optional: Add more data filter options on the Tasks tab of the sales process dashboard.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
a. In the EVAM Data Filters related list, select New.
b. On the form, fill in the fields.
EVAM Data Filters form
Field

Description

Label

Label name of the EVAM data filter.

Active

Option to activate the EVAM data filter.

Order

Priority for the EVAM view configuration. Lower numbers indicate a higher
priority.

Application

Application scope of the EVAM view configuration.

EVAM
Definition

Associate an EVAM definition with the data filter.

9. Select Submit.
Related topics
Create an EVAM definition
Modifying data retention and table cleanup policy for Lead-to-Cash Process Management
Modify the default data retention and table cleanup policy for Lead-to-Cash Process
Management to match your organizations requirements.
By default, records are deleted from the Business Process Record [sn_bo_core_process_record]
and Sales Process Record [sn_l2c_cockpit_sales_process_record] tables and child records
in the Business Process Task [sn_bo_core_process_task] and Business Process Resource
[sn_bo_core_process_resource] tables if they meet either of the following conditions:
• In an inactive state and not updated in the past six months
• In an active state but not updated in the past year
You can modify the data retention and table cleanup policy depending on your expected load
and volume.
To find out how to modify the data retention and table cleanup frequency for Lead-to-Cash
Process Management, see Modify data retention policy for ATF test results .
Related topics
Table cleanup
Autoflush form
Setting conditions for enabling email access in Lead-to-Cash Process Management
Sales process managers must be granted access to compose emails for the sales entity records
that are monitored in a sales process record.
Sales process managers can compose and send emails related to a sales process record by
default. Enable sales process managers to compose emails for the related sales entities by
setting the value of the email_client dictionary attribute to true and using either of the
following methods:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
• Grant the sales process manager write access to the child entity. For more information, see
Enable the email client for a table .
• Set the value of the glide.email_client.check_write_access system property to
false to override checking whether the user has write access to the child entity.

Note: The glide.email_client.check_write_access system property isn’t
supported on Xanadu and Yokohama Glide versions. If you’re using these Glide versions,
then you must grant your users write access to the child entity.
Related topics
Email client
View and send emails in Lead-to-Cash Process Management

Activate the Return Merchandise Authorization plugin
If you have the admin role, you can activate the RMA Case Management plugin
(com.sn_csm_rma_case). The plugin enables you to manage and triage return cases for
customer products and services, addressing returns, replacements, and repair use cases.

Before you begin

Install the following plugins or confirm that they exist before activating the RMA Case
Management plugin:
List of plugins to be installed before the RMA Case Management plugin
Plugin

Description

Lead to Cash Core [com.snc.l2c_core]

Enables you to compose Lead to Cash flow.

Customer Service Install Base Management
[com.snc.install_base]

Enables you to capture the current state of the
install base and establish the relationship to
any downstream entities that may impact their
functioning.

Case lines and workflows [com.sn_case_line]

Enables a case to hold many line items. The
line items are product instances and can be
extended for various order to case operations
entities.

Entitlements Verification [com.sn_ent_verify]

Provides API to verify entitlement and
characteristics.

Role required: admin

About this task

The following items are installed with RMA Case Management:
• Plugin
• Tables
• Roles
For more information, see Return Merchandise Authorization Case Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


<!-- page 837 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the RMA Case Management plugin (sn_csm_rma_case) using the filter criteria and search
bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Return Merchandise Authorization
Using order operations applications

Create Return Merchandise Authorization case lines
Create return merchandise authorization case lines directly from install base items or sold
product entities to manage the full post-sale life cycle of products sold to customers.

Before you begin

Role required: sn_csm_rma_case.csm_rma_case_agent

Procedure
1. Navigate to the CSM/FSM Configurable Workspace.
2. From the list, navigate to RMA cases and select All to open the list of cases.
3. Open an RMA case.
4. On the form, fill in the fields.
To learn more about the fields on the form, see RMA case line form.
5. Select Save and Continue.
6. In the Add and edit items window, select Add to add an install base item or a sold product as a
line item.
7. Select Add, exit the pop-up and select Save and submit.
8. In the Review entitlements window, add any entitlements and select Verify and continue.
9. In the Propose issue solution screen, select the case line that you're working on and select
Edit.
◦ Based on the requirement, select Refund, Replacement, Reject, or Repair as a proposed
resolution.
◦ Update the state of the case to Draft, New, Work in progress, Awaiting info, Awaiting
shipment, Resolved-Accepted, Resolved- Denied, Closed, or Canceled. At this stage, you
can move forward only if the case is set to work in progress.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


