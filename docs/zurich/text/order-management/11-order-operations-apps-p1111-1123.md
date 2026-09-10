# Zurich Sales and Order Management — Order operations apps / Post-sales engagement apps / Partner Relationship Management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1111–1123 of 1408

Sections: Order operations apps (p1111); Post-sales engagement apps (p1120); Partner Relationship Management (p1120)

---

<!-- page 1111 -->
Field

Description

State

State of the product inventory item.
Installation Pending denotes that
the installation of the product inventory item
is pending at the customer site.

8. In the Installed Base Items section, in the Product Inventory section, review the installed base
items for the selected account.
Account Information form - Installed Base Items section
Field

Description

Installed Base Items (n)

(n) represents the total number of the base
items that were installed for this account.

Number

System-assigned identifying number for the
installed base item:
◦ To view the details for an installed base
item, select the installed base item number.
◦ To view all the installed base item numbers
for the account, select View All.

Configuration Item

System-assigned identifying number for
the configuration that is associated with the
installed base item. To view the details for a
configuration item, select the configuration
item number.

Contact

Name of the customer contact that is
associated with the order. To view the details
for the contact, select the contact name.

Using order operations applications
Learn how to use order operations applications.
Manage cases
Case management provides a structured and efficient approach to handling a wide variety of
service requests, incidents, and inquiries. It encompasses the processes and tools used to
manage individual cases from initiation through resolution, ensuring that service delivery is
consistent, timely, and aligned with organizational goals.

Using Lead-to-Cash Process Management
Sales process managers can use Lead-to-Cash Process Management to create sales process
records and monitor and track sales processes through a consolidated dashboard.

Overview of creating and monitoring sales processes
Access the Lead-to-Cash Process Management application from the CSM Configurable
Workspace to create sales process records and monitor the sales process using the sales
process dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
• Create a sales process record
Create a sales process record to monitor and track sales activities for a customer account.
• Navigating the sales process dashboard
Become familiar with the sales process dashboard so you can navigate and use the dashboard
to monitor the sales process.
• Monitoring and tracking sales activities
Monitor and track sales activities for a customer account after you have created a sales
process record.
• Create and manage task checklists
Create checklists to ensure thoroughness, consistency, and prevent errors while completing
routine tasks and processes such as fulfilling orders.
• Add attachments for a sales process record
Attach files, documents, images such as implementation plans, customer-provided
specifications, or finalized quotes related to a customer account you're monitoring with a sales
process record.
• View and send emails in Lead-to-Cash Process Management
View consolidated emails for all hard-linked entities monitored within a sales process record
and compose emails from the sales process dashboard.
• Linking, delinking, and link conversion conditions
Become aware of the conditions for linking, delinking, and hard or soft-linking records on the
node map.
• Create business process tasks
Create business process tasks to track miscellaneous tasks at the sales process record-level.
Create a sales process record
Monitor and track sales activities for a customer account by creating a sales process record in
Lead-to-Cash Process Management.

Before you begin

Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Lead to Cash Process Management > Sales Process Records.
4. Select New.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
Create new sales process record form
Field

Description

Short
A brief summary of the business process record used for quick identification in
description lists and notifications.
Business
process

A business process that you want to monitor such as order-to-cash.

Account

Customer account for which you want to monitor the sales activities.

Assigned
to

(Optional) Person responsible for managing and monitoring the sales process
record.

Business
entity

The top-level sales entity that you want to monitor, for example, opportunity.
Quotes and orders related to that entity are automatically included in the node
map.

When you select a business entity, all similar entities related to the selected account are
displayed.
6. Select the records you want to monitor directly under the sales process record.
7. Select Save and Open.
A dashboard containing a hierarchical node map and details section related to the selected
records is displayed.

What to do next

Track and manage sales process using the sales process dashboard. For more information, see
Navigating the sales process dashboard and Monitoring and tracking sales activities.
Navigating the sales process dashboard
Become familiar with the various elements that make up the sales process dashboard in the
Lead-to-Cash Process Management application.
The sales process dashboard in the Lead-to-Cash Process Management application offers a
consolidated view of sales activities across entities such as opportunities, quotes, and orders.
Sales process dashboard in Lead-to-Cash Process Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
Node map elements
The hierarchical node map visually represents the relationships of sales entities. Sales process
managers and contract admins can dynamically manage this map by linking or delinking records,
converting soft links to hard links for active monitoring. The following table describes the function
of node map elements.
Node map elements
Element Function

Filter
icon

Filter link by types to view associated nodes. You can filter to view all nodes or hardlinked nodes.

Link
Link more sales records to the selected node. To add more records, select Link
records records, then select a Business entity on the Link records pop-up window. Select
specific records that you want to link and select Link selected.
Delink

Delete child record and its hierarchy. To delink a record, select a link connecting a
parent node and its child nodes you no longer want to monitor, and select Delink.

Hard
link

Enables you to convert soft links to hard links and vice versa. To convert a link, select
it and select the Hard link toggle switch.

By default, only three levels are displayed on the node map when you open a sales process
record in the CSM Configurable Workspace. Admins can increase or decrease the number of
levels displayed. For more information, see Customize hierarchical node map levels for Lead-toCash Process Management.
Only 250 nodes can be displayed on the node map at a time. If you have more than 250 nodes,
collapse some nodes and then expand and view the other nodes.

Details pane
A details section consolidates all relevant operational elements—tasks, emails, checklists, and
attachments—into a single pane.

Note:
Related lists configured in the Sales cockpit view in Next Experience UI govern the tabs that
are displayed for a sales entity on the sales dashboard.
Related topics
Monitoring and tracking sales activities
Create and manage task checklists
Add attachments for a sales process record
Manage attachments for a sales process record
View and send emails in Lead-to-Cash Process Management
Linking, delinking, and link conversion conditions
Using Sidebar
Monitoring and tracking sales activities
Monitor and track sales activities for a customer account after you have created a sales process
record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
The Details, Activity, and Tasks tabs provide the following information when you select a node
on the Lead-to-Cash Process Management sales process node map:
Sales entity details for an account
Access key information about a sales process record such as the record number,
state, the agent assigned to the record, account, and priority, and additional
details for related sales entities such as the product offering, quote date, pricing
information, and so on to expedite decision making and issue resolution.
Activities
View a running history of updates such as field changes or the availability of new file
attachments, enabling you to stay informed about the sales process record without
having to switch contexts. Activities can only be viewed for a sales process record.
Filter, search, and sort activities using the Filter
respectively.

, Search

and Sort

icons

Task assignment and status
View a consolidated list of tasks that provides information about hard-linked entity
records that are monitored using the sales process record, including business
process tasks. The information includes the task's status, description and the
agent assigned to it. You can also search and filter tasks using the task ID, short
description, or state through the search box and Filter icon

.

Related lists configured in the Sales cockpit view in Next Experience UI govern the tabs that are
displayed for a sales entity on the sales dashboard. For example, you can display tabs such as
Line Items for an Opportunity and Line Characteristics for Opportunity Line containing the
respective record details.
By accessing the sales data and using integrated communication channels such as sidebar
discussions and emails, you can promote record completeness and accuracy, and support
downstream processes such as order fulfillment, revenue recognition, and reporting.
Related topics
Create and manage task checklists
Add attachments for a sales process record
View and send emails in Lead-to-Cash Process Management
Linking, delinking, and link conversion conditions
Using Sidebar
Create and manage task checklists
Create and manage checklists to track progress on completing routine or repetitive tasks and
processes such as fulfilling orders.

Before you begin

Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Under Lead to Cash Process Management, select Sales Process Records.
4. Select the sales process record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


<!-- page 1116 -->
5. Select the Checklists tab.
6. Select Add item.
7. Enter a task in the Checkbox field.
8. Repeat the steps to add more tasks to your checklist.
To remove a task while creating the checklist, select the Delete icon

next to the task entry.

9. Select Save.
You can add more tasks to your checklist by selecting Edit.
10. Optional: Modify a saved checklist by adding or deleting items.
a. In the sales process record on the dashboard, select Checklists.
b. Select Edit.
c. Add or delete an item.
▪ To delete an item, select the Delete icon

next to the task entry.

▪ To add an item, select Add item and provide the task name.
d. Select Save.
Add attachments for a sales process record
Attach files, documents, or images such as implementation plans, customer-provided
specifications, or finalized quotes related to a customer account you're monitoring with a sales
process record.

Before you begin

Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

About this task

You can attach files only to a sales process record. To add attachments to child records, you
must navigate to the respective entity's record page.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Under Lead to Cash Process Management, select Sales Process Records.
4. Select the sales process record.
5. Select the Attachments tab.
6. Upload files.

Note: The default maximum file size is 1 GB, but this may vary based on the size limit set
by your admin on your ServiceNow instance.
Method

Action

Drag and drop

Drag and drop the file from your system to the
Attachments pane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1116


<!-- page 1117 -->
Method

Action

a. Select Select file.
b. In the browse files pop-up window, select
the file.

Select a file from your system

c. Select Open.
7. Select Upload.
8. Optional: Attach more files by selecting the Add icon

.

What to do next

Download, rename, or delete attachments. For more information, see Manage attachments for a
sales process record.
Manage attachments for a sales process record
Rename, download, or delete files, documents, or images such as implementation plans,
customer-provided specifications, or finalized quotes related to a customer account you're
monitoring with a sales process record.

Before you begin

Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Under Lead to Cash Process Management, select Sales Process Records.
4. Select the sales process record.
5. Select the Attachments tab.
6. Select the attachment.
7. Select the More actions icon

for the attachment entry.

8. Select the desired action.
◦ Download
◦ Delete
◦ Rename

Tip: For bulk deletions or downloads, select the files or select All Files and then select
the action.
9. Optional: Select an attachment to preview it.
View and send emails in Lead-to-Cash Process Management
View consolidated emails for all hard-linked entities monitored within a sales process record and
compose emails from the sales process dashboard.

Before you begin

You can compose and send emails related to a sales process record by default. To compose
emails for child entities such as an opportunity or quote, you must be granted access to those
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1117


<!-- page 1118 -->
entities. For more information, see Setting conditions for enabling email access in Lead-to-Cash
Process Management.
Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Lead to Cash Process Management > Sales Process Records.
4. Select the sales process record.
5. View emails from all hard-linked entities tied to the sales process record by selecting the
Emails tab.
6. Compose and send the email.
a. Select Compose Email.
b. Enter the list of recipients.
c. Draft your email.
d. Select Send email.
Linking, delinking, and link conversion conditions
Several conditions can enable or disable you from linking, delinking, and hard or soft-linking
records in Lead-to-Cash Process Management.

Difference between hard and soft-linked nodes
Links can be toggled between hard and soft types based on whether they need to be actively
monitored.
Hard-linked nodes
A hard link is an active monitoring connection established by the sales process
manager. When a record is hard linked, it’s actively tracked, and its emails and tasks
are consolidated and visible in the sales process record. Hard links are represented
by solid lines in the node map.
Soft-linked nodes
A soft link is a passive connection based on database relationships. Records that
are soft linked aren’t actively monitored by the sales process manager, and their
emails and tasks aren’t consolidated in the sales process record. Soft links are
represented by dotted lines in the node map.

Conditions for linking and delinking records
Linking records: You can link records to all hard-linked nodes, including those records that are
converted from soft links to hard links.
Delinking records: You can delink only hard-linked records and they must meet either of the
following conditions:
• The target node was added using the Link Records flow
• The target node is a top-level entity

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1118


<!-- page 1119 -->
Conditions for converting link types
Hard links cannot be converted to soft links if they meet the following conditions:
• The target node was added using the Link Record flow.
• The target node has immediate hard-linked child nodes but only one hard-linked source node.
Soft links can be converted to hard links only if the source node has at least one hard-linked
record.
Create business process tasks
Track tasks for sales process records in Lead-to-Cash Process Management such as the closure
of all linked opportunities or generating orders.

Before you begin

Role required: sales process manager [sn_l2c_cockpit.sales_process_manager]

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Lead to Cash Process Management > Business Process Tasks.
4. Select New.
5. On the form, fill in the fields.
Business Process Task form
Field

Description

Number

Unique ID of the business process task record.

Business process
record

The sales process record.

Parent

(Optional) Parent record of the selected object. In this case, another
business process task.

Priority

The order in which the task should be addressed. The available options
are:
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low
◦ 5 - Planning

State

State of the task record. The available options are:
◦ Open
◦ Work in Progress
◦ Closed Complete
◦ Closed Incomplete
◦ Closed Skipped

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1119


<!-- page 1120 -->
Field

Description

Assignment group

User group to assign to the task.

Assigned to

The sales process manager to assign to the task.

Short description

(Optional) A brief description summarizing the task.

Work notes

(Optional) Records activities by internal users.

6. Select Save.

What to do next

Monitor the business process task from the sales process dashboard. For more information, see
Monitoring and tracking sales activities.

Using post-sales engagement applications
Learn how to use post-sales engagement applications.
Customer Life Cycle Management Workflows
Modify, suspend, resume, or disconnect the sold products and their complete hierarchy.

Using Partner Relationship Management
Install the Partner Relationship Management plugin
(com.snc.partner_relationship_management) to enable admins and channel partners to use the
self-service Partner portal.
As an Enterprise Partner Relationship manager or a channel partner you can use the Partner
Portal to do any of the following tasks.
• Get a 360° view of the Partner portal.
• Add and manage staff members.
• Submit an inquiry to connect with the enterprise.
• Access knowledge base articles and engage with the community.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1120


<!-- page 1121 -->
Partner Portal

From the Partner portal, you can use and access the following features.
Partner portal home page for logged-in users
Task

Description

Requests

Channel partners can perform the following
actions through the Requests header.
• View and track requests.
• Raise an inquiry and connect with the
enterprise.
• Register external staff members into a
partner organization.
• Move staff members in different partner
organizations.
• View all service related catalogs available to
the logged-in persona.
• Register a deal.
To learn more about registering a case, see
Raise an inquiry on Partner Portal.
To learn more about registering staff members,
see Register a member on Partner portal.
To learn more about registering a deal, see
Register a deal on Partner portal.

Knowledge

Select Knowledge on the header to view the
kb_home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1121


<!-- page 1122 -->
Partner portal home page for logged-in users (continued)
Task

Description

You can search the knowledge base or view
a list of top-rated or most viewed knowledge
base articles.
Your information

View a list of all channel partners.

General Inquiry

Raise concerns or queries with the enterprise.
To learn more about general inquiry, see Raise
an inquiry on Partner Portal.

Browse catalog

List of all catalog forms.

My Lists

Provides access to all cases, deal
registrations, and orders along quick links to
open the items that require action.
• Deal registrations displays a list of all, draft,
and approved deals.
• Cases displays a list of all open cases.

Quick Links

List of links that can be configured by the user.

Tours

View a tour for additional guidance on how the
Partner portal works.
Your administrator determines whether tours
appear on pages.

Profile menu

Select your profile picture to view your profile
or log out of the Partner portal.

Search

Search for support articles and other requests.
Enter a search word or term and select Search
to view the results.

Most Popular Articles

View a list of the most viewed articles on the
community.

Raise an inquiry on Partner Portal
Raise a query or concern with the enterprise on the Partner Portal.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager, sn_prm.external_partner_manager or
sn_prm.external_partner_ associate

Procedure
1. Navigate to the Partner portal at /partner.
2. From the portal header, select Requests.
3. From the drop-down, select Submit a request.
4. Select General Inquiry.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1122


<!-- page 1123 -->
5. On the form, fill in the fields.
To learn more about the fields on the inquiry form and their descriptions, see General Inquiry
form.
6. Select Submit.
Related topics
Using Partner Relationship Management
Register a member on Partner portal

Register a member on Partner portal
Register a new partner member or transfer existing staff in a partner organization.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager, sn_prm.external_partner_manager,
sn_prm.enterprise_partner_admin

About this task

Assign each member of staff certain responsibilities and accesses to perform daily operations
and tasks.

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select My requests.
3. From the drop-down, select Submit a request.
4. Select Register Member.
5. On the form, fill in the fields.
To learn more about the fields on the member registration form and their descriptions, see
Member registration form.
6. Select Submit.
Related topics
Using Partner Relationship Management
Raise an inquiry on Partner Portal

Register a deal on Partner portal
Register a deal on the Partner portal to update its state and trigger the end-to-end life cycle of
the deal.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

Procedure
1. Navigate to the Partner portal.
2. From the portal header, select Requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1123


