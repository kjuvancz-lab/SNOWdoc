# Zurich Sales and Order Management — Assign user roles in SOM / Lead and opportunity apps

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 882–1017 of 1408

Sections: Assign user roles in SOM (p882); Use (p887); Lead and opportunity apps (p888); Configure, price, quote apps (p934)

---

<!-- page 882 -->
Activate location-based transactions
Turn on location-based transactions for opportunities, quotes, and orders by using the
sn_sales_common.enable_location_based_transactions system property.

Before you begin

Role required: admin

About this task
The sn_sales_common.enable_location_based_transactions system property
enables your agents to select a customer location and view only the eligible products for that
customer location when adding product lines to an opportunity, quote, or order. This feature
also enables agents to copy line items to another location in the same transaction (opportunity,
quote, or order).

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the sn_sales_common.enable_location_based_transactions system
property.
3. In the Value field, enter true.
4. Select Update.
The location filter is displayed in the product catalog interface. Agents can use the filter to
select a location when adding product lines to an opportunity, quote, or order. The catalog
displays the eligible product offerings for the location. After adding products from the
catalog, agents can then copy selected products (line items) to another location in the same
transaction, without having to create another opportunity, quote, or order for a different
customer location.

What to do next

Define the product eligibility rule filters and matrices that control the product offerings displayed
by location.

Assign user roles in Sales and Order Management applications
The Sales and Order Management applications use roles to control access to features and
capabilities. Roles also determine access to information for data security, identify users, and
define the work that users perform in your organization.

Overview of roles
Roles define the functions available to users of the Sales and Order Management applications,
including:
• Product Catalog Management
• Pricing Management
• Lead Management
• Opportunity Management
• Quote Management
• Sales Agreement Management
• Order Management
Assign roles to users and groups by using the ServiceNow AI Platform user administration
feature.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


<!-- page 883 -->
• To assign a role to a user, see Assign a role to a user

.

• To assign a role to a group, see Assign a role to a group

.

Lead Management roles
The roles in the following table apply to Lead Management.

Role

Description

Lead Agent
[sn_customerservice.csm_workspace_user]

Identifies, nurtures, and converts leads into
opportunities. Creates, reads, updates, and
deletes leads. Has access to CSM Workspace.
I

Sales Agent
[sn_sales_common.sales_manager]

Role that has access to CSM and lead entities.

Sales Operations Specialist
[sn_sales_common.sales_ops_specialist]

Enhances efficiency and accuracy in sales
operations. Read access to lead entities.
Configures sales processes in an organization.

Lead Viewer
[sn_prd_pm.product_catalog_viewer]
[sn_csm_ctxrul_mgt.context_variable_viewer]
[sn_csm_ctxrul_mgt.rule_matrix_viewer]

Granular role that has access to view product
catalog entities such as product offerings.

Lead Writer

Read access to all lead tables such as header
and line items.

Opportunity Management roles
The roles in the following table apply to Opportunity Management. To learn more about these
roles, see Opportunity Management.

Role

Description

Sales Agent [sn_sales_common.sales_agent]

Identifies, nurtures, and converts
opportunities into successful sales. Creates,
reads, and updates opportunities.

Sales Manager
[sn_sales_common.sales_manager]

Reviews open opportunities and assigns them
to sales agents. Creates, reads, and updates
opportunities.

Sales Operations Specialist
[sn_sales_common.sales_ops_specialist]

Enhances efficiency and accuracy in sales
operations. Configures sales processes in an
organization.

sn_opty_mgmt_core.opportunity_setup_viewer Granular role that has access to sale cycle and
stages.
sn_opty_mgmt_core.opportunity_setup_writer

Granular role that has access to sales cycle
and stages.

sn_opty_mgmt_core.opportunity_viewer

Read access to all opportunity tables such as
header and line items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


<!-- page 884 -->
Role

Description

sn_opty_mgmt_core.opportunity_writer

Read access to all opportunity tables such as
header and line items.

Quote Management roles
The roles in the following table apply to Quote Management.

Role

Description

Sales Agent [sn_sales_common.sales_agent]

Identifies, nurtures, and converts quotes into
successful sales.

Sales Manager
[sn_sales_common.sales_manager]

Assigns quotes to sales agents or sales teams.

Sales Operation Specialist
[sn_sales_common.sales_ops_specialist]

Enhances efficiency and accuracy in sales
operations. Configures sales processes in
sales operations.

Sales Agreement Management roles
Role

Description

Sales Agent, Sales Manager, Data Viewer

Read operations on sales agreements, sales
agreement lines, and related data such as
characteristics, price lists, and other tables.

sn_sales_agmt_core.sales_agreement_viewer

Create, read, and update operations on sales
agreements and sales agreement lines.

Sales Agent, Sales Manager
sn_sales_agmt_core.sales_agreement_writer

Product Catalog Management roles
The roles in the following table apply to Product Catalog Management.

Role

Description

Product Catalog Manager
[sn_prd_pm.product_catalog_manager]

Create, read, update, and delete product, service,
and resource specifications.

Product Catalog Admin
[sn_prd_pm.product_catalog_admin]

Create, read, update, and delete product offerings,
product, service, resource specifications,
characteristics, and characteristic options. Can
also export and import catalog entities and set up
any catalog-related system properties. Inherits
the ais_admin role to create, read, update, and
delete content indexing and search settings for AI
Search.

Product Catalog Viewer
[sn_prd_pm.product_catalog_viewer]

Read access to product, service, resource
specifications, characteristics, and characteristic
options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
Pricing Management roles
The roles in the following table apply to Pricing Management.

Role

Description

Price List Admin
[sn_csm_pricing_pricelist_administrator]

Create, update, and read pricing entities. Can
also export and import pricing entities, set up
or edit pricing-related system properties, and
view transaction logs.

Price List Manager
[sn_csm_pricing_pricelist_manager]

Create, update, and read pricing entities.

Price List Writer
[sn_csm_pricing.pricelist_writer]

Granular role that has read, write, and delete
access to pricing entities. To delete a pricing
entity such as a price list or cost book, the
pricing entity must be in Draft state.

Sales Agreement Price List Writer
[sales_agreement_pricelist_writer]

Granular role that has read and create access
to pricing entities. Create access is granted
only through back-end workflows. Write
access only for Sales Agreement price lists
and price list lines. Inherited within Sales
Agreement Writer role.

Price List Viewer
[sn_csm_pricing.pricelist_viewer]

Granular role that has read access to pricing
entities such as price lists, price list lines, cost
books, and cost book lines.

Order Management roles
Order Management uses the roles in the following tables to control and manage access to
the application features for Order Management, Service Order Management, and Fallout
Management.
Order Management roles
Role

Description

Order Fulfillment Manager
[sn_ind_tmt_orm.order_fulfillment_manager]

View and edit access to product orders,
product order tasks, service orders, and
resource orders. Fulfillment managers with
this role can view, but not edit, order fallout
records.
The Order Fulfillment Manager receives
orders, reviews order line items, checks that
orders are ready for fulfillment, and then
approves them.

Order Fulfillment Agent
[sn_ind_tmt_orm.order-fulfillment_agent]

View access to product orders, product order
tasks, service orders, and resource orders.
Agents with this role can also view, but not
edit, order fallout records, but they can edit
some fields on the product order tasks. After
the Order Fulfillment Manager approves an

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
Order Management roles (continued)
Role

Description

order, the agent performs these fulfillment
tasks. This role also includes the Order Viewer
[order_view] role.
Order Approver [order_approver]

View access to customer orders and product
catalog data. Users with this role can approve
customer orders but can't create, update,
or delete an order like an Order Fulfillment
Manager or Order Fulfillment Agent would
do. This role also includes the Order Viewer
[order_view] role.

Order Viewer [order_viewer]

View access to customer orders, product
orders, product order tasks, service orders,
and resource orders.
You should also grant an order viewer with the
sn_prd_pm.product_catalog_viewer role to
access the product catalog data.

Note: The order approver and order
viewer roles are included in the Order
Management Business Stakeholder
role, which has a fee associated with it.
Don’t assign these roles to users without
confirming that your organization has the
appropriate entitlement. To learn more,
see Activate Business Stakeholder .
Fulfillment Viewer
[sn_ind_tmt_orm.fulfillment_viewer]

Granular role that has read access to
fulfillment tables: order tasks, domain orders,
product orders, resource orders, and service
orders.

Fulfillment Writer [sn_ind_tmt_orm.fulfillment_
writer]

Granular role that has read and write access to
fulfillment tables: order tasks, domain orders,
product orders, resource orders, and service
orders. This role includes the Fulfillment
Viewer [sn_ind_tmt_orm.fulfillment_viewer]
role.

Order Agent [sn_ind_tmt_orm.order_agent]

A persona role with permissions to create,
edit, view, and delete orders, order lines,
and order line characteristics, as well as
permissions to view tasks.

Order Admin [sn_ind_tmt_orm.order_admin]

A persona role with the same permissions
as the Order Agent role (create, edit, view,
delete orders, order lines, and order line
characteristics, and permissions to view
tasks). In addition, this role can configure and
approve orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
Service Order Management roles
Role

Description

Service Order Manager
[sn_ind_tmt_orm.service_order_manager]

View and edit service order requests, service
orders, resource orders, and related fulfillment
tasks. A manager with this role can also view,
but not edit, order fallout records.
The Service Order Manager can review
external service order requests, review service
order line items, checks that service orders are
ready for fulfillment, and then approve them.

Service Order Agent
[sn_ind_tmt_orm.service_order_agent]

View access to service order requests, service
orders, resource orders, and related fulfillment
tasks. Service Order Agents can edit some
fields on the service order tasks. After the
Service Order Fulfillment Manager approves
a service order, the agent performs these
tasks. This role also includes the Order Viewer
[order_view] role.

Fallout Management roles
Role

Fallout Manager
[sn_fallout_mgmt.fallout_manager]

Fallout Agent [sn_fallout_mgmt.fallout_agent]

Description

Create, view, assign, and edit fallout records.
Managers with this role can also view order
tasks and domain orders.
View fallout records. Agents with this role can
also update the state of fallout records and
create work notes on them.

Using Sales and Order Management applications
As agents and managers, you use the CSM Configurable Workspace to complete various tasks
when using the Sales and Order Management applications.
From the workspace you can access product catalogs to see the product offerings available
in your organization and select them for Sales and Order Management transactions. You use
a configurator interface, either the CPQ Configurator or the legacy product configurator, to
customize configurable products that you add to opportunities, quotes, and orders or to make
changes in sold products and product inventory.

Note: The CPQ Configurator is available if your organization has implemented the CPQ
Integration application. For details on using the CPQ Configurator in Sales and Order
Management workflows, see Configure a customizable product using CPQ Configurator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
Lead and opportunity
management

Configure, price, quote

Order management

Set up tools to configure
products and manage
pricing, quotes, and
sales agreements.

Set up tools to manage
order creation and
fulfillment, manage
jeopardy, and resolve
fallout issues.

Order operations

Post-sales engagement

Partner Relationship
Management

Set up workflows to
manage end-to-end leadto-cash processes and
handle product returns.

Set up tools to manage
customer contracts,
entitlements, and
life cycle workflows
on sold products.

Lead-to-cash foundation

Business Portal

Set up core apps that
enable your leadto-cash processes.

Set up a self-service
portal for B2B customers
to place orders, submit
RFQs, view quotes,
and raise order cases.

Set up tools to capture
leads, engage customers,
manage opportunities,
forecast sales, and
define sales territories.

Set up tools to onboard
partners, manage
relationships, and
enable collaboration.

Using lead and opportunity management applications
Learn how to use lead and opportunity management applications.

Using Lead Management
Use the Lead Management to create your lead.

Lead Management interface
The Lead Management interface contains the following tabs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


<!-- page 889 -->
Lead Management tabs
Tab

Description

Details tab

Add basic information for your lead.

Catalog tab

Search for and add product offerings to your
lead.

Needs tab

Lists the need templates that provide product
recommendations for a lead.

Tasks tab

Create lead tasks.

Appointments tab

Create appointments for your lead.

Line items tab

Add different line items to a lead.

Emails tab

Create emails to communicate with the
required stakeholders.

Create a lead
Create a lead in the Lead Management application by entering the details, such as customer
name, sales stage, lead type, score, and source.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select New.
3. On the form, fill in the fields.
Create new lead
Field

Description

First Name

First name of the lead.

Last Name

Last name of the lead.

Email

Email address of the lead.

Mobile Phone

Mobile number of the lead.

Business Phone

Business phone number of the lead.

Title

Title of the lead.

Company

Company name of the lead.

Stage

Stage of the lead.

Lead Source

Source of the lead.

4. Select Create Lead.
A message confirms that the lead was created. To continue working on the lead, select the link
in the message.
5. Select Refresh

to see the new lead in the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
What to do next

Start adding more information to your lead. To learn more, see Add and view the details of a lead.
Update a lead
Edit or update a lead in Lead Management.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select an existing lead that is in New or Contacted or Nurturing
stage.
◦ On the Leads- All page, select Edit to make changes to lead information and select Update.
◦ Open the lead record, make the changes and select Save.

What to do next

To learn more, see Using Lead Management.
Assign a lead
Assign a lead to a sales agent in Lead Management.

Before you begin

Role required: sales_agent or sales_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select an existing lead that you're working with.
◦ On the Leads- All page, select Assign to.
◦ Open the lead record, select three-dot menu (
and select Assign to.
To Create a lead, select New.

) at the top-right corner on the lead header

Note:
Immediately after you create the lead, a message confirms that the lead was created. To
continue working on the lead, select the link in the message.
3. On the Assign leads to dialogue box, select Owner and choose a sales agent.
You can select the box if you want to reassign all the tasks from the selected leads to this sales
agent.
4. Select Assign.

What to do next

To learn more, see Using Lead Management.
Add and view the details of a lead
Use the Details tab to add more information about your lead.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select the lead that you’re working with.
3. Fill in additional information on the Details tab.
Fields

Description

Number

System-generated number of your lead
record.

Lead Group

Group to which your lead belongs to.

Owner

The user persona who owns the lead.

Industry

The industry to which the lead belongs to.

Website

Website of the business customer for your
lead.

Phone

Mobile of business phone number.

Stage

Stage of your lead, such as New or Contacted
or Nurturing or Qualified or Disqualified.

Lead Type

Type of lead, such as New Business or Exist­
ing Business.

Lead Source

Source of the lead generation.

Account

Account name for the lead.

Lead Score

Score for the lead.

Contact

Contact details of your lead.

Lead Rating

Ratings for the lead, such as, Cold, Warm,
Hot, and Super Hot.

Address

Address of the lead account.

Customer Preferences

Preferences that are given by the lead ac­
count, such as, Do Not Call, Do Not Share,
and Do Not Email.

System Information

System information such as, time of the lead
creation and the user who has created the
lead.

Notes

Work notes for the lead.

To learn more, see Create a lead.
4. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

891


<!-- page 892 -->
What to do next

Use the Product Catalog tab to add products to your lead. To learn more, see Add products to a
lead.
Add products to a lead
Use the Catalog tab in the Lead Management to add products to your lead.

Before you begin

Role required: sales_agent

About this task

You can use the Catalog tab to search for and select product offerings from catalogs and add
them to your lead.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and , select the lead that you’re working with.
3. Select Catalog.
4. Use the following table to learn about the functionality of the Catalog tab.
Catalog tab
Element

Description

Product catalog hierarchy

This option selects the product catalog.

Add button

The Add button adds the product to the
quote. The Add button appears for simple
products that don’t have any selectable
options.

Search field

Use the search field to search for a product in
the product catalog hierarchy selected.

5. Select Add.
The product offering is added to the lead as a Line Item.

What to do next

Add line items to a lead.
Get product recommendations for leads using needs analysis
Choose a needs template from the product selection guide in the product catalog to get product
recommendations for sales leads.

Before you begin

Role required: sales_agent

About this task

A needs template is a questionnaire that you complete to get product recommendations based
on input or requirements that you receive from a customer. The product selection guide lists the
needs templates available for a particular catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select the lead that you want to work on.
The product catalog displays in the Catalog tab of the lead.
3. In the Catalog tab, select Product selection guide in the catalog hierarchy.
The needs template cards for the guide are displayed.
4. In the needs template card that best matches what your customer wants, select Capture
Needs.
The questionnaire for the selected template opens.
5. Answer the series of questions.
6. After replying to the last question, review or select the recommendations:
◦ To review your responses, select the Edit
needed.

icon. You can change your responses if

◦ To view product recommendations, choose Select Recommendations. The Catalog tab
displays the recommended products.
7. Choose a recommendation by selecting Add in the tile for the product that best matches your
customer needs.
The selected product is added to the lead. The Needs tab displays the needs template that
you selected. You can review the needs template and if needed, change your answers, which
might result in different product recommendations.
Add line items to a lead
Create a new product line item for your lead by entering the details, such as product offering and
quantity.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to LeadsAll.
3. Select the lead you want to work with and select the Line Items tab.
4. Select New to start a new lead line item or select an existing lead line item to make changes.
5. Fill in the fields in the Lead Line Item form.
Lead Line Item form
Field

Description

Number

System-generated number of the lead line
item.

Quantity

Quantity of the lead line item.

Product Offering

Product offering bundle for the lead line item.

Unit of Measure

Measuring unit of the lead line item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


<!-- page 894 -->
Field

Description

Work Notes

Additional information related to the lead line
item.

6. Select Save.
The Lead Line Item is added to the main lead.

What to do next
.Add lead tasks.
Add lead tasks
Create lead tasks to follow-up calls, emails, or meetings with your to progress on the lead.

Before you begin

Role required: sales_agent

Procedure
1. Navigate to List view

and select Leads - All.

2. From the Leads List window, select the lead you want to work with.
◦ On the Leads- All page, select Create task.
◦ Open the lead record, select the Tasks tab and select New to start a new lead task or select
an existing lead task to make changes.
To Create a lead, select New.

Note:
Immediately after you create the lead, a message confirms that the lead was created. To
continue working on the lead, select the link in the message.
3. Fill in the fields in the Create task for lead form.
Create task for lead
Field

Description

Short description

Description about the lead task.

State

State of the lead task.

Due date

Date by which the lead task has to complete.

Assigned to

Name of the sales agent to whom this lead
task is assigned.

4. Select Create Task.
This task is added to the lead.

What to do next

You can create appointments in your lead tasks. To learn more, see Create appointments.
Create appointments for lead tasks
Create appointments with your stakeholders to conduct business discussions for your lead.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


<!-- page 895 -->
Before you begin

Role required: sales_agent

About this task

You can create appointments only after creating a lead task. To create a lead task, see Add lead
tasks.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Lead > All.
3. Select the lead task you want to work with and select the Appointments tab.
4. Select New to start a new appointment or select an existing appointment to make changes.
5. Fill in the fields in the Create New Appointment form.
Create New Appointment form
Fields

Descriptions

From

Email id of the sender.

To

Email id of the receiver.

Activity state

State of the appointment.

Start time

Start time of your appointment.

End time

End time of your appointment.

Reminder

Time interval for a reminder.

Subject

Subject information of your appointment.

Location

Location of your appointment.

Message

Additional information for your appointment.

6. Select Save to save the appointment and send it later or select Send activity to send it now.
Compose emails
Create an email to communicate the product information to your customer as per the business
requirements.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select a lead that you want to work with.
3. Select the Emails tab.
4. Select Compose Email to start a new email or select an existing email to view details.
5. Fill in the details in the Email draft form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
Lead Email Draft form
Fields

Descriptions

From

Email id of the sender.

To

Email id of the receiver.

Subject

Subject of your email.

Email message

Body details of your email.

Note: You can create your own email templates and use the pre-filled email templates

while creating a new email. To discard your email, select Discard draft. To attach any files
with your email, select Attach File.
6. Select Send email to send the email or close the email form to save it in the Draft Emails tab.
Manage leads using Kanban view
Personalize and manage the leads information that is most relevant to you and your stakeholders
using the Kanban view.

Before you begin

Role required: sales_agent

Note:
The default limit of cards that can be displayed on the Kanban board is 500.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All.
3. Select the View Kanban button.
By default, the leads are grouped by different stages and displayed on the page.
◦ To change a lead stage, drag the lead card from one state and drop it into another state.
◦ To view the leads by different categories, such as industry, source, and reason, select Group
by: drop-down menu on the page.
◦ You can take various actions for your leads, such as creating a lead task, assigning a lead,
and composing an email by selecting the three vertical dots (
vertical leads stage header.

) either on a lead card or

◦ To create a new lead directly from this page, select New button. To learn more, see Create a
lead.
Convert a lead into an opportunity
Convert a lead into an opportunity in Lead Management.

Before you begin

Role required: sales_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. In the Leads - All list, select the lead that you’re working with.
◦ For a business customer, select Convert lead > to an account and fill in the fields in the form.
Convert lead form
Field

Description

Account

Name of your customer account.
▪ Create new: Select if you want to create a
new account.
▪ Choose existing: Select if the customer is
your existing account.

Contact

Name and email of your customer contact.
▪ Create new: Select if you want to create a
new contact.
▪ Choose existing: Select if the contact
already exists.

Opportunity

Details to create an opportunity. To learn
more, see Create an opportunity.
▪ Create new: Select if you want to create a
new opportunity.
▪ Choose existing: Select if you already
have an existing opportunity.

Note: Select the check box if you
don't want to create an opportunity for
the lead.

◦ For a consumer account, select Convert lead > to a consumer and fill in the fields in the
form.
Convert lead form
Field

Description

Consumer

Name and email of your consumer.
▪ Create new: Select if you want to create a
new contact.
▪ Choose existing: Select if the contact
already exists.

Opportunity

Details to create an opportunity. To learn
more, see Create an opportunity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


<!-- page 898 -->
Field

Description

▪ Create new: Select if you want to create a
new opportunity.
▪ Choose existing: Select if you already
have an existing opportunity.

Note: Select the check box if you
don't want to create an opportunity for
the lead.

3. Select Convert Lead.
A dialog box appears for the successful conversion of your lead into an opportunity. You can
select the new opportunity record that was created.
Disqualify a lead
Disqualify a lead in Lead Management.

Before you begin

Role required: sales_agent or sales_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All and select an existing lead that you're working with.
3. Open the lead record, select three-dot menu (
and select Disqualify lead.

) at the top-right corner on the lead header

Note: You can only disqualify a lead that is in New or Contacted or Nurturing stage.
4. On the Disqualify lead dialogue box, select a Reason.
5. Select Disqualify.

What to do next

To learn more, see Using Lead Management.
Export leads
You can export a quote as a JSON file in Lead Management and provide it to a customer.

Before you begin

Role required: sales_agent

About this task

The export lead feature in Lead Management exports a list of all leads. Use the following steps to
export leads.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Leads > All.
3. Select the File Type:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
◦ Excel
◦ CVS
◦ JSON
◦ PDF
4. Select the Delivery Type:
◦ Email - Enter a valid email address.
◦ Download - Downloads the export to a local drive.
The list of leads is exported according to the parameters set.

Using Customer Engagement Sequences
Empower sales teams to automate and optimize customer engagement at every stage from initial
outreach to renewal and expansion. By orchestrating both automated and manual steps, provide
timely, relevant, and consistent engagement experience to every prospect and customer.

Using sequences across the sales life cycle
Pre-Sales: Attract and nurture
In the pre-sales phase, sequences help sales development representatives (SDRs)
and account executives (AEs) to manage cold prospecting and lead nurturing
efficiently. For example, a lead nurturing sequence can guide an SDR through a
series of outreach steps such as sending introductory emails, making follow-up
calls, and offering recommendations, helping ensure that no lead falls through the
cracks. Feature adoption campaigns and user feedback invitations can also be
automated to engage prospects early and gather valuable insights.
Sales: Propose and transact
During the active sales cycle, sequences automate workflows for opportunity
management, proposal delivery, and order confirmation. Agents are prompted by
a guided process to conduct discovery calls, send proposals, and confirm orders.
With decision-based steps, if a prospect doesn’t respond, the workflow adapts,
perhaps by scheduling another follow-up or offering a different product. This stage
can also include onboarding new customers for a smooth transition from prospect
to client.
Post-Sales: Fulfill, service, renew and expand
After the sale, sequences support onboarding, proactive customer service, and
product adoption. For instance, a sequence might prompt an account manager to
schedule a welcome call, share service usage tips, or send outage notifications
and updates. Maintenance reminders, upgrade offers, and renewal sequences
help keep customers engaged and informed. Sequences can also be configured
to recommend upsell or cross-sell opportunities such as suggesting additional
products during a renewal conversation or after successful onboarding.
Sales operations: Analyze and optimize
Sales operations teams analyze sales metrics such as conversion rates or upsell
success across different workflows. They optimize and share the high-performing
sequences with other territories, promoting best practices across the organization.
For example, if a particular onboarding sequence consistently leads to higher
product adoption, it can be rolled out to all sales teams for maximum impact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
Sample use cases
The following sample use cases provide examples on how you can use Customer Engagement
Sequences to support your sales teams:
Cold prospecting
Guide sales reps through structured outreach to new, unqualified prospects.
For example, an agent might be prompted to send an introductory email, follow up
with a call, and log responses, so every cold lead receives consistent attention.
Lead nurturing
Automate ongoing engagement with leads to build relationships and move them
toward qualification.
For example, after initial contact, the agent might be guided to share relevant
content, schedule a demo, and send reminder emails, adapting steps based on
lead responses.
Offer recommendations
Help agents to present tailored product or service recommendations at the right
time in the sales process.
For example, during a discovery call, the workflow prompts the agent to suggest
complementary products based on the customer’s needs and previous purchases.
Order confirmation
Provide prompts so every new order is acknowledged and processed efficiently.
For example, once a customer places an order, the agent is prompted to send a
confirmation email, verify order details, and initiate fulfillment steps.
Onboarding
Guide agents and customers through the onboarding process for new products or
services.
For example, after a sale, the agent follows a checklist to schedule a welcome call,
share onboarding materials, and confirm the customer’s first successful use.
Product adoption
Drive ongoing engagement to help customers realize value from their purchase.
For example, the agent is prompted to check in after 30 days, offer training
resources, and gather feedback to help the customer use the product most
effectively.
Proactive customer service
Encourage agents to reach out before issues arise, improving satisfaction and
retention.
For example, the workflow schedules periodic check-ins, sends usage tips, and
prompts the agent to address potential concerns before the customer contacts
support.
Renewal
Automate the renewal process, for timely outreach and to maximize retention.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
For example, as a contract nears expiration, the agent is prompted to send renewal
reminders, discuss new terms, and handle objections, all tracked in the workflow.
Upsell
Identify and act on opportunities to expand customer value through additional
products or services.
For example, during a renewal or check-in, the workflow suggests relevant upgrades
or add-ons, and prompts the agent to present these offers to the customer.
Related topics
Configuring Customer Engagement Sequences
Create a customer engagement sequence
Drive personalized outreach by creating customer engagement sequences that automate
timely, relevant interactions that are ideal for nurturing leads, onboarding clients, or re-engaging
inactive customers.

Before you begin

Check whether features you need to access are supported by reviewing the table in
Compatibility information for Customer Engagement Sequences.
Your instance must be integrated with platforms such as Amazon Connect.
Delegated developer roles should be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.
You should be familiar with using Workflow Studio and Playbook Experience.
Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

Note: If you're using Customer Engagement Sequences 1.0.0, you need the
playbook.admin or pd_author role to create sequences.

About this task

Important: Setup and Tear Down are predefined stages in the Customer Engagement
Sequences playbook. Do not remove these stages or add more activities in these stages.
Avoid making any other changes to the Start Sequence and End Sequence activities.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select Create New Sequence.
5. On the Create new Sequence window, specify a name and optionally a description for your
sequence.
6. Select Create.
You’re redirected to Workflow Studio and a playbook of the type sequence is created with the
following predefined stages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
◦ Setup
◦ Configure sequence activities
◦ Tear Down
7. Select a source table whose records will trigger the sequence.
a. Select the Edit icon

above the Start pill.

b. Select a table from the Parent table drop-down list.
For example, you might want the sequence to trigger when a record is created or updated in
the Lead [sn_lead_mgmt_core_lead] table.
c. Select Save and close.
The Triggers icon

is activated on the left sidebar.

8. Define trigger conditions that initiate a sequence.
For more information, see Define trigger conditions.
9. Optional: Change the priority with which a sequence task is created by navigating to the
Automation tab of the Start sequence activity properties under the Setup stage.
When the trigger condition is met, this activity creates a sequence task with a state of Work in
progress and a priority of Moderate by default.

Note: Do not remove this stage or add more activities to this stage. Avoid making any
other changes to the Start Sequence activity.
10. In the sequence diagram, configure sequence steps in the Configure sequence activities
stage.
Use this stage to configure activities you want to make available to the sales representative
as guided sequence steps during runtime. For more information, see Add and configure an
activity in a playbook .
You can add any number of activities to this stage in your sequence. For example, for telesales
workflows, you might want to add a schedule call activity. For more information, see Add a
schedule call activity to a telesales workflow sequence.
11. Optional: Add decision nodes to activate the next stage in the playbook based on the
outcome of the previous stage.
For more information, see Add decision nodes to a sequence.
12. Add a stage for the new branch you created and repeat the steps to add more activities as
needed, including the schedule call activity as needed.
For information about adding new stages, see Add and configure a stage in a playbook .
13. Optional: Update the sequence task record by selecting the Customer Engagement
Sequences > Update sequence task activity from the activity picker.
You can also use the Update sequence task activity to exit early from the sequence. For more
information, see Add the Update sequence task activity to a sequence.
14. Review the configuration in the Tear Down stage.
This predefined stage uses the Update sequence task activity to update the sequence task
record when the sales representative completes all the sequence steps in their sequence task.
By default, the system updates the state of the sequence task record as complete (indicated
by State = 3) in the Customer Engagement Sequence Task [sn_crm_sequence_task] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
Note: Do not remove this stage or add more activities to this stage. Avoid making any
other changes to the End Sequence activity.
15. Verify the sequence by selecting Test.
16. Publish the sequence by selecting Activate.
17. Optional: View the sequence in the CSM/FSM Workspace by selecting the List icon
navigating to Sequences > All Sequences.

and

What to do next

Assign runtime permissions while creating sequences.
Related topics
Stages and activities
Triggers
Table extension and classes
Restart
Define trigger conditions
Define trigger conditions that start a sequence by configuring simple triggers or combining
multiple triggers for initiating workflows from multiple record-based events.

Before you begin

Note: Multi-trigger capability is available only with at least Playbooks version 28.1 on the
Zurich release. For more information, see Playbooks in Workflow Studio release notes

.

Delegated developer roles must be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.
Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

Note: If you're using Customer Engagement Sequences 1.0.0, then you need the
playbook.admin or pd_author role to create sequences.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you're creating or updating.
5. On the left sidebar, select the Triggers icon

.

6. Select an option that indicates when the playbook should run from the Add trigger drop-down
list.
The available options are:
◦ When record is created
◦ When record is updated
◦ When record is created or updated
7. In the Conditions field, add conditions that must be met to trigger your playbook.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
Example
To trigger the sequence when a new record is created in the Lead [sn_lead_mgmt_core_lead]
table, you would set the condition [State][is][New].
For more information, see Condition builder .
8. Select Save and close.
9. Optional: Create a multi-trigger sequence by selecting Add triggers from the Triggers pane
and repeating the steps of defining the trigger conditions.
(Optional) When adding additional triggers, if you select a child table or any other table from
the Trigger table field, you must use the data pill picker to select the parent record.

Tip: You can add up to 10 triggers.
Result

The new triggers appear in the Record based triggers section of the Triggers pane.
Related topics
Triggers
Add and configure a trigger in a playbook
Add a schedule call activity to a telesales workflow sequence
Add a schedule call activity in your sequences to support telesales workflows.

Before you begin

Review feature support information in Compatibility information for Customer Engagement
Sequences.
To support the ability for your agents to initiate outbound calls from the sequence task, your
instance must be integrated with platforms such as Amazon Connect. The Omnichannel
Callback application (sn_omni_callback) must also be installed. For more information, see Install
Omnichannel Callback .
Delegated developer roles must be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.
Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

About this task

You can add the Schedule call activity with other activities in a stage or in its own stage.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you're creating or updating.
5. Optional: In the sequence diagram, create a stage to add the activity.
For more information, see Add and configure a stage in a playbook .
6. Within a stage, select the Add icon

.

7. Open the activity picker by selecting the Add an activity icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
8. On the Add activity screen, search for and select Customer Engagement Sequences >
Schedule call.
9. On the Details tab of the Schedule call properties pane, enter a name to appear on the
Sequence Steps tab during runtime in the Label field.
For example, you might enter Call attempt 1.
10. On the Automation tab, fill in the fields.
For a description of the field values, see Automation form fields.
11. Select Save and close.
Related topics
Start with delay input properties
Add decision nodes to a sequence
Omnichannel Callback
Add decision nodes to a sequence
Activate the next stage in the playbook based on the outcome of the previous stage by adding
decision nodes while creating or updating a sequence.

Before you begin

Note: Decision-based stages and the demo data are available only starting with Playbook
version 28.3 on the Zurich release. The sample Lead nurturing tele-sales sequence
available with the demo data shows how to configure a decision-based, telesales sequence
with the schedule call activity.

Delegated developer roles must be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.
Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

Note: If you're using Customer Engagement Sequences 1.0.0, you need the
playbook.admin or pd_author role to create sequences.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you're creating or updating.
5. In the sequence diagram, hover over the object that you want to insert a decision activity next
to, and select the

icon to add an activity.

6. Select the Add a decision icon
.
A decision is added with two branches and the Decision properties side panel opens for
configuration.
7. Under the Details tab, enable the Start with delay option to add delay between the two call
attempts.
Example
For example, if you want the agent accessing the workflow to wait two days before calling the
prospective lead or customer again, you would set Duration type to Explicit duration and set
Days to 2.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
For more information, see Start with delay input properties

.

8. Under the Branches tab, expand New branch and enter a unique name for the branch in the
Branch label field.
9. Select Add Condition.
Example
For example, to execute the branch when the outcome of the previous call attempt was
unsuccessful, you would set the condition [Schedule call > Output > State][is][Cancelled].
For more information, see Decision activities .
10. Select Save and close.

What to do next

Add a stage for the new branch you created earlier, and repeat the steps to add more activities
as needed. For more information, see Add and configure a stage in a playbook .
Related topics
Decision stages
Add the Update sequence task activity to a sequence
Dynamically update the sequence task records based on predefined configuration using the
Update sequence task activity while designing customer engagement sequences.

Before you begin

The delegated developer roles must be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.
Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

Note: If you're using Customer Engagement Sequences 1.0.0, then you need the
playbook.admin or pd_author role to create sequences.

About this task

Add the Update sequence task activity with other activities in a stage or in its own stage to
update the sequence task record after the previous activity or stage has run. For example, the
agent accessing the workflow could skip unnecessary call attempts when a lead is successfully
contacted and move directly to the tear down stage after updating the record on the parent table.
This example is demonstrated in the sample Lead nurturing tele-sales sequence available with
the demo data.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you're creating or updating.
5. In the sequence diagram, create a stage to add the activity.
For more information, see Add and configure a stage in a playbook
6. Within the stage, select the Add icon

.

.

7. Open the activity picker by selecting the Add an activity icon

.

8. On the Add activity screen, search for and select Customer Engagement Sequences > Update
sequence task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
9. On the Details tab, enter a name for the activity in the Label field.
10. On the Automation tab, use the data pill picker to establish a connection between the parent
table and columns to the fields listed in the following table.
Automation tab form
Field

Description

Record The record you want to update on the parent table. For example, to update the
record on the Lead [sn_lead_mgmt_core_lead] table, you would select Lead.
Table
Fields

This field is automatically set to the name of the parent table.
Field in the parent table you want to update. For example, to mark a lead as
contacted, you would select Stage from the Fields drop-down list and set its value to
200_contacted.

11. Select Save and close.
Assign runtime permissions while creating sequences
Use permission sets to control access to sequence records such as sequence tasks and steps.

Before you begin

Delegated developer roles must be assigned to designated users. For more information, see
Grant delegated developer permissions for managing sequences.

Note: Runtime permissions are available only with at least Playbooks version 28.1 on the
Zurich release. For more information, see Playbooks in Workflow Studio release notes

.

Role required: sn_crm_sequence.admin, sn_crm_sequence.writer

Note: If you're using Customer Engagement Sequences 1.0.0, you need the
playbook.admin or pd_author role to create sequences.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you're creating or updating.
5. On the Workflow Studio page, select Properties from the More actions menu icon

.

6. On the Playbook properties window, select Runtime permissions.
7. Grant fine-grained access to sequence records by selecting a permission set from the Add
permission set menu.
The available permission sets are:
◦ Users
◦ User groups
◦ User criteria
8. Use the data pill picker to establish a connection between a user, user group, or criteria with a
column on the parent table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
Example
To allow agents to view only their own assigned sequence tasks for a sequence based on the
Lead table, you would select Parent Record as Lead and then its Owner column. For instance,
if user Max Blaze is overlooking a lead, only Max Blaze will be able to view the sequence steps
and complete activities.
9. Confirm your selection and set the permission by selecting the Add permission set icon

.

10. Grant the level of access by selecting View or Manage or both.
11. Optional: Add additional permission sets as needed.
12. Select Save and close.
Review sequences in Workflow Studio
Review sequences in Workflow Studio so you can suggest optimizations and share highperforming sequences across territories to promote best practices across the organization.

Before you begin

Role required: Sequence reader [sn_crm_sequence.reader]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > All Sequences.
4. Select a sequence that you want to view.
5. On the Details page, select Open steps.
You're redirected to Workflow Studio where you can view the sequence diagram.
View sequence tasks
View sequence tasks assigned to you from the CSM Configurable Workspace.

Before you begin

Role required: sequence viewer [sn_crm_sequence.viewer]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > My Sequence Tasks.
4. View your in-progress sequence tasks by selecting My Active Sequence Tasks.
For more information, see My sequence task list view.
5. View the sequence steps for a record by selecting it.

What to do next

Engage with your prospective customers by following the activities in the sequence steps. For
more information, see Complete predefined customer engagement tasks.
Complete predefined customer engagement tasks
Execute predefined sequence steps in your sequence tasks in the CSM Configurable Workspace
to engage with your prospective customers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
Before you begin

Role required: Sequence executor [sn_crm_sequence.executor]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > My Sequence Tasks.
4. Select a sequence task record.
5. When the record opens, select the Sequence Steps tab.
The navigation pane lists the activities or steps you need to complete. The activity details and
actions are displayed in the work area.
6. Optional: View sequence steps in Workflow Studio.
a. Go to the Details tab.
next to the Sequence field and select Open record.
b. Select the Open record icon
The associated sequence record opens in a new tab.
c. View the sequence by selecting Open steps.
You're redirected to Workflow Studio where you can view the sequence diagram, including
stages and activities.
7. After completing an activity, select an appropriate option to move to the next activity.
The sequence is marked as Completed when you finish all activities in the sequence task.
Related topics
Fulfill a telesales sequence
Fulfill a telesales sequence
Connect with leads or customers using the click-to-call outbound calling capability in telesales
flows.

Before you begin

Role required: Sequence executor [sn_crm_sequence.executor]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Sequences > My Sequence Tasks.
4. Select a sequence task record.
5. In the record, select the Sequence Steps tab.
6. Review detailed call task information by selecting Call task details.
7. Select the Call icon

next to the Callback number field to start an outbound call.

8. Complete the activity by setting the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


<!-- page 910 -->
Field

Description

Reason Call outcome. The available options are:
◦ Resolved: The call task was successfully completed and the goal met.
◦ Timeout: The task expired because it was not accepted or acted upon within the
allowed time.
◦ Max attempts exceeded: Multiple attempts to connect or complete the task
failed, reaching the configured limit.
◦ No show: The customer did not join the scheduled call.
◦ Cancelled by agent: The assigned agent manually cancelled the task before
completion.
◦ Technical issue: Call task could not proceed due to a system or connectivity
problem.
◦ Other: The task ended for a reason not covered by the predefined categories.
State

Status of the call task. The available options are:
◦ Open: The task has been created but work has not yet started.
◦ Work in Progress: The task is actively being worked on.
◦ Closed Complete: The task has finished successfully and all required actions are
done.
◦ Closed Abandoned: The task was closed without completion, usually due to
irrelevance or inability to proceed.
◦ Cancelled: The task terminated before completion.

Work
notes

Optional field for capturing internal work notes.

9. Select Save.
10. On the Sequence Steps tab, select Mark Complete to indicate you have finished all activities
in the sequence task.
Related topics
View sequence tasks

Using Opportunity Management
Use the Opportunity Management application to create your opportunity.
The Opportunity Management interface has tabs that help you create and manage your
opportunities.
Opportunity Management tabs
Opportunity Management tab

Description

Details

Add details of the opportunity such as
account, sales cycle, and stage information.

Catalog

Use the product catalog to add line items to
the opportunity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
Opportunity Management tabs (continued)
Opportunity Management tab

Description

Needs

Add more accurate information about your
customer's business requirements to the
opportunity.

Line Items

Add opportunity line items.

Competitors

Add competitors information to your
opportunity.

Tasks

Create opportunity tasks.

Team

Create opportunity team members.

Contacts

Create opportunity associated contacts.

Emails

Create emails to send to the required
stakeholders.

Quotes

Create quotes directly from the Opportunity.

Related Channel Partners

Add authorized service organizations or
partner entities (for example, referral or
influencer partners) linked to a customer
opportunity.
Related channel partners can be:
• Authorized organization: Full permissions
to access, view, edit, or modify opportunity
details
• Listed organization: Only for tracking
purpose. No permissions to view, access,
edit, or delete opportunity details

Create an opportunity
Create a new product opportunity in the Opportunity Management application by entering the
details, such as account, sales stage, sales cycle type, and deal size.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. In the Opportunity - All list, select New.
The Create new opportunity dialog box opens.
3. Use the following table to fill in the information.
Fields

Description

Short Description

Fill in a short description for the opportunity.

Account

Provide account information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

911


<!-- page 912 -->
Fields

Description

Stage

Enter a stage of the opportunity. For example:
Qualify, Develop, Propose, Negotiate, ClosedWon, or Closed- Lost.

Estimated Deal Size

Provide an approximate value of the deal.

Sales Cycle Type

Enter the type of sales cycle during the cre­
ation of the opportunity. For example: NEW­
CUST, RENEW, or UPSELL.

Consumer

Select a consumer.

Contact

Fill in the contact information.

Channel partner

(Optional) The name of the organization sell­
ing a product or service.

4. Select Save to save the opportunity and Close to return to the main Opportunities window.
5. Select Refresh

to see the new opportunity in the list.

What to do next

Start adding more information to your opportunity. To learn more, see Add and view the details of
an opportunity.
Add and view the details of an opportunity
Use the Details tab to add and view information about your opportunity, including the source and
competitor.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Opportunity > All and select your opportunity.
3. Fill in the information on the Details tab.
Opportunity Details tab
Field

Description

Number

The system-generated number of the
opportunity.

Account

Company name of the customer account.

Contact

Name of the individual in the company that
you interact with.

Sales Cycle Type

Type of sales, for example NEWCUST,
RENEW, or UPSELL.

Stage

Phases of the opportunity. For example,
Qualify, Develop Propose, Negotiate, ClosedWon, or Closed-Lost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
Field

Description

Owner

Sales agent or sales representative assigned
to this opportunity.

Channel partner

The name of the organization selling a
product or service.

Short Description

Brief description of the opportunity.

Description

Description of the opportunity.

Primary Quote

A Primary Quote within an opportunity.

Industry

Name of the industry. For example,
Telecommunications or Manufacturing or
Healthcare or Banking.

Estimated Deal Size

Amount of potential opportunity.

Probability %

Estimated percentage of the sales
opportunity's success.

Amount

Note: If an opportunity doesn’t have
any line items, then the amount picks up
the same value as the Estimated Deal
Size. When opportunity line items are
added, the amount value changes as
the value is picked up from Total TCV.

Weighted Amount

Total revenue adjusted by the probability
percentage.
The Weighted Amount for an opportunity
is calculated by multiplying the Probability
% with the Amount. For example, if the
probability percentage for an opportunity
is 10 (0.1%) and the amount is 100$, the
weighted amount is 0.1 X 100 = 10.00.

Opportunity Group

Logical grouping of related opportunities.

Lost To

Name of the competitive customer to whom
this deal is lost to.

Source

Name of the source this opportunity
information is gathered from.

4. Fill in the following fields in the Pricing section of the Details tab.

Note: The Total MRR, Total ARR, Total ACV, and Total TCV fields are calculated
automatically based on the value of the opportunity line items associated with an
opportunity.
Opportunity Pricing section
Field

Description

Currency

Currency of the price list, for example USD for
US dollars.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
Field

Description

Price List

Default price list for the opportunity.

Term (months)

Subscription period of the opportunity line
item.
The default term is 12 months.

Total one-Time Price

Total price of all one-time products or
services in the opportunity.

Total MRR

Total monthly recurring revenue (MRR)
amount for all recurring products and
services.

Total ARR

Total annual recurring revenue (ARR) amount
for all recurring products and services each
year.

Total ACV

Total annual contract value (ACV), which is
the yearly amount revenue for all products
and services from a customer contract.

Total TCV

Total contract value (TCV), which is the total
amount of revenue from a customer contract
expected over the lifetime of the contract.

5. Select the customer's preferred mode of communication.
◦ Do Not Call
◦ Do Not Email
◦ Do not Share
6. In the System Information section of the Details tab, fill in the required fields with information
about when the opportunity was created and by whom and enter any related Work Notes.
7. Select Save.

What to do next

Use the Product Catalog tab to add products to your opportunity.
Get product recommendations for opportunities using needs analysis
Choose a needs template from the product selection guide in the product catalog to get product
recommendations for sales opportunities.

Before you begin

Role required: sales_agent

About this task

A needs template is a questionnaire that you complete to get product recommendations based
on input or requirements that you receive from a customer. The product selection guide lists the
needs templates available for a particular catalog.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Opportunity > All and select the opportunity that you want to work on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
The product catalog displays in the Catalog tab of the opportunity.
3. In the Catalog tab, select Product selection guide in the catalog hierarchy.
The needs template cards for the guide are displayed.
4. In the needs template card that best matches what your customer wants, select Capture
Needs.
The questionnaire for the selected template opens.
5. Answer the series of questions.
6. After replying to the last question, review or select the recommendations:
◦ To review your responses, select the Edit
needed.

icon. You can change your responses if

◦ To view product recommendations, choose Select Recommendations. The Catalog tab
displays the recommended products.
7. Choose a recommendation by selecting Add in the card for the product that best matches
your customer needs.
The selected product is added to the opportunity. The Needs tab displays the needs template
that you selected. You can review the needs template and if needed, change your answers,
which might result in different product recommendations.
Add line items to an opportunity
Create a new product line item for your opportunity by entering the details, such as product
offering and quantity.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, navigate to the List view
All.

and select Opportunity -

2. From the Opportunity List view, select the opportunity you want to work with and select the
Line Items tab.
3. Select New to start a new opportunity line item or select an existing opportunity line item to
make changes.
4. Fill in the fields in the Opportunity Line Item form.
Opportunity Line Item form
Fields

Descriptions

Number

The system-generated number of the
opportunity line item.

Opportunity

The system-generated id of your opportunity.

Product Offering

The product offering that is selected for the
opportunity line item.

Short Description

Brief description of the opportunity.

Unit of Measure

The measuring unit of the opportunity line
item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
Fields

Descriptions

Quantity

The quantity of the opportunity line item.

Existing contract

Contract that is already active or in effect.

Parent Line Item

The primary line in a hierarchical structure of
line items within an opportunity.

Channel partner

The name of the organization selling a
product or service.
You can change the channel partner. Each
line items can have different channel
partners.

Product Specification

Specifies how the product is presented,
configured, and fulfilled within a product
catalogue.

Service location

Service location to which the opportunity line
item applies.

Unit of Measure

A standard quantity used to express a value.

Periodicity

Periodicity is based on the pricing method
selected for the product offering.
◦ If the pricing method is selected 'One time',
the periodicity is set to 'None'.
◦ If the pricing method is selected
'Recurring', the periodicity can be set to
'Monthly' or 'Annually'.

Contract start date

Estimated date when the contract becomes
effective.

Contract end date

Estimated date when the contract expires.

5. Fill in the fields in the Pricing form.
Pricing form
Fields

Descriptions

Price List

Default price list based on the opportunity
created.

Unit Net Price

Price per unit after adjustments, if any.

Note: The Unit Net price and Unit List
Price fields have the same values if the
opportunity isn’t in sync with the quote.
One-Time Price

One-Time Price of the product offering
included in the opportunity line item.

MRR

Monthly recurring revenue (MRR) amount.

Cumulative MRR

Cumulative monthly recurring revenue of the
opportunity and any child lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
Fields

Descriptions

◦ If periodicity is monthly, Cumulative MRR =
Unit Net Price * Quantity.
◦ If periodicity is annual, Cumulative MRR =
Unit Net Price/12 months * Quantity.
Customer can change this formula in case
of they customize their own values for
periodicity.
This field is populated only if the periodicity
of the opportunity is recurring in nature.
Cumulative ACV

Total annual contract value (ACV), which is
the yearly amount revenue for all products
and services from a customer contract.
Cumulative ACV = Cumulative One-Time
Price + Cumulative ARR.

Renewal amount

Contract Renewal Amount for the
Opportunity Line.

Unit List Price

Unit list price of the product offering included
in the opportunity line item.

Note: The Unit Net price and Unit List
Price fields have the same values if the
opportunity isn’t in sync with the quote.
Term (months)

Subscription period of the opportunity line
item.
The default term is 12 months only for
recurring products.

Cumulative One-Time Price

One-time price of the opportunity and
opportunity child line items.
Cumulative One-Time Price = Quantity * Unit
Net Price.

ARR
Cumulative ARR

Annual recurring revenue (ARR) amount.
This field is populated only if the periodicity
of the opportunity is recurring in nature.
Cumulative ARR = Cumulative MRR * 12

Cumulative TCV

Total contract value (TCV), which is the total
amount of revenue from a customer contract
expected over the lifetime of the contract.
Cumulative TCV = Cumulative One-Time
Price + Term * Cumulative MRR.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


<!-- page 918 -->
Fields

Descriptions

Upsell/downsell amount

Value representing upsell or downsell in
comparison to the renewal amount for the
opportunity line.

6. Enter any related notes in Work Notes.
7. Select Save.
The Opportunity Line Item is added to the main opportunity.

What to do next

Add a task to your opportunity. To learn more, see Add opportunity tasks.
Add competitors to an opportunity
Capture competitor details for your opportunity so that you can have winning sales
conversations with your customer.

Before you begin

Role required: sales_manager

Procedure
1. Navigate to List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with and select the
Competitors tab.
3. Select New to start a new opportunity competitor or select an existing opportunity competitor
to make changes.
4. Fill in the fields in the Opportunity Competitor form.
Opportunity Competitor form
Fields

Descriptions

Company

The company's name that is a competitor.

Opportunity

The opportunity number.

Strengths

Strengths of the competitor.

Weaknesses

Weaknesses of the competitor.

5. Select Save.
The competitor information is added to the main opportunity.
Add opportunity tasks
Create opportunity tasks to capture additional details of your customer's requirements.

Before you begin

Role required: sales_manager

Procedure
1. Navigate to List view

and select Opportunity - All.

2. Select the opportunity you want to work with and select the Tasks tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

918


<!-- page 919 -->
3. Select New to start a new opportunity task or select an existing opportunity task to make
changes.
4. Fill in the fields in the Opportunity Task form.
Opportunity Task form
Fields

Descriptions

Number

The system-generated number of the
opportunity task.

Opportunity

The opportunity number.

Due date

The date by which the opportunity task has to
be completed.

Short description

More information about the opportunity task.

State

State of the opportunity task.

Assigned to

The name of the sales agent to whom the
sales manager has assigned this opportunity
task.

Work notes

Additional notes about the opportunity task.

5. Select Save.
The Opportunity task is added to the main opportunity.

What to do next

You can create appointments in your opportunity tasks. To learn more, see Create appointments.
Create appointments
Create appointments with the required stakeholders to move the business discussion forward for
your opportunity.

Before you begin

Role required: sales_manager

About this task

You can create appointments only after creating an opportunity task. To create an opportunity
task, see Add opportunity tasks.

Procedure
1. Navigate to List view

and select Opportunity Tasks.

2. Select the opportunity task you want to work with and select the Appointments tab.
3. Select New to start a new appointment or select an existing appointment to make changes.
4. Fill in the fields in the Create New Appointment form.
Create New Appointment form
Fields

Descriptions

From

The email id of the sender.

To

The email id of the receiver.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

919


<!-- page 920 -->
Fields

Descriptions

Activity state

The state of the appointment.

Start time

The start time of your appointment.

End time

The end time of your appointment.

Reminder

The time interval for a reminder.

Subject

The subject information of your appointment.

Location

The appointment location.

Message

Any additional message for your
appointment.

5. Select Save.
The appointment is added to your opportunity task.
Add a new opportunity team member
Create an opportunity team member for a structured collaboration among multiple users.

Before you begin

Role required: opportunity_writer

Note: Sales restricted agent role is required to get access to opportunity via opportunity
team member membership.

Procedure
1. Navigate to List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with and select the
Team tab.
3. Select New to add a new opportunity team member or select an existing opportunity team
member to make changes.
4. Fill in the fields in the Opportunity Team Member form.
Opportunity Team Member form
Fields

Descriptions

Opportunity

The opportunity number.

Member

Name of the member.

Opportunity Role

Role of the team member. Following member
roles (Related party types) and responsibility
are shipped by default:
◦ Account Executive
◦ Solution Sales Executive
◦ Price Band Approver
However, more roles can be configured.
Depending on the responsibility, access to
the opportunity is provided to the opportunity

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
Fields

Descriptions

team members. For more information, see
Create related party configurations .
Primary

Identify one primary member for a given role.

Notes

Enter work notes for reference.

5. Select Save.
The Opportunity Team Member information is added to the main opportunity.
Add an opportunity associated contact
Create opportunity for associated contacts to identify each contact’s role when multiple
stakeholders are involved.

Before you begin

Role required: opportunity_writer

Procedure
1. Navigate to List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with and select the
Contacts tab.
3. Select New to associate a contact from Account hierarchy or select an existing contact to
make changes.

Note:
Applicable only for Account-based opportunities and not consumer-based opportunities.
4. Fill in the fields in the Opportunity Associated Contact form.
Opportunity Associated Contact form
Fields

Descriptions

Opportunity

The opportunity number.

Contact

Name of the customer contact.

Opportunity Role

Role assigned to an opportunity associated
contact. Following contact roles (Related
party types) are shipped by default:
◦ Business user
◦ Decision maker
◦ Economic buyer
◦ Evaluator
◦ Executive sponsor
◦ Influence
However, more roles can be configured.

Account

Account of the contact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
Fields

Descriptions

Primary

Primary opportunity role.

Notes

Enter work notes for reference.

5. Select Save.
The Opportunity Associated Contact information is added to the main opportunity.
Compose emails
Create an email to communicate to your customer the product information that meets their
business requirements or the product demo as required by your customer.

Before you begin

Role required: sales_agent

Procedure
1. Navigate to List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with and select the
Emails tab.
3. Select Compose Email button from the top right corner to start a new email or select an
existing email to make changes.
4. Fill in the fields in the Email Draft form.
Opportunity Email Draft form
Fields

Descriptions

From

Email id of the sender.

To

Email id of the receiver.

Subject

Subject of your email.

Email message

Body details of your email.

Note: You can create your own email templates and use the pre-filled email templates
while creating a new email. To attach any files with your email, select Attach File.

5. Select Send email to send the email or close the email form to save it in the Draft Emails tab.
View an existing opportunity
View an existing opportunity to make changes, such as updating its status or additional details.

Before you begin

Role required: sales_agent

Procedure
1. Navigate to the List view

and select Opportunity - All.

◦ All- shows all the opportunities in the instance.
◦ Opportunity Tasks- shows your opportunity tasks.
2. Select the opportunity that you’re working with.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
3. Make updates to the opportunity as needed.
4. Select Save.
Track opportunities using Kanban view
Personalize and manage the opportunities information that is most relevant to you and your
stakeholders using the Kanban view.

Before you begin

Role required: sales_agent

About this task

A Kanban view is a visual representation of the data that enables you to drag and drop the data
records according to the business flow. The Kanban view feature in Opportunity Management
provides the following benefits:
• Viewing the opportunities of all stages and filtering them on the basis of sales cycle types.
• Updating the state of an opportunity by navigating them in between different stages.
• Viewing the auto-calculated rollup amount (in the base currency) on the sub-header for all
opportunities in Kanban lane.
The Kanban view as part of Opportunity Management in Sales and Order Management.

Procedure
1. Navigate to the List view

and select Opportunity - All.

2. Select the View Kanban button.
◦ To change an opportunity state, drag the opportunity card from one state and drop it into
another state.
◦ To view the opportunities of different sales type, use the Filter by option on the page.
◦ To create a new opportunity directly from this page, select the Create Opportunity button. To
learn more, see Create an opportunity.
Export opportunities
You can export an opportunity as a JSON file in Opportunity Management and provide it to
a customer. The export opportunity feature in Opportunity Management exports a list of all
opportunities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
Before you begin

Role required: sales_agent

Procedure
1. Navigate to the List view

and select Opportunity - All.

2. Select the Export button.
3. Select the File Type:
◦ Excel
◦ CVS
◦ JSON
◦ PDF
4. Select the Delivery Type:
◦ Email - Enter a valid email address.
◦ Download - Downloads the export to a local drive.
The list of opportunities is exported according to the parameters set.
Create a quote from an opportunity
Create a quote directly from an opportunity as a sales agent or with integrated roles.

Before you begin

Ensure that you have captured and provided all the information for your opportunity, such as
opportunity details, line items, competitors information and other details.
Role required: sales_agent

Procedure
1. Navigate to the Workspaces > CSM/FSM Configurable Workspace.
2. From the List view

, select Opportunity - All.

3. Select the desired opportunity.
4. Select Create Quote to create a new quote from the selected opportunity.
If users with integrated roles create quotes then the channel partners and the related channel
partners are copied to the newly created quotes. All the created quotes can be viewed on
the Quotes tab. For details about integrated roles, see Integration with Sales and Order
Management .
Create a quote from an opportunity line item
Create a quote from the selected line items in an opportunity record.

Before you begin

Role required: sales_agent

Procedure
1. Navigate to the List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with and select the
Line Items tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
3. Select one or more line items and select Create new quote to create a quote from the selected
line items.
A dialogue box appears that indicates the creation of new quote. Select the new quote record
to view it. Or you can also navigate to the Quotes tab to view the new quote record.

What to do next

To learn more about using the Quote Management workspace, see Using Quote Management.
Sync quote and opportunity
Sync quote information from the quote record to an opportunity record. This keeps the quote
data consistent and accurate across both the records and enables sales agents to track revenue
from opportunities accurately.

Establish a sync between quote and opportunity
As a sales agent, you can establish the sync between quote and opportunity records and ensure
that a defined set of fields between opportunity-quote and opportunity line items-quote line
items remain synchronized.
When a quote is created through an opportunity, the Source Opportunity field on the quote
record is automatically populated with the details of the opportunity through which the quote is
created. To create a quote through an opportunity, see Create a quote.
When a quote is created with child line items, the revenue metrics and prices for the quote are
automatically calculated. To learn more about the revenue metrics and how they’re calculated,
see Subscription revenue metrics.
When the quote record is synchronized with the opportunity record, the prices and revenue
metrics are also synced and are consistent across both forms.
The Synced banner on the Details tab on the opportunity record displays whether the quote is in
sync with its opportunity. To automatically sync the first quote with its source opportunity, set the
autoEnableSyncFirstQuote system property to true.
To learn more about establishing a sync between quote and opportunity and automatically
enable sync, see Sync a quote with an opportunity.
You can create a new version of a quote from a quote record to establish a sync between the new
revised quote with the initial opportunity.

Note: The new version of the quote is in sync with the opportunity only if the previous
version was also in sync.
View the new quote revisions from the Revisions tab on the quote record.
On the quote record, mark the State as Accepted or Completed to move the synced opportunity
to Closed-won.

Map quote and opportunity header fields and line items
As a sales agent, you can only edit and make changes on the fields on an opportunity record that
aren’t in sync with a quote.
The following is a list of default field mappings between opportunity line items with quote line
items and opportunity header with quote header fields. To learn more about the fields and their
descriptions, see Subscription revenue metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
Default synced fields between opportunity header and quote header
Opportunity header

Quote header

Term (months)

Term (months)

Total one-time price

Total one-time price

Total MRR

Total Monthly Recurring price

Total ARR

Total Annual Recurring price

Amount

Total Amount

Primary Quote

Quote id ref

Currency

Currency

Price list

Price list

Default synced fields between opportunity line-item and quote line-item fields
Opportunity Line items

Quote Line items

Term (months)

Term (months)

Cumulative one-time price

Cumulative one-time price

Cumulative MRR

Cumulative Monthly Recurring price

Cumulative ARR

Cumulative Annual Recurring price

Cumulative TCV

Cumulative Net price

Product offering

Product Offering

Price list

Price list

Unit of measure

Unit of measure

Unit list price

Unit list price

Quantity

Quantity

Periodicity

Periodicity

Unit net price

Unit net price

Note: When an opportunity and quote header, and an opportunity line item and quote line
item are in sync with each other, the addition and deletion of line items on the opportunity
record is disabled. All the synced fields on the opportunity and opportunity line item record
becomes read only.
Collaborate with stakeholders by using the sidebar
Initiate a discussion with internal and external stakeholders, such as sales agents, solution
consultants, and subject matter experts using sidebar integration with Microsoft Teams.

Before you begin

Role required: sales_agent or sales_manager
Before using the sidebar integration, you must first complete configuring the sidebar integration
with your opportunity. To learn more, see Configuring Sidebar .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
Procedure
1. Navigate to the List view

and select Opportunity - All.

2. From the Opportunity List window, select the opportunity you want to work with.
3. Select Discuss on the opportunity header.
4. On the form, fill in the fields.
Field

Description

Record number

Number of the opportunity record.

Subject

Description about the opportunity.

Add participants

Name of the other users that you want to add
to the opportunity discussion.

Include a brief message for participants

Additional information that you want to add
for your users.

5. Select Start discussion.
A Microsoft Teams chat is created for your collaboration.

What to do next

Make your collaboration more effective by sharing emojis, messages, and attachments.
Location-based transactions for Opportunity Management
Agents can create opportunities and support product configurations and services for different
locations.
Agents can use the location filter in the product catalog to select a particular customer location.
The catalog only displays the products associated with that location. This enables the agents
to add appropriate product lines to an opportunity. Agents can also copy products and services
from one location to the other in a single transaction. This eliminates the need to create multiple
opportunity line items for each location. To learn more about copying locations, see Copy
opportunity line items to a location.

Using location-based transactions
To use the location filter in Opportunity Management, complete the following steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
Note: As an agent, you can use the location feature if the location-based transactions
property is enabled by your admin and eligibility rule filters and product eligibility rules have
been configured by your product catalog admin.
Using location-based transactions
Step

Description

Role

Use location filter to add
opportunity line items

Use the Service location
Agent
filter in the Catalog tab to
add opportunity line items to
a location.

Copy opportunity line items
to a location

Copy existing line items
to another location in the
opportunity based on the
eligibility rules set up by
your product catalog admin

Agent

The copy line items modal
is displayed when selecting
Copy on the line items
related list. If the system
property is false, all the line
items are copied.
Use location filter to add opportunity line items
Use the Service location filter in the product catalog to add products (line items) to a location.

Before you begin

Role required: sales_agent

About this task

You can add opportunity lines by location if the location-based transactions property is enabled
by your admin and eligibility rule filters and product eligibility rules have been configured by your
product catalog admin for location-based transactions.

Procedure
1. Navigate to the List view and select Opportunity-All.
2. From the Opportunity List view, select the opportunity you want to work with and navigate to
the Catalog tab.
3. In the Select a location filter, pick a location to which you want to add the line items.
After you select a location, only the opportunity line items that are eligible for the selected
location are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
4. Select Add to create an opportunity line item.
5. Navigate to the Line Items tab to view the details of the newly added opportunity line item.
Copy opportunity line items to a location
Duplicate existing line items to another location using Copy on the Line items tab.

Before you begin

Role required: sales_agent

Procedure
1. Navigate to the List

view and select Opportunity-All.

2. From the Opportunity List view, select the opportunity you want to work with and select the
Line Items tab.
3. Select one or more opportunity line items that you want to copy to another location.
4. Select Copy.
5. In the Copy line items dialog box, choose one of the options.
Option

Description

Keep original location

New line items for the selected opportuni­
ty are created and the source location is re­
tained.
This copies the line items to a new location.

Choose new location

In the Service location filter, select the new
location that you want the line items to be
copied to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
Note: Select the Continue to copy only eligible lines for this location (exclude
ineligible) option in the Copy line items dialog box.

This selection copies the eligible line items to your preferred location and skips the line
items that aren’t eligible. If this option isn’t selected, no opportunity line items are copied.
6. Select Copy.

Using Sales Forecasting
Sales Forecasting uses the current opportunities in the system to predict future opportunity
amounts. The Opportunity Management application contains the list of opportunities created for
the customers and each of these opportunities are in different stages of the sales cycles.
Once an opportunity is created, the Forecast Category field displays Pipeline by default. The
sales agent working on that opportunity updates this field once the sales process starts. When
the agents update the forecast category, the dashboard keeps displaying the latest data. The
forecast scheduler keeps updating the data on the Sales Forecast dashboard. After the users,
groups and opportunity data are added, along with selection of category, select Update Forecast
on the Sales Forecast dashboard to view the latest forecast information.

Viewing the Sales Forecast dashboard
You can view the Sales Forecast dashboard to see the current sales status and targets achieved
for your teams. Only Forecast Admin, Forecast Analyst, and the owner of the highest group can
see the data and sales forecast for all the groups and the team. Other personas can only view
the sales forecast and related information for their own hierarchy or for the hierarchies below
them.

Using the Sales Forecast dashboard
To access the Sales Forecast dashboard, navigate to CSM/FSM Configurable Workspace
and select the Sales Forecast view. Select the refresh icon
to see the latest sales forecast
data. Select Update Forecast on the dashboard to fetch the data to generate the latest forecast
information.

Select the options from these three filters to view the data for your group or manager for a
selected time-period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
• Group: Select the group for which you want to view the forecast, the manager of the group is
automatically updated in the third filter.
• Manager: Select the manager to see the field.
• Period: Select the period (quarter) for which you want to view the forecast.
For the above screenshot, the forecast data is being shown for the Global region. The owner of
the forecast is Jennifer Harris. The forecast period selected is FY 2025 Q4. Global has a total
quota of $7,000 assigned to it. Gap is the difference between the Quota and Won sales. For
Global, the gap is $5,100, meaning they must achieve an additional $5,100 to meet the quota. As
the owner of this group, Jennifer Harris can track the quota achieved for each team and specific
agent if required.
Commit, Strong Upside, Upside, and Pipeline represent different stages of certainty in the sales
pipeline, helping to estimate the likelihood of achieving the overall target. As a manager, you can
expand and see the total amount of opportunity in each stage for your team and agents. You can
see the roll up amount for all the agents under that manager. Each category displays two values
under Final Forecast and Hierarchy Forecast. Hierarchy Forecast displays the amount generated
by the total opportunities in the system. Final Forecast displays the adjusted value of the forecast
that is manually done by the manager or sales agent. Agents can adjust the value of the forecast
in any category based on their judgment and predictions for a more accurate forecast.
The Rest of American group with the owner as Mathew Moore in FY 2025 Q4 displays that the
team’s quota has been set at $1,500. The agent working under the owner is Charlotte Turner who
has already closed (Won column) $1,900 in sales. You can select the “i” icon for an agent and
view all the opportunities for that agent and the total value in each forecast category.

As a sales agent, you can view the status of each opportunity that you own. As the sale
progresses, you can update the Forecast Category field of the opportunity and the new data
is updated on the dashboard. You can view the total amount in each sales stage and track the
status of the quota target assigned to you. Select Submit Forecast to view the Submission Entry
tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
Note: Submit Forecast is available only if you select Submission Required in the Forecast
model. For more info, Sales Forecasting terminology.

The Submission Entry tab displays the cumulative value of all the opportunities for each category
for that agent. The agent can adjust the value of the forecast for any category depending on
the latest insights. For any of the categories, enter the adjusted value of the forecast in Owner
Adjusted Value field. Enter a reason for the adjusted forecast value in the Owner Adjustment
Reason field. Select Update to save the adjusted forecast values. Select Submit Forecast to
finalize the forecast values. After submitting these forecast values, they cannot be changed.
Create forecast adjustment
Modify system-generated forecast values based on your judgment and prediction. Sales
agents can adjust their individual forecasts and managers can modify team forecasts to align
with overall targets. Sales managers can override team-level adjustments and the system
automatically recalculates the roll-ups to reflect the updated forecast values.

Before you begin

Role required: sn_sales_forecast.adjustment_writer

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. Navigate to My lists > Sales Forecast > Forecast.
4. Select the forecast header record to view your forecast items.
5. Select Forecast Items on the Details tab to view all the forecast items.
6. Select the forecast item that you want to adjust.
The Details tab for that forecast item is displayed.
7. Select the Forecast Adjustment tab.
8. In the Adjusted Value field, enter the new forecast value that is different from Hierarchy
Forecast value.
9. Enter a description for the adjusted value in the Reason field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
10. Select Save.
On your forecast item, the Owner Adjustment field displays the adjusted forecast value and the
Hierarchy Forecast value displays the original forecast value.
Submitting a forecast
Sales agents and managers can finalize and submit forecasts within defined periods to ensure
accurate projections. Agents can adjust forecast values, lock them, and submit them within the
specified time frame.

Before you begin

Role required: sn_sales_forecast.submission_writer

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon (

).

3. Navigate to My lists > Sales Forecast > My Forecast Submissions.
4. Select New.
The Create New Submitted Forecast page is displayed.
5. From the Forecast list, select the forecast record that you want to submit.
6. Check the values in the following fields that are automatically populated:
◦ Owner
◦ Sales Team
◦ Period
◦ Currency
◦ State
7. From the Submission Window list, select the time period for which you want to submit the
forecast.
8. Select Save.
The Submission Entry page for that forecast is displayed.
9. Select Submit Forecast to submit your forecast.
The forecast has been submitted. The forecast values have been locked and cannot be
changed.

Using Sales Territory Management​
Sales Territory Management​ is a strategic framework used to organize and manage CRM (such
as Account, Consumer, Lead, and Opportunity) entities. You can update the primary territory on
CRM entity in which Sales Territory Management​ has been implemented.
Related topics
Configuring Sales Territory Management​
Components installed with Sales Territory Management​
Assigning a territory on opportunity
You can update the primary territory on opportunity in which Sales Territory Management​ has
been implemented.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
Before you begin

Role required: sales territory admin (or a user with sales territory override role)

Note: If an account is set with a territory, any Opportunity created from that account will
inherit the territory as well. User with sales territory override role can override it.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Opportunity > All and select the opportunity you want to update the territory.
3. On the Details tab, update the Territory field with the other available territories.
4. Select Save.

Using configure, price, quote applications
Learn how to use configure, price, quote applications.

Using the CPQ Configurator
Agents and customers use the CPQ Configurator to customize configurable products in Sales
and Order Management transactions such as opportunities, quotes, and orders.

CPQ Configurator overview
With the CPQ Configurator, agents and customers can configure offerings dynamically based
on customer needs or product attributes, without having extensive knowledge of product
structures and hierarchies. Agents use the configurator in the CSM Configurable Workspace,
while customers use the configurator in the Business Portal for self-service transactions.

Note: The CPQ Configurator is available if it's been implemented in your organization.
Otherwise, the legacy product configurator is available for customizing configurable
products.
CPQ Configurator in CSM Configurable Workspace and Business Portal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
When adding products to Sales and Order Management transactions, agents and customers
select a customizable product offering from the product catalog, which automatically launches
the configurator. The configurator displays the available features and options that can be
selected for the product.
CPQ Configurator interface

The CPQ Configurator interface has the following features:
CPQ Configurator features
Feature

Description

1. Products in the bundle

Products that comprise the bundle. Select a
product in the bundle to view the features and
options available.

2. Option selections

Section that displays the available product
attributes and features, such as characteristics and
characteristic options for the product. This section
can include text fields for entering relevant product
information.

3. Quantity

Option for entering the number of products
needed.

4. Shopping cart

List that reflects the current selections made and
their associated pricing.
• As you select options, the pricing is calculated
and displayed automatically.
• Use the Gear
icon to move the shopping cart
component to different locations in the layout
(left, right, bottom).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
CPQ Configurator features (continued)
Feature

Description

Note: The default location for the
shopping cart is below the option
selections section. In this example, the
shopping cart was moved so that it appears
in the right pane.
• Use the Pin icon to dock the shopping cart in a
particular location (left pane, right pane, or below
the options selection section).

5. Completion icons

Icons that indicate the state of the configuration:
• Checkmark
icon: Indicates that the required
entries and option selections are complete.
• Attention
icon: Indicates that a required entry
must be made. Select the icon for a description
of the option or entry to be completed. To locate
the required entry, review the selections for all
the products in the bundle. The required entry is
identified by an alert

icon and message.

Related topics
Add customizable products using CPQ Configurator
Add customizable products using CPQ Configurator
Use the CPQ Configurator to add configurable products to a Sales and Order Management
transaction, for example an opportunity or quote.

Before you begin

Role required: sales agent, order agent, customer

Procedure
1. Create the transaction, for example an opportunity or quote in the CSM Configurable
Workspace.
a. Navigate to Workspaces > CSM/FSM Configurable Workspace and select the List icon

.

b. Navigate to the module for the transaction, for example Quotes > All, and select New to
create the transaction.
c. When the transaction is created, select Add line items to create a line item.
The tabs (related lists) open for the transaction.
2. Select the Catalog tab to open the product catalog interface, then select the appropriate
catalog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
3. In the card for the product offering to be configured, select Customize.
The CPQ Configurator opens.
4. Select a product in the bundle and in the Options selection section, choose the product
option.
◦ As you select options and enter quantity items, review the shopping cart to see the
associated pricing for your selections.
◦ Review the completion icons.
▪ Attention icon ( ): Indicates that a required option or entry must be completed. Select
the icon to see which item must be completed. To find the required entry, review the
options for all the products in the bundle. The required entry is identified by the Alert icon
(

) and message.

▪ Checkmark icon (
): Indicates that all required options and entries for the configurable
offering have been completed.
5. When you complete your selections, select Save and Close.
The configurable product is added as a line item to the transaction.

Using the legacy product configurator
The legacy product configurator in Sales and Order Management is an interface for customizing
configurable product offers. The interface displays the product options available and
automatically calculates product pricing as you select options.

Legacy product configurator interface
Legacy product configurator interface

The interface consists of three main sections:
• Product hierarchy: Lists the parent and child product relationships for configurable products.
• Option selection: Displays the product options that can be selected, for example product
characteristics such as color or model.
• Current Selection: Shows the pricing for the options that you select. The pricing is calculated
automatically and displayed dynamically as you select product options.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
When you complete the product offering configuration, select Add to add the product as a line
item for the transaction.

Selecting complex product characteristics and options
When you select a complex product for opportunities, quotes, and orders, the product hierarchy
and option selection sections in the configurator display the complex attributes and options
hierarchically.
You can expand the product hierarchy to show the available characteristics and options.
The gear icon ( ) displayed next to a child product indicates that a hierarchy of complex
characteristics is available at that level. Select that level to view the characteristics and options.

Note: Pricing details aren’t provided in the Current Selection pane for complex
characteristics.
Complex characteristics and options in the product configurator

Create multiple configurations
Create multiple configurations of a child product offering when you're adding a configurable
product to an opportunity, quote, or order. You can then configure the product options and
characteristics separately for each offering configuration.

Before you begin

Role required:sales_agent or sn_ind_tmt_orm.order_agent

About this task

If your product catalog admin has enabled multiple configurations for child offerings in a bundled
product, you can create multiple child offering configurations for selected child offerings using
the legacy product configurator. When creating multiple configurations of child offering, you can
do the following:
• Change the quantity of a child offering that can have multiple configurations.
• Clone a child offering or split a child offering that has a quantity greater than 1.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


<!-- page 939 -->
◦ The Clone option copies the child offering based on the number of copies that you specify
and creates identical offering configurations.
◦ The Split option divides the current child offering quantity by the number of splits that you
specify and distributes the quantity evenly across all the copies.
• Customize the options and characteristics for each child offering instance created.
• Delete a child offering instance, as long as the minimum number of child offerings defined for
the product is maintained.

Note: Even when the multiple configurations feature is enabled, there are scenarios in
which some configuration options might not be available. The system uses the default,
minimum, and maximum quantity values from the product definition to determine valid
configurations and then enables or disables the Split or Delete options for managing child
offering configurations. For more information on validation, see Multiple configurations.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to the opportunity, quote, or order that you want to work with.
For example, navigate to Quotes > All and select the quote that you want to work with.
3. Select the Catalog tab.
4. In the product catalog hierarchy, select the product catalog that you want to use.
The product catalog displays the available products as product offering cards.
5. Select the configurable product by choosing Customize in the appropriate product offering
card.
The product configurator displays the product offering configuration, including the bundle
product options and characteristics. Child offerings that can have multiple configurations
are identified by Information icons. Select the Information icon to view a message indicating
that the offering can have multiple configurations and that the offering quantity shown is
aggregated across the configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
Example bundle configuration for an order

6. Navigate to the child offering in the product hierarchy, which displays the offering summary
page.
You can do the following:
◦ To change the quantity of the child offering, enter the new value in the Quantity field.
◦ To add new configurations for the offering, select the More options (
Quantity field and select an option.

) menu next to the

More options
Option

Description

Clone

Option for creating copies of the selected
child offering. Enter the number of clones
to be created. The system creates identical
copies of the child product offering, and
each clone has a quantity of 1.
For example, if the current child offering
quantity is 2, and you specify 2 clones, two
identical copies of the child offering are
created. Each clone has a quantity of 1 and
becomes a separate line item that you can
configure.

Note: The system checks the total
quantity allowed for the child offering.
Split

Option for creating child offering instances
by splitting the current child offering
quantity and distributing the quantities

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
Option

Description

across the offering instances. Enter the
number of splits to be used.
For example, if the child offering quantity
is 5, and you specify 3 splits, the system
creates two child offering instances. After
the split, you have three child offering
instances, which have a quantity of 2, 2, and
1, respectively. You can then configure each
line item as needed.
Delete

Removes an existing child offering instance.

New configurations resulting from the clone or split are listed in the product catalog hierarchy.
The associated pricing is displayed in the Current Selection pane.
◦ New configurations have names that reflect the child offering name, followed by an
incremental number, for example, Home Automation Hub 2, Home Automation Hub 3, and so
on.
◦ Quantity changes for a child offering are also reflected in the Current Selection pane.
7. For each new offering configuration, select the appropriate characteristics and product
options.
8. When you finish configuring the child offerings, select Add to add each configuration as a
separate line item to your opportunity, quote, or order.

Using Quote Management
Use the Quote Management application to build your quote. The interface includes the following
tabs to help you create and manage product quotes.
Quote Management tabs
Quote Management tab

Description

Details tab

Add details of the quote, such as address and contact information.

Line Items tab

Add quote line items to a quote.

Catalog tab

Use product catalogs to add products to your quote.

Revisions tab

Create multiple versions of quotes.

Customer Orders tab

Convert quotes to product order sales.

Pricing adjustment tab

Add manual pricing adjustments to products in a quote.

Building quotes
Use these basic steps to create, build, and manage your quotes.
Building and managing quotes
Step

Description

Create a quote

Start a quote, then add and view quote details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
Building and managing quotes (continued)
Step

Description

Add products to a quote

Build your quote by adding products from the product
catalogs.

Create a quote PDF document

Sales agents can create a PDF document from a quote to
send to customers.

View and update products in your
quote-

Use the Line items tab to see and update products in your
quote.

View and update manual pricing
adjustments in quotes

Add pricing adjustments to quotes.

Get additional product offering
recommendations for quotes

Use product offering recommendations to find other
products that you can upsell or cross-sell to your
customers based on the line items in your quote.

Create quote versions

Use the Revisions tab to create and view versions of a
quote.

Convert quotes into orders

Use the Customer Orders tab to convert quotes to orders.

Create a quote
Create a quote in Quote Management to start the quote building process.

Before you begin

Role required: sales_agent

About this task

When you start a quote, a dialog box prompts you for quote information. You can choose to
create a quote for a customer account or consumer. The dialog box changes depending on your
choice.
• Account – The quote is created for an existing customer account.
• Consumer – The quote is created for an existing consumer.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All and select New.
3. On the Create new quote form, fill in the fields.
To

Description

Select the Account and enter the following:
◦ Contact: Name of the primary customer contact.
Create quote for an
account

◦ Short description: Brief description of the quote for this account.
◦ Expiration date: Date and time that the quote expires.
◦ Channel partner: (Optional) The name of the organization selling a
product or service.

Create quote for a
consumer

Select the Consumer name and enter the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
To

Description

◦ Short description: Brief description of the quote for this consumer.
◦ Expiration date: Date and time that the quote expires.
4. Select Save and close.
The quote is saved and you return to the Quotes list view.
5. Select refresh

to see the new quote in the list.

6. Select Add Line Items to save the quote and begin adding quote line items.

What to do next

Add and view details of a quote.
Add and view details of a quote
Use the Details tab to add and view basic information for a quote.

Before you begin

Role required: sales_agent

About this task

Use the Details tab to add more information about your quote, such as addresses and contacts.
You can also indicate whether the quote is active and set the quote state.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All and select your quote.
3. In the Details tab, fill in the basic information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
Details tab
Field

Description

Active

Option indicating that the current quote is the active quote. When there
are multiple versions of a quote, selecting this option indicates this is
the active quote.

State

Options that reflect the quote status.
◦ Draft - The default state of a quote that indicates the quote is still in
development.
◦ In review - Use this state to indicate that the quote is in a review state.
◦ Pending customer acceptance - Set to this state when the quote is
created and in review with a customer.
◦ Accepted - Use this state to indicate that the quote was accepted by
the customer.
◦ Revised - Revised indicates that changes have been made to the
quote that other working on the quote can take note.
◦ Expired - Shows that the quote is beyond its expiration date. Reset
the expiration date to make the quote active again.
◦ Canceled - Use this state to show that the quote is canceled.
◦ Closed - Shows that the quote is closed.
◦ Completed - Shows that the quote is completed. When a quote is set
to Completed, the quote can be used to create an order. For more
info, see Convert quotes into orders.

Pricing fields

The fields are:
◦ Currency - The currency for the price matches the currency stated in
the account information.
◦ Price list - The Standard Price List field is the default price list for the
product catalogs referenced in the quote.
◦ Cost book - The Standard Cost Book is the default cost book for the
product catalogs referenced in the quote.

4. Select Save.

What to do next

Add products to a quote vb.
Add products to a quote
Use the Catalog tab in Quote Management to add products to your quote.

Before you begin

Role required: sales_agent

About this task

You can use the Catalog tab to search for and select product offerings from catalogs and add
them to your quote. You can choose simple and complex product offerings. Complex product
offerings have options for customizing the product by using the product configurator.

Note: Check your entitlements to see if the product configurator is available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
Procedure
1. In the CSM Configurable Workspace, select the List view

.

2. Navigate to Quotes > All and select the quote that you want to work with.
3. Select the Catalog tab.
4. In the product catalog hierarchy, select the product catalog that you want to use.
The product catalog displays the available products in product offering cards.
5. In the product offering card, select the product.
◦ For a simple product that doesn't have any selectable options, select Add.
◦ For a configurable product that has options that you can choose, select Customize to open
the product configurator for selecting product options.
As you configure the product, you can reprice, validate, and then save your selections.
For details on using the product configurator, see Using Sales and Order Management
applications.
The product offering is added to the quote as a line item.
Using product offering recommendations in quotes
As a sales agent, you can use recommended product offerings to upsell or cross-sell additional
products in your quotes.

Product offering recommendations
Product recommendations appear as cards in the contextual side panel in the CSM Configurable
Workspace when you're adding, updating, or viewing quote line items using the Catalog or Line
items tab. Each card provides a recommendation to either upsell or cross-sell a product.
Product offering recommendations for a quote

Product recommendation cards display the following information:
• Name and brief description of the recommended product offering.
• Type of recommendation:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
◦ Upsell: Sales strategy for upgrading customers to a better or enhanced version of a product
that they're buying.
◦ Cross-sell: Sales strategy for selling additional products that are related to but different from
the items that customers are buying.
• Source product offering to which the recommendation applies.
• Product pricing
• Options to accept the recommendation and set the product quantity or dismiss the product
offering recommendation.
When multiple cards are displayed, they're arranged in the order value that was set when the
recommendation was created by your product catalog admin.

Recommendation process
When you add a product recommendation, the recommended product offering is added
as a line item to your quote. For more information, see Get additional product offering
recommendations for quotes. After you add or dismiss recommendations, they’re moved to the
recommendation history. Use the History (
the recommendation history.

) icon in the Recommended products panel to view

Get additional product offering recommendations for quotes
Get product offering recommendations to upsell or cross-sell additional products in quotes.

Before you begin

Your quote must have at least one or more line items and be in the draft state.
Role required: sales_agent

About this task

When you're working on a draft quote and adding or updating products, product offering
recommendations are displayed as recommendation cards in the contextual side panel
of your workspace. These cards identify the products that you can upsell or cross-sell, to
complement or supplement existing products in your quote. When you accept a product offering
recommendation, the product is added as a line item to your quote.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All and select the quote that you want to work on.
3. Select the Catalog or Line Items tab.
If the quote doesn't have at least one line item, add a line item.
The contextual side panel displays any relevant recommended products for the quote.
4. Review the recommended product offering cards and do one of the following:
◦ To accept a recommendation, change the quantity if needed and select Add in the card.
The product is added as a line item to the quote. When a configurable product is added
from the recommendations panel, quote line items are created with default selections
configured as set in the product offering definition. The product offering card is moved to the
recommendation history.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
◦ To remove a recommendation from the side panel, select Dismiss.
The product offering card is moved to the recommendation history.
You can review the recommendation history by selecting the History (
Recommended products panel.

) icon in the

5. Optional: Continue reviewing the recommended offering cards and add or dismiss them as
needed.
Add tasks to a quote
Create a single or multiple tasks for a quote and assign those to different agents. Tasks are the
various actions that agents perform to create a quote.

Before you begin

Role required: sales_manager

Procedure
1. In the CSM Configurable Workspace, navigate to the List view

and select Quotes > All.

2. Select the quote that you want to work with and select the Tasks tab.
3. Select New to start a new quote task or select an existing quote task to make changes.
4. Fill in the fields in the Quote Task form.
Quote Task form
Field

Description

Number

System-generated number of the quote task.

Quote

Number of the quote.

Due date

Date by which the quote task has to be
completed.

Short description

Information about the quote task.

State

State of the quote task.

Assigned to

Name of the sales agent to whom the sales
manager has assigned this quote task.

Work notes

Additional information about the quote task.

5. Select Save.
The quote task is added to the main quote.
Create quote versions
Use the Revisions tab to create and view the versions of your quote.

Before you begin

Role required: sales_agent

About this task

The Revisions tab shows all the versions of a quote. Version numbers are sequential. If the quote
is active, the Active field is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Select QuotesAll.
3. Select the quote that you’re working with.
4. Select the Revisions

tab.
icon and select Create new version.
5. Select the More Actions
A new version of the quote is created. Select the quote in the message to open the new
version. The Active option, if selected indicates the Active version of the quote. Use the
Revisions tab to view a list of all the current quote versions. Version numbers are sequential.
6. Return to the Quote list view and refresh the view to see the latest version created.
7. Select the Active option as a reminder of the active quote.

What to do next

Use the Customer Order tab to start an order from the Quote. See Convert quotes into orders for
more information.
Convert quotes into orders
Use the Customer Order tab to convert a quote into a customer order in Quote Management.

Before you begin

Role required: sales_agent

About this task

The quote must be in an Active state and the quote state must be set to Completed. Then the
Customer Orders tab becomes active.

Note: Verify your entitlements to see if you have access to this feature.
Procedure
1. In the CSM Configurable Workspace, select the List view

.

2. Navigate to Quotes > All.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
3. Select the quote that you want to convert to a customer order from the Quote List view.
4. In the Details tab, change the quote State to Completed and select Save.
5. Select Create Order.
When the order is created, a message appears with the order number.
6. Select the Order number in the message to open the order.
The Order Line Item view displays the order line items, pricing adjustments, and order tasks.
Add pricing adjustment to a quote line item
Add pricing adjustments to quote line items after the line item is created.

Before you begin

Role required: sales_agent

About this task

You can make the following types of pricing adjustments for quote line items as a way to
incentivize customers during the quote process.
Types of pricing adjustments
Adjustment type

Description

Markdown %

Percentage for a markdown in price.

Markdown amount

A dollar amount of a markdown in price.

Markup %

Percentage for the markup in price.

Markup amount

A dollar amount for a markup in price.

Price Override

Overrides the product price with a new price.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Select Quotes > All.
3. In the Line items tab, select the quote line item for a pricing adjustment.
4. In the adjustment dialog, use the Adjustment type menu to select an adjustment type.
5. Enter an adjustment value in the Adjustment value.
6. Add a description of the price adjustment.
7. Select Save.
Add price ramps on a quote line item
Add price ramps to quote line items to define incremental price changes for recurring product
offerings.

Before you begin

Configurable product offerings eligible for price ramps must have the Enable ramps option
turned on and the Price method set to recurring.
Role required: Sales_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
About this task

Use price ramps to specify how the price of a configurable product offering in a quote increases
over different time segments, either yearly or quarterly.
• When you create ramps for a parent offering, the same ramps are created automatically for
each child product offering in the product bundle.
• If price ramps haven't been created for the parent product offering, you can create ramps for
child product offerings. However, if you want to create price ramps for the parent offering later,
remove the ramps for all its child offerings, and then create the ramps for the parent offering.
• After price ramps are created, you can make manual pricing adjustments to a ramp segment.

Note: Price ramps aren't supported for quotes with sales agreements.
Procedure
1. Navigate to Workspaces > CSM Configurable Workspace.
2. Select the List icon.
3. Navigate to Quotes > All.
4. Select a quote.
5. In the Line Items tab, select the Select row check box for the quote line and select Ramps.
The Price ramps dialog displays the default settings for the ramp.
6. On the Price ramps form, fill in the fields.
Default values are set for the Term, Ramp type, and Segments. You can change them as
needed.
Field

Description

Start date

Date that the quote starts.

End date

Date that the quote ends.

Term (months)

Number of months for the ramps. The maxi­
mum term is 60 months. You can enter a twodigit decimal value, for example 36.25. After
entering the term, the End date is updated au­
tomatically.

Ramp type

Option that indicates whether the ramp is
Yearly or Quarterly.

Segments

Number of segments in the ramp. The default
number of segments is 1. If you change the
Term value, the number of segments is updat­
ed automatically based on the Ramp Type.

Annual % increase

The percentage increase to be applied on a
yearly basis.

7. Select Create.
The price ramps are created based on the ramp settings. The Price ramp details section shows
each ramp segment created and associated pricing values:Unit list price, Net price, and
Cumulative net price for the ramp segment.
8. To change the ramp settings, change the Term, Ramp, or Amount % Increase values as
needed, then select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
For example, you can change the Ramp type from yearly to quarterly or percentage increase.
The updated price ramp details section.
9. To make manual price adjustments to a ramp segment, do the following:
◦ Select the check box for the segment to be adjusted.
◦ Select the type of adjustment to be made.
Add a header discount to a quote
Apply a percentage-based discount to the entire quote, or to a selected type of line items in
the quote. The quote line items automatically inherit the designated discount percentage as a
manual adjustment on the quote line level.

Before you begin

Role required: Sales Agent [sn_sales_common.sales_agent]

Procedure
1. In the Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select your quote.
4. In the Line Items tab, select the More Actions menu

at the header level.

5. Select Apply bulk discount.
6. In the Quote bulk discount dialog, choose either Override current line-level manual
adjustments or Retain current adjustments and apply for all other line items, and enter the
quote header discount percentage.
7. Select Apply.
Create an order from a quote line item
Create orders from quote line items by using the Create new order UI action.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select List

view and select Quotes > All

2. Select the quote, which must be in the Completed state, and select the Line items tab.
3. Select a quote line item and select Create new order.
A dialog box indicates the creation of a new order. Select the new order record to view it. Or
you can also navigate to the Customer Orders tab to view the new order record.
Add subscription pricing to a quote
Add subscription pricing to a quote or quote line items including start and end dates in Quote
Management.

Before you begin

Role required: sales_agent

About this task

Subscription pricing is a pricing model where customers pay a recurring fee for products or
services, typically at regular intervals such as monthly or annually.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
In a quote, you can set the subscription pricing start date and end date, or you can enter a term
and the subscription end date is automatically calculated.
Subscription pricing can be added at the quote header level or at the quote line item level.
See Subscription revenue metrics for more information about how subscription pricing works.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All
3. Select the quote that you’re working with.
4. In the Quote Details tab, add a Subscription pricing start date and a Subscription pricing
end date.
When the dates are entered, the following information automatically updates.

Field

Description

Total monthly recurring price

Shows the monthly recurring price based on
the dates entered in subscription pricing.

Total annual recurring price

Shows the total annual recurring subscription
pricing based on the dates entered.

Total amount

Shows the total amount of the subscription
pricing according to the subscription pricing
start and end dates.

Term

Shows the number of months the
subscription is valid based in the start and
end dates.

5. Select Save.
View and update products using the line items tab
Use the line items tab to review and update products in your quote and to add additional line
items.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view and select Quotes > All.

2. Select the quote that you’re working with and select the Quote Line Items tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
3. Select New to start a new quote line item or select an existing quote line item to make
changes.
4. Fill in the fields in the Quote Line Items.
Quote line item fields
Field

Description

Quote

Automatically generated field.

Number

Automatically generated field.

Parent line item

Automatically generated field.

Price list

Price lists are added to the product line
item. Price lists show pricing that is already
configured.

Term (months)

Monthly terms for the price list selected.
Monthly terms reflect the cost monthly of the
product or service.

Subscription start dates

Subscription state date is the date when an
entitlement or service begins.

Subscriptions end date

Subscription end date is the end date for an
entitlement or a service.

Contract start date

Contract state date is the date a service
contract or entitlement contracts start.

Contract end date

Contract end date is the date when a service
contract or entitlement contract ends.

Product offering

Product offering let agents select the product
or service for the quote.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
Field

Description

Quantity

Quantity is the number of a product that is
selected for the quote.

Unit of measure

Agents can select a unit of measure for
products that come in quantities.

Service location

Service location allows agents to select a
location for the service that is added to the
quote.

Short description

The description field for the service location,
which provides information about the
location such as address and phone number.

5. Select the Quote Line Characteristics tab to add or modify the quote characteristics.
6. Select the Pricing Adjustment tab to add or modify a manual pricing adjustment to the quote
line item.
7. Select Save.
The Quote Line Item is updated to the main quote.

What to do next

Add a pricing adjustment to a quote line item. See View and update manual pricing adjustments
in quotes for more information.
View and update manual pricing adjustments in quotes
Use the Pricing Adjustments tab in Quote Management to view and update manual pricing
adjustments made to order line items in your quote.

Before you begin

Role required: sales agent

About this task

To create a pricing adjustment, see Add pricing adjustment to a quote line item.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Select Quotes > All and select the quote that want to work with.
3. Select the Pricing Adjustment tab.
4. Select the price adjustment line item that you want to update.
5. Make the pricing adjustment.
6. Select Save.
The pricing adjustment is updated and reflected on the overall quote pricing field.
Initiate a contract request
Initiate a contract request from the Quote Management application.

Before you begin

Role required: sales_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
About this task

You can create a legal sales contract to finalize a deal and formalist the agreements with your
customer.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Select Quotes > All.
3. Select the quote in the Completed state for which you want to create a contract.
4. Select the More Actions

menu and select Initiate contract.

5. On the form, fill in the fields.

Field

Description

Type of paper

Type of paper to be used in the contract.
Select Own paper.

Contract type

Type of contract to be generated. Select
Sales Contract. If you want to generate a
different type of document, select Other
types of contract.

Signature type

Type of signature to do to complete the
contract.
◦ Electronic signature: You sign the
document through electronic medium.
◦ Wet signature: You download the
document and sign it manually.

Start date

Date that the contract begins.

End date

Date that the contract ends.

Note: The End date must be later than
the Start date.

6. Select Initiate.
A contract management request is generated in the Contract documents tab. Select the record
to view the document.
View an existing quote
View existing quotes to update the quote status or make other changes.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Select Quotes > All.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
◦ All Quote- shows all the quotes in the instance.
◦ My Quotes- shows your quotes.
◦ My Teams Quote- shows the team quotes.
3. Select the quote that you’re working with.
4. Make updates to the quote as needed.
5. Select Save.
Export quotes
Export a list of all quotes in Quote Management and provide it to a customer.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select Export.
4. Select the File Type to be exported:
◦ Excel
◦ CSV
◦ JSON
◦ PDF
5. Select the Delivery Type:
◦ Email - Enter a valid email address.
◦ Download - Downloads the export to a local drive.
6. Select Export.
The list of quotes is exported according to the parameters set.
Enable a sales agreement in a quote
Agents can enable a sales agreement for a quote. Once enabled in Quote Management, sales
agreements are generated that show the product and service lines and other relevant details for
the quote.

Before you begin

Role required: pricelist_manager and sales_manager

About this task

A sales agreement is a document that outlines the terms and conditions of a sale between a
seller and a buyer.
The agreement specifies the details of the transaction including the goods or services being
sold, the price, the quantities, delivery terms, and any other relevant conditions, for a specific
period.
Sales agreements filter the product catalog according to the agreement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quote > All-Quotes and select New.
3. Add quote details to the quote and select Enable sales agreement quote.
When the Enable sales agreement quote is selected, the quote is set on a sales agreement
workflow. See Using Sales Agreement Management for more information.
4. Fill in the Sales agreement start date and Sales agreement end date.
5. Select Save.
6. Use the Catalog tab to add quote line items to the quote.
See Add products to a quote for more information.
7. Make other updates to the quote.
8. Once the quote is ready, select Submit for approval.
9. When the quote is at an Approved state, change the quote to Completed by either updating
the State field or selecting the context menu
and choosing Mark as complete.
The quote is saved to a Completed state and the Create sales agreement button appears in
the quote details form.
10. Select Create sales agreement.
A sales agreement is created. The message displays the sales agreement number.
11. Select the sales agreement message to open the sales agreement.
Sync a quote with an opportunity
Agents can sync quote information with an opportunity to ensure that information is consistent
between both applications in Quote Management.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quote > All-Quotes and select a quote that you want to sync with an opportunity.
3. In the Details tab of the quote, go to the Source Opportunity option and choose the
opportunity you want to sync with.
4. Select Save.
The Enable sync button is enabled.
5. Select the Enable Sync option.
Current Information and future changes to the quote are automatically synced. The following
areas show the sync status.
◦ The Sync check box shows that the quote is synced.
◦ The Sync flag on the secondary header changes to Yes.
◦ The Synced column in the Quotes related list on the Opportunity record shows Yes when
sync is activated and No when the quote isn’t synced.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
6. Turn off automatic sync by selecting the Disable sync button.

Note: When sync is enabled, the following conditions occur:
◦ No changes can be made to that opportunity (for example, adding line items, changing
quantities).
◦ Additional changes should be made to the quote record.
◦ The opportunity record is updated asynchronously with the latest product offerings and
prices that are added to the quote.
◦ The synced opportunity state changes to closed when the quote is marked as
complete
Add covered products to a quote
Add a covered product to line items in a quote in Quote Management.

Before you begin

Role required: sales_agent or sales_manager

About this task

Covered products are products that are added to a warranty or entitlement. Once you add a
warranty or entitlement to your quote line items, the covered product option becomes available.
When converting quotes to orders, the covered product relationships are transferred from the
quote to order.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quote > All and select a quote to which a covered product is to be added.
3. From the Quote line items tab, select the quote line item.
4. Select More > Covered product.
5. In the Covered Product tab, select New.
6. In the Create New Covered Product form, select the covered product line item you want to
add.
There are three types of covered products types that you can add to a line item:
Covered product type

Description

Covered quote line item

Select a quote line item to be added as a cov­
ered product.

Covered sold product

Select a covered sold product to be added as
a covered product.

Covered install base item

Add an install base item as a covered prod­
uct.

7. Select Save.
8. On the quote line item page, select the contract start date and the contract end date.
9. Change the state to Complete.
A contract is created with the contract details for the order line.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
Filter catalogs by location in a quote
Use the location filter on the Catalog tab to filter products by location in Quote Management.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select the quote that you’re working with.
4. Select the Catalog tab.
5. In the Select a location field, choose a location.

The products in the catalog are filtered according to the selected location.
Copy locations for quote line items
Use the copy location function to change the location of multiple quote line items in Quote
Management.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All
3. Select the quote to work on and select the Line Items tab.
4. Select one or more quote line items that you want to copy to another location.
5. Select Copy.
6. In the Copy line items dialog box, choose one of the options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
Option

Description

Keep original location

Line items for the selected quote are created
and the source location is retained.
This action copies the quote line items to a
new location.

Choose new location

In the Service location filter, select the new
location that you want the line items to be
copied to.

Note: Be sure to select Continue to copy only eligible lines for this location (exclude
ineligible) in the Copy line items dialog box.

This selection copies the eligible line items to your preferred location and skips the line
items that aren’t eligible. If the option isn't selected, no quote line items are copied if any
line item is ineligible.
7. Select Copy.
Create a quote PDF document
In Quote Management, sales agents can create a PDF of a quote that can be sent to customers
for review and signatures.

Before you begin

Role required: sales_agent

About this task

https://player.vimeo.com/video/1098616753?
h=1be5725ef1&badge=0&autopause=0&player_id=0&app_id=58479

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select the quote that you’re working with.
4. On the Details tab, go to Quote Document Details and fill in the fields.
Option

Description

Document template

A document template is required to create
a quote document PDF. A standardized tem­
plate is included with the base system. Select
the template that you want. See Set up PDF
document templates for more information
about how to create customized templates.

External signer

Option that enables you to have the quote
document signed by someone outside the or­
ganization. See Set up PDF document sign­
ers for more details on how to set up external
signers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
Option

Description

When you select Send for signature, the ex­
ternal signer's email address is used to send
an email through Docusign for review and
electronic signature.
Option that lets you select an internal signer
for the quote.
When you select Send for signature, the in­
ternal signer's email address is used to send
an email using Docusign for review and signa­
ture.

Internal signer

See Set up PDF document signers for more
details about how to set up an internal signer.
5. Select Save.
6. In the Quote form, select Generate Document.
The PDF document is generated and appears in the Attachment side window.
7. Select the attachment icon to
8. Select the actions icon

open the attachments window.

and choose an action for your PDF document.

Choice

Description

Download

Agents can download a document that en­
ables them to send is a different way.

Remove

This option deletes the document.

Rename

This choice enables agents to rename the
document.

Send for signature

Agents use this option to send the document
for signatures. The document is sent to the
signers indicated on the Quote details tab un­
der Quote document.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
A message appears indicating that the PDF document was generated.
9. To view the generated PDF, select the PDF in the attachments

window.
View a quote PDF document
Agents can view quote documents in the PDF viewer window. The PDF viewer window has
controls that enable agents to manage the PDF.

Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select the quote that you’re working with.
4. In the Attachments window, select the PDF document to open

it.
The PDF document opens in the PDF viewer.
5. Use the PDF viewer controls to manage the PDF.
Use hierarchical list view for quote line items
Sales agents can view quote line items as a hierarchical list, which helps to view the parent and
child relationship between line items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
Before you begin

Role required: sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All.
3. Select the quote that you’re working with and open the Line items tab.
4. Use the control to manage the line items.

Control

Description

Caret

Opens the hierarchical list view showing the child line items.

Pencil

Make additional configuration changes to the products in the line item.

Number

Shows the number of child line items contained in the parent line item.

Filter
Toggle

Filters line items.
Toggles between hierarchical view and standard view.

Using Customer Contracts and Entitlements
Learn how consumers, managers, agents, and administrators use the Customer Contracts and
Entitlements application to generate service contracts and contract lines to work on the services.
Service contracts, service contract lines, and entitlements can be created in the following ways:
• Via workflows: You can create service contracts, service contract lines, and entitlements by
using the contracts and entitlements workflow. For more information, see Creating contracts
and entitlements using workflows.

Note: When a service contract line or entitlement is created via the Sales and Order
Management workflow, the account/consumer/household details are copied from the
sold product and it inherits the state of the sold product. Further, when the state of the
contract line changes, the same state is synced back to the parent sold product.
• Via API integrations:
◦ Service Contract API
◦ Entitlement API
Using Contracts and Entitlements Workflows
Learn how contracts and entitlements using workflows enable you to create and manage service
contracts, service contract lines, and entitlements.
You can manage the life cycle of customer service contracts and entitlements from offer creation
to contract generation using contracts and entitlements workflows. Using workflows you can
suspend, resume, cancel, and renew multiple entities at once. You can also perform the following
functions using workflows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
• Create, suspend, resume, cancel, and renew service contracts.
• Create, modify, suspend, resume, cancel, and renew service contract lines, and entitlements.

Automatic renewal of service contracts
While creating service contracts from quote or orders, you can select the Auto-renew contract
option on a quote or order to automatically renew the contracts. When you add or delete a
contract line from these service contracts, the renewed quotes and opportunities are updated.
You can configure the auto-renewal date of the contract in the Customer Life Cycle Workflows
Policy decision table. By default, you can choose to initiate the auto-renewal 90, 60, or 30 days
before the contract end date, or on the contract creation date. For more info, see Creating
contracts and entitlements using workflows.
Automatic renewal for service contracts on quotes

In the Renewal adjustment basis field, you can select List price or Contracted price. Selecting
List price renews the contract at the market price of the contract at the time of the renewal date.
Renewal adjustment basis

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
Selecting Contracted price gives you the option to renew the contract at Markdown % or Markup
% of the current contract price. For example, if you select Markup % field and you enter 10 in
Renewal adjustment value, the service contract is renewed at 10% above the current contract
price.
Renewal adjustment type

That exact renewal date and the renewal adjustments for that service contract will be visible on
the service contract form in the Auto renewal date field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Automatic renewal of service contracts

You cannot modify the renewal adjustment fields on the service contract. You can only modify
the renewal adjustment values on the quote and orders.

Updating contract end date
During quote processing, the system alerts you when the contract end date is exceeding the
product offering end date. When you submit quotes for approval, a dialog box appears alerting
you. You can select the option update contract end dates to match offering end dates to match
the contract end date to the product offering end date.
Matching the contract and product offering end dates

If you do not select this option and approve the quote, the contract end date remains the same.

Co-terminate quote lines
You can assign the same start and end dates to multiple quote lines while creating or renewing
a quote. On the Line items tab on the quote details page, select multiple quote lines and then
select Co-terminate. All the selected quote lines have the same start and end date.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
Co-terminate quote lines

Viewing price ramps
Customers can scale their purchases by adjusting the pricing and quantity throughout the
contract or subscription term by using Ramps feature. For more info, see Add price ramps on a
quote line item. You can view the price ramp details on the contract line. Only the active price
ramp segment is displayed on the contract line. Select a contract line and select Ramps to
view all the details of the price ramp for that contract line. You can view start and end date, term
period, ramp type (yearly or quarterly), ramp segments, and Annual percentage increase (API%).
Suspend a service contract
Suspend a service contract and its child service contract lines by creating an order on the CSM
Configurable Workspace. Suspending a service contract suspends or disables the services
specified in that service contract.

Before you begin

You can suspend a service contract when at least one of the associated root sold products is
in Active state. For product inventory records, you can suspend a service contract when the
associated product inventory record is in Active state.

Note: If you don’t create a resume order, the service contract is indefinitely suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Suspend.
5. In the Suspend service contract window, enter the period of suspension for the service
contract in the Start date and time and End date and time fields.

Note: If you do not enter a value in the End date and time field, the service contract is
suspended indefinitely. You can resume the service contract manually. For more info, see
Resume a service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
6. Add a reason for a suspension in the Reason for suspension field.
7. Select Suspend.
An order with the suspend action is created for that service contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

Result

With the service contract, all the associated service contract lines and entitlements are also
suspended. However, the service contract stays in the current state. If you specify an end
date and time, a resume order line item is created as a part of the same order. After this period
of suspension, the service contract and all its associated child service contract lines and
entitlement will be in Active or Draft state again. After the end date of the service contract, the
suspended service contract and all its associated child service contract lines and entitlement
move to Expired state.
Modify a service contract
Modify a service contract so that you can update its existing configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Modify all lines to modify the service contract.
5. On the Configurator UI, modify the existing configurations for the service contract line.
To learn more about the Configurator UI, see Exploring Sales and Order Management.

Note: The Configurator UI is displayed only if the service contract has a single service
contract line. For multiple service contract lines, a quote or an order will be created with
contract lines in Draft or Active state.
6. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the service contract is created. You
can select the quote number from the confirmation message to view the modified quote line
items. The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the service contract is created. You
can click the order number from the confirmation message to view the modified order line
items.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
Resume a service contract
Resume a service contract and its child service contract lines by creating an order on the
CSM Configurable Workspace. By resuming a service contract, you are restarting the services
specified in that service contract.

Before you begin

You can resume a service contract when at least one of the associated root sold product is in
Inactive, Canceled, or Suspended state. For product inventory records, you can resume a service
contract when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Resume.
5. In the Resume service contract window, in the Start date and time field, enter when you want
to resume the service contract.
6. Add a reason for a resuming the service contract in the Reason for resumption field.
7. Select Resume.
An order for resuming the service contract is created.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

Result

The service contract and all its associated child contract lines and entitlements are back in
Active or Draft state, depending on the start date of the respective entity.
Renew a service contract
Renew a service contract on the CSM Configurable Workspace before the service contract
expires.

Before you begin

You cannot renew a service contract when it is in Canceled state or it does not have an end date.
The order processing for product inventory based contracts are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.
Role required:
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Renew.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the service contract is created. You
can select the quote number from the confirmation message to review the renewal quote.
After the quote is approved and the status is updated to Complete, an order is created for
further processing.
◦ If the selected target entity is an order, an order to renew the service contract is created. You
can select the order number from the confirmation message to review the renewal order.
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
5. After the order line items are fulfilled, set the status to Completed.
A new service contract is created.

Result

A new service contract is created in the Draft state. You can view more details in the Renewal
History related list.
Cancel a service contract
Create an order to cancel a service contract and its child service contract lines on the CSM
Configurable Workspace. By canceling a service contract, you are terminating the services
specified in that service contract.

Before you begin

You can cancel a service contract when at least one of the associated root sold product is in
Active or Suspended state. For product inventory records, you can cancel a service contract
when the associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Cancel.
All the associated service contract lines and entitlements will also be cancelled and will be set
to the Cancelled state.
5. In the Cancel service contract window, in the Start date and time field, enter the date when the
service contract will be cancelled.
6. Add a reason for a cancellation in the Reason for cancellation field.
7. Select Cancel.
An order with the cancel action is created for that service contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
Result

With the service contract, all the associated service contract lines and entitlements are also
cancelled and will be in Cancelled state.
Suspend a service contract line
Suspend a service contract line and its child service contract lines by creating an order on the
CSM Configurable Workspace. By suspending a service contract line, you are suspending or
disabling the services and characteristics associated with that service contract line.

About this task
Before you begin

You can suspend a service contract line when the associated root sold product is in Active state.
For product inventory records, you can suspend a service contract line when the associated
product inventory record is in Active state.

Note: If you don’t create a resume order, the service contract line is indefinitely
suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select the service contract line from the service contract lines related list, that you want to
suspend.
5. Select Suspend.
6. In the Suspend service contract line window, enter the period of suspension for the service
contract line in the Start date and time and the End date and time field.

Note: If you do not enter a value in the End date and time, the service contract line
will be suspended. You can manually resume the service contract by using the resume
option. For more info, see Resume a service contract line
7. Add a reason for a suspension in the Reason for suspension field.
8. Select Suspend.
An order with the suspend action is created for that service contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.

Result

With the service contract line, all the associated entities in the hierarchy are also suspended. If
you specify an end date and time, a resume order line item is created as a part of the same order.
After this period of suspension, the service contract line will be in Active state again. After the
end date of the service contract, the suspended service contract line and all its associated child
service contract lines and entitlement move to Expired state.
Modify a service contract line
Modify a service contract line so that you can update its existing configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. In the service contract lines related list, select one ore more service contract line that you want
to modify the characteristics and line items for.
5. Select Modify to modify the selected service contract lines.
6. On the Configurator UI, modify the existing configurations for the service contract line.
To learn more about the Configurator UI, see Exploring Sales and Order Management.

Note: The Configurator UI is displayed only if you select a single service contract line. If
you selected multiple service contract lines, the order or quote created is displayed.
7. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the service contract line is created.
You can click the quote number from the confirmation message to view the modified quote
line items. The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the service contract line is created.
You can click the order number from the confirmation message to view the modified order
line items.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.
Resume a service contract line
Create an order to resume a service contract line and its child service contract lines on the CSM
Configurable Workspace. By resuming a service contract line, you are restarting the services
specified in that service contract line.

Before you begin

You can resume a service contract line when the associated root sold product is in Inactive,
Cancelled, or Suspended state. For product inventory records, you can resume a service
contract line when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
4. In the service contract lines related list, select the service contract line that you want to
resume.
5. Select Resume.
6. In the Resume service contract line window, in the Start date and time field, enter when you
want to resume the service contract line.
7. Add a reason for a resuming the service contract line in the Reason for resumption field.
8. Select Resume.
An order for resuming the service contract line is created.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.

Result

With the service contract line, all the associated entities in the hierarchy are also back in Active
or Draft state, depending on the start date of the respective entity.
Renew a service contract line
Renew a service contract line on the CSM Configurable Workspace. You can renew the services
specified in the service contract line and its associated child service contract lines and
entitlements.

About this task

You cannot renew a service contract line when it is in Canceled state or it does not have an end
date.
The order processing for product inventory based contract lines are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, navigate to Contracts and Entitlements > Service Contracts.
3. In the service contract lists, select the service contract that you want to renew.
4. In the service contract lines related list, select the service contract line that you want to
resume.
5. Select Renew.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the service contract line is created.
You can select the quote number from the confirmation message to review the renewal
quote. After the quote is approved and the status is updated to Complete, an order is
created for further processing.
◦ If the selected target entity is an order, an order to renew the service contract line is created.
You can select the order number from the confirmation message to review the renewal order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
6. Perform an early or late renewal on the service contract line.
In early renewal, users can terminate the contract before the expiry date and create a new
contract with the desired start date. For late renewal, users can renew expired contracts that
are not renewed.
◦ Select a date before the contract expiry date in the Renew from field to perform an early
renewal. Two quote or order line items are created. One change order or quote line is
created with the modified expiry date of the current service contract line. A new renewal
quote or order line is created is created with the new start date.
◦ For an expired contract line, enter a new date to renew the service contract line in the Start
from field. A new renewal quote or order line is created with a new start date.
7. After the line items are fulfilled, set the status to Completed.
A new service contract line is created.

Result

The new service contract line is created with the renewed contract line in the Draft state. You can
view the new renewal line items in the Renewal History related list.
Cancel a service contract line
Create an order to cancel a service contract line and its child service contract lines on the CSM
Configurable Workspace. By canceling a service contract line, you are canceling or disabling the
services and characteristics associated with that service contract line.

Before you begin

You can cancel a service contract line when the associated root sold product is in Active or
Suspended state. For product inventory records, you can cancel a service contract line when the
associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. In the service contract, select the service contract line from the service contract lines related
list, that you want to cancel.
5. Select Cancel.
6. In the Cancel service contract line window, in the Start date and time field, enter the date
when the service contract line will be disabled.
7. Add a reason for a cancellation in the Reason for cancellation field.
8. Select Cancel.
An order with the cancel action is created for that service contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
Result

With the service contract line, all the associated entities in the hierarchy are also cancelled and
move to Cancelled state.
Upsell or Downsell a service contract line
Upsell or downsell a service contract line on the CSM Configurable Workspace. You can reduce
or increase the quantities of the products specified in the service contract line.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, navigate to Contracts and Entitlements > Service Contracts.
3. In the service contract lists, select the service contract that you want to update.
4. In the service contract lines related list, select one or more service contract lines that you want
to modify.
5. From the Modify entire line list, select Modify quantity.
6. In the Modify quantity dialog box, you can swap the values
fully or partially in the Quantity field for both the contract

lines.
For example, if one product has a quantity of 100 and another has 30, you can perform either
a full swap or a partial swap. In the screenshot above, a full swap is completed by updating
the Quantity field of the first contract line to 130 (adding the 30 units from the second line)
and setting the second contract line’s quantity to 0. The Change field reflects the change in
quantity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
You can also perform a partial swap. For instance, you can update the second contract line
from 30 to 20, and add the remaining 10 units to the first contract line, increasing it from 100 to
110.
7. Select the start date of the new service contract line from the Effective from field.
8. Select Modify.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ In case of a partial swap, three quote lines are created. You can select the quote number
from the confirmation message to view the quote line items. The quote is approved and the
status changes to Complete to create an order with three order line items.
◦ In case of a full swap, two quote lines are created. You can select the quote number from the
confirmation message to view the quote line items. The quote is approved and the status
changes to Complete to create an order with two order line items.
9. In the Line Items related list, select the State value of the parent order lines and set them to
Completed.
In case of partial swap, two new service contract lines with the modified quantities are created
with the Start date as the Effective from date. The end date of the existing contract line is
updated. In case of full swap, one new service contract line with the modified quantity is
created with the Start date as the Effective from date. The end date of the existing contract
line is updated.

Note: You can perform a partial or a full swap with a new product from the catalog by
following the same procedure.
Modify an entitlement
Modify an entitlement associated to an account so that you can update its existing
configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to modify the
characteristics for.
5. Select Modify.

Note: You can only modify entitlements associated with an account. You cannot modify
entitlements associated to service contract lines.
6. On the Configurator UI, modify the existing configurations for the selected entitlement.
To learn more about the Configurator UI, see Exploring Sales and Order Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
7. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the entitlement is created. You can
click the quote number from the confirmation message to view the modified quote line items.
The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the entitlement is created. You can
click the order number from the confirmation message to view the modified order line items.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.
Suspend an entitlement
Suspend an entitlement by creating an order on the CSM Configurable Workspace. By
suspending an entitlement, you are suspending or disabling the services and characteristics
associated with that entitlement.

Before you begin

You can suspend an entitlement when the associated root sold product is in Active state. For
product inventory records, you can suspend an entitlement when the associated product
inventory record is in Active state.

Note: You can only suspend entitlements associated with an account. You cannot
suspend entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to suspend.
5. Select Suspend.
6. In the Suspend entitlement window, enter the period of suspension for the entitlement in the
Start date and time and the End date and time field.

Note: If you do not enter a value in the End date and time, the entitlement will be
suspended You can resume the entitlement manually by using the resume option. For
more info, see Resume an entitlement.
7. Add a reason for a suspension in the Reason for suspension field.
8. Select Suspend.
An order with the suspend action is created for that entitlement.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Result

If you specify an end date and time, a resume order line item is created as a part of the same
order. After this period of suspension, the entitlement will be in Active state again. After the end
date of the entitlement, the suspended entitlement will move to Expired state.
Resume an entitlement
Resume an entitlement by creating an order on the CSM Configurable Workspace. By resuming
an entitlement, you are restarting the services and the characteristics specified in that
entitlement.

Before you begin

You can resume an entitlement when the associated root sold product is in Inactive, Cancelled,
or Suspended state. For product inventory records, you can resume an entitlement when the
associated product inventory record is in Suspended state.

Note: You can only resume entitlements associated with an account. You cannot resume
entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to resume.
5. Select Resume.
6. In the Resume entitlement window, in the Start date and time field, enter when you want to
resume the entitlement.
7. Add a reason for a resuming the entitlement in the Reason for resumption field.
8. Select Resume.
An order for resuming the entitlement is created.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

Result

The entitlement is back in Active or Draft state, based on the start date of the entitlement.
Renew an entitlement
Renew an entitlement on the CSM Configurable Workspace.

Before you begin

You cannot renew an entitlement when it is in Canceled state or it does not have an end date.
The order processing for product inventory based entitlements are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.
Role required:
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to renew.
5. Select Renew.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the entitlement is created. You can
select the quote number from the confirmation message to review the renewal quote. After
the quote is approved and the status is updated to Complete, an order is created for further
processing.
◦ If the selected target entity is an order, an order to renew the entitlement is created. You can
select the order number from the confirmation message to review the renewal order.
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
6. After the order line items are fulfilled, set the status to Completed.
A new entitlement is created.

Result

The new entitlement is created in the Draft state. You can see more details in the Renewal History
related list.
Cancel an entitlement
Cancel an entitlement by creating an order on the CSM Configurable Workspace. By canceling
an entitlement, you are canceling or disabling the services and characteristics associated with
that entitlement.

Before you begin

You can cancel an entitlement when the associated root sold product is in Active or Suspended
state. For product inventory records, you can cancel an entitlement when the associated product
inventory record is in Active or Suspended state.

Note: You can only cancel entitlements associated with an account. You cannot cancel
entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to cancel.
5. Select Cancel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
6. In the Cancel entitlement window, in the Start date and time field, enter the date when the
entitlement will be disabled.
7. Add a reason for a cancellation in the Reason for cancellation field.
8. Select Cancel.
An order with the cancel action is created for that entitlement.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

Result

The entitlement is permanently cancelled and will move to Cancelled state.
Add contract lines to a service contract
Add one or more contract lines to a service contract on the CSM Configurable Workspace.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract to add
more contract lines.
4. On the Service Contract form, select New.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to create new service contract line is created.
◦ If the selected target entity is an order, an order to create new service contract line is
created.
◦ If the selected target entity is an opportunity, an opportunity to create a new service contract
line is created.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
create the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
The Existing contract field will refer the current service contract. All the other fields like
Contract start date, Contract end date, and contract renewal fields will be auto-populated with
the current contract details.
5. In the Catalog tab, add products to the new quote or order that is created.
For more info, see Add products to a quote.
6. Select Submit for approval.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
On the Service Contract Line related list, a new service contract line is created and added.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
Result

The new service contract line is added to the contract and is visible on the selected target entity.
Add Covered Products using Contracts and Entitlement Workflow
Covered products refers to specific products or order line items that are included in a service
contract. These items are linked to the contract to define what is covered for service or
maintenance. Covered products can be directly tracked through the contract records, facilitating
changes and visibility of what is covered.
Agents in Order management can select the products to be covered by a contract when the
order is captured for the contract offering. To manually associate a covered product with a
contract line, see the Add covered products to order line items
You can also modify the covered products added to a contract line. You can add new covered
products to that contract line or entitlement and remove the existing covered products.
Add a sold product or install base item to a service contract
Add the sold products or the install base items covered to service contracts, contract lines, or
entitlements.

Before you begin

Role required: sn_customerservice_manager

About this task

Sold products are products and components that have been sold to an account or a consumer
and can have multiple contracts. An install base item is an instance of sold product that has
been provisioned for an account or consumer.
Associating sold products or install base items to a Customer Contracts and Entitlements entity
helps keep a track of the products or install base items that are serviced to a customer under that
entity.
A sold product or an install base item can be added to a Customer Contracts and Entitlements
entity in the Draft, Active, or Suspended states.

Note: If an entity is deleted, the related sold product or install base item covered is also
deleted.

Procedure
1. Navigate to the ServiceNow AI Platform interface or the CSM Configurable Workspace.
Interface

Action

ServiceNow AI Platform interface

Navigate to All > Customer Service > Con­
tracts and Entitlements.

CSM Configurable Workspace

◦ Navigate to All > Workspace Experience
> Workspaces > CSM Configurable Work­
space.
◦ In the list view, navigate to Contracts and
Entitlements.

2. Add the sold product or install base item covered to service contracts, contract lines, or
entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
Add to

Procedure

a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform
Service Contracts

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that you want to
add the sold product or install base item to.
c. From the Products Covered or Install Base
Items Covered related list, select New.
a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that has the re­
quired contract line.
Service Contract Lines

c. From the Service Contract Lines related list,
select the contract line that you want to add
the sold product or install base item cov­
ered to.
d. From the Sold Product Covered or Install
Base Items Covered related list, select
New.

Note: When a sold product or an in­
stall base item covered is added to a
contract line, it's not added to the relat­
ed entitlements.
a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform
Entitlements

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that has the re­
quired contract line.
c. From the Service Contract Lines related
list, select the contract line that has the re­
quired entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
Add to

Procedure

d. From the Entitlements related list, select
the entitlement that you want to add the
sold product or install base item to.
e. From the Sold Product Covered or Install
Base Items Covered related list, select
New.
You can also directly navigate to Entitlements
form as follows:
a. In the list view, navigate to Contracts and
Entitlements > Entitlements.

Note: In the ServiceNow AI Platform
interface, select Entitlements in the
navigation menu.

b. Select the entitlement that the sold product
or install base item must be added to.
c. From the Sold Product Covered or Install
Base Items Covered related list, select
New.

Note:
◦ You can either add a sold product or an install base item to the Customer Contracts
and Entitlements entity.
◦ The state of the entity shouldn't be Expired or Cancelled.
3. On the Sold Product Covered form, fill in the fields.
For a description of the field values, see Sold product form

.

4. Select Submit.
Record the usage on the entitlement
Record the consumption or usages made out of the total characteristic quantities allotted for an
entitlement.

Before you begin

Role required: sn_customerservice_manager, sn_customerservice_agent and
sn_customerservice.consumer_agent

About this task

When an entitlement moves to the Active state, usage records are created. You can update
the usage records on the basis of units or quantities used as and when the customer uses the
services. For example, if a characteristic includes 50 visits to the customer, then the Total units
field displays 50 and the Used units field is updated after each visit. Managers can create and
update usage records for an entitlement but agents can only update the Used units field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
Procedure
1. Navigate to the ServiceNow AI Platform interface or the CSM Configurable Workspace.
Interface

Action

Platform interface

Navigate to All > Customer Service > Con­
tracts and Entitlements > Service Contracts.

CSM Configurable Workspace

◦ Navigate to All > Workspace Experience
> Workspaces > CSM Configurable Work­
space.
◦ In the list view, navigate to Contracts and
Entitlements > Entitlements.

2. Record the usage on an entitlement.
From

Do this

a. Select the contract that has the entitlement
that you want to track the usage on.

Service Contracts

b. From the Service Contract Lines related list,
select the contract line that has the entitle­
ment.
c. From the Entitlements related list, select
the entitlement.
d. From the Entitlement Usages related list,
open the usage record.

Entitlements

a. Select the entitlement that you want to
track the usage on.
b. From the Entitlement Usages related list,
open the usage record.

3. On the Entitlement Usage form, fill in the Used units field.
4. Select Update.
5. On the Entitlement page, select Update to save the entitlement.
If you have used the Service Contracts menu to record the usage, then select Update to save
the contract line and then the service contract.

Using Sales Agreement Management
Learn how managers, agents, and administrators use the Sales Agreement Management
application to generate sales agreements from quotes.
To create a sales agreement from a quote, the following conditions must be met:
• Make sure that the selected quote is not converted to another sales agreement. You cannot
create multiple sales agreements from a single quote.
• The quote is in a closed or complete state.
• A sales agreement can be created from a quote that is for an account, not a consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
The Sales agreement window has the following tabs that help you create and manage your sales
agreement.
Sales agreement tabs
Sales agreement tabs

Description

Details

Details of the related quote, start and end date of the
agreement, and so on.

Sales Agreement Line

Details about the product and the services agreed
between the buyer and the seller.

Order

Displays the list of all the orders placed with the current
sales agreement.

Price List

Details about the account and currency that is updated
from quote header. In the Price List Line table, you can
view the actual pricing details about the products and
services from the related quote.

Create a sales agreement
Create a sales agreement from a quote between a buyer and a seller for future transactions.

Before you begin

Role required: sn_csm_pricing.pricelist_manager and sn_sales_common.sales_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quote > All-Quotes and select the quote to enable a new sales agreement.
3. Select Enable sales agreement quote.
After the sales agreement is created, a message displays the sales agreement number. The
request tracker enables agents to monitor the progress of sales agreements creation. All the
information on the sales agreement is captured from the selected quote.
For more information, see Enable a sales agreement in a quote.
4. Select the sales agreement number.
The new sales agreement is displayed. The price list created for this new sales agreement is
referred in the Default price list field.

What to do next

An order can be placed in the Order Management application based on a sales agreement. For
more info, see Add a sales agreement to an order in Order Management.

Using ServiceNow CPQ
Use ServiceNow CPQ to configure complex products, apply dynamic rules, and generate
accurate quotes with speed and precision. You can understand how the CPQ experience works
end-to-end—from guided configuration and real-time pricing to document generation and
seamless integration with the rules engine.
Setting the number format of an editable field
Learn how to create a user-editable field that maintains a specified format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
If an Admin wants to display a number field to an end user in a certain format, but also allow
users to edit that field, a solution is to set the display type of the field to be a formatted number.

Currently, the only way to use number formatting on editable fields is to set this component
display type from in the layout CSV itself. Once exported and opened with your preferred CSV
editor (excel in this example) you can add the following to your fieldʼs row:
• FormattedNumber to column F (Component display type)
• format: {...} to column I (value)

Once this is saved, you can drag this layout CSV into the layout editor window, and it will replace
the current layout. You can check that this change was done from both the Edit Field Info tab of
the layout editor, where the display type will be blank:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
And from the Arrange Layout Tab, where the field properties of your number field will have your
inputted format in the Raw Value section:

After saving and deploying the Blueprint, you should get a similar result to the screenshot at the
top of this page. Other formatting options are listed below:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
{
"format": {
"type": "currency" | "percent" | "unit" | "decimal",
"precision": 2, // Any positive integer
"unit": Unit, // List of standard JS units, i18n supported
"customUnit": string, // Any unit to append to the end of the
value, untranslated
"displayZeroPriceAs": string,
"displayNullPriceAs": string
}
}
Percent formatting automatically multiplies by 100. So a field value of 0.1 will display as 10% .
You can show only a percent sign with no math using type: unit, unit: percent.
®

To view a list of supported units, see ECMAScript 2026 Internationalization API Specification

.

You can use customUnit for units not in this list.
Document generation
You can use third-party document generation software to output configuration data by pushing
information from ServiceNow CPQ to Salesforce.
Document generation allows you to create professionally formatted documents using a library
of customizable templates. Document generation software directly interfaces with your CRM
and associated tools and packages (such as CPQ and Billing tools) to output relevant data. For
example, you can send a customer a quote document with billing and shipping details, product
and pricing information, and so on. These documents can then be submitted to their intended
recipient, sometimes with the option for electronic signatures.

Prerequisites
ServiceNow CPQ does not directly interface with any document generation tools; however,
ServiceNow CPQ configuration information can be pushed to Salesforce and used in documents
from there. This can be accomplished by enabling Push Config Data to Logik Salesforce Object
in the Admin Settings if you have not done so already; this will create the Configuration Field
Data and Configuration Line Items objects in Salesforce and generate records containing
ServiceNow CPQ configuration data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


<!-- page 989 -->
Using the Salesforce CPQ document generator
In order to display ServiceNow CPQ configuration data in out-of-the-box Salesforce CPQ
quote documents, you must first map the data from your Configuration Line Itemsʼ extended
info to custom fields on their associated quote lines. This can be accomplished by using the
configuration line item to quote line” flow that is included with ServiceNow CPQ. For more
information, see Use case: Configuration line item to quote line flow
Once these fields are populating on your quote lines, they can be used as line columns
to be
displayed in your CPQ line items template content. These fields can also be utilized in other CPQ
quote template fields , such as the group and subgroup fields, to further customize your quote
documents.

Using a third-party document generator
Third-party document generators include Conga Composer, DocuSign Gen, PDF Butler, and
others. Most third-party document generation tools let you use merge fields to pull data directly
from any Salesforce object, including the Configuration Field Data and Configuration Line Items
objects. This means you can use your document generator's merge fields to display ServiceNow
CPQ configuration data in your quote documents directly from those objects instead of mapping
all of your data to fields on the Quote Line object. This provides additional layers of flexibility. For
example, ServiceNow CPQ configuration data can be displayed in separate tables or used for
grouping or organizing your data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
Use cases
View a list of example use cases for ServiceNow CPQ.
Use case: Embed ServiceNow CPQ UI in an HTML page
Learn how to embed the ServiceNow CPQ user interface in an HTML iFrame.
This article provides an outline for how an admin can display the ServiceNow CPQ UI in an iframe
in any HTML page. Briefly, the recipe consists of:
• the data that the host application will pass to the host HTML page, as JSON
• the host HTML page
• the Content Security Policy [CSP] settings, adjusted on the ServiceNow CPQ server

Configuration initialization JSON data format
To initialize the configuration, pass basic field data to the page. Here are the parameters that you
can pass, represented in pretty JSON format:
{
"runtimeToken": "...",
"quote": {
"SBQQ__PricebookId__c": "...",
"LGK__QueriedEditAccess__c": "Active",
"LGK__FlightPath__c": "None"
},
"product": {
"configuredProductId": "...",
"configurationAttributes": {
"Logik__Id__c": null
},
"optionConfigurations": {
"Dynamic": []
}
},
"layoutVarName": "someLayoutVarName"
}
Replace the ellipses in the above JSON with the appropriate values from the ServiceNow CPQ
environment, pricebook, and product ID.
Sometimes, you may want to display a default layout that is not ordered first in the list of Blueprint
layouts. To designate a starting layout with which the ServiceNow CPQ configuration page
loads, pass "layoutVarName":"<variable name of the layout to show by
default>" in the topmost level of the JSON above.

The host HTML page
You will need to host the parent application. For security reasons, this application/host HTML
page cannot be localhost. The following sample HTML is a proxy for the host page in which you
intend to embed the ServiceNow CPQ UI. The page imports the easyXDM JavaScript library,
which facilitates communication with the ServiceNow CPQ UI. Then, easyXDM parses the JSON
input, transposes it, and passes the data to the ServiceNow CPQ page as a remote procedure
call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
To process data passed from the ServiceNow CPQ UI and leverage it on this HTML page, review
the values written to the browser console in the blue-colored console.log line of JavaScript
below. Advanced admins can leverage this data by adding more JavaScript in this area.
Replace the <BASE_LOGIK_URL> placeholder with the base URL of the ServiceNow CPQ
environment.
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,
initial-scale=1" />
<meta name="theme-color" content="#000000" />
<meta name="description" content="Logik Configuration
Wrapper" />
<title>Logik Wrapper</title>
<style>
iframe {
width:100%;
height:92vh;
}
</style>
<script type="text/javascript"
src="assets/js/easyXDM/2.5.0/easyXDM.min.js"
ssorigin="anonymous"></script>
<!-- easyXDM and Lightning for VF for passing config data
to/from Salesforce CPQ -->
<script type="text/javascript">
var rpc = new easyXDM.Rpc({
remote: "<BASE_LOGIK_URL>/ui/configure",
container: "root"
}, {
// method defined in ServiceNow CPQ
remote: {
postMessage: {}
},
local: {
postMessage: function (message) {
console.log("External Config JSON Received from iframe");
configObj = JSON.parse(message);
console.log(configObj);
}
}
});
var cfgData =
{"runtimeToken":"<PLACEHOLDER>","quote":{"SBQQ__PricebookId__c"
:"<PLACEHOLDER"},"LGK_QueriedEditAccess__c":"<PLACEHOLDER>","LGK
__FlightPath__c":"<PLACEHOLDER>"},"product":{"configuredProductI
d":"<PLACEHOLDER>","configurationAttributes":{"LGK__LOGIK_Id__c"
:""},"optionConfigurations":{"Dynamic":[]}},"layoutVarName":"<PL
ACEHOLDER>"};
console.log(JSON.stringify(cfgData));
rpc.postMessage(JSON.stringify(cfgData));
</script>
</head>
<body>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
<div id="root"></div>
</body>
</html>

Content security policy settings
To embed the ServiceNow CPQ application in an iframe, you must configure it to allow the host
application’s domain. Log a case with ServiceNow CPQ support, describe your intent to embed
ServiceNow CPQ UI in an HTML page, and request that your ServiceNow CPQ server CSP
settings be configured to accommodate the parent application’s domain URL.

The EasyXDM library
To learn more about the easyXDM library, see easy XDM.net

.

Use case: Embed ServiceNow CPQ UI in a Salesforce VisualForce page
Learn how to embed the ServiceNow CPQ user interface in a Salesforce VisualForce page.
This article outlines how to display the ServiceNow CPQ user interface on a Salesforce
VisualForce page, such as Salesforce B2B Commerce.

Prerequisite
This example requires the easyXDM library to be loaded into Salesforce [SFDC]. Navigation:
SFDC → Setup → Static Resources → New. Upload the https://drive.google.com/file/
d/1T0TqffMjlZcEjFke__Re23NdZ_1gWkaJ/view
file. For the purposes of thisexample, set the
resource name to ‘XDMFile1ʼ.
You must also set up your runtime client in the Logik Admin to have the origins for both your
Salesforce domain as well as your envrionment's custom ServiceNow CPQ URL

Configuration initialization data format
To initialize the configuration, basic field data needs to be passed to the page. Here are the
parameters that can be passed, represented in pretty JSON format:
{
"runtimeToken": "...",
"quote": {
"SBQQ__PricebookId__c": "...",
"LGK__QueriedEditAccess__c": "Active",
"LGK__FlightPath__c": "None"
},
"product": {
"configuredProductId": "...",
"configurationAttributes": {
"LGK__Logik_Id__c": null
},
"optionConfigurations": {
"Dynamic": []
}
},
"layoutVarName": "someLayoutVarName"
}
Replace the ellipses in the above JSON with the appropriate values from your ServiceNow CPQ
environment, pricebook, and productID.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
Note: The script is case-sensitive. Make sure that the capitalization exactly matches
the script. For example, if your script contains "LGK__Logik_Id__c": Null
(with a capital N) instead of "LGK__Logik_Id__c": null, it could result in a 403
Forbidden—you don't have permission to access this resource
error.

Display the default layout
Sometimes, you may want to display a specific default layout that is not ordered first in the list of
Blueprint layouts. To designate a specific starting layout with the ServiceNow CPQ configuration
page loads, pass "layoutVarName":"<variable name of the layout to show by default>" in the
topmost level of the JSON above.

The host VisualForce page
The following sample VisualForce code is a proxy for the host page in which you intend to embed
the Logik UI. Key components:
• The page imports the easyXDM Javascript library, which facilitates communication with the
Logik UI.
• easyXDM parses the JSON input, transposes it, and passes the data to the Logik page as a
remote procedure call.
Sample VisualForce page:
<apex:page>
<head>
<apex:includeScript value=”{!$Resource.XDMFile1}”/>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,
initial-scale=1" />
<meta name="theme-color" content="#000000" />
<meta
name="description"
content="Logik Configuration Wrapper"
/>
<title>Logik Wrapper</title>
<style>
iframe {
width:100%;
height:92vh;
}
</style>
<script type="text/javascript" src="{!$Resource.XDMFile1}"
crossorigin="anonymous">
</script>
<!-- easyXDM and Lightning for VF for passing config data
to/from Salesforce CPQ -->
<script type="text/javascript">
var rpc = new easyXDM.Rpc({
remote: "<BASE_LOGIK_URL>/ui/configure",
container: "root"
}, {
// method defined in Logik
remote: {
postMessage: {}
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
local: {
postMessage: function (message) {
console.log("External Config JSON Received from iframe");
configObj = JSON.parse(message);
console.log(configObj);
}
}
});
var cfgData =
{"runtimeToken":"<PLACEHOLDER>","quote":{"SBQQ__PricebookId__c
":"
<PLACEHOLDER>","LGK__QueriedEditAccess__c":"<PLACEHOLDER>","LGK_
_FlightPath__c":"
<PLACEHOLDER>"},
"product":{"configuredProductId":"<PLACEHOLDER>","configurationA
ttributes":
{"LGK__LOGIK_Id__c":""},
"optionConfigurations":{"Dynamic":[]}},"layoutVarName":"<PLACEHO
LDER>"};
console.log(JSON.stringify(cfgData));
rpc.postMessage(JSON.stringify(cfgData));
</script>
</head>
<body>
<div id="root"></div>
</body>
</apex:page>
Replace the highlighted <BASE_LOGIK_URL> placeholder in the above VisualForce with the base
URL of your ServiceNow CPQ environment.

Note: If you named the easyXDM library something other than XDMFile1, update the two
occurrences of XDMFile1 above with the name you used for the easyXDM static resource.
Depending on what you want to do, you must also associate an action for the "Quote" button.
Insert the action after the console.log(configObj) line.
Examples:
//window.close(); // if you want to close the whole browser page
//window.location = 'whereeveryouwanttoredirectto'; // if you want to
redirect to another page

The EasyXDM library
To learn more about the easyXDM library used in this topic, see easy XDM.net

.

Use case: Embed ServiceNow CPQ UI in a Lightning Web Component
Learn how to embed ServiceNow CPQ in a LWC in a Salesforce org.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
You can embed ServiceNow CPQ in a Lightning Web Component (LWC) in a Salesforce org. This
eliminates the need to directly navigate to ServiceNow CPQ through a particular product or the
ServiceNow CPQ custom URL.

Steps for Embedding
1. Download the base LWC package here

, and unzip.

2. Within an integrated development environment (IDE—in this example, VSCode), or on the
command line:
a. Connect to your Salesforce org using the Salesforce CLI or Salesforce Extensions for the
IDE.

b. Open the folder and publish to org using Salesforce CLI or the extensions in your IDE. In
VSCode, this means right- clicking the folder in the VSCode explorer and clicking Deploy
Source to Org.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
Note: To complete this step, you must be connected to the org.

3. Go into the Salesforce page where you want to embed ServiceNow CPQ.
4. On the Setup menu, click Edit Page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
5. Drag the Logik LWC from the menu at the bottom left into the page layout where you want to
embed ServiceNow CPQ.

6. Add the configuration URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
If you are passing the configuration URL as a parameter, include a Runtime Token in the URL
(for example, ?rt=xxxxxxxxxxxx)
Use case: Populate display names and quote lines in Configuration Field Data Set objects
Learn how to set up custom objects and Apex triggers in SFDC to populate the display names of
ServiceNow CPQ fields.
As part of the ServiceNow CPQ Managed Package, the functionality of the Configuration Field
Data Set object in SFDC is to return the Configuration ID of the configuration, every field variable
name used by the blueprint, the value of that field, and the label of that value after every save
from the ServiceNow CPQ configurator:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
However, there might be some extra necessities about the configuration in ServiceNow CPQ
outside of these fields created by the Managed Package that an organization needs for
downstream processes. For instance, we might want to populate the display names of the
ServiceNow CPQ fields, or easily jump to the Quote Line of the associated Configuration Field
Data objects for an easy connection to the BOM.

With a little setup of custom objects and Apex Triggers in SFDC, these fields can automatically be
populated after every configuration is saved.

Prerequisites
Enable “Push Config Data to Logik Salesforce Object” in the Admin Settings if you have not done
so already. This will start creating the Configuration Field Data Sets objects in SFDC.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
Note: The creation of these Configuration Field Data Sets will occur every time a
configuration is saved from ServiceNow CPQ, even if the quote itself is not saved. This can
lead to a lot of data being created in your Salesforce org. If you do not have a use case for
pulling every field used by the Blueprint into SFDC, it is best to keep this setting disabled
and rely on the Extended Information property in the BOM Data.

Populate the display name
1. In SFDC Setup, navigate to the Object Manager.
2. Create a new custom object called “LGK Label” with the following attributes:
◦ Record Name: Logik Label
◦ Data Type: Auto Number
◦ Display Format: LGKLB-{0000}
◦ Allow Search: Checked
◦ Launch New Custom Tab Wizard after saving this custom object: Checked
Leave the rest of the values as default and click Save.
3. On the New Custom Object Tab page, click the Tab Style field and select any style.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
4. Click Next, click Next again, and then click Save.
5. Click Fields & Relationships on LGK Label, and then click New. Create a new field with the
following attributes:
◦ Data Type: TextArea
◦ Field Label: label
◦ Field Name: label
Click Next, click Next again, and then click Save.
6. Click New. Create a new field with the following attributes:
◦ Data Type: TextArea
◦ Field Label: variablename
◦ Field Name: variablename
Click Next, click Next again, and then click Save.
This new LGK Label object will be where we will host the Field Variable Name and Field Label
Name in SFDC. The labels will not automatically be imported. They also must be manually
updated/imported every so often with changes and additions to the Fields in CPQ Admin. We will
go over methods of bulk import later in this guide.
1. In Object Manager, search “Configuration Field Data”.
2. Click Fields & Relationships, and then click New. Create a new field with the following
attributes:
◦ Data Type: TextArea
◦ Field Label: Display name
◦ Field Name: Display_Name
Click Next, click Next again, and then click Save.
3. Click Triggers, and then click New.
4. Paste the following code into the Apex code block:
trigger UpdateConfigurationLabels on
LGK__ConfigurationFieldData__c (before insert) {
// Step 1: Collect FieldKeys from records to be inserted
Set<String> fieldKeys = new Set<String>();
for(LGK__ConfigurationFieldData__c confData : Trigger.new) {
fieldKeys.add(confData.LGK__FieldKey__c);
}
// Step 2: Query LGK_Label__c based on collected FieldKeys
Map<String, LGK_Label__c> labelMap = new Map<String,
LGK_Label__c>();
for(LGK_Label__c label : [SELECT label__c, variablename__c
FROM LGK_Label__c WHERE variablename__c IN :fieldKeys]) {
labelMap.put(label.variablename__c, label);
}
// Step 3: Loop through records to be inserted and update
Display_Name__c
for(LGK__ConfigurationFieldData__c confData : Trigger.new) {
LGK_Label__c matchedLabel =
labelMap.get(confData.LGK__FieldKey__c);
if(matchedLabel != null) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
confData.Display_Name__c = matchedLabel.label__c;
} else if(confData.LGK__ValueLabel__c != null) {
confData.Display_Name__c = confData.LGK__ValueLabel__c;
}
}
The framework is complete. Add the new Display Name field to the Configuration Field Data Set
layout. All thatʼs left is to import the field label names into the LGK Labels objects. Depending on
how you use ServiceNow CPQ Fields, there are three methods of accomplishing this.
Field label import methods

Ways to import field label names into the LGK Labels objects
Manual ServiceNow CPQ Label Creation

Pros:

1. Create a new Logik Label Object from the
LGK Labels tab

• Good if you have a low number of fields for
which you need the display name

2. Enter the “variablename” to exactly match
the ServiceNow CPQ variable name

• Allows you to customize the field label
names to be different than how they appear
in the ServiceNow CPQ Admin and the
Layout

3. Enter the “label” to be any label you wish

Con: Can be a tedious process for a large
number of fields
Bulk Import from exporting all ServiceNow
CPQ fields
1. From the ServiceNow CPQ Admin Field’s
Tab, click Export
2. Open the CSV file and delete all data
besides columns “B” and “C”
3. Rename the headers to “label” and
“variablename,” and save
4. In SFDC, go to the LGK Label tab and click
Import
5. Select “LGK Labels”
6. Select “Add new records”
7. Select your saved CSV file

Pros:
• Good for a large number of fields
• Global fields used across Blueprints will be
labeled consistently in SFDC
Cons:
• Set field label names, partner fields, and
system fields are not imported by this
method, so the display name will default to
the value of the field
• These fields can be manually added as
LGK Label objects using the manual label
creation method

8. Upload

Bulk Import from exporting the Blueprint
Layout
1. From the ServiceNow CPQ Blueprint youʼd
like to use, go to your Layout, and click
Export

Pros:
• Good for a large number of fields
• Populates the display name in the layout for
all fields, including set fields,system fields,
and partner fields

2. Open the CSV
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
Field label import methods

Ways to import field label names into the LGK Labels objects
(continued)
3. Filter column “A” by “field”
4. Delete all data except columns “A”, “D”, and
“E”
5. Copy column “D” and “E” to a new CSV,
renaming any field’s labels you’d like
6. In SFDC, go to the LGK Label tab and click
Import
7. Select “LGK Labels”

Cons:
• Only fields that are used in the layout will
populate the display name. Fields that are
only associated with the Blueprint will still
create Configuration Field Data Set objects
whose labels will be null
• Fields that are used in multiple Blueprints
will only populate the display name field with
the first field label imported this way

8. Select “Add new records”
9. Select your saved CSV file
10. Upload

If there are any fields that you’d like to show a different display name than what you have
imported, you can easily edit the Label object to whatever label you wish and it will begin
populating the Configuration Field Data Sets that way after the update.

Populate the quote line
1. In SFDC Setup, Navigate to the Object Manager.
2. Search “Configuration Field Data”.
3. Click Fields & Relationships, and then click New. Create a new field with the following
attributes:
◦ Data Type: Lookup Relationship
◦ Related to: Quote Line
◦ Field Label: Quote Line
◦ Field Name: Quote_Line
Click Next, click Next again, and then click Save.
4. In Object Manager, search "Quote Line".
5. Click Triggers, and then click New.
6. Paste the following code into the Apex code block:
trigger PopulateConfigFieldData on SBQQ__QuoteLine__c (after
insert, after update) {
// Step 1: Collect the Configuration Ids from the new Quote
Lines
Set<String> configIds = new Set<String>();
Map<String, Id> quoteLineMap = new Map<String, Id>(); //
Mapping Configuration UUID to Quote Line Id
for (SBQQ__QuoteLine__c ql : Trigger.new) {
if (String.isNotBlank(ql.LGK__ConfigurationId__c)) {
configIds.add(ql.LGK__ConfigurationId__c);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
quoteLineMap.put(ql.LGK__ConfigurationId__c, ql.Id); //
Storing Quote Line Id
}
}
if (configIds.isEmpty()) {
return;
}
// Step 2: Query the Configuration Field Data records
List<LGK__ConfigurationFieldData__c> confFieldsToUpdate
= [SELECT Id,LGK__ConfigurationId__c FROM
LGK__ConfigurationFieldData__c WHERE LGK__ConfigurationId__c
IN:configIds];
// Step 3: Update the Field Data records
for (LGK__ConfigurationFieldData__c cf : confFieldsToUpdate) {
Id quoteLineId =
quoteLineMap.get(cf.LGK__ConfigurationId__c);
if (quoteLineId != null) {
cf.Quote_Line__c = quoteLineId; // Assigning the Quote Line
Id
}
}
update confFieldsToUpdate;
Now, every time a Quote is saved in SFDC, the Quote Line of the Parent Configurable Product
will populate into the Configuration Field Data Set. Remember to add this custom field to the
Configuration Field Data Sets layout to see it in the tab.

Note: Configuration Field Data Sets are created immediately after you click Save in the
ServiceNow CPQ Configurator. When you enter the Quote Line Editor, the Quote Line field
will not be populated because it hasnʼt been created or updated yet. Only once you save
from the Editor will the quote line appear in the field.
Use case: Pairing set repeaters and visualization components
Learn how to configure an experience where the user must answer the same questions several
times so that the user is presented with a rendering of the currently configured solution.
This topic demonstrates how a ThreeKit visualization component can be paired with a set
repeater.
On occasion, you may design a configuration experience in which you want the user to answer
the same battery of questions several times. (These input fields would be part of a set.) If you
decide to show the user one set record at a time by using a set repeater, ServiceNow CPQ also
enables you to present the user with a rendering of the solution the user is currently configuring.
Sample layout CSV
For more information, see this video:
Visualization & Set Repeater

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Use case: Configuration line item to quote line flow
By making a few adjustments to a flow template includes with the CPQ Extension package
version 1.8 or later, you can parse the extended information from a configuration and map it to
custom fields without using a QCP script.

Note: This article applies to the ServiceNow CPQ Extension for Salesforce CPQ package
version 1.8 or later. If your ServiceNow CPQ CPQ package is version 1.7 or earlier, see Use
case: Using the Salesforce Quote Calculator plugin to integrate data from ServiceNow CPQ
to Salesforce quotes and quote lines.
By default, if you add any extended info to a line item (using ProductList.extended), it will be
added as a JSON to the corresponding configuration line item object created as the following:

Before this flow was created, the only way to parse the individual keys and map them to custom
fields on the configuration line items or their corresponding Quote Lines was to write a QCP
script to do so. This guide will show you how to achieve the same result by making a few
adjustments to a flow template included with our CPQ Extension package starting versions 1.8 or
later.
Letʼs take the case of the first custom field in the screenshot above. A product is added using an
advanced product rule and the freight information is entered as extended info, for this example
we will be using SG_Freight so adjust as necessary for your extended info name:
ProductList.extended = {};
ProductList.extended.SG_Freight = cfg.sRFreight;
You must create a SG_Freight_c field on the configuration line item and Quote Line objects
(if you just enter “SG_Freight,” SFDC will automatically add the _c). It is recommended to do so
with the Schema Builder since itʼs much faster. If you do choose to add them through the Object
Manager, make sure to check the Field Accessibility settings for the created fields so that the
flows are able to modify them. Be sure to set the field-level security on the custom field to be
visible for any profile that will be using them.
Next, in SFDC, go to Setup > Process Automation > Flows. Look for the “Configuration Line Item to
Quote Line” flow and click it. It should look like this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
Select the Update Fields flow element and click Edit Element. This will open a popup
window:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
Click + Add Field, and then in the Field column, enter the SFDC field name as below
(autocomplete should help you type it in):

If the data is entered correctly, you should see the value for the created field change to the same
format as the value above it:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
Save the flow and activate. Itʼs recommended to save the flow as a a new flow instead of as a
new version, so that youʼll always have the original template to go back to if needed.
Add your fields to the configuration line item and quote line layouts in order to see these values
where they belong:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Use case: Using the Salesforce Quote Calculator plugin to integrate data from ServiceNow
CPQ to Salesforce quotes and quote lines
In the ServiceNow CPQ Extension for Salesforce CPQ package version 1.7 or earlier, use the
Salesforce Quote Calculator Plugin to parse extended information from a configuration and map
it to custom fields.

Note: This article applies to the ServiceNow CPQ Extension for Salesforce CPQ package
version 1.7 or earlier. If your version is 1.8 or later, see Use case: Configuration line item to
quote line flow.
Using the extended information of the ServiceNow CPQ ProductList object with the Salesforce
Quote Calculator plugin (QCP), data may be passed from ServiceNow CPQ into Salesforce and
used to manipulate both quote and quote line information.
ProductList.extended may only be populated with an advanced product action, as shown here.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
The ProductList.extended object takes the form of a JSON object and accepts key:value pairs. In
the example above, we pass through a dummy text string, “QCP Test Value”, with the newValue
key. ProductList.extended can hold field values, as well as an array of JSON objects.
When this product is added to the bill of materials (BOM), we can view its associated info in the
custom object “BOM Data”, which is held at the quote line of the configurable product.

To leverage this extended information, we will need to use the Quote Calculator Plugin
navigate to the Custom Scripts item in Salesforce.

. To start,

Here, you can write a script to leverage the extended information from ServiceNow CPQ and use
it to manipulate fields in SFDC. The following script is the sample script used in this instance.
export function onBeforeCalculate(quote, lines) {
var result;
var resultValue;
var product_code = "headlessItem3";
if (lines != null) {
lines.forEach(function (line) { //Parsing all quote lines to
find BOM Data object
if(line.record["LGK__BomData__c"] != null){
var configJson = JSON.parse(line.record["LGK__BomData__c"]);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
var itemsJson = configJson["items"]; //Create JSON object
containing all items in BOM data
itemsJson.forEach(function(itemsLine){ //For each item in
the BOM Data
if(itemsLine["productCode"] == product_code){ //Checking
for item "headlessItem3"
result = itemsLine["extended"]; //Parses extended
information to find "newValue"
resultValue = result["newValue"]; //Assigning keyed value
of "newValue"
}
});
}
});
lines.forEach(function (line) { //For each line in the quote
if (line.record["SBQQ__ProductCode__c"] ==
product_code){ //Checking for the line item "headlessItem3"
line.record["Test_Text__c"] = resultValue; //Setting the
quote line field "Test Text" with the value of resultValue
}
});
}
return Promise.resolve();
};
Any quote fields or quote line fields referenced by the custom script must be explicitly defined in
the appropriate inputs on the custom script record. Our sample script references three quote line
fields: LGK_BomData c, SBQQ_ProductCode c, and Test_Text c.
Once your script has been written, define it in the Salesforce CPQ settings. Follow these steps:
1. In Setup, search for “Installed Packages” using Quick FInd.
2. Next to “Salesforce CPQ”, click Configure.
3. Select the Pricing and Calculation tab.
4. If necessary, deselect Use Legacy Calculator.
5. Select the Plugins tab.
6. Define your custom script in the Quote Calculator plugin, and then click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
When you navigate to your quote and trigger any action that performs a calculation in SFDC
(such as clicking “Calculate”), the Quote Calculator Plugin runs and modifies fields as
designated.
Use case: Using Apex to call or test ServiceNow CPQ APIs
Learn how to use Apex to call or to test ServiceNow CPQ APIs.
The easiest way to test Apex code for use of ServiceNow CPQ is through the developer console
in SFDC.

To test the script from in the console, the code must be wrapped in a larger class with the “exec”
function. For example:
public class testGetConfig { public static void exec() {
Save the code, and then in the Debug menu, click Execute Anonymous Window.

In the execute anonymous window, execute the code functionName.exec();

Example Apex code to call a ServiceNow CPQ API
The following code is an example of an Apex class that will get information about a potential
configuration:
1 public class testGetConfig {
2 public static void exec(){
3
4
HttpRequest httpRequest = new HttpRequest();
httpRequest.setEndpoint('https://
tenant.sector.logik.io/api/[config id here]');
httpRequest.setTimeout(5000);
5
6
httpRequest.setMethod('GET');
httpRequest.setHeader('Content-Type', 'application/json');
7
8
httpRequest.setHeader('Authorization', 'Bearer [INSERT TOKEN
HERE]');
httpRequest.setHeader('Origin',
'https://tenant.sector.logik.io/');
9
10
Http http = new Http(); HttpResponse httpResponse;
11
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
12
httpResponse = http.send(httpRequest);
13
14 }
15 }
This code would be executed as testGetConfig.exec();.
Use case: Displaying the ServiceNow CPQ native UI via direct URL
Learn how to initialize a configuration UI using a URL instead of an external library.
This article provides an outline of how a ServiceNow CPQ Configuration UI can be initialized
using a configuration URL rather than relying on an external library (such as easyXDM).
The base configuration URL is in the format https://{tenant}.logik.io/
ui/configure/{configurableProductId}, where:
• {tenant} is the ServiceNow CPQ tenant that you are using, which can be found in Salesforce or
if using ServiceNow CPQ headless, the base URL of the Admin experience
• {configurableProductId} is the Product ID of the ServiceNow CPQ Configurable Product to use
for the configuration
Example configuration URL: https://demo6.demo.logik.io/ui/configure/
01t5f000006QKynAAG?v=1

Configuration URL query parameters
Additional settings and data can be passed via URL query parameters.
Configuration URL query parameters

Parameters described, along with their valid values
Parameter

Description

Required

Values / Notes

v

Version

true

1

pid

Pricebook ID

Salesforce Pricebook
ID

id

Configuration ID

Logik UUID of existing
configuration to load

lid

Quote Line ID

Salesforce Quote Line
ID

qid

Quote ID

Salesforce Quote ID

log

Log Execution
(Flightpath)

None | Available |
Active
This parameter is case
sensitive.

cm

Committed
Configuration ID

When a contracted
order is amended,
ServiceNow CPQ
identifies the prior
configuration ID. That
ID then becomes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
Configuration URL query parameters

Parameters described, along with their valid values
(continued)
Parameter

Description

Required

Values / Notes

the committed
Configuration ID.
fields

Fields

Array of field objects.
For example,
[{"variableName
":"textField1","value":"tes
{…}]
In JavaScript, use
encodeURI to ensure
any special characters
are escaped

ac

Action Context

null or "Amendment"

e

Editability

One of:
• "Tm9uZQ" (None)
• "QXZhaWxhYmx
l" (Available)
• "QWN0aXZl" (Active)
This parameter is case
sensitive.

layout

Layout Variable Name

Name of the layout
to load from the
blueprint of the
configurable product

return

Return URL

URL to set
window.location to on
save or cancel. Needs
to be encoded and
URL-safe

rt

Runtime Token

rta

Runtime API URL

See note below

Runtime token from
ServiceNow CPQ
Admin Setup
Needs to be encoded
and URL-safe. Highly
recommended if
using the runtime
token parameter.
Use encodeURI in
Javascript to ensure
that any special
characters are

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
Configuration URL query parameters

Parameters described, along with their valid values
(continued)
Parameter

Description

Required

Values / Notes

escaped, especially
when calling an API.
currency

Currency ISO Code

Note: When using the runtime token (rt) parameter, it is highly recommended to also
include the rta as well to ensure that all of the requests can be authenticated when using
the Firefox or Safari browsers.
If you are not accessing the configuration URL where you have already authenticated
(via Salesforce or directly), the runtime token will be required to authenticate. If you
are accessing the configuration URL before authenticating through the associated
SFDC environment or accessing the configuration URL for a headless environment, the
ServiceNow CPQ tenant URL needs to be listed as an origin for the leveraged runtime
client. For example, https://<yourLogikUrl>.test.logik.io.
If the version parameter is not included, the UI will not load, and you will receive the
following error: "Error: A version must be specified."
If a return URL is not included, the UI will broadcast a postMessage up to
the parent, with the UUID on save (such as {"uuid": "8b88c843d10b-468b-8c49-17f8c9698799"}) and an empty object on cancel ({}).

Using the configuration URL
The configuration URL can be used either as the top level window or in an iframe on a page.
Unlike when using the easyXDM example to initialize a configuration, configuration data will not
be sent to the browser console in Javascript when using the configuration URL.
Considerations for using the configuration URL as the top level window URL:
• On the save or cancel actions, the ServiceNow CPQ UI will make the call to the ServiceNow
CPQ backend to save or cancel the configuration. These calls can be viewed in the Network
tab of the browser to see the data being sent and returned.
• If a return URL is included, the UI will attempt to set the window location to that URL on save
("Quote") or on cancel.
Considerations for using the configuration URL in an iframe:
• If a return URL is included, the UI will attempt to set the window location to that URL on save
("Quote") or on cancel. If a return URL is not included, the ServiceNow CPQ UI will broadcast
a postMessage up to the parent, with the UUID on save (such as {"uuid": "8b88c843d10b-468b-8c49-17f8c9698799"}) and an empty object on cancel ({}).
• For either implementation, after executing the save or cancel action, the configuration is
removed. Subsequent save actions will result in a 404 error with an error message: "No Rules
Engine found for Tenant with Config ID '<Logik UUID>'. Subsequent cancel actions will also
result in a 404 error.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Configuration result
The result of the saved Configuration can be accessed by using the GET API to retrieve the BOM
data.
Postman Collection with Config API URL
The result can be sent to a downstream system via Webhook. See Webhooks.
Use case: Modifying layout text with SLDS styles
Learn how to implement styles in the Salesforce Lightning Design System to control the
appearance of text.
Using Salesforce Lightning Design System (SLDS) styles, admins have some control over the
appearance of text in the ServiceNow CPQ configurator UI. Note that this functionality is not fully
supported and may be limited in a number of scenarios. Consult this Salesforce documentation
for the available SLDS styles.
Due to the lack of complete support, utilizing an SLDS class will affect everything in the field. That
means if you use “slds- text-title_bold”, everything in the field will be bolded. Therefore, consider
whether you can use SLDS styling for your use case, as a new field will need to be created for
us to insert the class and isolate the styling. A good use case as a result is using styles to make
headers, and weʼll use that as the basis for this article.
If we want to make a header using SLDS, the first step is to identify which field(s) you want a
header for, and make sure theyʼre displayed in the layout. Then, from the layout screen, navigate
to the field and remove its label. This will leave you with just the fieldʼs variable name.

Next, create a new text field and give it some text. This new field will be placed above the existing
field and essentially act as its “header”. Place it in the layout and remove its label. Your layout
should resemble this example.

Note: Instead of creating a new field, you can also just add text directly to the layout. In
the image below, you would click the down arrow to create the text. However, unlike when
using fields, you wouldnʼt be able to conditionally hide the text.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
Finally, in the layout, hover over the new field you created that will act as the header, and click
the gear to bring up the Field Properties. For Class Name, add the desired SLDS class. In this
example, we have used slds-text-heading_large.

Redeploy your blueprint and youʼre done. Open an applicable product in the configurator to see
the result.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


