# Australia Sales Customer Relationship Management — Order management

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 797–825 of 1645

Sections: Order management (p797)

---

<!-- page 797 -->
Field

Value

When

after

Insert

Selected

Update

Selected

Filter Conditions

[Target] [changes] AND [Target table] [changes]

f. In the Advanced tab, add the following values to trigger email promotion processing for
staged CRM emails.

Field

Value

Condition sn_crm_outlook.CRMOutlookAddinConstants.PROMOTED_TABLE_LIST[current.target_table]
== true && !gs.nil(current.instance) && gs.nil(current.email)
Script

gs.eventQueue("email_staged.read", current);

The script event initiates asynchronous processing to promote the staged email and trigger
the appropriate association workflow.
The following image shows the Advanced tab with Condition and Script fields populated.

g. Select Submit.

Result

Staged emails that meet the specified conditions are processed according to the configured
promotion rules. Promoted emails appear in the Emails tab on manually associated records or in
the activity stream on AI-matched records.
Related topics
Classic Business rules
Track emails linked from Microsoft Outlook

Configuring Order Management
Learn how to configure the features and components that you need for customer and service
order processing, depending on whether you are a provider or an enterprise customer.
Related topics
Order management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
Install Order Management
You can install the Order Management application (sn_ind_tmt_orm) if you have the admin role.
®
The application includes demo data and installs related ServiceNow Store applications and
plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Order Management
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Order Management:
• Roles
• Tables
For more information, see Components installed with Order Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Order Management application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
◦ Order Management (sn_ind_tmt_orm): Select this app to install the Order Management
application.
◦ Order Management for Telecommunications, Media, and Technology (sn_om_tmt): Select
this app if you have a Telecommunications Service Management subscription. This installs
the Order Management application, and the Telecommunication Open APIs (sn_tmf_api)
for the TM Forum API REST specifications: Product Catalog, Service Catalog, Product Order,
Service Order, Product Inventory, and Technical Service Qualification.
In the list next to the Install button, the versions that are available to you are displayed.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
Related topics
Order management
Using Order Management

Configure order enrichment flows using Decision Tables
Associate enrichment subflows with the product or service specifications by using the Order
Enrichment Flow Policy in Decision Tables.

Before you begin

Role required: process admin

About this task

Add rows to the Order Enrichment Flow Policy decision table to specify which products should
go through enrichment. Add the product enrichment subflow to a new row in this table with the
appropriate conditions. Conditions can be a combination of product specification and offering
information.

Procedure
1. Navigate to All > Decision Builder.
2. Select the Order Enrichment Flow Policy decision table.
3. In the Specification column of the conditions section, select the order line item to set a
condition.
4. Select the product offering in the Offering column.
Decision table for order enrichment process

5. Select Save.

Result

A list of subflows appear in the results section. These sub flows create the enrichment tasks for
an order line item during the enrichment process. For more information, see Decision Builder
user interface .
Related topics
Order management
Using Order Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Configure the customer order task policy using Decision Tables
Define conditions for automatic generation of order header tasks and top order line item tasks by
adding rows to the Customer Order Task Policy in Decision Tables.

Before you begin

Role required: admin or decision_table_admin

About this task

The Customer Order Task Policy decision table determines which order header tasks and top
order line item tasks are automatically generated, and at which stage of the order life cycle they
are triggered. Each row in the table maps a set of conditions to a subflow that creates the task.
Order header task conditions reference order-level parameters, such as account or order action.
Top order line item task conditions reference parameters at the order line item level, such as
product offering or order line item action.
For header tasks, specify the stage at which the task is generated:
• after order submission
• after order approval
• after order fulfillment

Procedure
1. Navigate to All > Decision Builder.
2. Select the Customer Order Task Policy decision table.
3. Select Add new decision row to add a condition row.
4. In the conditions section, set the values for the fields that determine when the task is
generated.
Customer Order Task Policy condition fields
Field

Description

Triggered
state

Select the order life cycle stage at which the task is generated: Submitted, Post
approval, or Post fulfillment.

Order
action

Order action that triggers task generation, such as Add.

Product
offering

Product offering associated with the order line item. Applies to top order line
item tasks only.

Account

Customer account associated with the order. Applies to order header tasks.

5. In the results section, select the subflow to run when the conditions are met.
The subflow requires the Create Order Header Task flow action for order header tasks, or the
Create Top OLI Task flow action for top order line item tasks.
6. Select Save.

Result

The policy row is saved. When an order matches the configured conditions at the specified
triggered state, the associated subflow runs and creates the order header task or top order line
item task.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
What to do next

To control whether open order header tasks block order state transitions, set
sn_ind_tmt_orm.block_order_appro_complet_until_tasks_complete system in All > System
Properties.
Related topics
Order management
Using Order Management

Configure product order fulfillment policy using Decision Tables
Associate fulfillment subflows with the product specifications by using the Product Order
Fulfillment Policy in Decision Tables for move order.

Before you begin

Role required: admin

About this task

Add rows to the Product Order Fulfillment Policy decision table to specify which products
should go through fulfillment. Add the product fulfillment subflow to a new row in this table with
the appropriate conditions. Conditions can be a combination of action, category, and move
operation.

Procedure
1. Navigate to All > Decision Builder.
2. Select the Product Order Fulfillment Policy decision table.
3. To trigger the subflow configured for move, do the following:
a. Select true in the Move Operation column.
b. Select Change in the action column.

4. To trigger separate subflow for change and not move, do the following:
a. Select Change in action column.
b. Select false in the move operation column.
5. Select Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
Result

A list of subflows appear in the results section. These sub flows create the fulfillment tasks for
an order line item during the fulfillment process. For more information, see Decision Builder user
interface .
Related topics
Order management
Using Order Management

Configure service order fulfillment policy using Decision Tables
Associate fulfillment subflows with the service specifications by using the Service Order
Fulfillment Policy in Decision Tables for move order.

Before you begin

Role required: admin

About this task

Add rows to the Service Order Fulfillment Policy decision table to specify which products
should go through fulfillment. Add the service fulfillment subflow to a new row in this table with
the appropriate conditions. Conditions can be a combination of action, category, and move
operation.

Procedure
1. Navigate to All > Decision Builder.
2. Select the Service Order Fulfillment Policy decision table.
3. To trigger the subflow configured for move, do the following:
a. Select true in the Move Operation column.
b. Select Change in the action column.

4. To trigger the separate subflow for change, do the following:
a. Select Change in action column.
b. Select false in the move operation column.
5. Select Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
Result

A list of subflows appear in the results section. These sub flows create the fulfillment tasks for
an order line item during the fulfillment process. For more information, see Decision Builder user
interface .
Related topics
Order management
Using Order Management

Configure resource order fulfillment policy using Decision Tables
Associate fulfillment subflows with the resource specifications by using the Resource Order
Fulfillment Policy in Decision Tables for move order.

Before you begin

Role required: admin

About this task

Add rows to the Resource Order Fulfillment Policy decision table to specify which products
should go through fulfillment. Add the resource fulfillment subflow to a new row in this table
with the appropriate conditions. Conditions can be a combination of action, category, and move
operation.

Procedure
1. Navigate to All > Decision Builder.
2. Select the Resource Order Fulfillment Policy decision table.
3. To trigger the subflow configured for move, do the following:
a. Select true in the Move Operation column.
b. Select Change in the action column.

4. To trigger the separate subflow for change, do the following:
a. Select Change in action column.
b. Select false in the move operation column.
5. Select Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
Result

A list of subflows appear in the results section. These sub flows create the fulfillment tasks for
an order line item during the fulfillment process. For more information, see Decision Builder user
interface .
Related topics
Order management
Using Order Management

Configure order fulfillment
Order fulfillment is the process for fulfilling customer orders by using Workflow Studio.
Order fulfillment, also referred as order orchestration, defines how to coordinate the fulfillment of
orders.
You can define the order fulfillment processes that you require and then configure them by
performing the tasks in the following table.

Task

Description

Configure subflows for order fulfillment

Subflows define the task flow for fulfillment
agents to fulfill customer orders. You can copy
a subflow from the base system and change
your business needs. For more information on
configuring subflows, see Building Subflows .

Configure decision tables for order
fulfillment

Decision tables define the conditions for
triggering the order fulfillment subflow. The
Order Management for Telecommunications,
Media, and Technology application uses the
Order fulfillment Policy decision table. For more
information on configuring decision tables, see
Decision tables .

Configure order assignment rules to route
tasks to agents, based on their skill sets

For more information on assignment rules, see
Create an assignment rule .

Related topics
Order management
Using Order Management
Flow actions for fulfillment subflow definition
If you define your own fulfillment subflows in Workflow Studio, you can use the standard flow
actions that are available in the ServiceNow AI Platform. Each action deals with different aspects
of the fulfillment or inventory maintenance that provides some consistency in retrieving and
updating data.
The fulfillment flows in the demo data that was shipped with the ServiceNow AI Platform use the
flow actions in the following table.

Action name

Description

Create Install Base Item and Installed Product

Flow action to create and manage the installed
case items in the order fulfillment subflow.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
Action name

Description

The flow action takes the customer order line,
configuration item (CI), and sold product as
input, and creates the install base item and
installed product.
Update Configuration Item

Flow action that includes a prescriptive
way to update the configuration items order
fulfillment subflow.
The flow action takes the sold product,
product model ID, and comments as input, and
updates the corresponding configuration item
based on the install base Item.

Get Child Sold Product

Flow action that includes a prescriptive way to
retrieve the sold products that are relevant to a
specification in a customer order.
The flow action takes the specification and
the parent sold product as input and retrieves
the child sold product from the respective
hierarchy. Using this flow action helps the
product inventory updates that occur at the
end of the fulfillment process.

Get Customer Order Characteristic Value

Flow action that takes the customer order line
Item and characteristic as input and returns a
characteristic value from the customer order
line item. If the characteristic is not present
in the customer order line item, it returns the
default value for the characteristic from the
respective order line item offering.

Related topics
Flow Designer
Flows
Create a flow
Integrate with Field Service Management
Customer Service Management provides an integration with the Field Service Management
application. This integration enables you to view work order and work order task information from
a case.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Plugins.
2. Enter Customer Service with Field Service Management plugin com.snc.csm_fsm_integration
in the Search field.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
3. Click Install.
For more info, see Activate a plugin

.

Result

After the plugin is installed, Field Service Management application is integrated with Customer
Service Management.
Integrating with Field Service Management
The Customer Service with Field Service Management plugin (com.snc.csm_fsm_integration)
provides an integration between the Customer Service Management and Field Service
Management applications.
Users can view account and contact information on work orders and work order tasks in the Field
Service Management application. Customers and consumers can view case-related work orders
from the Customer Service and Consumer Service Portals.
When an agent creates a work order from a customer service case, the work order and task forms
include case-related information. This information includes the account and contact details.
When a user views a case from either the Customer or Consumer Service Portals, they can view
the details of any work orders and tasks related to the case.

Product use rights included with this application
If you have purchased a subscription for the Field Service Management (FSM) application,
Customer Service Management you can create and view all FSM work orders and appointments.
External CSM users can create and view FSM work orders and appointments of their own or
relatedʼaccounts.

Changes to the Field Service Management application
In the Field Service Management application, this integration adds the following fields to the
Work Order form. These fields are visible in the Case view. To display these fields, right-click the
Work Order form header and select View > Case.
• Account
• Consumer
• Contact
• Asset
• Partner
• Partner Contact
Updating the Account field on the Work order form also updates the Company field. Updating
the Contact field on the Work Order form updates the Caller field.

Changes to the Customer Service Management application
In the Customer Service Management application, this integration adds the Work Orders link
to the Customer Service Portal and Consumer Service Portal headers. Select this link to view a
list of work orders, including the work order number, priority, state, and short description. The
work orders displayed in this list on the Customer Service Portal depend on the customer role:
customer, customer admin, partner, or partner admin.
Select a work order in this list to display the work order details.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
Known Limitations
There is no synchronization between the Work Order form and the associated Case form. If
information changes on the Case form, it does not get updated on the Work Order form.
Configure customer product data management
Learn how to use the sn_ind_tmt_orm.enable_prod_invt_for_order_management system
property to either create sold products or product inventory records after an order is completed
and fulfilled.

Before you begin

Role required: admin

About this task

The following table lists the values that you can set for the
sn_ind_tmt_orm.enable_prod_invt_for_order_management system property depending on
whether you want to create an entry in the Sold Products [sn_install_base_sold_product] table or
Product Inventory [sn_prd_invt_product_inventory] table after an order is fulfilled.

Value Description

True

Create a record in the Product Inventory [sn_prd_invt_product_inventory] table. This is
the default setting.

False Create a record in the Sold Products [sn_install_base_sold_product] table.

Note: You can choose to create either sold products or product inventory records, but not
both.

Procedure
1. Log in to the ServiceNow instance.
2. Select All.
3. Switch the application scope to Order Management.
4. Enter sys_metadata.list in the Filter text box.
5. On the Application Files list view, search and select the
sn_ind_tmt_orm.enable_prod_invt_for_order_management property from the
Display name column.
6. On the System Property form, specify a value in the Value depending on how you want to
create inventory records.
7. Select Update.
Related topics
Creation of sold product and product inventory records
Managing post-fulfillment order changes
Product data

Configuring Jeopardy Management
You can configure Jeopardy Management to monitor tasks in a fulfillment plan and alert
managers about the jeopardy levels.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
There are several steps to set up Jeopardy Management in Order Management as listed in the
following table.
Jeopardy Management setup
Configuration actions

Description

Define Jeopardy-enabled
fulfillment workflows

Define subflows for product and service specifications
using the following Jeoapardy-specific Workflow Studio
actions:
• Create Order Planned Task
• All Place Holder Tasks Created for Domain Order
• Set Task Relationships
• All Relationships Created for Order Tasks on Domain
Order
• Set Order Task State
All tasks are created in a Draft state.

Configure the Order Jeopardy
Enablement Policy

Enable Jeopardy Management for product and service
using the Order Jeopardy Enablement Policy in Decision
Builder.

Note: Enable Jeopardy Management for all
fulfillment flows in an order or specification.
ʼunique_616

Define service level agreements (SLA) based on request
type and specify the proper start and end conditions to
monitor order task progression.

Configuring Jeopardy
Management

Set up decision policy tables to retrieve jeopardy
information. Policy tables include:
• Configure Order Task Assignment Policy
• Configure Order Line Jeopardy Level Calculation Policy
• Configure Order Task Jeopardy Level Calculation Policy

Set business hours for tasks in
Jeopardy Management

Use the sn_ind_tmt_orm.order_task_schedule
system property to set business hours for tasks.

Additional attributes in Jeopardy Management
The following section contains additional information about Jeopardy Management:
• Is Jeopardy Management domain separated? Yes.
• How does Jeopardy Management interact with domain separation? Tables are domain
separated.
• Does Jeopardy Management introduce new roles or access control list (ACL)? Yes, read
access for the Task SLA table (task_sla) is granted to the following roles:
◦ sn_ind_tmt_orm.service_order_agent
◦ sn_ind_tmt_orm.order_fulfilment_agent
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
Demo data
If you have a Telecommunications subscription, the following fulfillment subflows are included
with the demo data for Order Management for Telecommunications and Media:
• Ethernet Edge Device Fulfillment
• Ethernet Modem Fulfillment
• Change Ethernet Edge Device
• Disconnect Ethernet Edge Device
• Disconnect Ethernet Modem
• Network Interface Profile Fulfillment
• Change Network Interface Profile
• Disconnect Network Interfact Profile
• EVC Configuration Fulfillment
• Disconnect EVC Configuration Service
Related topics
Jeopardy Management
Monitoring order jeopardy
Setting up jeopardy management
Learn about how to set up and configure Jeopardy Management for Order Management.
During design time, fulfillment managers must complete the following Jeopardy Management
configuration and setup steps:
• Define Fulfillment Subflows: Creates an Orchestration plan for each specification. Fulfillment
managers can use demo data flow actions to ensure that order task relationships are created.
• Define Service Level Agreements (SLA) Definitions: SLA definitions track how much time each
order task takes to complete.
• Build Decision Tables: Build decision tables that contain information including order task
duration, jeopardy level assignment, and jeopardy enablement.

Define Fulfillment Subflows
To use Jeopardy Management, fulfillment managers must either reconfigure existing fulfillment
subflows or create subflows for each specification.
• Order tasks are created up front: Subflows that are configured for jeopardy management
create order tasks up front and in a Draft state.
• Use Create Order Planned Task flow action: In Decision Builder, use the Create New Order
tasks.
• Create task relationships: After all the order tasks are created, fulfillment managers create
order task relationships.
• Define fulfillment progress: After all order tasks and task relationships are created, define the
fulfillment progress.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
Create SLA Definitions
SLA definitions and SLA Processing flows are linked to tasks in a fulfillment plan and track
and report on the time jeopardy-enabled tasks take to complete. See ʼunique_616 for more
information.
• SLA Definitions: Set start condition, pause condition, cancel condition, and reset conditions
according to use case.
• SLA Durations: Durations are specified so that tracking can be achieved when task SLA is
created.
• SLA Processing flow should be defined: Customer can use demo data flows, which trigger
jeopardy level calculation for order tasks at 50%, 75%, 100% task SLA progression.

Link Jeopardy Management to Product and Service Specifications using
Decision Builder
Decision tables are used to link and configure Jeopardy Management to product and service
specifications in Order Management.
• Order Line Item Jeopardy Level Calculation: Returns Jeopardy Level for order line item based
on delayed percentage of tasks.
• Order Task Jeopardy Level Calculation: Sets a task's jeopardy level based on percentage task
completion.
• Order Task Duration Assignment Policy: Defines the order duration and task SLA definition.
• Order Jeopardy Enablement Policy: Defines if a specification has jeopardy enabled.
Related topics
Jeopardy Management
Monitoring order jeopardy
Jeopardy Management use cases
Jeopardy Management use cases help you explore and understand how Jeopardy Management
works in different scenarios in Order Management.

Design-time use cases
Design-time use cases explain some of the scenarios around configuring and setting up
Jeopardy Management for Order Management.
Use case: Configure business logic and workflows
System admins want to configure and define fulfillment subflows with Jeopardy Management
actions and logic.
Define jeopardy logic using Workflow Studio to links product specifications and a fulfillment
workflow.
• Create planned order tasks in Draft state.
• Set task relationships.
• Create placeholder for domain orders.
• Create relationships for order tasks in a domain order.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
• Set order task state.
• Configure jeopardy decision tables.

Run-time use cases
Run-time use cases explain some of the scenarios around running and monitoring Jeopardy
Management for Order Management.
Use Case: Support predictive jeopardy that monitors customer orders
Fulfillment agents and managers use jeopardy management workflows to monitor the potential
risk of an order missing a customer due date.
• Calculate planned task completion dates and estimated dates.
• Monitor order tasks against service level agreements (SLA)s.
• Trigger SLA thresholds for order task and order line items.
• Update jeopardy levels as needed in the order entry forms.
• Roll up planned dates for order tasks that complete.
Use Case: Support staggered order decomposition and Jeopardy Management
Fulfillment managers and agents expect that when a staggered order decomposition occurs,
each occurrence of a staggered order line item causes the Jeopardy Management workflow logic
to restart.
• Completed decomposed order line items, the Jeopardy Management workflow restarts when
additional planned tasks are added.
• New planned tasks get a task SLA assigned, which is benchmarked for all tasks repeated, and
includes the date roll ups.
Use Case: Support inflight orders and Jeopardy Management
Fulfillment managers and agent want Jeopardy Management to pause orders. When the order
revision is approved, the jeopardy monitoring restarts.
• Revision in progress and all tasks are on hold: jeopardy monitoring halts.​
• Order revisions approved: task states go from on hold to their previous state and upcoming
tasks move to a scheduled state.
• Jeopardy logic recalculates dates: planned dates and estimated or expected dates.
• Dates are benchmarked.
• Date roll up logic run and reflects the new start and end dates for planned and estimated
dates.
Related topics
Jeopardy Management
Monitoring order jeopardy
Define Jeopardy-enabled fulfillment workflows
Create jeopardy-enabled fulfillment workflows using Workflow Studio. The workflows enable
Jeopardy Management to track task completion times and manage risk.

Before you begin

Role required: admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
About this task

Creating fulfillment flows starts with defining subflows in Workflow Studio using unique actions
developed for Jeopardy Management.
The following Workflow Studio actions are used to create Jeopardy Management flows:
• Create Order Planned Task
• All Place Holder Tasks Created for Domain Order
• Set Task Relationships
• All Relationships Created for Order Tasks on Domain Order
• Set Order Task State

Procedure
1. Navigate to All > Process Automation > Flow Designer.
Workflow Studio opens in a separate window.
2. Select Subflows and do one of the following:
◦ Search for existing subflows that you want to edit.
◦ Start a new flow by selecting New > Subflow.
3. Give the subflow a name and provide any additional information.
4. Select the Build subflow action.
5. Build the Jeopardy Management subflow using the following actions:
Jeopardy Management flow actions
Order flow action

Definition

Create Order Planned Task

Creates an order task and provides the option to establish
task relationship with an existing order task. The Create
Order Planned Task action extends planned tasks to
Jeopardy Management.

All Placeholder Tasks Created for
Domain Order

Sets the domain order stage to all order tasks created,
so order tasks created by other subflows can have
relationships created with current flow order tasks.

Set Task Relationship

Sets the relationship between two order tasks by creating
a record in the planned_task_rel_planned_task table. The
table calculates the order line item runtime and the order
task jeopardy calculations.

All Relationships Created for
Order Tasks on Domain Orders

Introduces the domain order all_relationship_set and sets
the field to true in the subflow when all task relationships
are established.

Set Task Order State

The flow action checks if an order task has a previous
state value and uses the previous state to update the
order task state during inflight state change.
The Set the Order Task State action checks to see if
an order task has a previous state value and uses the
previous state to update the order task state during inflight
state changes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
Note: For more information about building subflows, see Building subflows

.

6. Test the flow by selecting Test.
7. Publish the flow by selecting Publish.

What to do next

Configure the Order Task Duration Assignment Policy.
Related topics
Jeopardy Management
Monitoring order jeopardy
Configure the Order Task Duration Assignment Policy
Configure the Order Task Duration Assignment Policy using Workflow Studio. This policy
determines how long each task should take to complete, when it should start, and when it's
expected to finish, enabling accurate scheduling, resource planning, and timeline visibility
across the order life cycle.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Select Order Task Duration Assignment Policy.

3. On the Order Task Duration Assignment Policy decision table, fill in the fields.
Order Task Duration Assignment Policy fields
Field

Description

Request type

Order task for which you want to add a
duration time.

Order task account

Order task account associated with the task.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
Field

Description

Duration

Allotted time for this task. For example, 2
Days 6 Hours.

Note: The allotted time for order tasks
must be the same as the allotted time in
the SLA definition assigned to the order
task.

4. Select Save.

What to do next

The next step is to configure SLA definitions for Jeopardy Management. For more information,
see ʼunique_616.
Related topics
Jeopardy Management
Monitoring order jeopardy
Configure the Order Line Jeopardy Level Calculation Policy
Configure the Order Line Jeopardy Level Calculation Policy using Workflow Studio to set the
jeopardy risk level for order line items.

Before you begin

Role required: admin

About this task

You must provide a time range for each jeopardy level. When the time range is reached, the
linked jeopardy alert level is displayed.

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Select Order Line Item Jeopardy Level Calculation Policy.

3. On the Order Line Item Jeopardy Level Calculation Policy decision table, fill in the fields.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
Order Line Item Jeopardy Level Calculation Policy
Field

Description

Delayed
Percentage

Set the minimum and maximum delayed percentage for the order line item
(OLI).

Order Line
Items (OLI)
Specification

Select the order line item to attach to the Delayed Percentage.

Jeopardy Level Set the jeopardy level for the values indicated in the Delayed Percentage
field. In the example:
◦ Less than 10% delayed percentage = the lowest jeopardy level.
◦ 10–25% completion, Jeopardy level moves to a medium alert.
For example, if the minimum and maximum values in the Delayed
Percentage field are 5% and 10% respectively, you can assign that value
range a Low Jeopardy Level.
4. Select Save.

What to do next

Configure the Order Task Jeopardy Level Calculation Policy
Related topics
Jeopardy Management
Monitoring order jeopardy
Configure the Order Task Jeopardy Level Calculation Policy
Configure the Order Task Jeopardy Level Calculation Policy using Workflow Studio to set the risk
levels for the minimum and maximum Service Level Agreement (SLA) percentage completion for
order tasks.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Select Order Task Jeopardy Level Calculation Policy.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
3. On the Order Task Jeopardy Level Calculation Policy decision table, fill in the fields.
Order Task Jeopardy Level Calculation Policy
Field

Description

SLA
progression

Set the minimum and maximum percentage for the order task.

Order task
request type

Select the order task request type. A request task is part of a jeopardyenabled workflow.

Order line item
account

Select the order line item account. The account is linked with the order and
order line item.

Jeopardy level

Assign the jeopardy level to associate with the SLA progression
percentage minimum and maximum values.

4. Select Save.

What to do next

Configure the Order Jeopardy Enablement Policy
Related topics
Jeopardy Management
Monitoring order jeopardy
Configure the Order Jeopardy Enablement Policy
Add Jeopardy Management workflows to product and service specifications using the Order
Jeopardy Enablement Policy in Workflow Studio.

Before you begin

Role required: admin

About this task

Use Workflow Studio to define which product, service, or resource specification is jeopardyenabled.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Select Order Jeopardy Enablement Policy.
3. In the Specification column under the Conditions section, select a product or service
specification to link to Jeopardy Management.
4. In the results column, set the Jeopardy Enabled field to

True.

Note: Entries in this decision table are for top-level product or service specifications. In
a single order, customers can purchase multiple top-level products or services. However,
if any one of the products or services isn’t jeopardy-enabled, the entire order is treated
as a non-jeopardy-enabled order.
5. Select Save.
The product specification workflow is jeopardy-enabled. Jeopardy logic begins when the
specification workflow starts.

What to do next

After configuring Jeopardy Management, see Monitoring order jeopardy to review different ways
to monitor Jeopardy Management.
Related topics
Jeopardy Management
Monitoring order jeopardy

Configuring Fallout Management
As a provider, you can use Fallout Management to identify, investigate, and resolve order
processing issues so that orders can continue processing through to completion.
The fallout type is a category that indicates the type of fallout activity. Billing Issue, Inventory
Allocation Failure, and Provisioning Failure fallout types are standard in the ServiceNow AI
Platform. You can define additional ones, according to the requirements of your enterprise. To
learn more about managing order task fallout, see Managing order fallout.
Related topics
Order management
Managing order fallout
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
Create additional fallout types
Define your own enterprise-specific fallout types to identify, resolve, and investigate order
processing issues so that they can continue processing through to completion.

Before you begin

Role required: admin

About this task

The fallout type is a category that indicates the type of fallout activity. Billing Issue, Inventory
Allocation Failure, and Provisioning Failure fallout types are standard in the ServiceNow AI
Platform. You can define additional ones, as per the requirements of your enterprise. To learn
more about managing order task fallout, see Managing order fallout.

Procedure
1. Log in to the ServiceNow instance.
2. In the application navigator, enter sn_fallout_mgmt_fallout_type.list.
3. Select New.
4. In the Name field, enter the name of the fallout type.
5. Optional: Add a brief description in the Description field.
6. Select Submit.
Related topics
Order management
Managing order fallout

Configuring inflight changes
You can use inflight change order management to manage the receipt of changes for customer
or service orders that are still in the process of being orchestrated and fulfilled.
Inflight change order management handles modifications to orders that are already in progress
after submission but before fulfillment is complete. This capability is essential for real-world
scenarios where customers need to adjust quantities, swap products, change configurations, or
cancel portions of an order while fulfillment activities are already underway.
Inflight change order management enables you to decide when you permit such changes to
ongoing orders, assesses the impact of the requested changes for an order, and automatically
generates a compensation plan for them.

Note: Characteristic, Contact, Quantity, or Price inflight revision types are standard in the
ServiceNow AI Platform but you can define additional ones as per the requirements of your
enterprise. To learn more, see the "Types of Inflight order changes" section in the Managing
inflight order changes and cancellation requests.
Related topics
Order management
Managing inflight order changes and cancellation requests
Create additional inflight order change types
Define your own enterprise-specific inflight order change types that are used to categorize
revisions or requests for cancellations, product orders, service orders, and their related line
items.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
Before you begin

You must be in the Order Management application scope.
Role required: admin

Procedure
1. In the application navigator, enter sn_ind_tmt_orm_inflight_change_type.list
to view the Inflight Changes Type (sn_ind_tmt_orm_inflight_change_type) table.
2. Select New.
3. In the Name field, enter the name of the inflight order change type.
4. Select Submit.
Related topics
Order management
Managing inflight order changes and cancellation requests
Configuring order tasks to respond to inflight revision and cancellation requests
Configure your order task records to respond to inflight order changes and cancellation requests
using Workflow Studio.
The Create Order Task action contains flow actions that you use to define the order tasks for the
inflight order revision and cancellation process.
To learn more about creating a flow and inflight order change processing, see:
• Create a flow
• Managing inflight order changes and cancellation requests
To see a sample Create Flow action, see the sample Change Cisco Firepower Monitoring system
flow, in your demo data, which is installed with the ServiceNow AI Platform.
When you define a Create Order Task action, you can use the standard flow actions that are
available in the ServiceNow AI Platform. See the following table for a list of these standard flow
actions.
Create Order Task flow action fields
Create Order Task flow action field

Description

Inflight Change Type

Flow action to configure the order task to
respond to the corresponding change type.
You can select one of the following:
Contact
The order task responds to
changes made to contact
information on an existing order
line item.
Price
The order task responds to
changes made to pricing
information on an existing order
line item.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


<!-- page 820 -->
Create Order Task flow action fields (continued)
Create Order Task flow action field

Description

Quantity
The order task responds to
changes made to quantity
information on an existing order
line item.
Characteristics
The order task responds to
changes made to characteristics
information on an existing order
line item.
Related items
The order task responds to
changes made to related items
information on an existing order
line item.
If the task is not related to any inflight change
type, you can leave it empty.
Inflight Change Option

Flow action to define if the order task is
related in any characteristic changes, or
only to a few characteristic changes from the
corresponding request definition. You can
select one of the following:
Not Applicable
The order task should not
respond to any characteristic
changes made to the order.
Characteristics From Request Definition
The order task should respond to
the specific set of characteristics
that you define in the Request
Definition Characteristic
[sn_ind_tmt_orm_req_def_char]
table. These records contain the
mappings of the order tasks to
specific sets of characteristics.
Any Characteristics
The order task should respond to
any revisions made to the order
line item characteristics that
are available in the customer or
service order.

Inflight Task Fields (Order Task)

Flow action to attach scripting that designates
what redo actions, or field updates, if any,
should take place in the order task.
It is applied for revisions or cancellation
requests for inflight orders that contain the

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
Create Order Task flow action fields (continued)
Create Order Task flow action field

Description

inflight change types and options that are
defined in the Inflight Change Type and
Inflight Change Option.
Cancel Task Fields (Order Task)

Flow action to attach scripting that designates
what undo actions, or cancellations, if any,
should take place in the order task.
It is applied for revisions or cancellation
requests for inflight orders that contain the
inflight change types and options that are
defined in the Inflight Change Type and
Inflight Change Option flow actions.

Related topics
Flow Designer
Flows

Configuring compatibility rules for horizontal relationships
As a provider, you can use compatibility rules to establish horizontal relationships between the
specifications of multiple products, services, or resources.
You use a compatibility rule to define a source specification and a target specification and to
establish a relationship between them.
The ServiceNow AI Platform provides two types of relationships that you can use to define a
compatibility rule:
1. Requires: The source specification requires the defined target specification.
2. Excludes: The source specification excludes the defined target specification.
While you're creating a compatibility rule, you can establish the horizontal relationship either by
defining the specifications or by defining the details for the specification characteristics. You can
also define the maximum and minimum quantity of the specifications to support and fulfill your
customer orders as per the defined decomposition rules.
Before you can capture a new customer order that has a horizontal relationship, you must
configure the compatibility rules by defining the source and target specifications.
Related topics
Order management
Using Order Management

Asynchronous order processing for large customer and consumer orders
Asynchronous order processing handles high-volume enterprise and consumer orders without
waiting for immediate processing, improving system performance for communications service
providers (CSP) using Order Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
Overview of asynchronous order processing
CSPs support both enterprise customers and consumers. Enterprise customers typically
place large multi-site orders, while consumers place high-volume orders. Asynchronous order
processing enables you to create bulk or high-volume orders without waiting for each order to be
processed immediately, improving efficiency and system performance.
When you submit an asynchronous order request, the system responds with a 202 Accepted
status and an order ID. This indicates the order is received for processing but not yet created.
This differs from synchronous processing, which returns 201 Created when the order is
immediately created.
If you have a Telecommunications Service Management subscription, you can use the Product
Order Open API to receive an order in the Order Management application. Order processing
goes through three stages:
• Order validation
• Order ingestion
• Order creation

How synchronous order processing works
With synchronous order processing, an order is received in the Order Management application
through the API. Then, the order records are simultaneously created in a customer order table
after the order validation.
As an administrator, you can activate or deactivate the order validation for synchronous
order processing by setting the create_product_order_validation_sync and
create_service_order_validation_sync system properties to True (Default) or False
in the ServiceNow AI Platform. Synchronous order processing takes longer than asynchronous
order processing when it comes to creating a large number of customer order records.

How asynchronous order processing works
In asynchronous order processing, high-volume orders or large numbers of order payloads
are received through the Product Order Open API in the Order Management application from
external Configure, Price, and Quote (CPQ) systems.
The order details are first validated and then inserted into the Inbound Queue
[sn_tmt_core_inbound_queue] table. If validation errors occur, an error message is returned in
the response. The actual order creation happens later when a scheduled job processes entries
from this queue, allowing for bulk or delayed processing.
This validation is managed by the create_product_order_validation_async system
property for product orders and the create_service_order_validation_async
system property for service orders. These properties control the validation in the
asynchronous processing of orders before the orders are inserted into the Inbound Queue
[sn_tmt_core_inbound_queue] table. The default value is set to True.
When the order details are successfully validated, a scheduled job runs to pick up the records
from the Inbound Queue [sn_tmt_core_inbound_queue] table and then creates entries in the
customer order table as shown in the following diagram.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
Asynchronous order processing workflow

The asynchronous order processing follows these steps:
1. You must activate the Product Order Open API. The new parameter mode enables the API to
process orders synchronously or asynchronously. For more information about the API, see
Product Order Open API .
2. After you receive high-volume orders or large numbers of order payloads through the Product
Order Open API in asynchronous mode, the system responds with a 202 Accepted status
and an order ID. The order details are validated first and include the product offering, order line
items, order specifications, order line item characteristics, and the specification relationship of
order line items. For more information on how the validation works, see Validating your orders
through asynchronous order processing.
3. After the validation of the order details is complete, an entry for each order with a unique
record ID is created in the Inbound Queue [sn_tmt_core_inbound_queue] table. To learn
more about how the order entries are created, see Create order entries manually during the
asynchronous order processing.
4. When all the orders are captured in the Inbound Queue [sn_tmt_core_inbound_queue] table,
a scheduled job runs to create the customer orders for the records in the New state. You can
also manually trigger order creation from the Inbound Queue module by selecting the Create
Order button, bypassing the wait for the automated job. After processing, you can verify the
created orders in the customer orders section. To learn how a scheduled job creates orders,
see Configure a scheduled job for asynchronous order creation.
Related topics
Inbound request states
Validating your orders through asynchronous order processing
You can validate your orders before the order records are created in the customer order table
®
during asynchronous order processing in the ServiceNow Order Management application.
You configure two system properties to validate your orders in asynchronous order processing.
The create_product_order_validations_async system property for product orders
and the create_service_order_validations_async system property for service
orders control the validation in the asynchronous processing of orders before the orders are
inserted into the Inbound Queue [sn_tmt_core_inbound_queue] table. The default values of
these properties are set to True.
By default, when a scheduled job picks up the record from the Inbound Queue
[sn_tmt_core_inbound_queue] table, no validation occurs and the order and the order line items
are created.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
To enable validation through a scheduled job, you can override the
enableValidationViaScheduleJob property to return true. By default, this method
returns false.
The following table lists all the system properties that are required for validation.
System properties for validation
Name

Description

sn_ind_tmt_orm.create_product_order_validations_async
Enable or disable the validations
before inserting the product order
records into the Inbound Queue
[sn_tmt_core_inbound_queue] table.​
sn_ind_tmt_orm.create_product_order_validations_sync
Enable or disable the validations before
inserting the product order records into the
Customer Order [sn_ind_tmt_orm_order]table.
sn_ind_tmt_orm.create_service_order_validations_async
Enable or disable the validations
before inserting the service order
records into the Inbound Queue
[sn_tmt_core_inbound_queue] table.​
sn_ind_tmt_orm.create_service_order_validations_sync
Enable or disable the validations before
inserting the service order records into the
Customer Order [sn_ind_tmt_orm_order] table.
sn_ind_tmt_orm.glide.mutex.script.maxspins

Maximum number of times for a thread to try to
acquire a lock. The default value is 100.

sn_ind_tmt_orm.glide.mutex.script.spinwait

Time to wait between lock attempts, in ms. The
default value is 100 ms.

sn_ind_tmt_orm.limit

Number of records (batch size)
to return from the inbound queue
[sn_tmt_core_inbound_queue] table for
processing. The default value is 100.

sn_ind_tmt_orm.schedule.max.runtime

Maximum time up to which the scheduled job
runs, in ms. The default value is 900000 ms.

Related topics
Order management
Using Order Management
Create order entries manually during the asynchronous order processing
Skip the scheduled job and create order entries manually in the Order Management application
for asynchronous order requests.

Before you begin

Role required: Order Integrator [sn_ind_tmt_orm.order_integrator]

About this task

Before you can create order entries in the customer order table, records are staged in the
Inbound Queue [sn_tmt_core_inbound_queue] table. This table helps you to store and manage
your order requests during the asynchronous processing of orders.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Inbound Queue Requests > All.
The Inbound Queue Requests list view provides the following information.

Field

Description

Resource

Caller that created the record in the Inbound
Queue [sn_tmt_core_inbound_queue] table.

Record id

Unique system-generated ID returned as
orderID in the HTTP response.

State

State of the record in the Inbound Queue
[sn_tmt_core_inbound_queue] table.
New
Order records created.
In Progress
Scheduler picks orders and
generates a system ID.
Completed
Scheduler successfully created
the customer order record from
the Inbound Queue table.
Error
Scheduler did not successfully
create the customer order
record.

External ID

External ID of the order from the Configure,
Price, and Quote (CPQ) system.

Status code

HTTP status codes.
◦ 201: Target record successfully created.
◦ 202: Record in the Inbound Queue
[sn_tmt_core_inbound_queue] table
successfully created.
◦ 400: Target record not created due to an
error.

Error message

(Optional) Error message returned for an
exception.

Payload

Payload received via an API.

System ID

Cluster node ID.

Reference table

Name of the target table, such as Customer
Order.

4. From the list, select a record to create an order.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


