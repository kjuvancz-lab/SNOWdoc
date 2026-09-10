# Zurich Sales and Order Management — Order Management integration with Strategic Portfolio Management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1158–1179 of 1408

Sections: Order Management integration with Strategic Portfolio Management (p1158)

---

<!-- page 1158 -->
5. The agent can view the work orders created for the domain orders in the Details tab. In the
Activity section, the agent tracks all the updates for the work orders in the work notes.
◦ When the status of a work order changes in Field Service Management, the details are
displayed in the work notes of the Order Management workspace.
◦ If a work order is canceled, the work order status is displayed in the Order Management work
notes section.
◦ In case of inflight changes, the work order is automatically updated. The current status and
the updated information are displayed in the work notes section.
6. The agent can edit an order line item if required. If the agent selects the PONR (Point of No
Return) option, no changes can be made to the order line item in the workflow anymore.
7. After all the work orders are closed, the order fulfillment manager can review the all the work
orders and close the domain order.

Note: The agent cannot close a domain order unless all the work orders associated with
that domain order are closed.

Order Management integration with Strategic Portfolio
Management
®

The Order Management application provides an integration with the ServiceNow Strategic
Portfolio Management (SPM) application enables project oversight of complex order fulfillment
tasks.
Use this integration to handle order line items, planned order tasks as projects, create project at
the order level, create program, reuse program, create site project and reuse site project in the
SPM.

Features
• Automates the creation of SPM programs, site projects, and projects based on program and
project oversight rules, enabling project managers to track order fulfillment activities within a
project in SPM.
• Synchronizes order fulfillment tasks in Order Management to an associated project in SPM,
providing project managers with real-time task activity updates via state change information,
notes, and comments.
• Enable fulfillment agents, managers, and project managers to view related lists that show the
relationship between an order line item and project, site locations and site projects, domain
order and project task, and order task and project task.
• Supports tracking and synchronization of one or more order tasks.
• Supports staggered/in-flight orders for new tasks created as part of staggered decomposition
or in-flight changes. Uses predefined planned order tasks that enable synchronization
between order fulfillment and project tasks.
• Closes project tasks automatically when child tasks and associated order tasks or domain
orders are completed or canceled.
• Supports an agent to create project at the order level to manage large projects.
• Maps the project specification tasks to the Order tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
Benefits
• Gives project managers end-to-end project oversight of complicated orders, such as longrunning orders that require delivery to a specific customer account with multiple locations.
• Manages risks by identifying issues that affect project dependencies and timely order
fulfillment.
• Eliminates manual tracking of order status between SPM and Order Management applications.
Reduces inefficient communication between project managers, fulfillment agents and
managers, and other project stakeholders.
• Unifying orders by creating site projects as a parent projects for projects created for the same
location.
• Manage large projects at an order level and not at individual line items.

How the SPM integration works
The Order Management integration with Strategic Portfolio Management uses the Project
Portfolio Management (PPM) standard application in SPM to track fulfillment tasks as projects in
your organization. This integration also works with the Customer Project Management application
if you want to track customer order fulfillment tasks as customer projects automatically.
Configuration
Admins set up the SPM integration by configuring these items:
• Project templates: Create the PPM project and site project templates that are
used to generate the SPM projects automatically for orders requiring project
oversight. Project templates also define the planned tasks for order delivery.
• Order Management project oversight conditions and rules: Set the conditions
and decision rules that determine the orders that qualify for project oversight
and the project templates used to create those projects. You use different Project
Management Oversight decision tables to specify the conditions and rules for
order lines, site locations, domain orders, and order tasks and the appropriate
project template to be used.
• Field mapping in CSM table maps: Associate Order Management fields to SPM
project fields by configuring the field mapping in the CSM table maps.
• Property for automatic closure of project tasks: Control the automatic closure
of project tasks when associated child tasks are completed by using the
sn_ind_tmt_orm.project.task.auto.closure system property.
• Property for program and site project reuse: Use the system property

sn_ind_tmt_orm.reuse_existing_program_and_project_enabled
to reuse the program and site project for the following conditions:

◦ If the program is created for the same account.
◦ If the site project is already created for the same location.
If the property is set to false, a new program and site project will be created for the
new order.
SPM integration flow
After an order line is created and approved, Order Management performs the
following processing steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
• Project oversight determination: Qualifies the order line for project oversight.
◦ Checks that the order line is valid and that the PPM Standard application is
installed.
◦ Reviews the project oversight conditions and decision rules for order lines.
◦ If the order line matches the conditions, automatically creates the project and
project tasks using the specified project template.

Note: If multiple order lines are eligible for oversight, the system creates
multiple projects.
• One-time synchronization: Synchronizes the order line with the project,
establishing the relationship between the order line and the project.
• Site project oversight determination: Qualifies the site location for site project
oversight.
◦ Checks that at least one order line project should be created.
◦ Reviews the site project oversight conditions and decision rules for site
location.
◦ If the offering and site location matches the conditions, automatically creates
the site project and site project tasks using the specified site project template.
◦ Site projects are created on pm_project table.
◦ Establishing the relationship between the site project and site location in the
relationship table.
• Project task oversight determination: After Order Management decomposes the
order line item into domain orders and order tasks, it does the following:
◦ Checks the project oversight conditions for domain orders. If a domain order
meets the project oversight conditions, create the associated project and
planned tasks using the project template task specified.
◦ Checks the project oversight conditions for order tasks. If order tasks meet the
project oversight conditions, create the associated project and planned tasks
using the project template task specified.
◦ Links domain orders and order tasks back to the parent project, synchronizing
attributes from the domain orders and order tasks to the project tasks.
• Order task state changes: As order task states change in Order Management,
synchronizes the state and status with corresponding project tasks in SPM so that
project managers and other project stakeholders can view the changes in real
time.
• Updates to project notes and comments: Automatically updates project notes
and project task notes when fulfillment managers or agents post work notes and
comments in order line items, domain orders, and order tasks.
• Project task closure: Automatically closes project tasks for order tasks, including
child tasks, that have been completed in Order Management.

Plugins for the SPM integration
The SPM integration is included with the Order Management application. The integration
requires the following plugins, which are activated by users with the admin role:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
• PPM Standard plugin (com.snc.financial_planning_pmo): Activates the Project Portfolio
Management Standard application, which installs Financial Management and the Project
Portfolio Suite. The suite includes various applications for handling projects in your
organization, such as Program Management, Project Management, and Demand Management.
For more information on the Project Portfolio Suite, see Project Portfolio Suite with Financials .
• Customer Project Management plugin (com.snc.csm_ppm): Activates the Customer Project
Management integration with the PPM Standard application. This integration enables
customer project managers to create and manage complex projects with multiple tasks. This
integration also provides end users with visibility into those projects. For details on Customer
Project Management, see Integrating with Customer Project Management .

Access controls in the SPM integration
The SPM integration supports certain access controls for users with the following roles.
SPM integration access controls
Role

Access controls in SPM integration

Order fulfillment agents have read
• Order
access to product orders, product
fulfillment
order tasks, service orders, and
agent
resource orders. Service order
[sn_ind_tmt_orm.orderagents have read access to service
fulfillment_agent]
order requests, service orders,
• Service
resource orders, and related
order agent
fulfillment tasks.
[sn_ind_tmt_orm.service_order_agent]
Agents have access to the following
project information:

Contains roles

• it_project_user
• sn_customerservice.projectmanager
(if using Customer Project
Management)

• Read access to the Project form
fields.
• Read access to the Order Line
Item to Project Relationship table.
• Read access to the Order Line
Item and Order Task related lists in
PPM.
• Read access to the Order task to
Project Task related list in Order
Management.
Order fulfillment managers receive
• Order
orders, review order line items, verify sn_ind_tmt_orm.order_creator
fulfillment
that orders are ready for fulfillment,
manager
and then approves orders. Service
[sn_ind_tmt_orm.order_fulfillment_manager]
order managers ensure that service
• Service order
orders are ready for fulfillment and
manager
then approve them.
[sn_ind_tmt_orm.service_order_manager]
Managers can:
• Post notes and comments on
order lines and order tasks to
communicate with the project
manager.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
SPM integration access controls (continued)
Role

Access controls in SPM integration

Contains roles

• View the relationship between
a project and an order line item,
project tasks, and order tasks.
Managers have the following
access to project information:
◦ Read access to the Order Line
Item to Project Relationship
table.
◦ Read access to the Order Line
Item and Order Task related lists
in PPM.
◦ Read access to the Order task to
Project Task related list in Order
Management.
IT project user
[it_project_user]

• Read access to the Project form
fields.

sn_ind_tmt_orm.order_viewer

• Read access to the Order Line
Item to Project Relationship table.
• Read access to the Order Line
Item and Order Task related lists in
PPM.
• Read access to the Order task to
Project Task related list in Order
Management.
• Read access to the Project
Template Creation table.
IT project
• Configure access to all Project
administrator
Management features.
[it_project_admin]
• Read and write access to the
Project Template Creation table.

• it_project_user
• sn_ind_tmt_orm.order_creator

• Read and write access to the
Order Line Item related list in PPM.
• Write access to the Order Task
related list in PPM.
• Read access to the Order Line
Item to Project Relationship table.
• Write access to the Order task to
Project Task related list in Order
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
SPM integration access controls (continued)
Role

Administrator
[admin]

Access controls in SPM integration

Contains roles

• Creates the PPM project templates
used to generate the projects
for orders that require project
oversight automatically.
• Configures the mapping between
order tasks and planned project
tasks associated with project
templates
• Specifies the conditions and
decision rules for determining
project oversight and the project
templates used to create those
projects.
• Controls automatic closure of
project tasks

Next step
As an admin, review the setup tasks in Configuring the Strategic Portfolio Management
integration.

Configuring the Strategic Portfolio Management integration
Configure the Strategic Portfolio Management integration so that order delivery tasks in Order
Management can be tracked as planned project tasks in SPM.
As an admin, follow these tasks to set up the SPM integration.

Configuration step

Description

Activate PPM Standard (Project Portfolio
Management)

Install the PPM Standard
(com.snc.financial_planning_pmo) plugin.
If you're tracking customer projects, you
must also activate the Customer Project
Management (com.snc.csm_ppm) plugin. For
information on setting up Customer Project
Management, see Integrate with Customer
Project Management using Guided Setup .

Note: If you installed the Order
Management application before
activating the PPM Standard or Customer
Project Management plugins, you
must repair the Order Management
(com.sn_ind_tmt_orm) plugin to get the
plugin-dependent updates and demo
data for the SPM integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
Configuration step

Description

Create project templates and project template
tasks

Use the Project Portfolio Management
application to create the project templates
for order lines and project template tasks for
domain orders and order tasks.

Configure field mapping between orders and
projects

Configure the CSM table maps to associate
fields in order lines, domain orders, and order
tasks to projects in SPM.

Set up project oversight conditions and
decision rules

Configure the conditions and decision rules
for determining the order lines, domain
orders, project offering with site locations, site
project, and order tasks that qualify for project
management oversight. You also specify the
project templates to be used to create those
projects.

Configure project oversight for Product
offering

Configure the conditions and decision rules
that qualify product offering for site project
oversight.

Control the automatic closure of project tasks

Manage the automatic closure of project tasks
when related child tasks are completed or
canceled.

Creating project templates and project template tasks
You create the project templates and project template tasks that Order Management uses to
instantiate projects for order lines and associated domain orders and order tasks.
In the SPM integration, project templates define the structure of a project for order lines and the
project planned tasks that map to the order fulfillment tasks for the order line. You specify project
templates and project template tasks in the project oversight decision rules. Order Management
uses these rules to determine which order items require oversight and the project template or
project template tasks used to create the projects.
As an admin or user with the it_project_manager role, you create project templates and the
project template tasks in Project Portfolio Management. For more information, see Project
templates
and Create a project template . The demo data with the Order Management
application includes project templates that you can copy and change as needed.

Note: When you create project template tasks for domain orders and order tasks, be
sure to anticipate inflight changes that may require additional planned tasks. Define those
potential planned tasks in the template tasks so that the system can synchronize the
planned tasks with the additional order tasks resulting from inflight changes in Order
Management.

Before creating project templates and project template tasks
Before you create your project template and project task templates for the SPM integration,
consider the level of project oversight required for customer orders to be fulfilled. For example,
in the following SD-WAN fulfillment flow, the top order line is SD-WAN Service Package, which
defines the order line project to be created. Next, identify the domain orders and then the order
tasks that require project task oversight.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
SD-WAN fulfillment flow

Setting up project oversight conditions and decision rules
As an admin, you create and maintain the conditions and decision rules that determine whether
an order item qualifies as a project that can be tracked in Strategic Portfolio Management. You
also specify the project template that Order Management uses to create that project for the order
item.
Set the conditions and decision rules for project oversight of order lines and associated domain
orders and order tasks by using Decision Builder forms for order lines, domain orders, and order
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
tasks. These forms have a decision table for specifying the conditions and rules to be applied
when Order Management determines eligibility for project oversight.
For example, in the Project Oversight Management for Order Line Item form, you use the
decision table to add or change condition columns. You also specify the decision rules, including
the project template, to be applied.
Project Management Oversight for Order Line Item

For more information on adding or changing conditions in decision tables, see Decision Builder
user interface .

Note: If Order Management demo data is installed, the decision table for each project
oversight form displays the condition columns and the decision rows added for demo data.
You can add, change, or delete the condition columns and decision rows as needed.
Configure project oversight for order lines
Specify the conditions and decision rules that qualify an order line for project oversight. You also
specify the project template used by Order Management to create the project for the order line.

Before you begin

Role required: admin

About this task

Use the Project Management Oversight for Order Line Item Decision Builder to add or change
the conditions and decision rules that must be met for an order line to be tracked as a project.
For example, if you want projects to be created for order lines that have a particular product,
customer account, and location, you can add condition columns for Specification, Account, and
Location.

Procedure
1. Navigate to All > Decision Management > Decision Builder.
2. Select the Project Management Oversight for Order Line Item decision table.
The Order Line Item is displayed in the Inputs and the Project Template column in the
Results.
3. Add a condition that an order line must match.
a. Select Add Condition column.
b. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
New Condition Column form
Field

Description

Condition column label

Label for the column.

Description

Brief overview of the condition.

Input

Input linked to the condition column.
To evaluate multiple fields, you can add
multiple conditions with the Reference input
type.

Table

If the data type is Reference, the name of
the reference table is displayed.
For order line items, the table is Order Line
Item [sn_ind_tmt_orm_order_line_item].

Data to evaluate

For condition columns with the input type of
Reference, specifies whether the condition
column evaluates the reference record or a
field on the reference table.
To evaluate a particular field, select Field
and choose a field from the Order Line
Item table, such as Account, to specify a
customer account.

Condition type

Data type selected for the condition column.

Default operator

How every row in the condition column
evaluates a user-specified value. A default
operator is required for all input data types
except for True or False.

c. Select Save.
d. Repeat steps 3a through 3c for each condition to be added.
4. Enter a decision rule by selecting Add new decision row.
a. Select the Add action and enter the conditions that the order line must match and the
project template for creating the project.
b. Select Save.
c. Repeat steps 4a through 4c for each decision rule to be added.

Result

The system uses the specified project template to create projects for order lines that match the
conditions and decision rules defined in the Project Oversight for Order Line Items decision
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
Configure project oversight for domain orders
Specify the conditions and decision rules that qualify domain orders for project oversight. You
also specify the project template task used by Order Management to create the project for
domain orders.

Before you begin

Role required: admin

About this task

Use the Project Management Oversight for Domain Order Decision Builder to add or change
the conditions and decision rules that a domain order must meet to be tracked as a project. For
example, if you want projects to be created for domain orders for a particular product, you can
add a condition column for Specification.

Procedure
1. Navigate to All > Decision Management > Decision Builder.
2. Select the Project Management Oversight for Domain Order decision table.
The Domain Order item is displayed in the Inputs and the Project Template Task column in the
Results.
3. Add a condition that a domain order must match.
a. Select Add Condition column.
b. On the form, fill in the fields.
New Condition Column form
Field

Description

Condition column label

Label for the column.

Description

Brief overview of the condition.

Input

Input linked to the condition column.
To evaluate multiple fields, you can add
multiple conditions with the Reference input
type.

Table

If the data type is Reference, the name of
the reference table is displayed.
For domain items, the table is Domain Order
[sn_ind_tmt_orm_domain_order].

Data to evaluate

For condition columns with the input type of
Reference, specifies whether the condition
column evaluates the reference record or a
field on the reference table.
To evaluate a particular field, select Field
and choose a field from the Domain Order
table, such as Specification (Domain
Order.specification) to specify a product.

Condition type

Data type selected for the condition column.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
Field

Description

Default operator

How every row in the condition column
evaluates a user-specified value. A default
operator is required for all input data types
except for True or False.

c. Select Save.
d. Repeat steps 3a through 3c for each condition to be added.
4. Enter a decision rule by selecting Add new decision row.
a. Select the Add action and enter the conditions and project template task to be used.

Note: If there are duplicate project template tasks that have the same Short

description, it may be difficult to identify and select the appropriate project template
tasks. For details on differentiating between similar project template tasks, see
Choosing a project template task when duplicates exist.
b. Select Save.
c. Repeat steps 4a through 4c for each decision rule to be added.

Result

The system uses the specified project template task to create projects for domain orders that
match the conditions and decision rules defined in the Project Oversight for Domain Order
decision table.
Configure project oversight for order tasks
Specify the conditions and decision rules that qualify order tasks for project oversight. You also
specify the project template task used by Order Management to create the project for order
tasks. The project template task defines the project tasks for the order tasks.

Before you begin

Role required: admin

About this task

Use the Project Management Oversight for Order Task Decision Builder to add or change the
conditions and decision rules that an order task must meet to be tracked as a project. For
example, if you want projects to be created for order tasks for a particular request type, you can
add a condition column for Type.

Procedure
1. Navigate to All > Decision Management > Decision Builder.
2. Select the Project Management Oversight for Domain Order decision table.
The Order Task item is displayed in the Inputs and the Project Template Task column in the
Results.
3. Add a condition that a domain order must match.
a. Select Add Condition column.
b. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
New Condition Column form
Field

Description

Condition column label

Label for the column.

Description

Brief overview of the condition.

Input

Input linked to the condition column.
To evaluate multiple fields, you can add
multiple conditions with the Reference input
type.

Table

If the data type is Reference, the name of
the reference table is displayed.
For domain items, the table is Order Task
[sn_ind_tmt_orm_order_task].

Data to evaluate

For condition columns with the input type of
Reference, specifies whether the condition
column evaluates the reference record or a
field on the reference table.
To evaluate a particular field, select Field
and choose a field from the Order Task
table, such as Request Type (Order
Task.request_type) to specify a request type.

Condition type

Data type selected for the condition column.

Default operator

How every row in the condition column
evaluates a user-specified value. A default
operator is required for all input data types
except for True or False.

c. Select Save.
d. Repeat steps 3a through 3c for each condition to be added.
4. Enter a decision rule by selecting Add new decision row.
a. Select the Add action and enter the conditions and project template task to be used.

Note: If there are duplicate project template tasks that have the same Short

description, it may be difficult to identify and select the appropriate project template
task. For details on differentiating between similar project template tasks, see
Choosing a project template task when duplicates exist.
b. Select Save.
c. Repeat steps 4a through 4c for each decision rule to be added.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


<!-- page 1171 -->
Result

The system uses the specified project template task to create projects for order tasks that match
the conditions and decisions rules defined in the Project Oversight for Order Task decision table.
Configure project oversight for Product offering
Specify the conditions and decision rules that qualify the product offering for site project
oversight. You also specify the project template task used by Order Management to create the
project for product offerings.

Before you begin

Role required: admin

About this task

Use the Site project management oversight for product offering Decision Builder to add or
change the conditions and decision rules that a product offering and location must meet to be
tracked as a site project.
For example, if you want site projects to be created for a specific location, you can add Specific
Location in the result section.

Procedure
1. Navigate to All > Decision Management > Decision Builder.
2. Select the Site Project Management Oversight for Product Offerings decision table.
The Product Offering item is displayed in the Inputs and the Project Template Task column in
the Results.
3. Add a condition that a Product Offering must match.
a. Select Add Condition column.
b. On the form, fill in the fields.
New Condition Column form
Field

Description

Condition column label

Label for the column.

Description

Brief overview of the condition.

Input

Input linked to the condition column.
To evaluate multiple fields, you can add
multiple conditions with the Reference input
type.

Table

If the data type is Reference, the name of
the reference table is displayed.
For Product Offerings, the table is Product
Offering [sn_prd_pm_product_offering].

Data to evaluate

For condition columns with the input type of
Reference, specifies whether the condition
column evaluates the reference record or a
field on the reference table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
Field

Description

To evaluate a particular field, select Field
and choose a field from the Product Offering
table, such as Specification (Product
Offering.specification) to specify a product.
Condition type

Data type selected for the condition column.

Default operator

How every row in the condition column
evaluates a user-specified value. A default
operator is required for all input data types
except for True or False.

c. Select Save.
d. Repeat steps 3a through 3c for each condition to be added.
4. Enter a decision rule by selecting Add new decision row.
a. Select the Add action and enter the conditions, Site Project template, and location.

Note: The location doesn't has to be the full location. If the full location isn’t found, it
looks for the parent location.
b. Select Save.
c. Repeat steps 4a through 4c for each decision rule to be added.
Choosing a project template task when duplicates exist
As an admin, when you're configuring the decision rules for domain orders and order tasks, you
may find that there are multiple project template tasks with the same Short description. It may be
difficult to determine the correct project template task to select.
For example, the following decision table for Project Oversight for Domain Order shows two
options with the same name for the project template task: Product Order for SD-WAN Security.
This project template task has the same Short description for two different project template
tasks, one for SD-WAN Package and the other for SD-WAN Customer Product Bundle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
Duplicate project template tasks in Project Management Oversight for Domain
Order

You can determine the appropriate project template task by finding and verifying the sys_id of
the project template task to be used. For more information, see Verify the sys_id of a project task
template.
Verify the sys_id of a project task template
Determine if you're using the correct project task template for domain orders or order tasks by
checking the sys_id of the project template task.

Before you begin

Role required: admin

Procedure
1. Navigate to All, and in the filter enter project_template_task.list.
2. Select the record for the project template task to be verified.

For example, in the Project Template Task record for Product Order for SD-WAN
Security, which belongs to the SD-WAN Package project template, the sys_id is
183910354fcd2110c5ff2624b2ce0b49.
3. Check the value of the sys_id in the associated Decisions table entry.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
a. Navigate to All and in the filter, enter sys_decision_question.list.
b. In the Decisions [sys_decision_question] table, locate the record of the corresponding
decision table entry, for example Project Management Oversight for Domain Order.
c. In the record for the project template task, select the Answer column.

The resulting record for the Answer field opens.
4. In the resulting record for the Decision Table Multiple Result, view the XML output by rightclicking the header bar of the record and selecting Show XML.
5. Review the XML and locate the sys_id value in the file.

The sys_id value should match the sys_id of the project template task determined in Step 1. If
the sys_id doesn't match, proceed to the next step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
6. In the Decision Table Multiple Result record, select the u_project_template_task and check
the XML view of another project template task to verify the sys_id of the project task template.

Configure field mappings
Configure the CSM table maps to associate fields in order lines, domain orders, and order tasks
to projects in Service Portfolio Management.

Before you begin

Role required: admin

About this task

Order Management provides Customer Service Management table maps for associating order
line items, domain orders, and order tasks to projects and project tasks in SPM. The tables that
you configure depend on whether you're using the PPM Standard application to track projects in
your organization or the Customer Project Management integration to track customer projects.
• If you're using PPM, configure the field mapping for these CSM table maps:
Table maps for PPM
Table map

Source table

Target table

Order Line Item to Project

Order Line Item
Project [pm_project]
[sn_ind_tmt_orm_order_line_item]

Domain Order to Project Task

Domain Order
Project Task
[sn_ind_tmt_orm_domain_order]
[pm_project_task]

Order Task to Project Task

Order Task
[sn_ind_tmt_orm_order_task]

Project Task
[pm_project_task]

• If you're using Customer Project Management, configure the field mapping for these CSM table
maps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
Table maps for Customer Project Management
Table map

Source table

Target table

Order Line Item to Customer
Project

Order Line Item
Customer Project
[sn_ind_tmt_orm_order_line_item]
[customer_project]

Domain Order to Customer
Project Task

Domain Order
Customer Project Task
[sn_ind_tmt_orm_domain_order]
[customer_project_task]

Order Task to Customer
Project Task

Order Task
[sn_ind_tmt_orm_order_task]

Customer Project Task
[customer_project_task]

The source and target tables in each table map are pre-populated.

Note: If you installed demo data for Order Management, the field mapping for the Source

Field and Target Field display the values used for demo data. You can use the existing field
mapping or change it as needed.

Procedure
1. Navigate to All and in the filter enter csm_table_map.list.
2. Do one of the following:
◦ If you're using PPM, select the Order Line Item to Project table map.
◦ If you're using Customer Project Management, select the Order Line Item to Customer
Project table map.
3. Go to the Basic Field Mapping related list and define a field mapping.

Note: If Order Management demo data is installed, the Source Field and Target Field
values in the Basic Field Mapping related list display the mapping for demo data. You can
use the mapping or change it as needed.
Option

Steps

a. Select New.
b. In the Source Field, select an item from the
source table.
For example, select an item such as Short
Description from the Order Line Item [sn_in­
d_tmt_orm_order_line_item] table.
Define a new field mapping

c. In the Target Field, select an item from the
Project [pm_project] table, such as Project
Name.
d. Select Submit.
In this example, the order line Short De­
scription is used as the Project Name in
SPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
Option

Steps

a. Select the field mapping record.

Change an existing field mapping

b. In the Source Field, select a different item
from the Order Line Item source table, as
needed.
c. In the Target Field, select a different item
from the Project target table, as needed.
d. Select Update.

4. Do one of the following:
◦ If you're using PPM, select the Domain Order to Project table map and repeat Step 3 to
define a new field mapping or update an existing mapping.
◦ if you're using Customer Project Management, select the Domain Order to Customer Project
table map and repeat Step 3 to define a new field mapping or update an existing mapping.
For example, you can select the Short Description field in the Domain Order source table and
map it to the Short Description field in the Project Task target table.
5. Do one of the following:
◦ If you're using PPM, select the Order Task to Project table map if and repeat Step 3 to define
a new field mapping or update an existing mapping.
◦ If you're using Customer Project Management, select the Order Task to Customer Project
table map and repeat Step 3 to define a new field mapping or update an existing mapping.
For example, you can select the Short Description field in the Order Task source table and
map it to the Short Description field in the Project Task target table.

Result

The fields in the Order Management source tables are mapped to the fields in the SPM target
table.
Control automatic closure of project tasks
Manage the automatic closure of projects in the SPM integration by using the
sn_ind_tmt_orm.project.task.auto.closure system property.

Before you begin

Role required: admin

About this task

In the SPM integration, Order Management closes project tasks automatically
when all associated order tasks are completed and there are no open child
tasks that have project task dependencies. If a project task has open child tasks,
Order Management doesn’t automatically close the project task. You can use the
sn_ind_tmt_orm.project.task.auto.closure property to suppress or reactivate the
automatic closure of project tasks.

Procedure
1. Navigate to All and in the filter, enter sys_properties.list and press Enter.
2. Search for and open the sn_ind_tmt_orm.project.task.auto.closure property.
3. In the Value field, set the value for the property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1177


<!-- page 1178 -->
◦ To suppress automatic project task closure, enter false.
◦ To reactivate automatic project task closure, enter true.
4. Select Update.
Automatic project task closure in the SPM integration is immediately suppressed or reactivated
based on the value that you entered. If automatic closure is suppressed, any order task-toproject task updates occur only when order tasks are in an in-progress state.

Tracking order tasks and associated projects
With the SPM integration, project managers and fulfillment agents or managers can track
projects in Strategic Portfolio Management that have associated order tasks in Order
Management.

Tracking projects for planned order tasks in SPM
As a project manager, you can review and update projects that have been created for tracking
planned order tasks using the Project Portfolio Management application in SPM. When fulfillment
managers and agents update or complete order tasks, Order Management automatically
synchronizes project states between SPM and order line items, task and domain order states,
and project task and order task states as fulfillment managers and agents complete order tasks.
A project manager has the it_project_manager role for tracking and updating projects.
Project manager tasks
Task

Details

Review an order fulfillment project and
1. Navigate to All > Projects > Project Workspace.
state
2. Select the project for the order item.

Note: The Project Name is the name
assigned when Order Management created the
project using the specified project template.
3. Select the Details tab then scroll down to the
Project Tasks tab to review project tasks, State, and
Percent complete,

Review the project state and project
task state to assess the project status

1. Navigate to All > Projects > Project Workspace.
2. Select the project for the order item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
Project manager tasks (continued)
Task

Details

3. Select the Planning tab.
The Gantt chart view

displays.
Review notes and comments on order
1. Navigate to All > Projects > Project Workspace.
tasks from fulfillment agents and
2. Select the project for the order item.
managers
3. Go to the Notes tab and view the comments and
status updates from Order Management.

Tracking fulfillment tasks that have associated projects in Order Management
As a fulfillment agent or manager, you can view the relationship between a project and order line
item, project tasks, and order task in the Configurable Workspace. You can also post notes and
additional comments on order lines and order tasks to communicate with the project manager
responsible for project oversight of the order management tasks.
Fulfillment agent or manager tasks
Task

Example

View order line-to-project relationship
in order line item form

View project task-to-domain order
relationship in domain form

View order task-to-project task
relationship in order task from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


