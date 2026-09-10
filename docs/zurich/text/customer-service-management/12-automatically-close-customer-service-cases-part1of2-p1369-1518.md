# Zurich Customer Service Management — Automatically close customer service cases

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1369–1518 of 2452 | Part 1 of 2

Sections: Automatically close customer service cases (p1369); Administer Customer Contracts and Entitlements (p1371); Integrate (p1372); Integrate with IT Service Management (p1373); Integrating with Service Portfolio Management (p1398); Integrating with Continual Improvement Management (p1402); Integrating with IT Operations Management (p1403); Integrating with Customer Project Management (p1403); Integrating with Financial Management (p1420); Integrating with Adobe Experience Manager (p1423); Integrating with Computer Telephony Integration (CTI) (p1442); Integrating with Microsoft Outlook (p1454); Integrating with Safe Workplace applications (p1456); Integrating with consumer messaging apps (p1458); Integrating with Process Mining (p1468); Integrating with contact centers (p1469); Use (p1507); Manage cases (p1509)

---

<!-- page 1369 -->
Note: To open the System Property [sys_properties] table, enter
sys_properties.list in the navigation filter.
Major issue management properties
Property

Description

Synchronize fields from parent to child case

Enable this property to synchronize fields from a major, or pa
associated child cases.

sn_customerservice.parent_child_case_sync

• Type: true|false
• Default value: false

• Location: Customer Service > Administration > Propertie
Comma-separated list of fields that synchronize
from parent case to child cases

Specifies the list of fields to synchronize from the major, or p
associated child cases.

sn_customerservice.case_fields_to_sync

• Type: string

• Default value:
priority,state,comments,work_notes,assigned_to,close_no

• Location: Customer Service > Administration > Propertie
Processes SLA asynchronously during parent to
child case creation and synchronization

Enables major issue management to process the SLA async
child case creation and parent-to-child case synchronization

sn_customerservice.parent_child_case_sla_async

• Type: true|false
• Default value: true

• Location: Customer Service > Administration > Propertie

Automatically close customer service cases
Customer service cases in the Resolved state can be closed automatically if customers don’t
act.
This feature uses the Auto Close Resolved Cases Flow Designer flow.

Note: This flow isn’t active by default.
The Auto Close Resolved Cases Flow Designer Flow identifies cases in the Resolved state that
are waiting for a customer response and takes the following actions:
• Sends a reminder notification to the customer after five days with no response that the case is
pending solution acceptance.
• Closes the case and sends a reminder notification to the customer after 10 days that the case
has been auto-closed.
The notifications are added to the Additional comments field on the Case form.
The administrator can enable the Auto Close Resolved Cases flow and configure the timing
of the reminder notifications. The default settings include two notifications that are sent at 5
days and 10 days after a case has been resolved. The administrator can also create additional
notifications to the flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
The administrator can also create a configuration that enables both the system and agents to
exclude cases from auto-closure.

Using the Auto Close field on the Case form
Customer service agents can use the Auto Close field on the Case form to exclude cases from
auto-closure. This field is hidden by default. To use this field, configure the Case form to display
the Auto Close field.

Configuring business rules for auto closure
The administrator can configure business rules to enable or disable the Auto Close field on the
Case form.
Rules for Auto Close on the Case form
Business rule

Description

Mark for Auto Close

Use this business rule to configure when the
system sets the Auto Close field to true. The
default configuration is as follows:
• The case status is Resolved.
• The Needs attention field on the Case form
is false.
• The case isn’t escalated.
• The account isn’t escalated.

Clear Auto Close

Use this business rule to configure when the
system automatically sets the Auto Close field
to false. By default, the case status returns to
Open if the solution is rejected.

Related topics
Workflow Studio

Notifications for resolved cases
Customers receive notifications about resolved cases that are automatically closed if no action is
taken.
When an agent proposes a solution for a customer service case, the customer has a time window
in which to accept or reject the solution. If the customer doesn’t take action within this window,
the case is automatically closed.
The system administrator can configure the settings for the notifications that are sent to the
customer. The default settings include two notifications that are sent at 5 days and 10 days after
a case has been resolved.
• After 5 days, the customer receives a reminder message about the resolved case on the
Customer Service Portal: This case is pending solution acceptance. It will be auto closed if
you do not take action.
• If the customer doesn’t take any action after 10 days, the system automatically closes the case
and adds the following message to the case: This case was auto closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
This feature uses the Auto Close Resolved Cases Flow Designer flow. For more information, see
Automatically close customer service cases.

Note: The Auto Close Resolved Cases flow isn’t active by default.

Administer Customer Contracts and Entitlements
Set up the Customer Contracts and Entitlements application to enable maintaining service
contracts, contract lines, and entitlements.
Administration tasks for Customer Contracts and Entitlements
Task

Description

Add related lists to sold products and install
base items

Add related lists to the Sold Product
and Install Base Item forms to see the
associated contracts, contract line items, and
entitlements.

Add a service contract related list

Add related lists to the Account, Consumer,
and Household forms to see the associated
contracts.

Add related lists to sold products and install base items
Add Customer Contracts and Entitlements entities' related lists on the sold products and install
base Items pages.

Before you begin

Role required: admin

About this task

To see the contracts, contract line items, and entitlements associated with a sold product, or an
Install base Item on the same page, you must add the respective related lists manually on the
form.

Note: You can only add the related lists on the platform interface. The same settings are
implemented on the CSM Configurable Workspace.

Procedure
1. Add related lists to sold products and install base items.
Add to

Procedure

Sold Product

a. Navigate to All > Customer Service > Prod­
ucts > Sold Products.
b. Select the sold product.

Install Base Item

a. Navigate to All > Customer Service > Prod­
ucts > Install Base Items.
b. Select the install base item.

2. From the Additional actions menu, select Configure > Related Lists.
3. Select the following related lists from the Available menu and move them to the Selected menu
using the Add option (forward arrow):
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
◦ Service Contracts
◦ Service Contract Lines
◦ Service Entitlements
4. Select Save.
The related lists are added on the Sold Product or Install Base Item form.

Add a service contract related list
Add a service contract related list to the Accounts, Consumers, and Households pages.

Before you begin

Role required: manager

About this task

To see the contracts associated with Accounts, Consumers, and Households, respectively, on
the same page, you must add the related list manually on the form.

Note: You can only add the related list on the platform interface in the Workspace view.
The same setting is implemented on the CSM Configurable Workspace.

Procedure
1. Add related lists to sold products and install base items.
Add to

Procedure

Accounts

a. Navigate to All > Customer Service > Cus­
tomer > Accounts.
b. Select the account.

Consumers

a. Navigate to All > Customer Service > Cus­
tomer > Consumers.
b. Select the consumer.

Households

a. Navigate to All > Customer Service > Prod­
ucts > Households.
b. Select the household.

2. From the Additional actions menu, select Configure > Related Lists.
3. Select Workspace in the View name field.
4. Select the Service Contracts from the Available menu and move to the Selected menu using
the Add option (forward arrow):
5. Select Save.
The related lists are added on the Sold Product or Install Base Item form.

Integrating Customer Service Management with other
applications
Extend the capabilities of Customer Service Management and connect with other departments
to assist with case resolution by integrating with other applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


<!-- page 1373 -->
Customer Service Management provides integrations with the applications listed in the following
table:
Customer Service Management Application Integrations
Step

Description

Integrating withIT
Service Management

Integrate with Incident, Problem, Change, and Request
Management applications.

Integrating with Service
Portfolio Management

Get visibility into sold products and their associated service
offerings with this integration.

Integrating with
Continual Improvement
Management

Get help with setting goals, organizing effort, and completing tasks.

Create and view all FSM work orders and appointments as a
Customer Service Management user.
Integrating with
IT Operations
Management

Create cases proactively from alerts and track the corresponding
install base items affected by the alert.

Integrating with
Customer Project
Management

Use this integration to create projects and project tasks for your
customer accounts.

Integrating with Financial Allocate, track, and get report on expenses in your organization
Management
using this integration.
Integrating with Adobe
Experience Manager

Deliver a pre-integrated web experience built on AEM by
embedding Customer Service Management and Knowledge
Management capabilities.

Integrating with
Computer Telephony
Integration (CTI)

Enable the Customer Service application to support inbound and
outbound telephone calls with this integration.

Integrating with
Microsoft Outlook

Manage contacts and cases from within Microsoft Outlook using
this integration.

Integrating with Safe
Workplace applications

Enable contacts or consumers to safely enter locations and comply
with health and safety policies after emergencies and pandemics

Integrating with
consumer messaging
apps

Let customers use their choice of messaging apps to message
anytime to your company's account.

Integrating with Process
Mining

Analyze processes relevant to your KPIs, and identify bottlenecks
associated with customer service cases.

Integrating with contact
centers

Integrate with your contact center as a service (CCaaS) provider.

Integrating withIT Service Management
Integrate Customer Service Management with IT Service Management that includes the Incident,
Problem, Change, and Request Management applications. With this integration, users can create
request, incident, problem, and change records from customer service cases and external users
can view these records from the Customer and Consumer Service Portals.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Integration with the Service Management applications provides the following functionality for
internal and external users.
User roles and tasks
User

Tasks

Agents

• Create incident, problem, change, and request
records from open cases.
• Associate existing incident, problem, change, and
request records with cases
• Remove associated records from cases.

Agents and managers

• View cases with Service Management -related
indicators on the Customer Service dashboards.
• View updates to records associated with a case.
These updates automatically update the case work
notes.
• Use the updates to records associated with a case to
communicate with customers.

External users

• View problem, change, and request records
associated with cases from the Customer and
Consumer Service Portals.
• Create requests from the Customer and Consumer
Service Portals.
• Approve changes and requests from the Customer
Service Portal.
• View Known Error articles for a problem related to a
case.

Integration with Incident Management
Integration with the Incident Management application enables customer service
agents to create incident records from cases or associate existing incident records
to cases. For more information, see CSM integration with Incident Management.
Integration with Problem Management
Integration with the Problem Management application enables customer service
agents to create problem records from cases or associate existing problem records
to cases. For more information, see CSM integration with Problem Management.
Integration with Change Management
Integration with the Change Management application enables customer service
agents to create change records from cases or associate existing change records to
cases. For more information, see CSM integration with Change Management.
Integration with Request Management
Integration with the Request Management application enables customer service
agents to create request records from cases or associate existing request records
to cases. It also enables customers to create requests from the Customer and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
Consumer Service Portals. For more information, see CSM integration with Request
Management.

CSM integration with IT Service Management overview
Customer Service Management provides an integration with the Incident, Problem, Change, and
Request Management applications.

Plugins
Customer Service Management integration with Service Management requires the following
plugins:
• Customer Service with Service Management plugin (com.sn_cs_sm)
• Customer Service with Request Management plugin (com.sn_cs_sm_request)
For additional information, see Integrate with Service Management.

Roles
The Service Management integration plugins do not add any roles to the customer service agent
(sn_customerservice_agent) role. To enable the Service Management integration features, you
must assign the CSM/ITSM integration roles included with the Incident Management application
to the agents who need this capability. For more information, see Assign CSM/ITSM integration
roles.

Creating records for a case
The Service Management integration plugins add the following menu items to the Additional
Actions menu on the Case form. Agents can use these menu items to create records for a case.
• Create Incident
• Create Problem
• Create Request
• Create Normal Change
• Create Standard Change

Note: Agents can create or associate one incident, problem, or change record with a
case. After a record is created or associated with a case, the corresponding menu items are
no longer available on the Additional Actions menu.
For more information, see Create incident, problem, change, and request records from cases.

Viewing incident, problem, and change records related to a case
The Service Management integration plugins add the Related Records form section to the Case
form. This section includes the following fields:
• Incident
• Problem
• Change Request
• Caused by Change

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
When an incident, problem, or change record is created from a case, or an existing record is
associated with a case, the record number is added to the corresponding field in the Related
Records form section.

Viewing requests related to a case
When a request is created from a case, or an existing request is associated with a case, the
request record number is added to the Requests related list on the Case form.

Note: Agents can create multiple requests for a case.
Related records list widget for external customers
When viewing a case on the Customer or Consumer Service Portal, external users can see other
records that are associated with the case in the Related Records list widget. These records can
include problems, changes, and requests. Users can click a record in the Related Records widget
to view additional details in a pop-up window.

Note: If a case does not have any related records, the Related Records widget does not
appear on the case view page.
From the Customer and Consumer Service Portals, users can view lists of cases and requests by
doing one of the following:
• Clicking My Lists in the portal menu header.
• Clicking Requests > All Requests in the portal menu header.
For more information, see View case records from the Customer and Consumer Service Portals.

Using case resolution codes
The Service Management integration plugins provide the following case resolution codes.
Agents can select these codes from the Resolution code field in the Resolution Information
section on the Case form.
• Solved – Fixed by closing related PRB
• Solved – Workaround provided based on open PRB
• Solved – Fixed by closing related Change Request
• Solved – Fixed by closing related Incident
• Solved – Related Request is Closed Complete

IT Service Management integration and Major Issue Management
The major issue management feature works with the CSM integration with IT Service
Management as follows:
• A major issue manager with the itil role can create incident, problem, change, and request
records from a major case.
• When a major case candidate with an associated record is accepted as a major case:
◦ A new major case is created and the candidate becomes a child of the major case.
◦ The related record information is copied from the child case to the major case.
◦ For the child case, the options to create related records are removed from the Additional
Actions menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
◦ For the child case, the fields in the Related Records form section are read-only.
◦ Updates to the related records appear in the work notes of the major case. These updates
are added to the child case when fields are synchronized from the major case to the child
case.
• A major case and child cases can have different types of related records. This can happen
when an existing case with a related incident, problem, change, or request record is added
as a child of a major case. When updates are made to the record related to the child case,
information about the update is added to the child case work notes.
• If a major case and child cases have the same related record, updates to that record are added
to the major case work notes. These notes are copied from the major case to the child cases if:
◦ The sn_customerservice.case_fields_to_sync property is enabled.
◦ The field in the in the Related Records form section is added to the
sn_customerservice.case_fields_to_sync property.
• If a major case and child cases have different related records of the same type, updates to the
records are copied only to the respective cases.
CSM integration with Incident Management
Integration with the Incident Management application enables customer service agents to create
incident records from cases or associate existing incident records to cases.
With this integration, customer service agents can:
• Create an incident from a case.
• Associate an existing open incident to a case.
• Remove an associated incident from a case.
• View the following in the case work notes:
◦ Incident state changes.
◦ Additional comments added to the incident record.

Note: A case can be associated with one incident. If a case is already associated with an
incident, the Create Incident item does not appear on the Additional Actions menu.

Plugins
Integration with Incident Management requires the Customer Service with Service Management
plugin (com.sn_cs_sm).

Roles
The following roles enable customer service agents to view and create incidents for customer
service cases.
• sn_incident_read
• sn_incident_write
For more information, see Assign CSM/ITSM integration roles.

Determining the incident priority, impact, and urgency
When creating an incident from a case:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
• If the incident data lookup is active, the system copies the case priority to the incident
priority and calculates the incident impact and urgency based on the Priority Data Lookup
[dl_u_priority] table.
• If the Incident data lookup is inactive, the system uses these default settings for the incident
fields:
◦ Priority: 5 - Planning
◦ Impact: 3 - Low
◦ Urgency: 3 - Low

Synchronizing data between the incident and the case
Work notes are synchronized from the incident to the case when:
• The incident state changes. If the incident state changes to On Hold, the hold reason is copied
to the case work notes.
• The incident is resolved or closed. The incident resolution notes and resolution code are
copied to the case work notes.
• Additional comments are added to the incident.

Note: When an incident is created or an existing incident is associated with a case,
notification from the incident is suppressed if the caller is an external user (contact or
consumer).
CSM integration with Problem Management
Integration with the Problem Management application enables customer service agents to create
problem records from cases or associate existing problem records to cases.
With this integration, customer service agents can:
• Create a problem from a case.
• Associate an existing open problem to a case.
• Remove an associated problem from a case.
• View problem state changes in the case work notes.

Note: A case can be associated with one problem. If a case is already associated with a
problem, the Create Problem item doesn’t appear on the Additional Actions menu.

Plugins
Integration with Problem Management requires the Customer Service with Service Management
plugin (com.sn_cs_sm).

Roles
The following roles enable customer service agents to view and create problems for customer
service cases.
• sn_problem_read
• sn_problem_write
For more information, see Assign CSM/ITSM integration roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
Synchronizing data between the problem and the case
With the Problem Management Best Practice – Madrid plugin activated, customer service agents
can view the following information in the case work notes:
• When the state of a related problem is updated, the text of the work note includes a link to the
problem.
• When Communicate Workaround is selected from the related problem, the workaround text is
copied to the case work notes.
• When Communicate Fix is selected from the related problem, the fix text is copied to the case
work notes.
• When the problem is resolved or closed with a specific resolution code:
◦ State is Closed and Resolution Code is Cancelled. The Cancelled Reason text is copied to
the case work notes.
◦ State is Closed and Resolution Code is Risk Accepted, the Cause notes, Risk accepted
reason, and Fix notes are copied to the case work notes.
◦ State is Resolved and Resolution Code is Fix Applied, the Cause notes, and Fix notes are
copied to the case work notes.
◦ State is Closed and the Resolution Code is Fix Applied, the Cause notes, and Fix notes are
copied to the case work notes.
With the Problem Management Best Practice - Madrid - Knowledge Integration plugin activated,
the customer service agent can view information in the case work notes when a Known Error
Article is created for or associated with a related problem. The work note includes a link to the
article.
CSM integration with Change Management
Integration with the Change Management application enables customer service agents to create
change records from cases or associate existing change records to cases.
With this integration, customer service agents can perform the following tasks:
• Create a change from a case.
• Associate an existing open change to a case.
• Remove an associated change from a case.
• View the following information in the case work notes:
◦ State changes for the change record.
◦ Additional comments added to the change record.

Note: A case can be associated with one change. If a case is already associated with a

change, the Create Normal Change and Create Standard Change options do not appear
on the Additional Actions menu.

Plugins
Integration with Change Management requires the Customer Service with Service Management
plugin (com.sn_cs_sm).

Roles
The following roles enable customer service agents to view and create changes for customer
service cases.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
• sn_change_read
• sn_change_write
For more information, see Assign CSM/ITSM integration roles.

Synchronizing data between the change and the case
Work notes are synchronized from the change to the case when:
• The change state or change type is updated.
• Additional comments are added to the change record.
• When the change associated with a case is put on hold, the work notes are updated with the
hold reason.
• When a hold on the change associated with a case is removed, the work notes on the case are
updated.
• When the change is resolved or closed.

Change form related lists
Integration with the Change Management application adds the following related lists to the
Change form:
• Cases Fixed by Change
• Cases Caused by Change

Standard change record producer behavior
When a record producer for a standard change or normal change is created and exposed to
customer service agents from the Customer or Consumer Service Portals:
• The record producer only appears in the portal after clicking the Create Request UI action.
• The record producer does not appear as part of Standard Change catalog items.
• If the agent chooses to create a Standard Change from the normal record producer, the
Standard Change is created but the change record is not linked with the case.
CSM integration with Request Management
Integration with the Request ManagementCSM application enables customer service agents to
create request records from cases or associate existing request records to cases. It also enables
customers to create requests from the Customer and Consumer Service Portals.
With this integration, customer service agents can:
• Create one or more requests on behalf of a customer from an existing customer service case.
• Associate an existing request to a case.
• Remove an associated request from a case.
• View a list of requests associated with a case in the Requests related list.
• View the following in the case work notes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
◦ Request state changes.
◦ Additional comments added to the request item record.

Note: When creating a request from a case, if the agent chooses a catalog item that is
using cart v1 (the use_sc_layout field is not checked), the case is not set as the parent of
the request.

Plugins
Integration with Request Management requires the Customer Service with Request Management
plugin (com.sn_cs_sm_request).

Roles
The following roles enable customer service agents to view and create requests for customer
service cases.
• sn_request_read
• sn_request_write
For more information, see Assign CSM/ITSM integration roles.

Enabling the Create Request UI action for case types
To enable the Create Request UI action for a case type table that extends the Case
[sn_customerservice_case] table, add an entry for the case type to the Request Parent Mapping
[request_parent_mapping] table. For more information, see Enable the Create Request UI action
for case types.

Synchronizing data between the request and the case
Work notes are synchronized from the request to the case when:
• The request state changes.
• The request is closed.
• Additional comments are added to the request.

Note: When a request is closed, the case does not automatically move to solution
proposed.

Communicating with the requester
The task fulfiller can communicate with the requester if additional information is needed. Use the
Additional comments field on the request to communicate with the requester through the case.
Information added to the Additional comments field on the request is synchronized to the case
work notes.
If the case is the parent of the request, notifications to the requester are suppressed when
additional comments are added to the request by the fulfiller.
Related topics
Create a request on behalf of a customer or consumer
Create a request record from a case
Create a request from the Customer and Consumer Service Portals
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
Service catalog integration with the Customer and Consumer Service Portals
Users with the customer administrator role (sn_customerservice.customer_admin) can associate
a portal with a service catalog.
The following catalog pages and widgets are provided as part of the Customer Service with
Request Management integration.
For more information, see Associate a portal with a catalog

.

CSM Catalog page
The CSM Catalog page is the display page for catalog items on the Customer and Consumer
Service Portals. This page serves as the landing page for any service catalog item exposed on
a CSM portal. All request items exposed on the CSM portals are either service catalog items or
service catalog record producers. Navigate to Service Portal > Pages to view this page.
• Page ID: csm_sc_cat_item
• Update name: sp_page_7ea80b123bb31300bfe04d72f3efc4b7
• Available to roles: snc_internal, snc_external

CSM Catalog Item widget
This widget handles the redirection logic on submission of the catalog item and embeds
the default catalog item widget. This widget listens to event $sp.sc_cat_item.submitted. On
submission of a catalog item, it handles the portal redirection logic based on the page_id and
the catalog portal URL. When there’s no parent set in the Requests (sc_request) table, the URL is
redirected to the default service portal ticket page. If a record producer has a redirect URL, this
widget uses the redirect URL from the record producer instead of redirecting to the ticket page.
• Widget ID: csm-sc-cat-item
• Update name: sp_widget_ec837c713bbb1300bfe04d72f3efc4d1
• Available to roles: snc_internal, snc_external

Page route map
It’s important to set up a page route map for any new Service Portals to handle the redirection to
the Case ticket page. The redirection is based on the logic described in the CSM Catalog Item
widget.
• CSM Catalog item page route map: For the Customer Service Portal, this page route map
routes the URL redirect from the sc_cat_item page to the csm_sc_cat_item page.
• CSP Catalog item page route map: For the Consumer Service Portal, this page route map
routes the URL redirect from the sc_cat_item page to the csm_sc_cat_item page.

Portal settings for catalog items
Once the catalog items are defined, visibility of the Submit/Add to Cart button can be controlled
by navigating to Service Catalog > Catalog Definitions > Maintain Items, selecting the desired
item, and enabling or disabling the fields in the Portal Settings form section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
Maintain Items Portal settings fields
Field

Description

Request method

Select Order, Request, or Submit as the type
of catalog item.

Hide ‘Add to Cart'

Enable if the Add to Cart button should be
disabled for the catalog item.

Note: The Add to Cart button isn’t
currently supported on the Customer
Service Portal or the Consumer Service
Portal.
Hide Quantity

Enable if the Quantity of the catalog item
should be hidden.

Hide Delivery Time

Enable if the Delivery Time of the catalog item
should be hidden.

Hide ‘Add to Wish List’

Enable if the Add to Wish List button for the
catalog item should be hidden.

Hide Attachment

Enable if the attachment of the catalog item
should be hidden.

Extension points for CSM integration with IT Service Management
Use the extension points available with CSM integration with IT Service Management to extend
the functionality of your application.
Extension points enable you to extend the functionality of an application and integrate
customizations without altering the application code. Extension points are stored in the
Extension Point [sys_extension_point] table.

Using an extension point to map the Incident field
Customers can create the logic for mapping the Incident field by using the
sn_cs_sm.CSMIncidentIntegrations extension point.
For more information about mapping fields, see the How to map or copy field values from Case to
Incident when using CSM Integration with Incident Management [KB0817494]
article in the HI
Knowledge Base.

Using an extension point to map the Problem field
Customers can create the logic for mapping the Problem field by using the
sn_cs_sm.CSMProblemIntegrations extension point.

Using an extension point to map the Change Request field
The Customer Service with Service Management plugin (com.sn_cs_sm) adds the
CSMChangeIntegrations extension point, which exposes generic APIs that are used for
Case to Change integration.

Note: The CSMChangeIntegrations extension point is read only. To modify this
extension point, contact ServiceNow Customer Support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
The Customer Service with Service Management plugin also adds an implementation of the
CSMChangeIntegrations extension point. This implementation can be modified and
deactivated. However, this isn’t recommended.
If it’s necessary to modify the APIs within the CSMChangeIntegrations extension point, the
system administrator can:
• Create an implementation of an extension point.
• Make the necessary changes in the implementation.
• Update the order of the implementation to a lower number. The system executes the
implementation with the lowest order number.

Note: API names used in the implementation must remain the same, otherwise the
extension point won’t be able to identify the implementation, causing an error.
For example, the CSMChangeIntegrations extension point includes the following
copyFieldsFromCaseToChange API for creating a change from a case record.
copyFieldsFromCaseToChange: function(changeGr, caseGr) {
changeGr.short_description = caseGr.short_description;
changeGr.cmdb_ci = caseGr.cmdb_ci;
changeGr.impact = caseGr.impact;
changeGr.urgency = caseGr.urgency;
changeGr.priority = caseGr.priority;
changeGr.company = caseGr.account;
changeGr.sys_domain = caseGr.sys_domain;
},
To modify this API, create an implementation of the extension point and make the desired
changes without changing the API name.
copyFieldsFromCaseToChange: function(changeGr, caseGr) {
changeGr.abcd = caseGr.abcd;
},

Using an extension point to map the Request field
Customers can create the logic for mapping the Request field by using the
sn_cs_sm_request.CSMRequestIntegrations extension point.

Using an extension point to approve changes and requests from the Customer
Service Portal
This feature includes an extension point that can be used to configure approval entities:
global.CSMApprovalsManagement. Use this extension point to extend the approval
functionality to any other entity, such as a problem.
Related topics
Using extension points to extend application functionality

Setting up CSM integration with IT Service Management
Integrate Customer Service Management with IT Service Management that includes the
Request, Incident, Problem, and Change Management applications. With this integration,
users can create request, incident, problem, and change records from customer service cases.
External users can view these records from the Customer and Consumer Service Portals.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
IT Service Management configuration tasks
Task

Description

Integrate with IT Service Management using
Guided Setup

Use the Guided Setup to integrate CSM with IT
Service Management.

Activate Customer Service Management with
Service Management

Activate the CSM with Service Management
plugin (com.sn_cs_sm) to enable the
integration the following applications:
• Incident Management
• Problem Management
• Change Management

Activate Customer Service Management with
Request Management

Assigning CSM/ITSM integration roles

Activate the CSM with Request Management
plugin (com.sn_cs_sm_request) to use the
integration with the Request Management
application.
Assign the required roles to the customer
service agents and managers who will be
creating the request, incident, problem, and
change records from customer service cases.

Enable external customers to access problem, Assign access controls (ACLs) to the external
change, and request records
user roles to provide visibility to case-related
request, problem, and change records from
the Customer and Consumer Service Portals.
Enable external customers to create requests

Assign roles to external customers which
enable them to create requests.

Enable external customers to approve
requests and changes

Enable external customers to approve
changes and requests:
• Add external users to approval groups or
assign roles for approval users.
• Add the necessary ACLs to the snc_external
role for the following table:
◦ Change Request (change_request)
◦ Request (sc_request)
◦ Request Item (sc_req_item)

Enable the Create Request UI action for case
types

Enable the Create Request UI action for
case type tables that extend the Case
[sn_customerservice_case] table.

Integrate with IT Service Management using Guided Setup
Use the Guided Setup to integrate Customer Service Management with the Request, Incident,
Problem, and Change Management applications.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
About this task

To configure the integration with the Request, Incident, Problem, and Change Management
applications, use the Customer Service guided setup. The guided setup takes you through the
setup and configuration process.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started.
3. In the Integration with Service Management category, click Get Started.
The Integration with Service Management page opens with a list of tasks to activate plugins
and assign roles.
4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
Activate Customer Service Management with Service Management
Activate the CSM with Service Management plugin to use the integration with Service
Management.

Before you begin

Instead of doing the configuration through this procedure, consider using guided setup. For more
information, see Integrate with IT Service Management using Guided Setup.
Role required: admin

Procedure
1. Navigate to System Definition > Plugins.
2. Search for the Customer Service with Service Management plugin (com.sn_cs_sm).
3. Click Activate.
Activate Customer Service Management with Request Management
Activate the CSM with Request Management plugin to use the integration with Request
Management.

Before you begin

Instead of doing the configuration through this procedure, consider using guided setup. For more
information, see Integrate with IT Service Management using Guided Setup.
Role required: admin

Procedure
1. Navigate to System Definition > Plugins.
2. Search for the Customer Service with Request Management plugin (com.sn_cs_sm_request).
3. Click Activate.
Assigning CSM/ITSM integration roles
To enable the Service Management integration features, assign the CSM/ITSM integration roles
that are included with the Incident Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
The Service Management integration plugins do not add any roles to the customer service agent
role (sn_customerservice_agent). To enable the Service Management integration features, you
must assign the CSM/ITSM integration roles included with the Incident Management application.
• Assign roles to agents using guided setup. For more information, see Integrate with IT Service
Management using Guided Setup.
• Assign roles to agents using the ServiceNow AI Platform user administration feature.
For more information, see Assign a role to a user .
CSM/ITSM integration roles
Several types of roles are available with CSM integration with ITSM.

CSM/ITSM integration roles for agents
These roles enable customer service agents to view and create incident, problem, change, and
request records for customer service cases.
CSM/ITSM integration roles for agents
Role title [name]

Description

Contains roles

sn_incident_read

Customer service agents with
this role can:

• dependency_views

• View information about an
incident record associated
with a customer service
case.
• Associate an existing
incident record with a
customer service case.

• workspace_agent
• view_changer
• sn_comm_management.comm_plan_viewer
• cmdb_read
• cmdb_query_builder_read

• Remove an incident record
associated with a customer
service case.
sn_incident_write

Customer service agents with
this role can:

sn_incident_read

• Create an incident record
for a customer services
case.
• Associate an existing
incident record with a
customer service case.
• Remove an incident record
associated with a customer
service case.
sn_problem_read

Customer service agents with
this role can:

• dependency_views
• workspace_agent
• view_changer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
CSM/ITSM integration roles for agents (continued)
Role title [name]

Description

Contains roles

• View information about a
problem record associated
with a customer service
case.

• cmdb_read
• cmdb_query_builder_read

• Associate an existing
problem record with a
customer service case.
• Remove a problem record
associated with a customer
service case.
sn_problem_write

Customer service agents with
this role can:

sn_problem_read

• Create a problem record for
a customer services case.
• Associate an existing
problem record with a
customer service case.
• Remove a problem record
associated with a customer
service case.
sn_change_read

Customer service agents with
this role can:
• View information about a
change record associated
with a customer service
case.
• Associate an existing
change record with a
customer service case.

• dependency_views
• workspace_agent
• view_changer
• cmdb_read
• app_service_user
• cmdb_query_builder_read

• Remove a change record
associated with a customer
service case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
CSM/ITSM integration roles for agents (continued)
Role title [name]

Description

Contains roles

sn_change_write

Customer service agents with
this role can:

• sn_change_read

• Create a change record for a
customer services case.

• template_editor
• cmdb_query_builder

• Associate an existing
change record with a
customer service case.
• Remove a change record
associated with a customer
service case.
sn_request_read

Customer service agents with
this role can view information
about request records
associated with a customer
service case in the Requests
related list.

sn_request_write

Customer service agents with
this role can create request
records for customer service
cases.

None

• sn_request_read
• task_editor
• dependency_views
• workspace_agent
• view_changer
• cmdb_read
• cmdb_query_builder_read

CSM/ITSM integration roles for external customers
These roles enable external customers to take the following actions:
• View and create request records from the Customer and Consumer Service Portals.
• Approve changes and requests from the Customer Service Portal.
CSM/ITSM integration roles for external customers
Role

Actions

Customer administrator

Users with this role can:

[sn_customerservice.customer_admin]

• Browse the service catalog and catalog
items and make a selection.
• Create requests for themselves, for other
contacts from the same account, or for child
accounts.
• View the request details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
CSM/ITSM integration roles for external customers (continued)
Role

Actions

Partner

Users with this role can:

[sn_customerservice.partner]

• Browse the service catalog and catalog
items and make a selection.
• Create requests for themselves (if they also
have the customer role).
• Create requests on behalf of the accounts
with which they have established
relationships.
• View cases and requests.

Customer case manager

Users with this role can:

[sn_customerservice.customer_case_manager] • Browse the service catalog and catalog
items and make a selection.
• Create requests for themselves or for other
contacts from the same account.
• View the request details.
Customer

Users with this role can:

[sn_customerservice.customer]

• Create a request.
• View the request details.

Proxy contact

Users with this role can:

[sn_customerservice.proxy_contact]

• Browse the service catalog and catalog
items and make a selection.
• Create requests on behalf of customers.
• Add the account and contact information of
the customers.
• View the details of the case and the related
request.

Enable external customers to access problem, change, and request records
With access to problem, change, and request records, external customers can view these
records associated with their customer service cases from the Customer and Consumer Service
Portals.

Before you begin

Role required: admin

About this task

The snc_internal or snc_external role and with read access to the related problem, change, and
request records can view these records from the Customer and Consumer Service Portals. After
logging in, users can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
• Select a case and view the records related to that case in the Case Related Records widget.
• Select a record in the Case Related Records widget to open the record details in the Ticket
Fields widget.

Note: The Related Records list shows data only if the logged-in user has access to view
the related records.
Customers, customer partners, and internal users with the proxy contact role
(sn_customerservice.proxy_contact) can also create requests from the Customer and Consumer
Service Portals. For more information about this feature, see Create cases as a proxy contact.
Customers can also view Known Error articles for a problem related to a case. These articles are
displayed:
• If there’s a KE article present for the problem record. If there are multiple articles associated
with the problem, the customer has access to the primary article. If there are no articles, the
customer doesn’t see the link.
• If the customer has access to the KE article.

Procedure
1. Provide access to problem, change, and request records by configuring ACLs for the
snc_external role.
This access isn’t provided out of box. You must add these ACLs to the snc_external user role
based on case access. For more information, see Access control list rules .

Note: Existing ACLs on the problem, change, and request records might impact the
visibility for external users.
2. Configure the Case Related Records widget.
By default, this widget is displayed for users with the snc_internal and snc_external roles. For
more information, see Service Portal widgets .
3. Define the views for the problem, change, and request records and select the fields that are
visible to external customers.
For more information, see Create and delete views .

Note: For the Consumer Service Portal, you can define views and select fields for
problem and change records. Request records display a default set of fields in the Ticket
Fields widget.
Related records list widget
When viewing a case on the Customer or Consumer Service Portal, external users can see other
records associated with the case in the Related Records list widget.
These records can include problems, changes, and requests. Users can select a record in the
Related Records widget to view additional details in a pop-up window.

Request records
For request records, users can:
• Expand or collapse a request and view a list of the items associated with the request.
• Select an item in this list to see additional information, including the state of the requested
item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
Note: If a case does not have any related records, the Related Records widget does not
appear on the case view page.
From the Customer and Consumer Service Portals, users can view lists of cases and requests by
doing one of the following:
• Selecting My Lists in the portal menu header.
• Selecting Requests > All Requests in the portal menu header.
The list view page includes a My Lists filter with the following options:
• All: Displays all case and request records.
• Action Needed: Displays cases in the Resolved state that are waiting for a customer response.
• My Issues: Displays the cases that were not initiated as a request.
• My Requests: Displays the cases that were created as a request.
Enable external customers to create requests
Enable your external customers to create and track requests from the Customer and Consumer
Service Portals.

Before you begin

Role required: admin

About this task

Each submitted request generates a case, with the request record associated to that case.
Customer service agents can also create requests on behalf of contacts and consumers.

Note: This feature requires activation of the Customer Service with Request Management
plugin (com.sn_cs_sm_request).

Procedure
Configure the Case form to display the Initiated as request field.
When a request is created from the portal, the system creates a case for the request and sets
this field to true.

Note: The Initiated as request field is read-only for all users.
Related topics
Create a request on behalf of a customer or consumer
Request an item or service from the Customer Service Portal
Enable external customers to approve requests and changes
Enable your external customers to approve change and request records related to customer
service cases from the Customer Service Portal.

Before you begin

Role required: admin

About this task

Changes and requests related to a case typically require end user approval before the tasks can
be completed. The tasks can be initiated by customers and by external users. For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
• A customer creates a change in order to apply a patch. This change requires approval from the
contact before the patch can be applied.
• A contact requests a catalog item from the Customer Service Portal. This request requires
approval by another employee within the contact's organization before the request can be
fulfilled.
Use this feature to send approval requests and enable external customers with the snc_external
role to approve those requests as part of the task approval workflow. From the Customer Service
Portal, external customers can:
• View and approve requests and change requests.
• View the details of the requested items in a request record.
• View the status of a request or change request in the Related Records widget.

Important: Approving requests and changes requires the approver_user role, which is a
licensed role. For more information, see KB0716592

.

Procedure
1. Add external users to approval groups or assign roles for approval users in order to see
approval records on the Customer Service Portal.
2. Add the necessary ACLs to the snc_external role for the following tables.
◦ Change Request (change_request)
◦ Request (sc_request)
◦ Request Item (sc_req_item)

Note: The sn_esm_user role provides access to the approval records where the
logged-in user is the approver and enables the logged-in user to either approve or reject
the approval request. Customer Service Management requester roles (including the
customer contact, partner contact, customer admin, and partner admin roles) contain the
sn_esm_user role, which enables these roles to perform the approve and actions.
For more information, see Table ACL rules

and Field ACL rules

.

Enable the Create Request UI action for case types
Enable the Create Request UI action for case type tables that extend the Case
[sn_customerservice_case] table.

Before you begin

Role required: admin

About this task

To enable the Create Request UI action for a case type table that extends the Case table, add an
entry for the case type to the Request Parent Mapping [request_parent_mapping] table.
When an agent creates a request for a case in the case type table, the system adds the request
to the Requests tab on the case record.

Procedure
1. Navigate to All > System Definition > Tables.
2. Select the Request Parent Mapping [request_parent_mapping] table.
3. Select the Show List related link to open the list view for the table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
4. Select New to create an entry for the case type table.
5. Fill in the following fields in the Request Parent Mapping record.
a. Enter a name for the entry in the Name field.
b. Select the case type table in the Parent table field.
c. In the Request parent field, select Parent.
d. In the Parent requestor field, select Contact.
6. Select Submit.

Create incident, problem, change, and request records from cases
As customer service agents, create incident, problem, change, and request records from open
cases in workspaces.
Create an incident record from a case
As a customer service agent, create an incident record from a case or associate an existing
incident with a case in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

Procedure
1. Open a customer service case.
2. Select the More UI Actions icon (
) and select Create Incident.
The following information is copied from the case to the incident record:
Case to incident field mapping
Case fields

Incident fields

Short description

Short description

Default impact

Impact

Urgency

Urgency

Contact

Caller

Configuration item (if available)

Configuration item

Note: You can manually change the incident impact and urgency to different values on
the incident record as needed.

Result

Information about the incident is added as follows:
• An update with the incident number is added to the case work notes.
• The incident is added to the Incident field in the Related Records form section on the case
form.
• The case number is added to the Customer Cases related list on the Incident record.
• If the case has an associated Problem, Change Request, or Caused by Change record, this
information is also copied to the incident record.
• The domain of the incident is mapped to the domain of the case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Create a problem record from a case
As a customer service agent, create a problem record from a case or associate an existing
problem with a case in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

Procedure
1. Open a customer service case.
2. Select the More Actions icon ( ) and select Create Problem.
The following information is copied from the case to the Problem record:
Case to problem field mapping
Case fields

Problem fields

Short description

Problem statement

Impact

Impact

Urgency

Urgency

Priority

Priority

Company

Company

Configuration item (if available)

Configuration item (if blank on case, agent
can manually update on problem record)

Case sys_id

First reported by

Note: You can manually change the problem impact and urgency to different values on
the Problem record as needed.

Result

Information about the problem is added as follows:
• An update with the problem number is added to the case work notes.
• The problem is added to the Problem field in the Related Records form section on the case
form.
• The case number is added to the Customer Cases related list on the Problem record.
• The domain of the problem is mapped to the domain of the case.
Create a normal change record from a case
As a customer service agent, create a normal change record from a case or associate an existing
normal change record with a case in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

Procedure
1. Open a customer service case.
2. Select the More Actions icon ( ) and select Create Normal Change.
The following information is copied from the case to the change record:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
Normal Change record fields
Case fields

Change fields

Short description

Short description

Description

Description

Impact

Impact

Urgency

Urgency

Priority

Priority

Company

Company

Contact

Caller

Configuration item (if available)

Configuration item

Note: The change manager can
update the configuration item on the
change record. If the configuration item
is not available, the agent can also
manually update this information.

Note: You can manually change the change impact and urgency to different values on
the change record as needed.
Default values are added to the following fields on the change record:
◦ Type: Normal
◦ State: New
◦ Category: Other
◦ Risk: Moderate

Result

Information about the change is added as follows:
• An update with the change number is added to the case work notes.
• The change is added to the Change Request field in the Related Records form section on the
case form.
• The case number is added to the Customer Cases related list on the Chnage record.
• The Requested by field on the change record is updated with the case agent.
• The domain of the change is mapped to the domain of the case.
Create a standard change record from a case
As a customer service agent, create a standard change record from a case or associate an
existing standard change record with a case in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
Procedure
1. Open a customer service case.
2. Select the More Actions icon ( ) and select Create Standard Change.
The standard change record is created using the Standard Change template, which is defined
in the Standard Change catalog. The data mapping is created from the template; no data is
copied from the case to the change record.
Create a request record from a case
As a customer service agent, create a request record from a case or associate an existing
request with a case in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

Procedure
1. Open a customer service case.
2. Select the More Actions icon ( ) and select Create Request.
The following information is copied from the case to the request record:
Case to request field mapping
Case fields

Request fields

Short description

Short description

Contact

Contact

Note: You can manually change the request impact and urgency to different values on
the request record as needed.

Result

Information about the incident is added as follows:
• An update with the request number is added to the case work notes.
• The request is associated with the case and is added to the Requests related list on the Case
form.
• The case number is added to the Customer Cases related list on the request record.
• The domain of the request is mapped to the domain of the case.

Create a request from the Customer and Consumer Service Portals
As customers, you can create and submit requests from the Customer and Consumer Service
Portals. The request process is integrated with Service Catalog.

Before you begin

Role required: sn_customerservice.customer_admin, sn_customerservice.partner,
sn_customerservice.customer_case_manager, sn_customerservice.customer,
sn_customerservice.consumer, sn_customerservice.proxy_contact

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


<!-- page 1398 -->
About this task

Note: Creating a request from the Customer and Consumer Service Portals
requires activation of the Customer Service with Request Management plugin
(com.sn_cs_sm_request). It also requires that the system administrator provide external
customers with access to request records.

Partners, partner administrators, and proxy contacts can submit requests on behalf of other
accounts or contacts with the addition of the following variable set to the desired catalog items:
csm_request_variable_set. This variable set adds the Account and Contact fields. For more
information, see Service catalog variable sets .

Procedure
1. Do one of the following to create a request:
◦ Click the Request Something link on the portal landing page.
◦ Click Requests > Request Something in the portal menu header.
2. Browse the service catalog and select the desired item or service.
You can also use the Category filters to filter the available items.
3. Fill in any necessary information related to the request.
4. Click Submit.
The following information is copied from the request to the case:
Request to case field mapping
Request fields

Case fields

Short description

Short description

Requested for

Contact

Account

Account

Result
• A new case is created, which becomes the parent of the request. One request is associated
with a case and a request contains one item.
• The case is used as the reference for the customer, who can see the request status and
updates from the case on the Customer Service Portal.
• All cases associated with a request appear on the request record in the Cases related list.

Integrating with Service Portfolio Management
Integrate Customer Service Management with the Service Portfolio Management (SPM)
application. This integration gives customer service managers, customer service agents, and
service owners visibility into sold products and their associated service offerings.
Using the integration between Customer Service Management and Service Portfolio
Management has the following benefits:
• Increase customer service agent productivity: Empower customer service agents to quickly
view the service offerings and associated definitions for sold products.
• Increase service owner productivity: Empower service owners to quickly identify customers
subscribed to services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
The Customer Service Management integration with Service Portfolio Management can be used
in the following ways.
1. Customer service managers can associate service offerings to product models. For more
details, see Associate services with product models
2. Customer service managers can associate service offerings to sold products. For more details,
see Associate service offerings with sold products
3. Service owners can view service offerings and which customers have subscribed to them.
4. Customer service agents can view which service offerings are associated to the sold products
affected by an issue. They can also see the service commitments and availability. For more
details, see View sold product information in CSM Configurable Workspace

Activation information
Activate the following plugin.

Name

Description

CSM with Service Portfolio Management
(SPM)

Enables integration with the Service Portfolio
Management (SPM) application. This
integration gives customer service managers,
customer service agents, and service owners
visibility into sold products and their service
offerings.

[sn_csm_spm]

Roles
Ensure that users can perform all the necessary actions by assigning roles.
Roles required for Service Portfolio Management (SPM) application integration
Role

Description

service_editor

Assign this role to customer service managers
if they need to update any service offerings
they own.

portfolio_admin

Assign this role to customer service managers
if they need to associate service offerings to a
product model.

Integrate with Service Portfolio Management using Guided Setup
Use the Guided Setup to integrate Customer Service Management with the Service Portfolio
Management (SPM) application.

Before you begin

Role required: admin

About this task

To configure the integration with Service Portfolio Management, use the Customer Service
guided setup. The guided setup takes you through the entire setup and configuration process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Integration with Service Portfolio Management (SPM) category, view the list of tasks to
configure the feature.
Service Portfolio Management configuration tasks
Task

Description

Activate Customer Service Management with
Service Portfolio Management

Activate the CSM with Service Portfolio
Management (SPM) plugin to use
the integration with Service Portfolio
Management.

Configure form views

Configure the form layout and related lists for
the Sold Product, Case, Account, and Service
Offering forms. Configuration provides users
with information regarding which service
offerings are associated with each sold
product.

Assign roles

Assign the required roles to customer service
managers based on your organization's
existing roles and responsibilities.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Service Portfolio Management

Activate Customer Service Management with Service Portfolio Management
Activate the CSM with Service Portfolio Management (SPM) plugin to use the integration with
Service Portfolio Management.

Before you begin

Consider using guided setup to complete the Service Portfolio Management configuration. For
more information, see Integrate with Service Portfolio Management using Guided Setup.

Note: Check your entitlements to determine whether you have access to the integration
with Service Portfolio Management and the CSM with Service Portfolio Management (SPM)
plugin (sn_csm_spm).
Role required: admin

Procedure
1. Navigate to System Definition > Plugins.
2. Search for the sn_csm_spm plugin.
3. Select Activate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Configure form views for Service Portfolio Management integration
Configure the form layout and related lists for the Sold Product, Case, Account, and Service
Offering forms to provide users with the correct visibility into which service offerings are
associated with which sold products.

Before you begin

Role required: admin
Instead of doing the configuration through this procedure, consider using guided setup. For more
information, see Integrate with Service Portfolio Management using Guided Setup.

Procedure
1. Navigate to Customer Service.
2. Add the following fields to forms and related lists, as required.
Configure form views
Form

Procedure

Service Offering

Add the Add the Sold Products related list to provide service
owners visibility into which customers have subscribed to
which service offerings.

Product Model forms

Add the Offerings (Offering > Model ID) related list on the
Product Model/Service Model forms to enable customer
service managers to associate service offerings to product
models. To enable the Edit button on the Offerings related
list:
a. Configure the list control and deselect the Omit Edit check
box.
b. Add the sn_customerservice_manager role.
If you do not see the Edit button enabled, see Assign roles
for Service Portfolio Management integration for more details.

Note: To configure catalog items for product models,
add the Catalog Items related list. For more information,
see Configure product model and catalog item
relationships.
Sold Products on the Account Add the Service Offering column to the Sold Products
form
related list to enable customer service agents or managers to
view service offerings associated with the sold product for an
account or consumer.
Case

Add the Service Offering field for the Sold Product to the
Case form. This enables customer service agents dealing
with customer issues to see the service offering associated
with sold product for a case.

Sold Product

Add the Service Offering field to the Sold Product form to
enable customer service managers to associate a service
offering to a sold product for an account or consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
Assign roles for Service Portfolio Management integration
Assign the required roles to customer service managers based on the roles and responsibilities
in your organization.

Before you begin

Role required: admin
Instead of doing the configuration through this procedure, consider using guided setup. For more
information, see Integrate with Service Portfolio Management using Guided Setup.

Procedure
1. Assign the service_editor role to customer service managers if they need to update any service
offerings they own.
2. Assign the portfolio_admin role to customer service managers if they need to associate service
offerings to a product model.

Integrating with Continual Improvement Management
Integrate Customer Service Management (CSM) with the Continual Improvement Management
(CIM) application to request improvement opportunities and to implement phases and tasks to
meet performance goals, track progress, and measure success.
You can use CIM for improvements to Performance Analytics (PA) indicators and to service
operations. For example, create a new improvement initiative to:
• Reduce the open case backlog.
• Improve the average case response time.
See Continual Improvement Management
for more information about how CIM can help you
with setting goals, organizing effort, and completing tasks.

Use CIM with Customer Service Management
To use CIM with Customer Service Management, you must request the Continual Improvement
Management (com.sn_cim) plugin. For more information, see Request Continual Improvement
Management .
Related topics
Continual Improvement Management overview
Continual Improvement Management roles
Requesting improvements
Managing improvements

Integrate with Continual Improvement Management
Customer Service Management provides an integration with the Continual Improvement
Management application. This integration enables you to request improvement opportunities
and to implement phases and tasks to meet performance goals, track progress, and measure
success.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the Continual Improvement Management (com.sn_cim) plugin.
3. Click Activate.

Integrating with IT Operations Management
The Proactive Customer Service Operations plugin (com.snc.proactive_cs_itom) provides an
integration between Customer Service Management and the Event Management console in IT
Operations Management.
This integration enables you to create cases proactively from alerts either manually or through
automation and track the accounts and the corresponding install base items affected by the
alert. It also enables you to view the service health status of their install base items.
For more information, see Integration with Event Management.

Integrate with ITOM Event Management
Customer Service Management provides an integration with the ITOM Event Management
application. This integration enables you to create cases proactively from alerts either manually
or through automation and track the accounts and the corresponding install base items affected
by the alert.

Before you begin

Role required: admin

About this task

For more information about this integration, see Integration with Event Management.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the Proactive Customer Service with Event Management plugin
(com.snc.proactive_cs_itom).
3. Select Activate.

Integrating with Customer Project Management
Integrate Customer Service Management with the Project Portfolio Management application.
This integration enables customers to manage complex projects with multiple tasks and provide
end users with visibility into these projects.
®

Customer Service Management provides an integration with the ServiceNow PPM Standard
application, earlier known as Project Portfolio Suite with Financials.
Customers can use this integration to create projects and project tasks for their customer
accounts. Customers can also provide end users with visibility into their projects and tasks from
the Customer Service Portal and enable them to request additional actions.

Product use rights included with this application
When subscribed to the Strategic Portfolio Management (SPM) Subscription Product, Customer
Service Management users can create and edit projects. External CSM users can view
projects‑and‑edit project tasks of their own or related‑accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
Plugin
Users with the system administrator role can activate the Customer Project Management plugin
(com.snc.csm_ppm).

Note: This plugin requires the Customer Service plugin (com.sn_customerservice) and the
PPM Standard plugin (com.snc.financial_planning_pmo).
The Customer Project Management plugin adds the Customer Service > Projects module to the
application navigator. Users with the customer project manager role can access this module.

Customer Project Management Guided Setup
Activating the Customer Project Management plugin adds the Customer Project Management
section to the Customer Service Management Guided Setup. For more information, see Integrate
with Customer Project Management using Guided Setup.

Integrate with Customer Project Management using Guided Setup
Use the Customer Service Management Guided Setup to configure Customer Project
Management.

Before you begin

Role required: admin

About this task

You can configure a number of different processes and components for the Customer Project
Management feature using Guided Setup.

Procedure
1. Navigate to Customer Service > Administration > Guided Setup.
2. Select Get Started on the Customer Service Management home page.
3. Scroll through the list of categories, locate Customer Project Management, and select Get
Started.
The following table provides a description of the configuration steps included in this guided
setup section.
Customer Project Management configuration tasks
Task

Description

Activate PPM Standard.

Activate the PPM Standard plugin
(com.snc.financial_planning_pmo).

Activate Customer Project
Management.

Activate the Customer Project Management plugin
(com.snc.csm_ppm).

Configure form views.

Configure the Case form and add the following fields
to the Case view, Workspace view, and Customer SelfService view:
◦ Project
◦ Project Task
◦ Issue
◦ Project Change Request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Task

Description

Configure related lists.

Configure the Account form and add the Projects
related list to the Case view and Workspace view.
Configure the Contact form and add the Projects
related list to the Case view and Workspace view.
Configure the Customer Project Task form and add the
following related lists to the Default view: Work Order
> Initiated From.
This step can only be completed if the following
plugins are active:
◦ Customer Service with Field Service Management
(com.snc.csm_fsm_integration)
◦ Field Service with Project Management
(com.snc.wm_ppm)

Configure notifications.

Configure the Send Email to Contact when Customer
Project Task is assigned Flow Designer flow to send
an email to the assigned contact when a customer
project task is assigned.
Configure the Send Email to SO member when SO
Customer Project Task is assigned flow to send an
email to assignees when assigned is changed on a
customer project task that is customer visible.
On selecting Configure, the following details of the
selected flow are displayed and can be configured as
required:
◦ Project number and name
◦ Task number and short description
◦ Task planned start and end dates and duration

Configure Flow Designer flows.

Use Flow Designer flows provided with Customer
Project Management to:
◦ Configure the fields that are copied over, when you
create a project issue or project change request from
a case.
◦ Update the work notes for a case record when
the state of an associated project issue or project
change request is updated.
◦ Close a case record when an associated project
issue or project change request is closed.
Create Project Issue from Case: When a project issue
is created from a case, this flow copies the Priority and
Short description fields from the case to the project
issue record. This flow is active by default.
Create Project Change Request from Case: When a
project change request is created from a case, this flow
copies the Priority and Short description fields from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Task

Description

the case to the project change request record. This
flow is active by default.
Update and Close Case Record on Issue Closure: This
flow enables you to automatically:
◦ Update the case work notes when the state of an
associated issue is updated.
◦ Close a case if the state of the associated issue is
set to Closed.
Activate this flow as needed.
Update and Close Case Record on Project Change
Closure: This flow enables you to automatically:
◦ Update the case work notes when the state of an
associated project change request is updated.
◦ Close a case if the state of the associated project
change request is set to Closed.
Activate this flow as needed.
Assign Access Controls (ACLs)

Assign ACLs to the Customer Service Management
user roles to provide access to the Project Portfolio
Management tables, including the Project Change
Request, Status Report, and Issues tables.

Customer Project Management personas, roles, and tables
An overview of the tasks that can be performed by the different Customer Project Management
roles.

Personas and roles
The following table lists the personas, their description, and the roles included with them.
Customer Service Management personas and roles
Persona

Description

Customer project manager

A user who creates and
manages projects for
customer accounts.

Required roles

• it_project_manager
• sn_customerservice.projectmanager

• Creates projects.
• Set up project tasks and
resource plans.
• Identifies customer contacts
who have access to projects
and project tasks.
• Assigns and manages tasks
and dependencies.

Location Project Member

Views project details
and project tasks of their
respective business location.

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Customer Service Management personas and roles (continued)
Persona

Description

Required roles

[sn_bus_loc.location_project_stakeholder]
Marks project task as
complete.
Views project details
and project tasks of their
respective business location
and child business locations.
[sn_bus_loc.location_manager_project_stakeholder]
Marks project task as
complete.
Location Project Manager
Contributor

Service Organization Project
Manager

This role can perform the
following actions:

[sn_service_org.project_manager]• Project initiation: Creates
and launches projects

None

• sn_bus_loc.ibl_viewer
• sn_bus_loc.ebl_viewer

Note: Service
Organization project
manager and
customer project
manager can access
all project modules.
• Project planning: Develops
project plans, such as, task
assignments and resource
allocation.

Note: On task
assignment, an
automated mail is
generated. Update
"Send Email to Contact
when Customer
Project Task is
assigned" flow to
disable or enable
notifications.
• Task management:
Monitors and manages
task dependencies and
execution.
• Coordination: Views and
collaborates with location
staff, assigning, and tracking
tasks of their respective
location.
Project stakeholder

A user who is responsible for
activities that require viewing

• sn_customerservice.projectstakeholder
• Minimum one CSM role

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
Customer Service Management personas and roles (continued)
Persona

Description

Required roles

customer project details and
project tasks.
Customer service agent

A user who can create cases
from projects and project
tasks and resolve cases within
the set SLA.

• sn_customerservice_agent
• sn_customerservice.projectstakeholder

• work on cases created from
projects and project tasks.
• Communicates with the
customer on case status.
Customer

An external user who is
Any of the following CSM
responsible for overseeing the external roles:
project delivery.
• sn_customerservice.customer
• Review project status and
• sn_customerservice.customer_admin
progress on the Customer
• sn_customerservice.partner
Service Portal.
• Completes assigned tasks.

• sn_customerservice.partner_admin

• Creates cases for project
issues.

Tables
Tables are added with activation of the Customer Project Management plugin.
Customer Project Management tables
Table

Description

Customer Project

Stores customer projects.

[customer_project]
Customer Project Task

Stores customer project tasks

[customer_project_task]
Project Contact

Stores project contacts.

[project_contact]
The following columns are added to the Case table:
• Customer Project
• Customer Project Task
• Issue
• Project Change Request
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
Customer Project Management domain separation
With Customer Project Management, you can create customer projects for customer accounts.
Domain separation for customer projects is based on the account domain. New projects are
created in the same domain as the associated customer account.
Customer project child entities use the domain of the parent project. Child entities include:
• Project tasks
• Requirements
• Project budget
• Status reports
• Risks
• Issues
• Decisions
• Actions
• Project change requests
• Stakeholders
• Project contacts
• Expense lines
• Time cards
The project manager can add sub projects to a customer project if the sub projects belong to the
following accounts:
• Accounts in the same hierarchy as the main project account.
• Accounts that have a relationship to the main project account.

Customer project manager tasks
A customer project manager can perform specific tasks to manage projects for customer
accounts.
A customer project manager requires the following roles to perform the tasks described in the
following table:
• it_project_manager
• sn_customerservice.projectmanager
Customer project manager tasks
Task

Create a project for a customer account

Details

1. Navigate to Customer Service > Projects >
Create New.
2. Enter a name for the project in the Project
Name field.
3. Select an account in the Account field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
Customer project manager tasks (continued)
Task

Details

4. Fill in additional project information.
5. Click Save.
Create a project for a customer account from a
1. Navigate to Customer Service > Projects >
project template
Create New.
2. Click a template at the bottom of the form
to apply the template to the project. If the
templates do not appear at the bottom of
the form, click the More options icon at the
top of the form and select Toggle Template
Bar.
3. Enter a name for the project in the Project
Name field.
4. Select an account in the Account field.
5. Fill in additional project information.
6. Click Save.
Create a project task for a customer project

1. Navigate to Customer Service > Projects >
All.
2. Select a project.
3. In the Project Tasks related list, click New.
4. Add a short description for the task.
5. Fill in additional project task information.
6. Click Save.

Identify the project tasks on a project template
1. Navigate to Customer Service > Projects >
that are visible to external customers
Templates.
2. Select a template.
3. In the Project Template Tasks related list,
select a task.
4. In the Data section of the Project Template
Task form, add the Visible to customer field
and set it to true.
5. Click Update.
6. Repeat for other project tasks as needed.
Identify project tasks that are visible to
external users

1. Navigate to Customer Service > Projects >
All.
2. Select a project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
Customer project manager tasks (continued)
Task

Details

3. In the Project Tasks related list, select a
task.
4. Enable the Visible to customers field.
5. Click Save.
Identify the account contacts who have
access to a project

To give customers visibility into projects from
the Customer Service Portal, you must add
one or more contacts to the project.
• Contacts must belong to the account linked
with the project.
• Partner contacts must have access to the
account linked with the project.
• Contacts who have a relationship with the
account can also be added to the project.
1. Navigate to Customer Service > Projects >
All.
2. Select a project.
3. In the Project Contacts related list, click
New.
4. Select a contact in the Contact field and
click Submit.

Assign project tasks to internal users,
customer contacts, or customer partner
contacts

See Assign a project task .

See the cases that have been created for a
project or project task

View cases in the Cases related list on the
Customer Project form and Customer Project
Task form. Click a case to view the case
details.

Note: The customer project manager
has read-only access to the Case form.
Add a comment or an attachment to a case
that has been created for a project or project
task

1. Navigate to Customer Service > Projects >
All.
2. Select a project.
3. In the Cases related list, select a case.
4. Add a comment in Additional comments
field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
Customer project manager tasks (continued)
Task

Details

5. Click the attachment icon, select a file, and
attach it to the case.
6. Click Update.
Create project change requests and project
issues for cases that have been created for a
project or project task

See the following tasks:
• Create a project issue for a case
• Create a project change request for a case

Save a customer project as a template

1. Navigate to Customer Service > Projects >
All.
2. Select a project.
3. Click the Save as New Template related link.
4. In the Create Template popup window, enter
a template name and description.
5. Click OK.
6. Update the template as needed and click
Update.

Assign a project task
The customer project manager can assign a customer project task to an internal user, a customer
or partner contact, or a contact that has a relationships to the account.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

About this task

Assigning a task to an external user enables the Visible to customer field on the Project Task
form. Customers can view assigned tasks in the Project Tasks list on the Customer Service
Portal. The system sends an email notification to the customer when a customer project task is
assigned.

Procedure
1. Navigate to Customer Service > Projects > All.
2. Click a project in the Customer Projects list.
3. Click the Project Tasks related list on the Customer Project form.
4. Click a task to open the Customer Project Task form.
5. Select a contact or partner contact in the Assigned to field.
Users are stored in the User [sys_user] table.
6. Click Update.
The system sends an email notification to the assigned user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Create a project issue for a case
The customer project manager can create project issues for cases that have been created for
customer projects and project tasks.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

About this task

The project manager can create one issue for a case.

Procedure
1. Navigate to Customer Service > Projects > All.
2. Click a project in the Customer Projects list.
3. In the Cases related list, click a case.
4. Click Create Issue on the Case form.
The system creates a new issue for the project and copies the Short description and Priority
from the case.
5. Fill in the details for the issue and click Save.
The system does the following after you save the issue:
◦ Adds the case number to the activity stream on the Issue form.
◦ Adds the issue number to the activity stream on the Case form.
◦ Adds the issue to the Issues related list on the Customer Project form.
◦ Adds the issue to the Issue field in the Related Records section of the Case form.
Create a project change request for a case
The customer project manager can create project change requests for cases that have been
created for customer projects and project tasks.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

About this task

The project manager can create one project change request for a case.

Procedure
1. Navigate to Customer Service > Projects > All.
2. Click a project in the Customer Projects list.
3. In the Cases related list, click a case.
4. Click Create Project Change Request on the Case form.
The system creates a new change request for the project, copies the case short description to
the Title field, and the case priority to the Priority field.
5. Fill in the details for the change request and click Save.
The system does the following after you save the change request:
◦ Adds the case number to the activity stream on the Project Change Request form.
◦ Adds the project change request number to the activity stream on the Case form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
◦ Adds the project change request to the Project Change Requests related list on the
Customer Project form.
◦ Adds the project change request to the Project Change Request field in the Related
Records section of the Case form.
Create a customer project from an idea
Create a customer project from an idea on the Idea Portal.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

About this task

The Idea Portal provides a central location to collect, curate, and promote ideas into demand,
project, epic, or story. With the Customer Service Management integration with Project Portfolio
Management, you can also create a customer project from an idea. For more information, see
Idea Portal .

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Click the title of an idea that you want to create a task for.
3. Open the idea in form view by clicking the More Options icon and selecting Open in platform.
4. In the Idea pop-up window, click Create Task.
5. In the Convert Idea to Task pop-up window, select Customer Project in the Select task type
field and click OK.
The system creates the project and displays the project number in an information message at
the top of the Idea pop-up window. On the Customer Project form, the idea record is added to
the Ideas related list.
Create a customer project from a demand
Create a customer project from a demand record.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

Procedure
1. Create a demand record by navigating to Demand > Demands > Create New.
2. Fill in the fields on the Demand form and click Save.
For more information about the fields on this form, see Create a demand

.

3. Open the demand record and click the Create Project related link.
4. In the Create Project pop-up window, select Customer Project in the Project class field.
5. Click OK.
The system creates the project and displays the project number in an information message at
the top of the Demand form. On the Customer Project form, the demand record is added to the
Demands related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
Customer service agent tasks
A customer service agent can view customer projects and create cases for customer projects
and tasks.
An agent must have the following roles to perform the tasks described in the following table:
• sn_customerservice_agent
• sn_customerservice.projectstakeholder
Customer service agent tasks
Task

Details

View customer projects

Customer service agents can view a list of
customer projects by navigating to Customer
Service > Projects > All. Click a project in this
list to view project details on the Customer
Project form, including project tasks, project
contacts, and sub projects.

Note: Agents have read-only access to
project details.
View the projects and project tasks created for Customer service agents can see projects
an account
that are linked to customer accounts. From
a customer account record, agents can see
the projects for that account in the Projects
related list.
Click a project in this list to view project details
on the Customer Project form, including
project tasks, project contacts, and sub
projects.

Note: Agents have read-only access to
project details.
See the projects and project tasks associated
with a contact

Customer service agents can see the projects
and project tasks that are associated with
a contact. Navigate to Customer Service >
Customer > Contacts and select a contact.
• Click the Projects related list to see
projects.
• Click the Project Tasks related list to see
tasks.

Note: If necessary, configure the
Contact form to add these related lists.
Create a case for a project

Customer service agents and agent managers
can create cases for customer projects.
When creating a case, the agent selects a
project in the Project field on the Case form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


<!-- page 1416 -->
Customer service agent tasks (continued)
Task

Details

• If an account has been selected in the
Account field, the agent can select from
the projects that are associated with that
account.
• If the Account field is empty, the agent
can select from all projects that have been
created for an account. Upon selection,
the Account field is populated with the
associated account.
When created from a project, these fields are
automatically set on the Case form.
Cases created for a project appear in the
Cases related list on the Customer Project
form.
Create a case for a project task

Customer service agents and agent managers
can create cases for customer project tasks.
When creating a case, the agent selects a task
in the Project Task field on the Case form.
• If a project has been selected in the Project
field, the agent can select from the project
tasks that have been created for that
project.
• If the Project field is empty, the agent can
select from the project tasks for all projects
that have been created for an account. Upon
selection, the Project and Account fields
are populated with the associated project
and account.
When created from a project task, these fields
are automatically set on the Case form.
Cases created for a project task appear in the
Cases related list on the Customer Project
form and the Customer Project Task form.

Customer tasks
From the Customer Service Portal, external users can view projects, complete assigned tasks,
and create cases for project issues.
A user must have one of the following CSM external roles to perform the tasks described in the
following table:
• sn_customerservice.customer
• sn_customerservice.customer_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
• sn_customerservice.partner
• sn_customerservice.partner_admin
Various customer tasks
Task

Details

View projects and project details

Customers can view the projects created for
their accounts if they've been associated with
the project as a project contact. Customers
have read-only access to project details on the
Customer Project form.
Customers can also view records in
the following related lists if the system
administrator has configured the
corresponding ACLs for each of the tables.
• Customer Project Tasks
• Project Change Requests
• Status Reports
• Sub Projects
• Work Orders
• Project Contacts

Note: The Work Orders related list
is displayed if the following plugins
are active: Field Service with Project
Management (com.snc.wm_ppm)
and Customer Service with
Field Service Management
(com.snc.csm_fsm_integration).
To view projects:
1. Click Support in the Customer Service
Portal header.
2. Click Projects and select a project from the
Customer Projects list.
3. View the details in the Customer Project
form.
View and update project tasks

Customers can view project tasks for the
projects that have been created for their
accounts if:
• They have been associated with the project
as a project contact.
• The project tasks have been marked as
Visible to customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
Various customer tasks (continued)
Task

Details

Customers can view and update project
tasks that have been assigned to them by the
customer project manager.
To view and update project tasks:
1. Click My Lists in the Customer Service
Portal header.
2. Click My Project Tasks and select a task
from the Customer Project Tasks list.
3. View the details in the Customer Project
Task form.
4. Update the Actual start date and Actual
end date fields as needed and click Save.
5. Add a comment in the Activity field and
click Post.

Note: Customers can also view tasks
directly from Support > Projects >
Project Tasks.
Complete project tasks

When a customer completes the work for
a project task, they can mark the task as
complete.
1. Click My Lists in the Customer Service
Portal header.
2. Click My Project Tasks and select a task
from the Customer Project Tasks list.
3. Click Mark Complete in the Actions widget.

Create cases for projects and project tasks

Customers can create cases for projects and
project tasks if they have been associated with
a project as a project contact. Customers can
create cases in two ways:
• From a project or, project task form.
• From the Case menu in the Customer
Service Portal header.
To create a case from a project or project task:
1. Navigate to a Customer Project form or a
Customer Project Task form.
2. Click Create Case in the Actions widget.
3. Fill in the fields on the Create Project Case
record producer. The Project and Project
Task fields are auto populated.
4. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
Various customer tasks (continued)
Task

Details

To create a case from the Case menu.
1. Click Case in the Customer Service Portal
header and select Create Project Case.
2. Fill in the fields on the Create Project Case
record producer.
3. Click Submit.
The Create Project Case record producer
includes Project and Project Task fields.
These fields are displayed if a customer has
access to any of the project tasks. Project and
project task selection is limited to the projects
for the customer's account.
View a list of cases created for the projects
and project tasks for an account

Customer administrators, partner
administrators, and customer case managers
can see all cases that have been created for
the projects and project tasks for an account.
1. Click My Lists in the Customer Service
Portal header.
2. Click All Cases in the My Lists widget.

View the project change request and project
issue records created for a case

Customer contacts can view the project
change request and project issue records that
have been created for a case if:
• They have been added to a project as a
project contact.
• The system administrator has configured the
corresponding ACLs for each of the tables.
1. Click My Lists in the Customer Service
Portal header.
2. Click All Cases in the My Lists widget.
3. Select a case from the Cases list.
4. View the records in the Related Records
widget.

Customer Service Investment Portal
The Customer Service Management integration with Project Portfolio Management provides
access to a CSM-specific view of the Investment Portal, which displays customer projects.
Use the CSM Investment Portal to do the following:
• Add CSM-specific columns to investment boards
• Add filters to CSM-specific columns on investment boards

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
You can view both customer projects and IT projects in the IT Investment Portal. For more
information, see Investment Portal
in the Project Management documentation.
Create an investment board on the CSM Investment Portal
Create an investment board on the CSM Investment Portal and add the desired customer service
project-specific information.

Before you begin

Role required: customer project manager (it_project_manager +
sn_customerservice.projectmanager)

Procedure
1. Navigate to All > Customer Service > Projects > Investment Portal.
2. Click New.
3. Fill in the fields on the Create New pop-up window.
For more information about these fields, see Create an investment board

.

4. Click Create.
Once the investment board is created, it opens up in the CSM Investment Portal page.

Integrating with Financial Management
Customer Service Management and Field Service Management provide an integration with the
®
ServiceNow Financial Management application as well as dashboards and reports.
The Financial Management application enables you to allocate, track, and report on expenses in
your organization. When the Financial Management application allocates an expense, it breaks
down the expense into detailed amounts of money called allocations. These allocations can be
associated with specific segments and accounts for a specific cost model. The integration with
Financial Management provides cost allocations for Customer Service Management and Field
Service Management.
Use these cost allocations on the Financial Management workbench, which provides financial
administrators with a graphical interface to allocate expenses. Access the workbench through
the Cost Transparency > Workbench module.

Plugins
Two different plugins, one for Customer Service Management and one for Field Service
Management, enable the integration with Financial Management. These plugins also add
dashboards based on cost allocations.
• Performance Analytics - Content Pack - Financial Management for Customer Service plugin
(com.snc.pa.fm.csm).
• Performance Analytics - Content Pack - Financial Management for Field Service Management
plugin (com.snc.pa.fm.fsm)
The Performance Analytics - Content Pack - Financial Management for Customer Service
plugin includes demo data for FY16: Q1 through FY17: Q2. The demo data includes records with
the CSFM prefix, which indicates that the records are for the Customer Service Management
integration with Financial Management. Activating the plugin adds these records to the Case
(sn_customerservice_case) table.

Note: The Performance Analytics - Content Pack - Financial Management for Field Service
Management plugin doesn’t include demo data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
Cost models
A cost model is a set of rules, methods, and metrics that determines the allocation of expenses.
Select cost models on the Data Definitions tab of the Financial Management workbench.
For Customer Service Management, the integration with Financial Management provides these
cost models:
• CSM Allocation Model for Cost Account: Allocates expenses for individual B2B customer
accounts.
• CSM Allocation Model for Channels: Allocates expenses for communication channels.
For Field Service Management, the integration with Financial Management provides this cost
model:
FSM Allocation Model for Company: Allocates expenses for companies.

Segment hierarchy
All accounts in the chart of accounts belong to segments which are structured in a hierarchy.
This hierarchy enables the roll-up of expenses from lower-level accounts and segments to
higher-level accounts and segments.
• CSM Allocation Model for Cust Account uses this segment hierarchy: Assignment Group >
Product > Customer Account.
• CSM Allocation Model for Channels uses this segment hierarchy: Assignment Group >
Product > Channels.
• FSM Allocation Model for Company uses this segment hierarchy: Assignment Group >
Product > Company.

Account buckets
Use account buckets to categorize cleansed expenses before assigning them to accounts and
segments. Account buckets can be organized in parent-child relationships so that several child
buckets can refer to a single parent bucket.
The Customer Support and Field Service Support account buckets include:
• Facilities
• IT Chargeback
• Payroll and Labor Expenses
• Professional Fees & Services
• Supplies
• Training
• Other expenses

Allocation metrics
Allocation metrics are rules that you can create and use to split an allocation based on
dimensions such as:
• Number of Customer Service cases: Allocate expenses to a product based on the number of
cases closed in a fiscal period.
• Total Customer Service case resolution time: Allocate expenses to a product based on the total
hours worked on cases closed in a fiscal period.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
• Number of Field Service work order tasks: Allocates expenses to a product based on the
number of work order tasks completed in a fiscal period.
• Total work order completion time: Allocates expenses to a product based on the total hours
worked on tasks completed in a fiscal period.
For Customer Service Management, the integration with Financial Management provides these
allocation metrics:
• CSM Allocate to Assignment Groups by Headcount
• CSM Allocate to Product by ‑ Cases
• CSM Allocate to Product by Case Time Worked Duration
• CSM Rollup from AssgGrp to Product by ‑ Cases
• CSM Rollup from AssgGrp to Product by Case Time Worked Duration
• CSM Rollup from Product to Account by ‑ Cases
• CSM Rollup from Product to Account by Case Time Worked Duration
For Field Service Management, the integration with Financial Management provides these
allocation metrics:
• FSM Allocate to Assignment Groups by Headcount
• FSM Allocate to Product by ‑ Work Orders
• FSM Rollup from Product to Company by ‑ Work Orders

User roles
These roles can access the Financial Management workbench (Cost Transparency >
Workbench):
• cost_transparency_analyst
• cost_transparency_admin
• financial_mgmt_user
• financial_mgmt_admin

Dashboards and reports
The Performance Analytics - Content Pack - Financial Management for Customer Service and
Performance Analytics - Content Pack - Financial Management for Field Service Management
plugins provide the following dashboards:
• CSM Financials Dashboard
• FSM Financials Dashboard
Navigate to Performance Analytics > Dashboards and select the desired dashboard from the
Dashboard menu.
Related topics
Financial Management
Financial Management Workbench

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
Integrate with Financial Management
®

Customer Service Management provides an integration with the ServiceNow Financial
Management application as well as dashboards and reports.

Before you begin

Role required: admin

About this task

Note: The Financial Management For CSM plugin
(com.snc.financial_management_for_csm) is no longer available for direct activation by the
system administrator. You can request this plugin through the HI Customer Service system.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the Performance Analytics - Content Pack - Financial Management for Customer
Service plugin (com.snc.pa.fm.csm).
3. Click Activate.

Integrating with Adobe Experience Manager
Extend Customer Service Management and Knowledge Management capabilities through
ServiceNow components in Adobe Experience Manager (AEM) to deliver a pre-integrated web
experience for external customers.
When working with a website built on AEM, you can embed Customer Service Management and
Knowledge Management capabilities related to customer service cases and knowledge articles
respectively within the website. The integration with AEM provides the following advantages:
• Use ServiceNow knowledge and case components on your branded websites built on AEM.
• Ensure a unified and consistent experience for end users to access information when and
where they need it.

Supported AEM versions
Beginning with AEM 6.5, you can add knowledge and case components to pages of your
websites built on AEM and use pages available within the ServiceNow site in AEM as a reference
to design your website content. For more information, see ServiceNow pages in Adobe
Experience Manager, Display ServiceNow knowledge articles on an Adobe Experience Manager
page, and Display ServiceNow cases on an Adobe Experience Manager page.

ServiceNow Components for AEM package
Install the ServiceNow Components for AEM package on your AEM instance. You can
download the package by using the direct download URL
or accessing the package at https://
experience.adobe.com/downloads . For more information, see Experience Cloud Software
Distribution
in the Adobe Help Center.
After you install the package, configure authentication and integration settings for ServiceNow
services and components in AEM. For more information, see Configuring authentication settings
for ServiceNow services and components in AEM and Configuring integration settings for
ServiceNow services and components in AEM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Integrate Customer Service Management with Adobe Experience Manager
Deliver a pre-integrated web experience for external customers by using ServiceNow
components in Adobe Experience Manager (AEM).

Before you begin

Role required: admin

About this task

This task provides the general steps to integrate Customer Service Management and Knowledge
Management capabilities with AEM.

Procedure
1. Install the ServiceNow Components for AEM package on your AEM instance.
You can download the package by using the direct download URL
or accessing the package
at https://experience.adobe.com/downloads . For more information, see Experience Cloud
Software Distribution
in the Adobe Help Center.
2. Configuring authentication settings for ServiceNow services and components in AEM.
3. Configuring integration settings for ServiceNow services and components in AEM.

Configuring authentication settings for ServiceNow services and components
in AEM
Enable logging in to both the Adobe Experience Manager (AEM) instance of your website and
the ServiceNow instance using a third-party OpenID Connect (OIDC) provider that supports both
OIDC and single sign-on (SSO) protocols.
You can select Okta or Microsoft Azure as the third-party OIDC provider that supports both OIDC
and single sign-on (SSO) protocols.

Note: Your AEM instance must use the selected third-party OIDC provider as the SSO
provider.
Register ServiceNow with a third-party OIDC provider
Register ServiceNow as a web application with a third-party OIDC provider to validate the identity
of a user using a JSON Web Token (JWT).

Before you begin

ServiceNow identifies an end user by sending the JWT token containing the end user information
to the OIDC provider. The process to register ServiceNow with the OIDC provider varies
depending on the provider.

Note:
This topic uses Okta as an example, but you can substitute the details of your own OIDC
provider.
Role required: Okta account (Third-party OIDC provider account)

Procedure
1. Log in to your Okta account.
2. Select the Applications menu.
3. On the Applications page, click Add Application.
4. On the Create New Application page, select Web.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
5. Fill in the fields.
OIDC settings
Field

Value

Application
label

Unique application name for your ServiceNow instance.

Authorization
Code

Selected

Refresh Token Selected
Login redirect Callback URL of your AEM instance.
URIs
The URL structure is: https://<AEM-instance>:<AEM_port>/bin/
now/auth/callback
Login initiated App Only
6. Click Done.

What to do next

In the Client Credentials section, record the Client ID and Client secret values for when you set
up Okta as an OAuth provider in your ServiceNow and AEM instances.
Add an OIDC provider to the ServiceNow instance
Add a third-party OIDC provider service to your ServiceNow instance to verify the identity of end
users.

Before you begin

You must have configured the third-party OIDC provider service as an OAuth provider and
recorded your Client ID and Client secret values. For more information, see Register ServiceNow
with a third-party OIDC provider.
Role required: oauth_admin

Procedure
1. Navigate to All > System OAuth > Application Registry.
2. Set up OAuth for your ServiceNow instance.
◦ Click New, select Configure an OIDC provider to verify ID tokens, and then fill in the
Application Registries form.
◦ Select an existing template for your OIDC provider (Okta or Microsoft Azure), and then either
accept the default values in the Application Registries form or modify them.

Note: OIDC provider templates are available after loading demo data with the OAuth
2.0 plugin. For more information, see Configure an OAuth OIDC provider

.

Application Registries form
Field

Description

Name

Unique name for the OAuth provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


<!-- page 1426 -->
Field

Client ID

Client Secret

Description

Client ID you recorded earlier for your ServiceNow instance registered in the
third-party OIDC server. The ServiceNow instance uses the client ID when
requesting an access token.
Client secret you recorded earlier for your ServiceNow instance registered in
the third-party OIDC server.

OAuth OIDC
OIDC provider with which you registered your ServiceNow instance.
Provider
Configuration
Note: Select the record of your OIDC provider configuration or
create another configuration, if not available, to ensure that the OIDC
Metadata URL field value is correct and the User Claim and User Field
fields are mapped correctly.
3. Save your changes.
◦ For an existing template, click Update.
◦ For a new template, click Submit.
Configure OIDC provider details in Adobe Experience Manager
Configure the third-party OIDC provider details in your Adobe Experience Manager (AEM)
instance to access the ServiceNow components as an authenticated user.

Before you begin

You must have configured the third-party OIDC provider service as an OAuth provider and
recorded your Client ID and Client secret values (see Register ServiceNow with a third-party
OIDC provider).
Role required: AEM administrator

About this task

Configure the OIDC provider details in AEM to enable the AEM users to access the ServiceNow
instance as authenticated users. If you don't configure the OIDC provider details in AEM, an AEM
user is considered as a public user when accessing the ServiceNow instance.

Procedure
1. Access the web console in AEM with a URL in the following format: https://
<AEM_hostname>:<AEM_port>/system/console/configMgr.
2. Search for ServiceNow OAuth Configuration.
3. In the Name column, click the ServiceNow OAuth Configuration link.
4. Provide values for the configuration settings.
ServiceNow OAuth Configuration settings
Field

Description

ServiceNow
Client ID

Client ID you recorded when setting up the OAuth for your ServiceNow
instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
Field

Description

ServiceNow Client secret you recorded when setting up the OAuth for your ServiceNow
Client Secret portal.
OAuth
Provider
Auth URL

Authorization server end point used for obtaining the authorization code. In
the following URL structure, substitute the domain name of the authorization
server of your third-party OIDC provider.
Example: https://<auth_server_domain>/oauth2/authorize

OAuth
Provider
Access
Token URL

Authentication server endpoint used for exchanging the authorization code
for an access token. In the following URL structure, substitute the domain
name of the authorization server of your third-party OIDC provider.
Example: https://<auth_server_domain>/oauth2/token

Authorization List of scopes for limiting the authorization access.
request
Note: The default value openid email profile
scope
offline_access works for most OIDC providers (for example, Okta).
User
property to
store refresh
token

Name of the user property to store the authentication refresh token.

Note: Once filled, this token is used to obtain access tokens for that
user in all future requests.

5. Click Save.

Configuring integration settings for ServiceNow services and components in
AEM
You have to set up your ServiceNow services and components to integrate with your Adobe
Experience Manager (AEM) instance.

Settings to enable use of ServiceNow services in AEM
You can define the following types of configuration settings for ServiceNow services in AEM:
• Authentication settings with a third-party OIDC provider (see Configure OIDC provider details
in Adobe Experience Manager).
• Specific settings for ServiceNow services (see Define OSGi configuration settings for
ServiceNow services).
• Log file settings for ServiceNow services (see Configure log file settings for ServiceNow
services in Adobe Experience Manager).

Settings for using ServiceNow components in AEM
To use the Knowledge API endpoint on your AEM instance, you have to define the cross-origin
resource sharing (CORS) rule on your ServiceNow instance. For more information, see Define a
cross-origin resource sharing rule (CORS) to access ServiceNow API endpoints from AEM.
Define OSGi configuration settings for ServiceNow services
Define OSGi configuration settings for ServiceNow services used by ServiceNow components in
Adobe Experience Manager (AEM).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
Before you begin

Role required: AEM administrator

Procedure
1. Access the web console in AEM using a URL in the following format: https://
<AEM_hostname>:<AEM_port>/system/console/configMgr.
2. Search for ServiceNow Configuration.
3. In the Name column, click the ServiceNow Configuration link.
4. Provide values for the configuration settings.
ServiceNow Configuration settings
Field

Description

Base Instance Complete URL of your ServiceNow instance.
URL
Knowledge
Bases

System identifier (sys_id) of a knowledge base that contains associated
knowledge articles. For multiple entries, separate the knowledge bases with
commas.

Note: A blank value indicates articles from all knowledge bases in
your ServiceNow instance are accessible to a user with appropriate
permissions.
Show
Articles in All
Languages

Option to show knowledge articles in all languages for ServiceNow
components.

5. Click Save.
Configure log file settings for ServiceNow services in Adobe Experience Manager
Configure log file settings for ServiceNow services in Adobe Experience Manager (AEM) to
generate debug logs to help identify issues in the authentication process.

Before you begin

Role required: AEM administrator

Procedure
1. Access the web console in AEM using a URL in the following format: https://
<AEM_hostname>:<AEM_port>/system/console/configMgr.
2. Navigate to OSGi > Configuration.
3. Search for and select logs/project-servicenow-components.log: info.
4. Verify the default field values, or fill in your own values for a custom configuration.
Logger configuration settings
Field

Value

Log Level

Debug

Log File

Path of the ServiceNow log file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
Field

Value

Message
Pattern

Message-format pattern for formatting log messages.

Logger

Logger name for ServiceNow login services.

Additivity

Option to disable sending logs to an appender attached higher in the
hierarchy.

5. Click Save.
Define a cross-origin resource sharing rule (CORS) to access ServiceNow API endpoints from
AEM
Define a cross-origin resource sharing (CORS) rule on your ServiceNow instance to access
endpoints of the Knowledge Management REST API, Case API, or CSM Attachment API from
your Adobe Experience Manager (AEM) instance.

Before you begin

Ensure that you have configured the API for which you are defining the CORS rule.
• Activate the Knowledge API plugin (sn_km_api) to use the Knowledge Management REST API
endpoints for knowledge articles. For more information, see Knowledge Management REST
API .
• Activate the Customer Service plugin (com.sn_customerservice) to use the Case API
endpoints for customer service cases. For more information, see Case API .
• Configure the glide.rest.attachment_csm_api.allowed_tables system
property and include the Case [sn_customerservice_case] table to use the CSM Attachment
API end points for case attachments. For more information, see CSM Attachment API .
Role required: web_service_admin

About this task
Procedure
1. Navigate to All > System Web Services > CORS Rules.
2. Click New.
3. On the CORS Rule form, fill in the fields.
CORS Rule form
Field

Description

Name

Name for identifying your CORS rule.

REST
API

REST API this CORS rule applies to.
◦ For knowledge articles, select Knowledge Management REST API [sn_km_api/
knowledge].
◦ For customer service cases, select Case [sn_customerservice/case].
◦ For case attachments, select CSM Attachment API [now/attachment_csm]

Domain AEM instance that this CORS rule applies to.
Max
age

Number of seconds to cache the client session.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
4. In the HTTP Methods related list, select HTTP methods to send a request to a web service
provider.
◦ For knowledge articles, select GET.
◦ For customer service cases, select GET, PUT, POST.
◦ For case attachments, select GET, POST, DELETE.
5. For Case API, in the Exposed headers field of the HTTP Headers related list, enter X-TotalCount.
6. Click Submit.

Customizing the colors of ServiceNow components in AEM
You can define the look and feel of the ServiceNow components in Adobe Experience Manager
(AEM) by specifying colors for them.
As an AEM administrator, you can either modify the color variables preconfigured for all
components or use the initializeCSS function for customizing the colors of a particular
component using a custom CSS class. You specify the custom CSS class for a component in the
Custom CSS Class property. For more information, see Display ServiceNow knowledge articles
on an Adobe Experience Manager page and Display ServiceNow cases on an Adobe Experience
Manager page.

Note: By default, the ServiceNow components are configured using the Bootstrap
v4.4.1 CSS styles. If your AEM page uses a different Bootstrap version, the ServiceNow
components style is overridden by the page style.
Modify the color theme for all ServiceNow components in AEM
Set the color theme for the ServiceNow components in Adobe Experience Manager (AEM) all at
once by configuring the color variables.

Before you begin

Role required: AEM administrator

About this task

Note: By default, the ServiceNow components are configured using the Bootstrap
v4.4.1 CSS styles. If your AEM page uses a different Bootstrap version, the ServiceNow
components style is overridden by the page style.

Procedure
1. Open CRXDE Lite in your browser .
For example, in your browser, enter the URL in the format http://
<AEM_hostname>:<AEM_port>/crx/de. The default URL for CRXDE Lite is http://
localhost:4502/crx/de.
2. Navigate to apps > servicenow-components > clientlibs > clientlib-common.
3. Open the variables.less file.
4. Configure the color variables available for the HTML elements in the ServiceNow components.
Color variable settings
Color setting

Variable

Text content

@text-color

Hyperlinks

@link-color

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Color setting

Variable

Badges

@badge-text-color

Badges background

@badge-background-color

Primary color for visual emphasis

@primary-color

Color complementary to the primary color, for visual emphasis

@secondary-color

Component titles

@title-color

Primary button text

@primary-btn-text-color

Primary button background

@primary-btn-bkg-color

Secondary button text

@secondary-btn-text-color

Secondary button background

@secondary-btn-bkg-color

Note: You specify a color for a variable in one of the following ways:
◦ Color name
For example, red
◦ HEX value
For example, #FF0000
◦ RGB value
For example, rgb(255,0,0)
◦ var function
Use the var function to specify a custom property for a color. For example, var(-gray-dark).
5. From the CRXDE Lite menu, click Save All to save the changes on the AEM server.
Modify the color theme for a ServiceNow component in AEM
Override the color theme for a ServiceNow component in Adobe Experience Manager (AEM) by
using the initialize function.

Before you begin

Role required: AEM administrator

About this task

The color variables you specify in the variables.less file are applied to all ServiceNow
components in AEM. You can override the default colors for a particular component by setting
the color variables for the component in the initializeCSS function.

Note: By default, the ServiceNow components are configured using the Bootstrap
v4.4.1 CSS styles. If your AEM page uses a different Bootstrap version, the ServiceNow
components style is overridden by the page style.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
Procedure
1. Open CRXDE Lite in your browser .
For example, in your browser, enter the URL in the format http://
<AEM_hostname>:<AEM_port>/crx/de. The default URL for CRXDE Lite is http://
localhost:4502/crx/de.
2. Navigate to apps > servicenow-components > clientlibs > clientlib-common.
3. Open the variables.less file.

4. Specify the initializeCSS function for a component in the format
<component_type>;<class_name>;<color_variable_1>;<color_variable_2>;<color_v
◦ component_type: The type of the component on which you want to apply the custom color
theme, for example, articlelist, articleview, casecards, and so on.
◦ class_name: The Custom CSS class you enter in the Custom CSS class property of your
component.
◦ color_variable_1, color_variable_2, color_variable_n: The color variables you specify for the
HTML elements in a component. For more information, see the Color variable settings table.
Use the following sample code as a reference for color styling at the component level.
.initialize(@componentType:articlelist;@className:now-article-l
ist;@text-color:red;
@link-color:orange;@badge-text-color:blue;@badge-background-co
lor:yellow;@title-color:magenta;@secondary-color:indigo;);
.initialize(@componentType:articleview;
@className:now-article-view;@text-color:red;
@link-color:orange;@badge-text-color:blue;@badge-background-co
lor:yellow;@secondary-color:indigo;);
.initialize(@componentType:casecards;
@className:now-case-cards;
@text-color:red;@link-color:orange;@badge-text-color:blue;@bad
ge-background-color:yellow;@title-color:magenta;@secondary-colo
r:indigo;);
.initialize(@componentType:caselist;
@className:now-case-list; @text-color:red;
@link-color:orange;@title-color:magenta;@primary-color:green;@
secondary-btn-text-color:white;@secondary-btn-bkg-color:black
;);
.initialize(@componentType:searchbox;
@className:now-search-box; @text-color:red;
@link-color:orange;@title-color:magenta;@primary-color:green;@
secondary-btn-text-color:white;@secondary-btn-bkg-color:black
;);
.initialize(@componentType:searchresults;@className:now-sear
ch-results;@text-color:gray;
@link-color:orange;@badge-text-color:blue;@badge-background-co
lor:yellow;@title-color:magenta;@secondary-color:indigo;);
.initialize(@componentType:caseview;@className:now-case-view;@t
ext-color:red;@link-color:orange;@primary-color:green;@seconda
ry-color:indigo;@primary-btn-text-color:blue;@primary-btn-bkg-c
olor:white;@secondary-btn-text-color:white;@secondary-btn-bkg-c
olor:blue;);
.initialize(@componentType:createcase;@className:now-create-cas
e;@text-color:red;@link-color:orange;@primary-color:green;@seco
ndary-color:indigo;@primary-btn-text-color:blue;@primary-btn-b
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
kg-color:white;@secondary-btn-text-color:white;@secondary-btn-b
kg-color:blue;)
5. From the CRXDE Lite menu, click Save All to save the changes on the AEM server.

ServiceNow pages in Adobe Experience Manager
Use pages provided on the ServiceNow site in the Adobe Experience Manager (AEM) as a
reference to organize your AEM-based websites and provide a consistent user experience.
An AEM page houses containers, which in turn contain components. By manipulating the layout
of the page and the components within it, you can construct a consistent user experience.
By default, ServiceNow sites and pages aren't accessible to public users, which are anonymous
AEM users who are not logged in. For information about how to publish them and make them
available to anonymous AEM users, see the Adobe documentation topic Publishing pages .

ServiceNow page in AEM for knowledge articles
The following table shows default pages available in the ServiceNow site in AEM and the
knowledge components available on these pages.
ServiceNow pages in AEM for knowledge articles
Page

Description

ServiceNow
Reference page to view
Article Search knowledge article search results.

ServiceNow
Article View

Reference page to view a
knowledge article.

ServiceNow
Article List

Reference page to browse and
search for knowledge articles.

Knowledge components on the page

• Search Box
• Search Results
Article View

• Search Box
• Article List (one each for featured articles
and the most viewed articles lists)

ServiceNow page in AEM for customer service cases
The following table shows default pages available in the ServiceNow site in AEM and the case
components available on these pages.
ServiceNow pages in AEM for customer service cases
Page

Description

Case components on
the page

ServiceNow Create Reference page to create a customer service case.
Case

New Case

ServiceNow Case
View

Reference page to view a customer service case.

Case View

ServiceNow Case
List

Reference page to browse and search for customer Case List
service cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
ServiceNow home page in AEM
The following table shows default home page available in the ServiceNow site in AEM and the
knowledge and case components available on this page.
ServiceNow home page in AEM
Page

ServiceNow components
on the page

Description

ServiceNow Reference page to browse and search for knowledge
Home
articles and create a case.

• Article List
• Search Box
• Case Cards

Display ServiceNow knowledge articles on an Adobe Experience Manager
page
Use knowledge components available within Adobe Experience Manager (AEM) to access
knowledge bases from the ServiceNow instance and display associated knowledge articles on
an AEM-based website.

Before you begin
• Activate the Knowledge API plugin (sn_km_api) to use the Knowledge Management REST API
endpoints for knowledge articles. For more information, see Knowledge Management REST
API .
• Define the cross-origin resource sharing (CORS) rule to access the Knowledge API from your
AEM instance. For more information, see Define a cross-origin resource sharing rule (CORS) to
access ServiceNow API endpoints from AEM.
Role required: AEM author

Procedure
1. Log in to your AEM instance.
2. Open your AEM page in Edit mode
3. Open the components browser

.

.

4. From the All list, select ServiceNow.
5. Drag a component to the required position on the page.

Note: If components are not available, update your template configuration to include
the knowledge components. In addition, you must modify the properties of the site
template and add each knowledge article component to the list of allowed components.
6. Open the component dialog for editing

.

Note: By default, the knowledge components in the Edit mode of a page in AEM aren't
accessible by public users, which are anonymous AEM users who are not logged in. To
change the default behavior, you must enable the Public property for each knowledge
component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
7. Set the Search Results component properties to display knowledge search results that include
a list of knowledge articles from the knowledge bases in the ServiceNow instance.
Search Results component properties
Property

Description

Public

Option to make the content of the component visible to public users. When
selected, the knowledge articles available to unauthenticated users included in
the component are available to all users, including public users.

Knowledge System identifier (sys_id) of a knowledge base that contains associated
Bases
knowledge articles.
Click Add field and enter the sys_id of a knowledge base. You can add multiple
entries.

Note: If you don't add a value, knowledge bases from the OSGi
configuration settings are used for ServiceNow components.
Language

Enables the display of knowledge article search results in different languages.
Select one of the following options:
◦ Select from ServiceNow OSGi Configuration: Knowledge articles are
displayed in the language configured in the OSGi configuration for
ServiceNow components. This value is selected by default.
◦ Restrict to portal language: Knowledge articles are displayed in the language
configured in the AEM site.
◦ All languages: Knowledge articles are displayed in all languages.

Search
parameter

Parameter key for the search query.
Example: kb_query

Secondary Metadata of a knowledge article that appear with the article. Metadata include
fields
information such as the author, the date the article was last updated, and the
date the article was last viewed. For multiple entries, separate the fields by
commas.
Example: author,sys_view_count,sys_updated_on,rating
Search
results
count

Maximum number of articles included in the search results list.

Article
page URL

Relative URL of the article page to redirect to.

Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.

Example: /content/NOWApp/now_article_view.html

8. Set the Search Box component properties to display a search box for users to enter search text
and find knowledge articles in the ServiceNow instance matching the search text.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
Note: Triggering a search from the Search Box component leads to the Search Results
component.
Search Box component properties
Property

Description

Public

Option to make the content of the component visible to public users. When
selected, the knowledge articles available to unauthenticated users included in
the component are available to all users, including public users.

Placeholder Hint text displayed in the search box to provide information about what users
can search for or conditions for the search text.
Example: Search (minimum three characters)
Knowledge
Bases

System identifier (sys_id) of a knowledge base that contains associated
knowledge articles.
Click Add field and enter the sys_id of a knowledge base. You can add multiple
entries.

Note: If you don't add a value, knowledge bases from the OSGi
configuration settings are used for ServiceNow components.
Language

Enables the display of knowledge articles in different languages in the search
box.
Select one of the following options:
◦ Select from ServiceNow OSGi Configuration: Knowledge articles are
displayed in the language configured in the OSGi configuration for
ServiceNow components. This value is selected by default.
◦ Restrict to portal language: Knowledge articles are displayed in the
language configured in the AEM site.
◦ All languages: Knowledge articles are displayed in all languages.

Search
page URL

Relative URL of the search page to redirect to.

Search
parameter

Parameter key for the search query.

Typeahead

Option to enable typeahead search.

Typeahead
search
results
count

Maximum number of articles to include in the typeahead search results list.

Example: /content/NOWApp/now_article_search.html

Example: kb_query

Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.

Article page Relative URL of the article page to redirect to.
URL
Example: /content/NOWApp/now_article_view.html
Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
9. Set the Article View component properties to display knowledge articles and their
attachments, if available, from a ServiceNow instance.
Article View component properties
Property

Description

Public

Option to make the content of the component visible to public users. When
selected, the knowledge articles available to unauthenticated users included in
the component are available to all users, including public users.

Article
Name of the URL query parameter for the article number.
parameter
Example: kb_article
Secondary Metadata of a knowledge article that appear with the article. Metadata include
fields
information such as the author, the date the article was last updated, and the
date the article was last viewed. For multiple entries, separate the fields by
commas.
Example: author,sys_view_count,sys_updated_on,rating
Language Name of the URL query parameter containing the requested language for a
parameter knowledge article.
Example: kb_lang
Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

10. Set the Article List component properties to display a list of knowledge articles depending on
the list criteria.
Article List component properties
Property

Description

Public

Option to make the content of the component visible to public users. When
selected, the knowledge articles available to unauthenticated users included in
the component are available to all users, including public users.

Title

Title corresponding to the articles list that appears as the component header.
Example: Most viewed articles

Knowledge System identifier (sys_id) of a knowledge base that contains associated
Bases
knowledge articles.
Click Add field and enter the sys_id of a knowledge base. You can add multiple
entries.

Note: If you don't add a value, knowledge bases from the OSGi
configuration settings are used for ServiceNow components.
Language

Enables the display of a knowledge article in different languages when viewing
the article.
Select one of the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
Property

Description

◦ Select from ServiceNow OSGi Configuration: Knowledge articles are
displayed in the language configured in the OSGi configuration for
ServiceNow components. This value is selected by default.
◦ Restrict to portal language: Knowledge articles are displayed in the language
configured in the AEM site.
◦ All languages: Knowledge articles are displayed in all languages.
Secondary Metadata of a knowledge article that appear with the article. Metadata include
fields
information such as the author, the date the article was last updated, and the
date the article was last viewed. For multiple entries, separate the fields by
commas.
Example: author,sys_view_count,sys_updated_on,rating
Criteria

List of criteria for the knowledge articles list. Select one of the following options:
◦ Featured: List of featured knowledge articles based on the keywords
configured in the glide.knowman.default_keyword property. For
information about featured articles, see Add a knowledge article to featured
content
and Knowledge properties .
◦ Most Viewed: List of knowledge articles with the most views.

Article
count

Maximum number of articles to include in the articles list.

Article
page URL

Relative URL of the article page to redirect to.

Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.

Example: /content/NOWApp/now_article_view.html

Hide
Option to hide the component when there are no knowledge articles to display.
component
when
empty
Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

Display ServiceNow cases on an Adobe Experience Manager page
Use case components available within Adobe Experience Manager (AEM) to access customer
service cases from the ServiceNow instance and display them on an AEM-based website.

Before you begin

Define the cross-origin resource sharing (CORS) rule to access the Case API and CSM
Attachment API from your AEM instance. For more information, see Define a cross-origin
resource sharing rule (CORS) to access ServiceNow API endpoints from AEM.
Role required: AEM author

About this task

The Case REST API enables you to create, retrieve, and update customer service case records.
For more information, see Case API .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
The CSM Attachment API enables you to upload, download, and remove attachments associated
with customer service cases and to retrieve attachment metadata. For more information, see
CSM Attachment API .

Procedure
1. Log in to your AEM instance.
2. Open your AEM page in Edit mode
3. Open the components browser

.

.

4. From the All list, select ServiceNow.
5. Drag a component to the required position on the page.

Note: If components are not available, update your template configuration to include
the case components. In addition, you must modify the properties of the site template
and add each case component to the list of allowed components.
6. Open the component dialog for editing

.

Note: The case components in the Edit mode of a page in AEM are accessible to all
users, including public users. Public users are anonymous AEM users who are not logged
in.
7. Set the Case Cards component properties to display all open customer service cases from
your ServiceNow instance as column cards.
Case Cards component properties
Property

Description

Title

Title of this component that appears on the AEM page.

Label
Comma-separated label parameters for Case [sn_customerservice_case] table
parameters columns. Each parameter is specified in the format label:column . Where
label is displayed on the component and column is the name of a column
from the Case [sn_customerservice_case] table.
Example: Number:number,Priority:priority,Product:product
Case list
page URL

Relative URL of the case list page to redirect to.

Case view
page URL

Relative URL of the case view page to redirect to.

Example: /content/servicenow/en/now_case_list.html

Example: /content/servicenow/en/now_case_view.html

Hide
Option to hide the component when there are no cases to display.
component
for no
cases
Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

8. Set the New Case component properties for users to create a customer service case in your
ServiceNow instance from your AEM page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
New Case component properties
Property

Description

Title

Title of this component that appears on the AEM page.

Short
description
label

Label for the field to enter a brief description of the case.

Description
label

Label for the field to enter a description of the case.

Product label

Semicolon-separated parameters to define the label and the placeholder
text for the product list.

Asset label

Semicolon-separated parameters to define the label and the placeholder
text for the asset list

Number of list
items

Maximum number of items to include in the product and asset lists.

Show assets

Option to display the asset list on the component.

Case list page
URL

Relative URL of the case list page to redirect to.

Case view
page URL

Relative URL of the case view page to redirect to.

Use the increment or decrement icons to increase or decrease the values.
You can also manually enter a value. The value must be greater than 1.

Example: /content/servicenow/en/now_case_list.html

Example: /content/servicenow/en/now_case_view.html

Note: You need to enter a value for this property to navigate to the
case view page from the Case created window.
Attachment
Maximum size limit for an attachment file that can be added to a case.
file size limit in
MB
Custom CSS
class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

9. Set the Case View component properties to display customer service cases and any
comments and attachments, if available, from a ServiceNow instance.
Case View component properties
Property

Description

Case
parameter

Name of the URL query parameter for the case number.
Example: case_no

Label
Comma-separated label parameters for Case [sn_customerservice_case] table
parameters columns. Each parameter is specified in the format label:column . Where
label is displayed on the component and column is the name of a column
from the Case [sn_customerservice_case] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


<!-- page 1441 -->
Property

Description

Example: Number:number,Priority:priority,Product:product
Activities
count

Maximum number of activities such as comments and attachments to be
displayed on the Activity tab.
Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.

Attachment Maximum size limit for an attachment file that can be added to a case.
file size
limit in MB Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.
Article
page URL

Relative URL of the article page to redirect to.
Example: /content/servicenow/en/now_article_view.html

Note: If an article link is included in a case, you need to enter a value for
this property to navigate to the knowledge article view page from the case.
Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

10. Set the Case List component properties to display a list of customer service cases.
Case List component properties
Property

Description

Title

Title of this component that appears on the AEM page.

Label
Comma-separated label parameters for Case [sn_customerservice_case] table
parameters columns. Each parameter is specified in the format label:column . Where
label is displayed on the component and column is the name of a column
from the Case [sn_customerservice_case] table.
Example: Number:number,Priority:priority,Product:product
Case
count

Maximum number of cases to display on the component.
Use the increment or decrement icons to increase or decrease the values. You
can also manually enter a value. The value must be greater than 1.
The maximum value you can enter for this field is 50.

Show
create
case

Option to display the button to create a case on the component.

Create
case
button
label

Label for the button to create a case.

Case
create
page URL

Relative URL of the case create page to redirect to.
Example: /content/servicenow/en/now_case_create.html

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
Property

Description

Case view
page URL

Relative URL of the case view page to redirect to.

Custom
CSS class

Custom CSS class for applying custom styles to this component. For more
information, see Customizing the colors of ServiceNow components in AEM.

Example: /content/servicenow/en/now_case_view.html

Integrating with Computer Telephony Integration (CTI)
Integrate Customer Service Management with Computer Telephony Integration (CTI). This
integration enables the Customer Service application to support inbound and outbound
telephone calls.
Customer service agents can do the following with CTI:
• Make an outgoing call to a phone number.
• Receive an incoming call from a phone number or from another user within the system.
• Transfer a call to another user within the system.
• Place a call on mute.
• Set their availability status.
CTI does not require any specific user role except the OpenFrame user (sn_openframe_user)
role. Roles are based on the application using CTI.
For more information, see the following topics:
• Computer Telephony Integration
• Computer Telephony Integration workflows
• Callback interaction features

OpenFrame overview
OpenFrame provides a communication frame that customer service agents use to place and
receive customer calls.

OpenFrame user roles
The OpenFrame window is available to agents who belong to one of the user groups specified in
the OpenFrame configuration, and with any of the following roles:
• sn_openframe_user
• sn_customerservice_agent
• sn_customerservice.consumer_agent
• admin

About OpenFrame
®

Use OpenFrame to integrate telephony systems into the ServiceNow AI Platform . Use the
OpenFrame API to communicate between the ServiceNow AI Platform and the domain opened in
the OpenFrame window.
OpenFrame includes these components:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
• TopFrame, a ServiceNow application.
• OpenFrame API, which gets sourced from the partner application. This API communicates with
TopFrame and controls the OpenFrame visual features.
The location of the API is https://[servicenow instance]/scripts/
openframe/1.0.5/openFrameAPI.min.js. This minified version includes other
needed libraries and should be used for integration.
For API reference, you can use the unminified version: https://[servicenow
instance]/scripts/openframe/1.0.5/openFrameAPI.js. This version can’t be
used directly for integration purposes.

Note:
• To stay current with reference to the OpenFrame library, use the following resource
URI: https://[servicenow instance]/scripts/openframe/latest/
openFrameAPI.min.js.
• To integrate softphone into the ServiceNow AI Platform using OpenFrame,
add the third-party URLs of telephony services in the following property:

glide.ui.concourse.onmessage_enforce_same_origin_whitelist.
For more information see, Available system properties , and Enable URL allow list for
cross-origin iframe communication
in Instance Security Hardening Settings.

Using the OpenFrame window
OpenFrame provides support for embedded and contextual phone conversations, including:
• Context identification: Incoming calls maximize the OpenFrame window and display details
about the caller, including the account, contact or consumer name, and phone number.
• Links to forms: Use the openFrameAPI (openServiceNowForm) to create links to forms. When
an incoming call is received, an agent can select the account, contact, consumer, or case
number in the OpenFrame window to open the corresponding record.
◦ In Agent Workspace, records open in either a primary tab or a subtab depending on the tab
configuration.
◦ In the platform interface, records open in TopFrame (that is, the current page).
• Select-to-call capability: Click phone number fields to make a call.
◦ In Agent Workspace, agents can select phone number fields on forms and in the Customer
360 ribbon component to make a call.
◦ In the platform interface, agents can select the phone icon next to the Contact or Consumer
fields.
▪ If a contact or consumer has one phone number, the call is placed to that number.
▪ If a contact or consumer has more than one phone number, a dialog box displays the
available numbers. Select a number to place the call.
• OpenFrame window actions:
OpenFrame window actions
User action

Open the window

Description

In Agent Workspace, select the phone icon:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
User action

Description

◦ In the navigation bar.
◦ Next to the Contact or Consumer fields on the Case
form.
In the platform interface, select the phone icon:
◦ In the banner frame.
◦ Next to the Contact or Consumer fields on the Case
form.
With the admin role, you can configure the phone icon.
For more information, see CTI integration with the Case
form.
Hide the window

Select the X in the OpenFrame window header.

Note: The OpenFrame window remains on top
of other forms or pages until hidden.
Expand or collapse the window

Select the + / – buttons in the OpenFrame window
header (if Enable collapsed view is set to True in the
OpenFrame configuration).

Note: When collapsed, agents can still access
call control actions.
Move the window

Select and drag the OpenFrame window header.

Using OpenFrame in CSM Configurable Workspace
In the CSM Configurable Workspace, you can:
• Integrate OpenFrame with the Interaction Management System (IMS) and interaction records.
This enables agents to manage the phone interaction life cycle.
• Use the native voice control capability from the Interaction Controls Component (ICC) plugin
to integrate to the contact center voice channel. You would need to be enable this in the CSM
Configurable Workspace to manage the voice channel. For more information, see Interaction
Controls Component and Interaction Controls Component (ICC) call features.

Creating an OpenFrame configuration
With the admin role, you can create or modify an OpenFrame configuration. This configuration
stores information about the OpenFrame window settings, including:
• The window height and width.
• The icon, title, and subtitle displayed in the window header.
• Users and groups that have access to the window.
Related topics
openFrameAPI - Client

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
Interaction Controls Component
Interaction Controls Component (ICC) is a component that allows for a native call controls
interface embedded in Agent Workspace.
• Create state context in OpenFrame to read the state of idle and active call state
• Create the state context in OpenFrame to read the state of transfer
• Provide iframe sandbox parameters to allow iframe access to security features and to enable
additional iframe restrictions
• Create an extension point implementation to hide the conversation panel when real-time
transcription is turned on/off
• Create an extension point implementation to create and get phone log segments
• Implement Click to Dial on CSM Workspace with ICC enabled
• Seismic event emitted to the Polaris shell via Active call component when any action clicked
related to the transfer component
• Screen pop for Interaction should be available on Dialpad and Click-to-call outbound call
• sn_openframe.create_interaction will be ignored when using ICC. All inbound and outbound
calls will have interactions created.
Use Interaction Controls Component (ICC) and OpenFrame to integrate with the voice channel
for contact centers. For more information, see Interaction Controls Component (ICC) for voice
calls.

Computer Telephony Integration Workflows
Computer Telephony Integration (CTI) enables customer service agents to place and receive
phone calls in ServiceNow applications.
The following sample workflows show how CTI can be integrated with Interaction Management
System (IMS) and OpenFrame (OF) to support outgoing and incoming telephone calls.

CTI integration for outgoing call
The following workflow describes the logical sequence of actions when an outgoing call is
triggered using the OpenFrame window.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
CTI integration for incoming call
The following workflow describes the logical sequence of actions when an incoming call is
received using the OpenFrame window.

CTI integration for transferring call
The following workflow describes the logical sequence of actions when an incoming call is
transferred to an agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
CTI call interactions operations
CTI integration with IMS and OF uses the OpenframeInteractionUtility script. You
can use thecreateOrUpdateInteractionForOpenframe method from the utility
script to create an interaction. For more information about creating interaction using APIs,
see Understanding the Interaction Management API see the Understanding the Interaction
Management API [KB1941272]
article in the Now Support Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
CTI demo implementation
Use the CTI demo implementation to test the phone communication channel between customer
service agents and external customers in a non-production instance.
Starting with the Zurich release, the Computer Telephony Integration (CTI) plugin is being
prepared for future deprecation. It will be hidden and no longer activated on new instances but
will continue to be supported. For details, see the Deprecation Process [KB0867184]
article in
the Now Support Knowledge Base.
The CTI Softphone plugin enables softphone functions and call center capabilities. This plugin
provides integration between the ServiceNow platform and the Twilio Voice service using the
Notify application. This plugin can be activated any time after activating Notify.
The CTI Softphone plugin includes one OpenFrame configuration, called CTI. This configuration
specifies the necessary OpenFrame window settings as well as the URL to be launched within
OpenFrame.

Note: The included CTI configuration does not have the Default field enabled. You must
enable this field to use the CTI configuration as the default.
Configure the CTI demo
Before the phone communication channel between customer service agents and external
customers can be used, the Notify, CTI Softphone, Customer Service Management, and
Openframe plugins must be activated and configured, and a Twilio Voice account must be set up.

Before you begin

Role required: admin

Procedure
1. Activate Notify

(com.snc.notify).

2. Set up a Twilio Voice account.
You can create an account at https://www.twilio.com.
3. Configure Notify with Twilio

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


<!-- page 1450 -->
4. Activate the CTI Softphone plugin (com.snc.cti).
If you want to load the demo data for CTI Softphone, you must also activate the Customer
Service CTI Demo Data plugin (com.snc.customerservice_cti_demo). This demo data includes
sample workflows.
5. Activate the Customer Service plugin (com.sn_customerservice).
6. Activate the Openframe plugin (com.sn_openframe).
Activating the Customer Service Management plugin automatically activates the Openframe
plugin.
7. Create an OpenFrame configuration or use the default CTI configuration by enabling the
Default field.
Working with the CTI using the OpenFrame window
Use the OpenFrame window to make a call, answer a call, transfer a call, or set status.
Answer an incoming call
Use the OpenFrame window to answer an incoming call.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_open_frame, or admin

About this task

The OpenFrame window displays the incoming call, including the phone number and the
customer contact or consumer information.

Procedure
1. Click Accept.
2. When the call is finished, click End.
Make an outgoing call
Use the OpenFrame window to make an outgoing call.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_open_frame, or admin

Procedure
1. Select one of the following options.
Option

Description

Click the phone icon in the banner frame.

Enter the phone number in the Number field
and click Call.

Click the phone icon next to the Contact or
Consumer fields on the Case form.

Customer contacts and consumers can have
multiple phone numbers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
Option

Description

◦ If only one phone field is populated, a call is
placed to that number.
◦ If more than one phone field is populated, a
dialog box displays the available numbers.
Click the desired number to place the call
and close the dialog box.
2. When finished with the call, click End.
Transfer a call
After accepting an incoming call, a customer service agent can transfer a call to another agent.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_open_frame, or admin

Procedure
1. Answer an incoming call.
2. Click Transfer.
3. Select an agent from the drop-down list.
4. Click Call.
Set agent call status
Customer service agents can set their current call status.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_open_frame, or admin

Procedure
1. Click the phone icon in the banner frame.
2. Select your availability.
Option

Description

Available

The agent is available to take a call.

Not Available

The agent is not available to take a call.

Busy

The agent is currently on a call with a cus­
tomer.

Wrap Up

The agent is updating case information after
completing a call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Option

Description

After completing a call and the subsequent
wrap up, an agent must manually change the
status from Wrap Up to Available.
The Presence field in the OpenFrame > OpenFrame Agent Presence record is updated with
the availability status set for the agent.
Computer Telephony demo integration with the Case form
Activating the CTI Softphone plugin enables call-related features on the Case form.
The customer service or consumer service agent can use the phone icon next to the Contact
and Consumer fields on the Case form to make a phone call. The phone icon appears next to
these fields if the entity record has at least one phone field (ph_number) and at least one of
those phone fields contains a phone number.
The phone icon is a reference contribution that can be added to any
reference field by modifying the dictionary and adding the following attribute:
ref_contributions=show_phone_customer_service.

Note: If you’re using a third-party provided CTI application, then you can integrate with the
show_phone UI macro to make calls. For more information on UI macros, refer to UI macros
installed with OpenFrame
Select the phone icon to call a consumer or contact.
• If only one phone field is populated, a call is placed to that number.
• If more than one phone field is populated, a dialog box displays the available numbers. Select
the desired number to call and close the dialog box.
Select Phone Number dialog box

Incoming and outgoing calls are logged in the Phone Log [sn_openframe_phone_log] table. Call
details are recorded in the Activity field on the Case form and in the Phone related list.
CTI demo integration with case routing
An incoming call from a customer contact or a consumer can be routed to an available customer
service agent.
Similar to the other communication channels, incoming calls from customer contacts and
consumers can be routed to a specific agent by using matching rules. If an agent is not available,
the call can be placed in a queue. After the agent is free, the matching call in the queue with the
longest wait time is rerouted to the agent.
Case routing is enabled as an activity in a workflow. In the Call Center demo workflow (available
with the Customer Service CTI Demo Data plugin), a call is forwarded to an agent after the caller
either creates a new case or enters a valid number for an existing case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
If no agents are available, the call goes into a queue and remains there until an agent becomes
available. If a call is in the queue for longer than 10 minutes, it is forwarded to voice mail and the
caller is asked to leave a message.
Related topics
Routing and assigning customer service cases
Computer Telephone demo integration with tasks
The CTI Softphone component can be integrated with other task entities on the ServiceNow AI
Platform.
A workflow can be implemented to operate on the Incident table.

Note: The Call Center for Incident Management workflow, a demo workflow, is available
with the Customer Service CTI Demo Data plugin.
Incoming or outgoing calls are logged in the Phone Log [sn_openframe_phone_log] table. The
call logs also appear in the activity history of the task.
Associate a phone number with a workflow
You can associate a Notify phone number with a workflow.

Before you begin

You must create a Twilio Voice account and configure Notify with Twilio Voice before you can
associate a phone number with a number group and workflow.
A number group allows you to group Notify phone numbers and then share workflows across
grouped numbers. For each number group, you can specify a workflow for incoming and
outgoing calls.
The CTI Softphone demo data includes these sample workflows:
• Call Center, for use with the Customer Service Management application
• Call Center for Incident Management
The Call Center workflow uses several Notify workflow activities that determine workflow
functionality. Each activity performs a different task, such as playing a message greeting or
creating a list of user input options. Activities can succeed or fail, which can result in actions
performed by other activities.
You can use the default Call Center workflow or modify this work flow as needed.
Role required: admin

Procedure
1. Navigate to All > Notify > Numbers.
2. From the Notify Phone Numbers list, click the phone number that you want to edit.
3. Select a Notify Group that uses the incoming call workflow that you want to handle this phone
number.
The CTIDemo group uses the Call Center workflow for incoming calls.
4. Click Update.
Related topics
Numbers and number groups
Configure Notify with\n Twilio
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
Integrating with Microsoft Outlook
Integrate Customer Service Management with Microsoft Outlook to perform tasks such as
managing contacts and cases from within Microsoft Outlook.
The following plugins are required to enable you to interact with the ServiceNow platform and
customers from within Microsoft Outlook:
• ServiceNow Add-In for Microsoft Outlook (com.sn_outlook_addin)
• CSM Extension for Proxy Contacts (com.snc.csm_proxy_contacts)

Integrate Customer Service Management with Microsoft Outlook
Customer Service Management provides an integration with Microsoft Outlook. This integration
enables you to manage workflows such as creating and updating contacts and cases from within
Microsoft Outlook.

Before you begin

Role required: admin

About this task

Note: You must be an Office 365 administrator to deploy the ServiceNow Add-in for
Microsoft Outlook. This add-in is supported only for use with Microsoft Outlook 2016+ for
MacOS and for Windows.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the ServiceNow Add-In for Microsoft Outlook plugin (com.sn_outlook_addin).
3. Click Activate.
4. Search for the CSM Extension for Proxy Contacts plugin (com.snc.csm_proxy_contacts).
5. Click Activate.
Related topics
Using Microsoft Outlook with CSM

Configure the ServiceNow Add-in for Microsoft Outlook
Configure user roles and download the office add-in manifest file in order to use the ServiceNow
Add-in for Microsoft Outlook.

Before you begin

Role required: admin or both sn_customerservice.proxy_contact and
sn_customerservice.contact_manager roles.

Procedure
1. Go to your ServiceNow instance.
2. Navigate to ServiceNow Add-Ins for Office > Office Add-In-Manifests.
3. Click ServiceNow for CSM.
4. Click Download Manifest to download the Microsoft Office add-in manifest file.
5. Provide the downloaded manifest.xml file to the account manager to enable the
installation of the add-in.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
Related topics
Install the ServiceNow Add-in for Microsoft Outlook

Include a combined CSM and ITSM add-in icon in Microsoft Outlook
Enable users to access both CSM and ITSM through one combined add-in icon.

Before you begin

Role required: sn_customerservice.contact_manager and sn_customerservice.proxy_contact

Procedure
1. Go to your ServiceNow instance.
2. Navigate to ServiceNow Add-Ins for Office > Office Add-in Manifests.
3. Download the manifest files for CSM and ITSM.
Option

Description

ServiceNow for CSM

Manifest file for CSM.

ServiceNow for ITSM

Manifest file for ITSM.

4. Click Download Manifest.
5. Install the ServiceNow Add-in for Microsoft Outlook add-in.
Follow the procedure in Install the ServiceNow Add-in for Microsoft Outlook.
The ServiceNow for CSM/ITSM icon appears in the header and users can view both the CSM
and ITSM tasks through it.

Install the ServiceNow Add-in for Microsoft Outlook
Installing the ServiceNow Add-in for Microsoft Outlook enables you to interact with the
ServiceNow platform from within Microsoft Outlook.

Before you begin

Role required: sn_customerservice.contact_manager

Procedure
1. Navigate to All > Microsoft Outlook > Get Add-ins.
2. Select My add-ins.
3. Go to the Custom add-ins tile and select Add from file from the Add a custom add-in dropdown list.
4. Select the manifest.xml file that your admin provided.
5. Click Install.
6. Click View in ServiceNow in Microsoft Outlook and log in with the credentials your admin
provided.
7. Click Allow.

Result

You can now connect to your account on your ServiceNow instance and interact with its records
from within Microsoft Outlook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
Integrating with Safe Workplace applications
®

Integrate Customer Service Management with ServiceNow Safe Workplace applications. This
integration helps you safely reopen locations and support the health and safety of contacts and
consumers after emergencies and pandemics.

Overview
Integrate with Safe Workplace applications, specifically with the Employee Health Screening
application, to enable contacts or consumers to safely enter locations and comply with health
and safety policies.
As a consumer or contact, verify that you understand and comply with requirements and policies
by filling out the Health Verification form on the Consumer or Customer Service Portal.
As a customer or consumer service agent, screen contacts or consumers entering a location
to ensure compliance with entry requirements such as a temperature check and Personal
Protection Equipment (PPE).
For more information on the Employee Health Screening application, see Employee Health
Screening .

Key features
• Access for consumers and contacts to the Health Verification form on the Consumer or
Customer Service Portals.
• Ability for customer or consumer service agents to screen consumers and contacts on visiting
a location.

Set up Customer Service Management integration with Safe Workplace
applications
Enable the integration with Safe Workplace applications to help contacts or consumers safely
enter locations and comply with health and safety policies.

Before you begin

Ensure that the Customer Service plugin (com.sn_customerservice) is installed.
If you are supporting business-to-consumer (B2C) customers, ensure that the Consumer Service
Portal plugin (com.glide.service-portal.consumer-portal) is installed.
Role required: admin

Procedure
1. Install Employee Health Screening

.

2. Give external users access to the Health Verification form.
For more information, see the Allow external users access to "Health Verification" catalog item
[KB0856301]
article in the HI Knowledge Base.
3. Assign the sn_imt_monitoring.monitoring_user role to a customer or consumer service agent.
4. Optional: Configure the health screening form.
5. Optional: Create relationships to show health screening information on Agent Workspace.
6. Optional: Customize the Consumer or Customer Service Portal to display a link to the Health
Verification form in the portal header menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
Configure the health screening form
Provide additional information on contacts or consumers to health screeners by adding fields to
the health screening form.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Catalog > Catalog Definition > Record Producers.
a. In the Record Producers list, search for Screen a person in the Name column.
b. In the Variables related list, click New.
c. Create a variable.
For more information about the different types of variables and how to configure them, see
Creating variables .
d. Click Submit.
e. In the Catalog Client Scripts related list, open Show additional CSM fields.
f. Add the variable to the client script as a consumer or contact field.
For more information on client scripts, see Client scripts .
2. Navigate to Activity Subscriptions > Script Includes.
a. Add the variables to the HealthScreeningUtil script include.
For more information on script includes, see Script includes

.

Using Customer Service Management with Safe Workplace applications
Screen consumers and contacts for compliance with health and safety policies to determine
whether they are permitted to enter a location.
To ensure that consumers and contacts can enter a location safely after emergencies and
pandemics, consumers or contacts fill out a Health Verification form and health screeners or
customer or consumer service agents perform a health screening.

Note: Typically, you receive an email or a mobile notification with a link to the health
verification form. Alternatively, you can search for the health verification form on the
Consumer or Customer Service Portal.

Roles required
Users with the roles listed in the following table can use Customer Service Management with
Safe Workplace applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
Roles Required for Safe Workplace applications
Role

Task

sn_customerservice.consumer or
sn_customerservice_customer

Access and complete the Health Verification
form on the Consumer or Customer Service
Portals.

Note: For more information on filling out
the form, see Verify your health status
and compliance .
sn_imt_monitoring.monitoring _user

Screen external users entering a location to
ensure compliance with entry requirements.

Note: Health screeners cannot
view additional Customer Service
Management information on the
screening form.
For more information on screening, see
Conduct a health screen for entry .
sn_customerserviceagent with the
sn_imt_monitoring.monitoring_user role

Screen contacts entering a location to ensure
compliance with entry requirements.
The Accounts field for contacts is displayed
by default on the screening form. Other fields
that have been configured for contacts are
also visible.

sn_customerservice.consumer_agent with the
sn_imt_monitoring.monitoring_user role

Screen consumers entering a location to
ensure compliance with entry requirements.
The Suffix field for consumers is displayed by
default on the screening form. Other fields that
have been configured for consumers are also
visible.

Integrating with consumer messaging apps
Integrate Customer Service Management with each consumer messaging app to deliver a
conversational mobile messaging experience for consumers and customer contacts.
Engage customers wherever they are with useful conversations by enabling them to message
anytime to your company's account using their choice of messaging apps. Consumers and
customer contacts can start conversations with a virtual agent by sending messages to your
company's designated mobile number. They can also select to chat with a live agent from the
same messaging app.
The following consumer messaging apps can be integrated with Customer Service Management:
• WhatsApp
• LINE

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
• Facebook Messenger
• Apple Messages for Business

Integrating WhatsApp with Customer Service Management through Twilio
Deliver a pre-integrated chat conversation experience with the WhatsApp messaging app
®
for consumers and customer contacts. Integrate WhatsApp by using the ServiceNow
Conversational Integration with WhatsApp (powered by Twilio) application.
As an administrator, if you have configured the Conversational Integration with WhatsApp
(powered by Twilio) application, then your customer contacts and consumers can initiate
a WhatsApp chat conversation with a virtual agent or live agent. An agent can initiate a
conversation or accept a conversation initiated from a WhatsApp chat conversation. For more
information, see Configure Conversational Integration with WhatsApp (powered by Twilio) .

Note: As an administrator, you can also use any predefined Customer Service Virtual
Agent conversations to capture information from customer contacts or consumers. For
more information, see Customer Service Virtual Agent conversations.
Key features of the integration include the following:
• Initiate WhatsApp chat conversations with a virtual agent, live agent, or customer.
• Use the chat to search for articles in community posts and knowledge articles, access service
catalogs, or create a customer service case.
• View the WhatsApp chat conversation details from which a work item was initiated in Agent
Workspace.
• Indicate your presence in the Agent Workspace Inbox with the WhatsApp service channel.
• Make outbound chat conversations to connect with a customer's WhatsApp chat conversation,
and automatically capture interaction details to simplify data entry.

Example workflows
The following example workflow shows the use of the Conversational Integration with WhatsApp
(powered by Twilio) application in resolving a consumer issue:
1. A customer has an issue with a product and initiates a WhatsApp chat conversation using the
Virtual Agent bot.
2. The Customer Service Management application identifies the customer and starts an
interaction of type Messaging.
3. The customer selects the product and views the knowledge articles associated with the
product.
4. The customer then selects to chat with a live agent.
5. A live agent accepts the customer request. The Customer Service Management application
starts another interaction of type Messaging.
6. The live agent creates a case on the product, and then closes the conversation.
The following example workflow shows the use of the Conversational Integration with WhatsApp
(powered by Twilio) application in addressing customer feedback:
1. A customer purchases a new product and opts in to receive notifications from your business
on the WhatsApp app.
2. The customer receives a welcome message from customer support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
3. After two months, the customer receives another message asking for feedback on the product.
4. The customer shares negative feedback.
5. An agent reviews the feedback and starts a conversation with the customer to offer help and
find out more about the customer’s experience with the product.

End users and roles
The users with the roles listed in the following table can use the Conversational Integration with
WhatsApp (powered by Twilio) application.
Roles required for Conversational Integration with WhatsApp (powered by Twilio)
Roles

Tasks

agent_workspace_user

Accept an ongoing WhatsApp chat conversation with a
customer through the WhatsApp service channel in Advanced
Work Assignment.

sn_customerservice_manager

View details of a WhatsApp chat conversation by using
interaction records of type Messaging and subtype
WhatsApp.

sn_customerservice.consumer, Initiate WhatsApp chat conversations with a virtual agent or
sn_customerservice.customer live agent so that you can search for articles in Communities
and Knowledge Management, access service catalogs, and
create a customer service case.

Integrating WhatsApp with Customer Service Management using the
WhatsApp Cloud API
Use WhatsApp messaging with Customer Service Management to enable direct communication
with customers through WhatsApp using the WhatsApp Cloud API.
This WhatsApp direct integration connects to Meta’s WhatsApp business platform and enables
agents to provide real‑time customer support with rich media, interactive controls, and full CSM
workflow integration.
The WhatsApp channel supports both automated conversations through Virtual Agent and
live agent interactions through Agent Workspace, providing a complete customer service
experience.

WhatsApp messaging capabilities
WhatsApp messaging capabilities in Customer Service Management enable rich, interactive
customer conversations beyond basic text messaging. Agents can exchange media files, send
structured interactive controls, request customer inputs, and deliver formatted messages that
improve clarity and reduce friction.

Rich and interactive messaging features
WhatsApp supports the following messaging features and rich interactive controls:
• Text messaging
• Rich media (images, videos, audio files, documents)
• Typing indicators
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
• Location sharing
• List pickers
• Opt-in and consent
WhatsApp rich controls
Rich controls

Description

Typing indicators

Real-time visual feedback shows when agents
or customers are composing messages,
keeping both parties informed about
conversation activity.
Agent-side capabilities:
• Automatically displayed to customer when
agent types in Agent Workspace
• Appears as "typing..." status in customer's
WhatsApp
• Provides immediate feedback that agent is
responding

Message status indicators

WhatsApp automatically handles message
delivery and read status indicators according
to WhatsApp's standard behavior. The
application displays these statuses in the
interaction timeline.
Status indicators (for users):
• Sent: Single gray checkmark (message sent
to WhatsApp server)
• Delivered: Double gray checkmarks
(message delivered to agent’s device)
• Read: Double blue checkmarks (agent
viewed message)
Status indicator (for agent):
Sent: Single gray checkmark (message sent to
user’s device)

Link previews

URLs in messages automatically generate rich
previews with images, titles, and descriptions.

Customer-initiated conversations

These conversations begin when the
customer sends the first message to your
business. WhatsApp applies specific rules for
messages sent within this interaction window.
Messaging window:
• Opens when customer sends first message
• Remains open for 24 hours from last
customer message

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
WhatsApp rich controls (continued)
Rich controls

Description

• Resets to 24 hours with each new customer
message
• Agent can send any messages within this
window
Characteristics:
• No restrictions on message content
• Supports all message types and interactive
features
• Most common conversation type for
customer serviceOpens when customer
sends first message
Agent-initiated conversations

These conversations begin when agent
proactively messages the customer.
WhatsApp enables outbound initiation only
under certain conditions.
Requirements:
• Customer must have active channel user
profile in the application
• Customer must have opted in to receive
messages
• Customer's phone number must be valid
and registered on WhatsApp
• Must be within 24 hours of customer's last
message

System-initiated conversations

These conversations begin when an
automated workflow sends a WhatsApp
message to the customer.
Requirements:
• Customer must have opted in
• Must be within 24 hours of customer's last
message

Opt-in and consent

The integration captures and records
customer opt-in and opt-out messages to track
communication consent.

End users and roles
The users with the roles listed in the following table can use the Conversational Integration with
WhatsApp (WhatsApp Cloud API) application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
Roles required for Conversational Integration with WhatsApp (WhatsApp Cloud API)
Role

Tasks

admin

Configure and manage the WhatsApp Cloud
API integration, including connection settings,
routing rules, system properties, and security
configurations.

agent_workspace_user

Accept an ongoing WhatsApp chat
conversation with a customer through the
WhatsApp service channel in Advanced Work
Assignment.

sn_customerservice_manager

View details of a WhatsApp chat conversation
by using interaction records of type
Messaging and subtype WhatsApp.

sn_customerservice.consumer,
sn_customerservice.customer

Initiate WhatsApp chat conversations with
a Virtual Agent or live agent so that you
can search for articles in Communities and
Knowledge Management, access service
catalogs, and create a customer service case.

Related topics
System properties for configuring WhatsApp (WhatsApp Cloud API)
Configure Conversational Integration with WhatsApp (WhatsApp Cloud API)
Using Conversational Integration with WhatsApp (WhatsApp Cloud API)
System properties for configuring WhatsApp (WhatsApp Cloud API)
You can configure the system properties for your Conversational Integration with WhatsApp
(WhatsApp Cloud API) application so that you can enable secure and authenticated
communication.
Navigate to All> System Properties> All Properties.
Alternatively, in your instance, enter sys_properties.list in the filter navigator and
customize the WhatsApp (WhatsApp Cloud API) system properties.
System properties for WhatsApp (WhatsApp Cloud API)
Property

Description

sn_va_whatsapp.webhook_verify_token
Stores the verification token used to
authenticate the incoming messages from
WhatsApp.
• Type: password2
• Default value: None (must be configured
during the initial setup)
• Location: All> System Properties> All
Properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
Integrating LINE with Customer Service Management
Deliver a pre-integrated chat conversation experience with the LINE messaging app for
®
consumers and customer contacts. Integrate LINE with the ServiceNow Conversational
Integration with LINE application.
As an administrator, if you have configured the Conversational Integration with LINE application,
your customer contacts and consumers can initiate a LINE chat conversation with a virtual agent
or live agent. An agent can initiate a conversation or accept a conversation initiated from a LINE
chat conversation. You can configure system-initiated messages to be sent to the customer. For
more information, see Configure Conversational Integration with LINE .

Note: As an administrator, you can also use any predefined Customer Service Virtual
Agent conversations to capture information from customer contacts or consumers. For
more information, see Customer Service Virtual Agent conversations.
Key features of the integration include the following:
• Initiate LINE chat conversations with a virtual agent, live agent, or customer.
• Use the chat to search for articles in community posts and knowledge articles, access service
catalogs, or create a customer service case.
• View the LINE chat conversation details from which a work item was initiated in Agent
Workspace.
• Indicate your presence in the Agent Workspace Inbox with the Line service channel.
• Make outbound chat conversations to connect with a LINE chat conversation from a customer
contact or consumer, and automatically capture interaction details to simplify data entry.

Example workflows
The following example workflow shows the use of the Conversational Integration with LINE
application in helping a customer to resolve an issue with the recently purchased router:
1. The customer initiates a LINE chat conversation using the Virtual Agent bot.
2. The Customer Service Management application identifies the customer and starts an
interaction of type Messaging.
3. The customer selects the router as a product and finds knowledge articles associated with it.
4. The customer ends the conversation because the issue was resolved with the help of a
knowledge article.
The following example workflow shows the use of the Conversational Integration with LINE
application in addressing customer feedback:
1. A customer purchases a new product and opts in to receive notifications from your business
on the LINE app.
2. The customer receives a welcome message from customer support.
3. After two months, the customer receives another message asking for feedback on the product.
4. The customer shares negative feedback.
5. An agent reviews the feedback and starts a conversation with the customer to offer help and
find out more about the customer’s experience with the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
End users and roles
Users with the roles listed in the following table can use the Conversational Integration with LINE
application.
Roles required for Conversational Integration with LINE
Roles

Tasks

agent_workspace_user

Accept an ongoing LINE chat conversation with a customer
through the LINE service channel in Advanced Work
Assignment.

sn_customerservice_manager

View details of a LINE chat conversation by using interaction
records of type Messaging and subtype Line.

sn_customerservice.consumer, Initiate LINE chat conversations with a virtual agent or live
sn_customerservice.customer agent so that you can search for articles in Communities and
Knowledge Management, access service catalogs, and create
a customer service case.

Integrating Facebook Messenger with Customer Service Management
®

Integrate Facebook Messenger chat conversations with your ServiceNow instance so
that consumers and customer contacts can communicate with your business using the
Conversational Integration with Facebook Messenger application.
As an administrator, if you have configured the Conversational Integration with Facebook
Messenger application, your customer contacts and consumers can initiate a Facebook
Messenger chat conversation with a virtual agent or live agent. An agent can accept a
conversation initiated from a Facebook Messenger chat conversation. For more information, see
Configure Conversational Integration with Facebook Messenger .

Note: As an administrator, you can also use any predefined Customer Service Virtual
Agent conversations to capture information from customer contacts or consumers. For
more information, see Customer Service Virtual Agent conversations.

Key features
Customer experience
Initiate Facebook Messenger chat conversations with a virtual agent or live agent
to search for articles in community posts and knowledge articles, access service
catalogs, or create a customer service case.
Agent experience
• View the Facebook Messenger chat conversation details from which the work
item was initiated in Agent Workspace after accepting a work item associated with
the Facebook Messenger service channel.
• Indicate your presence in the Agent Workspace Inbox with the Facebook
Messenger service channel.
• Make outbound chat conversations to connect with a Facebook Messenger chat
conversation from a customer contact or consumer and automatically capture
interaction details to simplify data entry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
End users and roles
Users with the roles listed in the following table can use the Conversational Integration with
Facebook Messenger application.
Roles required for Conversational Integration with Facebook Messenger
Roles

Tasks

agent_workspace_user

Accept an ongoing Facebook Messenger chat conversation
with a customer through the Facebook Messenger service
channel in Advanced Work Assignment.

sn_customerservice_manager

View details of a Facebook Messenger chat conversation
using the interaction record of the type as Messaging and
subtype as Facebook Messenger.

sn_customerservice.consumer, Initiate Facebook Messenger chat conversations with a virtual
sn_customerservice.customer agent or live agent to search for articles in Communities and
Knowledge Management, access service catalogs, and create
a customer service case.

Example workflow
The following example workflow shows the use of the Conversational Integration with Facebook
Messenger application in helping a customer to resolve an issue with the recently purchased
router:
1. The customer initiates a Facebook Messenger chat conversation using the Virtual Agent bot.
2. The Customer Service Management application identifies the customer and starts an
interaction of type Messaging.
3. The customer selects the router as a product and finds knowledge articles associated with it.
4. The customer ends the conversation because the issue was resolved with the help of a
knowledge article.

Integrating Apple Messages for Business with Customer Service Management
Deliver a pre-integrated chat conversation experience with the Conversational Integration
with Apple Messages for Business app for consumers and customer contacts. Integrate Apple
®
Messages for Business by using the ServiceNow Conversational Integration with Apple
Messages for Business application.
As an administrator, if you have configured the Conversational Integration with Apple Messages
for Business application, then your customer contacts and consumers can initiate a Apple
Messages for Business chat conversation with a virtual agent or live agent. An agent can accept
a conversation initiated from a Apple Messages for Business chat conversation. For more
information, see Conversational Integration with Apple Messages for Business . Refer to the
Apple documentation
for more details about Apple Messages for Business.

Note: As an administrator, you can also use any predefined Customer Service Virtual
Agent conversations to capture information from customer contacts or consumers. For
more information, see Customer Service Virtual Agent conversations.
Key features of the integration include the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
• Customers can initiate Apple Messages for Business chat conversations with a virtual agent or
live agent.
• Use the chat to search for articles in community posts and knowledge articles, access service
catalogs, or create a customer service case.
• View the Apple Messages for Business chat conversation details from which a work item was
initiated in Agent Workspace.
• Indicate your presence in the Agent Workspace Inbox with the Apple Messages for Business
service channel.

Example workflow
In this example workflow, the Conversational Integration with Apple Messages for Business
application is used to resolve a consumer issue:
1. A customer wants to get a replacement credit card, and initiates a Apple Messages for
Business chat conversation on iMessage using the Virtual Agent bot.
2. The Customer Service Management application identifies the customer and starts an
interaction of type Messaging.
3. The customer is presented with a list of credit card options that they own and picks that card
that they want to replace.
4. A form opens and asks about the reason for replacement, date lost, address, and phone
number. The customer submits the form.
5. The customer selects the iMessage app to schedule the delivery.
6. The replacement card is scheduled to arrive in 3-5 business days.
7. The customer additionally wants to know about home refinance options, and is shown links on
refinancing.
8. The customer then selects to chat with a live agent.
9. A live agent schedules a call back with a mortgage specialist. The Customer Service
Management application starts another interaction of type Messaging.
10. The customer sends feedback on the interaction using the quick reply action.

End users and roles
Users with the roles listed in the following table can use the Conversational Integration with
Apple Messages for Business application.
Roles required for Conversational Integration with Apple Messages for Business
Roles

Tasks

agent_workspace_user

Accept an ongoing Apple Messages for Business chat
conversation with a customer through the Apple Messages for
Business service channel in Advanced Work Assignment.

sn_customerservice_manager

View details of a Apple Messages for Business chat
conversation by using interaction records of type Messaging
and subtype Apple.

sn_customerservice.consumer, Initiate Apple Messages for Business chat conversations with
sn_customerservice.customer a virtual agent or live agent so that you can search for articles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
Roles required for Conversational Integration with Apple Messages for Business (continued)
Roles

Tasks

in Communities and Knowledge Management, access service
catalogs, and create a customer service case.

Integrating with Process Mining
Integrate Customer Service Management with the Process Mining application to analyze
processes relevant to your KPIs, and identify bottlenecks associated with customer service
cases.
For more information about enabling the Process Mining Content Pack for CSM, see Activate
Process Mining content packs .

End user and roles
If you have the required roles, you can use Analyst Workbench to access the visualized
process workflow data, and tools for analyzing data related to customer service cases. For more
information, see Overview of the Analyst Workbench .
The following combinations of roles are required for using the Process Mining application with
Customer Service Management.
Combinations of roles
Process Mining role

Customer Service Management role

sn_process_optimization_admin

sn_customerservice_manager

sn_process_optimization_power_user

sn_customerservice_manager

sn_process_optimization_analyst

sn_customer_service_agent

Projects included with Process Mining Content Pack for CSM
Several projects are included with the Process Mining Content Pack for CSM (sn_csm_po) that
customers can use to get started:
• Case evaluation project : Use this project to evaluate Process Mining and become familiar
with the Process Mining capabilities.
• Long resolution time analysis project: Use this project to identify bottlenecks to minimize
delays in the case flow.
• SLA Breach Analysis project : Use this project to identify and analyze customer service cases
where service level agreements (SLAs) have been violated.

Optimization project for customer service cases
The Process Mining Content Pack for CSM (com.snc.csm_process_optimization) adds a prebuilt
project that includes a predefined Customer Service Cases process model definition for
customer service cases. By default, the Customer Service Cases project filters customer service
cases for the last two quarters. You can also configure a new process project based on the
prebuilt project. For more information, see Create a project using ServiceNow platform .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
The Customer Service Cases process model definition includes default activity definitions and
breakdown definitions for customer service cases. Use the definitions as they are or modify them
for a custom configuration.
• Use activity definitions to understand state transitions and analyze the linked processes
such as Problem (PRB) records. Transitions can include, for example, going from the work in
progress state to the solution proposed state.
• Use breakdown definitions to filter records and analyze a process map by categories. For
example, you can filter the customer service case data by different channels, products,
assignment groups, and locations.

Continual Improvement Management initiative for customer service cases
If the Continual Improvement Management (CIM) application is enabled, the CIM project from
the Analyst Workbench can be used to track customer service case improvement initiative
progress. The improvement initiative and the process mining model are automatically linked. For
more information, see Integration with Continual Improvement Management .

Performance Analytics for customer service cases
If the Performance Analytics application is enabled, the available template configurations can
also open the Process Mining application from a Performance Analytics (PA) indicator based
on the customer service case data. For more information, see Integration with Performance
Analytics (PA) .
Related topics
Process Optimization for CSM

Integrating with contact centers
Integrate your contact center platform with the ServiceNow Customer Service Management
(CSM) application to unify customer service teams through a single user interface. This
integration centralizes routing across departments and channels, and optimizes workforce
engagement for more personalized customer experiences and simplified employee experiences.

Contact Center integration overview
Prerequisite: Ensure that agents are set up via configuration through their contact center
integration to access the ServiceNow Workspace. The agent profiles are synced automatically
when the agent logs in through the contact center connector in OpenFrame. For example, agent
John Jason in the ServiceNow workspace must be able to log in to the contact center.
See Implement the Interaction Controls Component (ICC) for contact center voice call and
callback integration to enable ICC for CCaaS calls.
Additionally, the agent presence state must match between the ServiceNow workspace and the
contact center. In some cases, the state “available” might have a different name in the contact
center environment, “on queue” for example.
Review the following architecture diagram for more insight on the contact center integration flow
with ServiceNow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


<!-- page 1470 -->
Contact Center integration flow

External routing with Contact Centers
Contact center spokes allow communication between ServiceNow and contact centers via the
contact center API. Using a spoke requires the use of Integration Hub , and each contact center
provider creates a spoke with actions to initiate the routing instructions. In general, the actions
should correspond to these external routing events:
• New interaction
• End interaction
• Transfer to agent
• Transfer to queue
The spoke should also be able to retrieve data, such as skills, queues, and wrap-up codes. To
learn more about creating a spoke, refer to Building spokes using Spoke Generator .
The contact center provider uses the AWA Work Offer API to provide the agent target for the work
items. This allows the contact center provider to provide parameters to accept conversations,
reject conversations, set timeout duration, and set the ServiceNow agent ID. See AWA Offer Work
API .
In the ServiceNow platform, you can import contact center platform skills, queues, and wrap-up
codes between the ServiceNow instance and the contact center provider.
Contact center integration gives you the ability to route ServiceNow chats, emails, or cases via an
external routing platform.
Implementing the integration includes the following high-level steps:
1. Set up the ServiceNow environment, including credentials, the AWA queue, and the
OpenFrame configuration.
2. Set up the integration on the contact center side, matching the ServiceNow setup.
3. Create test users and test the integration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
For specific instructions for integrating with Genesys Cloud, refer to the Genesys Cloud
documentation .

For agents
As an agent, you can manage the chat with the customer using the inbox card alert by accepting
or rejecting the chat. After accepting a chat, you can continue chatting with the customer through
the workspace chat panel.
Agents using the integration can do the following:
• Accept work items.

Note: If the agent doesn’t accept the chat within the configured timeout period, the
work items may time out and return to the queue.
• Reject work items
• Transfer to another agent​
• Transfer to a queue​
• Cancel a transfer to another agent

CCaaS Admin Console
The Admin Console is a tool that administrators use to automate the import of data from CCaaS
(Contact Center as a Service) providers into ServiceNow. This integration enhances Customer
Service Management by enabling Unified Desktop and External Routing, which improves agent
efficiency and customer experience.

Admin Console overview
The Admin Console streamlines the integration of CCaaS providers with the ServiceNow
platform, providing a seamless and unified experience for both customers and partners using
ServiceNow.
CCaaS providers can use the following features by integrating with the capabilities through their
custom plugins. Review prerequisites and plugin requirements to enable the CCaaS Admin
Console. See Plugin requirements for voice and callback integrations with contact centers.

Accessing Admin Console
Access the CCaaS Admin Console in your ServiceNow instance by navigating to All > Contact
Center Integration Center > CCaaS Admin Console.
In the Admin Console, admins must enter the provider ID and label for their contact center to
establish a connection with their database. This integration allows the contact center to fetch
data and import queues, skills, and wrap-up codes into ServiceNow. The process is streamlined
using an extension point, enabling CCaaS providers to consistently return provider IDs and
labels. This simplifies the integration, reduces manual configuration, and facilitates easy
connections to multiple contact centers.

Data Import
The key capability of the Admin Console is importing skills, queues, and wrap-up codes from
the CCaaS provider platform into ServiceNow. This ensures data synchronization between
both platforms for seamless and efficient interaction routing. Queues and skills routing helps
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
direct incoming interactions to the right queue based on agent skills and interaction metadata,
ensuring efficient handling of customer queries.
Data import helps customers set up and execute External Routing and Unified Desktop by
ensuring data is synchronized across platforms. The Unified Desktop experience allows agents
to handle both digital and voice interactions from a single ServiceNow Workspace, eliminating
the need to switch between different interfaces and improving efficiency. Customers can choose
between different routing engines to manage incoming calls and messages. The routing engine
intelligently matches interactions with agents based on skills and experience, ensuring a better
customer experience.
For more information, see: Importing skills, queues, and wrap-up codes.
Importing skills, queues, and wrap-up codes
Import the skills, queues, and wrap-up codes that you have configured in your contact center
®
provider to your ServiceNow instance.

Routing
Skills and queues are a way that admins can route incoming work items to the agent best suited
to handle customer inquiries.

Skills
In a contact center, skills are the specific areas of knowledge or expertise that agents have,
enabling them to handle certain types of calls or tasks. They can be associated with specific
agents or groups of agents. These skills help direct customer inquiries to the agent who can best
meet their needs. Common skills include the following:
• Language proficiency
• Technical support
• Product knowledge
• Customer service abilities
By setting up and importing these skills, contact centers can route customer queries to the
agents most capable of solving them.
®

To import skills from your contact center to your ServiceNow instance, refer to Import skills.

Queues
Queues are systems used to manage and organize incoming customer inquiries. They help
calls, emails, or messages get routed to the appropriate agents based on the defined skills and
availability. Queues help in distributing the workload evenly among agents and minimize wait
times for customers. They can be set up to handle various service channels, such as phone,
email, chat, and social media, so that customer interactions are managed efficiently.
®

To import queues from your contact center to your ServiceNow instance, refer to Import queues.

Wrap-up codes
Wrap-up codes are labels or categories that agents use to classify the outcome of a customer
interaction after it has concluded. These codes help in tracking the nature of interactions and
identifying trends or common issues. Wrap-up codes provide insights into the types of customer
inquiries received, the efficiency of issue resolutions, and areas that need improvement. This
information provides insights that help with reporting and analytics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
For example, wrap-up codes can indicate whether a call was for technical support, billing
inquiries, or a product return. Accurately assigning wrap-up codes helps data get correctly
captured for future reference and analysis.
®

To import wrap-up codes from your contact center to your ServiceNow instance, refer to Import
wrap-up codes.
Import queues
Import queues from your contact center provider to ensure that customer interactions are routed
to the appropriate agents based on their skills and availability.
Role required: admin (sn_ct_ctr_it_core)
Follow these steps in the workflow to import queues from your selected contact center:
Step 1: Select queues
Identify the queues that you want to import from your selected contact center
provider.
Step 2: Assign channels
Select queues, assign service channels to them, and import them into ServiceNow.
Step 3: View summary
Review the newly imported queues and the ones that existed before in your
ServiceNow instance.

Note: The Start Over button resets your current changes and takes you back to the Select
queues step.

Select queues
1. Navigate to All > Contact Center Integration Center > Contact Center Admin Console.
2. Select a contact center provider to import queues from the dropdown menu for the Select a
provider field.

Note: The contact center dropdown menu appears only when multiple providers
are configured. If you have just one provider, it's automatically selected and can't be
changed.
3. Select the Import Queues tab from the navigation pane.
Select queues for importing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
4. Search for specific queues by using the search bar or select Fetch all queues to fetch the
entire list of available queues.
5. Once you’ve fetched a set of queues, select the queues you plan to import by selecting the
check box next to each queue.

Note: You can also select all queues by selecting the check box at the top of the list.
6. Select each queue that you want to import and click Continue.
7. Proceed to the next step of assigning service channels for your selected queues.

Assign channels
Select queues to assign service channels

1. Select one or more queues from the displayed queues list by selecting the check box next to
them.

Note: You can select all queues by selecting the check box at the top of the queues-list.
2. Select Assign service channels to display the service channel modal.
Assign service channels

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
3. Select one or multiple service channels and assign them to the selected queues.
4. Repeat steps (1) through (3) and confirm that all queues have at least one service channel
assigned to them.
5. Select Import to begin the import process.

Note: Each pairing of a new queue and service channel creates a unique queue record
in ServiceNow.
Import queues

View summary
Summary of import

1. In the View summary step, review a summary of your recent actions.
2. Additionally, you can also choose to import more queues or view all queues in the table.
3. Review the list of queues to confirm their successful import.
4. The new imported queues and queues that previously existed are displayed in two separate
lists in the confirmation page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
Example: Fetch all queues, assign a service channel, and import all queues
The following example demonstrates how to fetch all available queues, assign the Chat service
channel, and import them into ServiceNow.
1. Select Fetch All to retrieve all queues from the CCaaS provider.
2. Select all queues using the Name field or Select all item(s) link.
3. Select Import to proceed to the channel assignment step.
4. Repeat step (2).
5. Select Assign service channels, then select Chat, and select Assign.
6. The refreshed screen shows all queues with the Chat service channel assigned.
7. A banner confirms the successful assignment.
8. Select Import to start the import process.
9. Review a summary of your import in the View summary step.
Import wrap-up codes
Import wrap-up codes from your contact center provider to ensure that each customer
interaction is classified appropriately. For example, you can specify whether a call was for
technical support, billing, or a product return.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Contact Center Integration Center > CCaaS Admin Console
Admin console wrap-up codes import

2. Select a contact center provider to import wrap-up codes from.
3. Either fetch all wrap-up codes or search for specific wrap-up codes from the provider.
4. Import all the wrap-up codes or select individual wrap-up codes to import.
5. Tap Import selected to import the wrap-up codes.
6. Review the list of wrap-up codes to confirm that the import was successful.

Note: Newly imported wrap up codes and wrap up codes that previously existed in your
®

ServiceNow instance are shown in two separate lists on the confirmation page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
Import skills
Import skills to assign the right agent to the customer interaction so that customer inquiries can
be handled efficiently.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Contact Center Integration Center > CCaaS Admin Console
Admin console skills import

2. Select a contact center provider to import skills from.
3. Import all skills or select individual skills to import.
4. Fetch all skills or search for specific skills from the selected provider
5. Tap Import selected if imported selected skills.
6. Review list of skills to confirm successful import.

Note: Newly imported skills and skills that previously existed in your ServiceNow®
instance are shown in two separate lists on the confirmation page.

Voice Controls Simulator tool
The Voice Controls Simulator tool enables CCaaS partners and customers to simulate and test
voice control UI flows within the CSM Configurable Workspace.

Voice Controls Simulator tool overview
CCaaS partners can test and validate call features within the UI to preview capabilities and verify
readiness for Interaction Controls Component (ICC) voice integration. For example, CCaaS
admins integrating with ICC voice capability can use this tool to view available voice features and
their appearance in the UI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
Key features
The Voice Controls Simulator tool enables admins to test various voice workflows and preview
how voice features display in the CSM Configurable Workspace. This capability helps streamline
the configuration and validation of CCaaS voice control capabilities.
The following are key features for the Voice Controls Simulator tool capability:
• Enables you to simulate and test voice control actions within the CSM Configurable
Workspace.
• Provides an agent session as a simulation for idle state.
• Enables you to view simulated phone calls in the Global Call component, Active Call
component, and Call transfer.
• Supports adding participants to replicate customer or agent interactions during simulated
calls.
• Offers help tips and guidance to assist users in configuring the simulator.
Stages of the simulator
Simulator steps

Description

Launch simulator

After meeting all prerequisites, you’re ready
to launch the tool in the CSM Configurable
Workspace.

Set Idle state

This state is the agent's initial state in the
simulator. The agent can make an outbound
call using the keypad or the phone directory.
Additionally, if the agent doesn't want to take
anymore calls they can log out of CCaaS.

Configure Transfer capabilities

If you select Transfer during the Set Agent
Capabilities step, you can configure transfer
options for agents, queues, external numbers,
and direct dial.

Set Agent capabilities

Set up call controls for the simulated agent
flow for an active call.

See Set up the Voice Controls Simulator tool.
Set up the Voice Controls Simulator tool
Integrate with Interaction Controls Component (ICC) to manage voice call features. Then, use the
Voice Controls Simulator tool to set up your call experience.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
1. Open the tool: Launch the Voice Controls Simulator tool from your workspace.
2. Explore call flows: Use the simulator to try out different voice call scenarios.
3. Customize your experience: Configure call scenarios in the CSM Configurable Workspace as
required.

Voice Controls Simulator tool dependencies
Before you start, make sure you have the following:
1. Required plugins: Install ICC plugin.

Note: After installation, the Voice Test Tool Config is available in the OpenFrame
configurations.
2. OpenFrame configuration:
a. Navigate to All > OpenFrame Configurations.
b. Search for Voice Test Tool Config, and set the active flag to ‘true’.

Note: You can access the test tool only if you have been added to the Voice Test Tool
User Group.

c. Verify user access:
▪ Navigate to Group > Voice Test Tool Users and check user access or add new users here.
▪ Check the roles assigned to each user in the group. The key role for this tool is:
sn_int_control_sim.voice_test_tool_user.
3. User roles: Users added to the tool inherits these roles:
◦ virtual_agent_admin
◦ sn_int_control_sim.voice_test_tool_user
4. Supported workspaces: This tool works only in the CSM Configurable Workspace.
You are now ready to launch the Voice Controls Simulator tool. See Launching the simulator.
Launching the simulator
This feature lets agents set up and test their voice workflow in a simulated environment without
the hassle of uploading payloads. The Voice Controls Simulator is only available in the CSM
Configurable Workspace.

Before you begin

Role required: CCaaS admin

Procedure
1. Select the phone icon in the header to open the Voice Controls Simulator tool.
If the simulator doesn’t display, refresh your page.
2. Select Launch test tool to open the simulator in a new tab to begin configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


<!-- page 1480 -->
3. Begin the simulation by setting the idle state capabilities.
For guidance, select the info icon to open the Getting Started window, which provides an
overview of each phase in the simulator.

What to do next

Configure idle state capabilities, such as outbound call, logout, and phone directory. See Setting
idle state.
Setting idle state
An agent in the idle state is available to receive or initiate work. Customize this state by
configuring call controls such as the phone keypad for outbound calls, directory access, and the
logout feature to manage the CCaaS platform session.

Before you begin

Role required: admin
Set idle state capabilities

Procedure
1. Configure display fields by entering a key and value in the Key to display and Value to display
fields.
This value is set by the contact center admin. For example, Key = Selected Queue, and
Value = Customer Inquiries.
2. Select the Controls Options.
3. Select to enable the Phone directory option to display the Queues, Agents, External
numbers, and Direct dial tabs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
4. Use the Edit icon to update entries.
By default, the Outbound call, Logout, and Phone directory options are enabled. You can
clear any options as needed. See Configuring Transfer capabilities.
5. Select Save and continue to set the chosen options that opens the Global call window with the
updated values.
The window displays icons for the enabled features. The Phone directory feature, if not
selected, appears inactive.
6. Configure call controls by selecting options such as Mute, Hold, Transfer, Flag, DTMF, and
End call.
7. Configure Recording controls by selecting options such as Start, Stop, Pause, or Resume
recording.
8. Select Save and continue and move on to the next step for adding participants.
◦ Select Clear all to remove all input data for the section you’re updating.
◦ Select the Logout and Reset options to return to the idle state setup.

What to do next

If you enable Transfer, the simulator guides you through the transfer capabilities setup. If you
choose not to select the Transfer capability, select Continue to proceed to adding participants.
See Configuring Transfer capabilities.
Configuring Transfer capabilities
This step in the simulator doesn't display if you didn't select Transfer capability. Any value
configured in the Phone directory, in the Set Idle State capabilities step, reflects in the Transfer
list.

Before you begin

Role required: admin
This step lets you set up transfer options for agents, queues, external numbers, and direct dial
during a simulated call.
Configure Transfer capabilities

Procedure
1. Select the transfer option in the Set agent capabilities step to activate the Transfer
capabilities tab.
2. Enable the Agent, Queue, External number, and Direct dial tabs.
Each tab is pre-populated with five entries, which is also the maximum number of participants
you can add.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
3. Use the Edit icon to update or remove entries as needed.
4. Select Save and continue to proceed to the Add participants step.
5. Select Submit to save your selections.

What to do next

Select the phone icon in the header to view your configured voice control features in the Global
call and Active call windows. See Interaction Controls Component (ICC) call features for call
control feature definitions.
Continue to the final step in the simulation to Adding participants.
Adding participants
This step is the final phase in your simulation where you add agent details and assign call
capabilities for each participant.

Before you begin

Role required: admin
The first participant represents the user initiating the call. Adding subsequent participants
simulates a multiparty call. For example, when a second agent or supervisor joins the call, or
when one agent consults with another in the same call.
Add participants

Procedure
1. Fill in at least one field such as the Name or Phone Number for each participant.
You can add up to five participants. Save each participant details before submitting your
configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
2. Select Submit to display the Global call window with your updated selections.
The Voice Controls Simulator tool provides a synchronized view across both Global Call and
Active Call windows. Selecting any call button, such as hold or mute, instantly updates both
call windows.

3. Select Start Over to reset your simulation and return to the set idle state capabilities step.

Result

The Add participants is the final step in the Voice Controls Simulator. After submitting your
configuration, you're ready to begin using the configured call workflow in your workspace.

Interaction Controls Component (ICC) for voice calls
The ServiceNow Configurable Workspace offers voice interaction and call control capabilities
to agents within a single pane view, equipping them with the tools needed to enhance agent
productivity and customer experience.

Overview of ICC integration with CSM Configurable Workspace
This integration with enables agents to manage voice calls directly within their interaction
screen using call controls. This feature helps reduce the need to switch between contact center
applications and Configurable Workspace.
The CSM Configurable Workspace provides a unified interface that integrates contact center
platform with the Customer Service Management (CSM) service offering. This integration helps
you manage inbound and outbound interactions within a single interface.
With this expanded framework, voice interactions from a contact center platform and native
digital channels can be routed seamlessly. Skills, queues, agents, and presence statuses can be
synced automatically to optimize the admin experience and help reduce operational costs.
The following CCaaS Store Apps offer voice channel integration:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
• Unified Experience from Genesys - Core
• Unified Experience from Genesys
• ServiceNow Voice for Amazon Connect
See Implement the Interaction Controls Component (ICC) for contact center voice call and
callback integration to enable ICC for CCaaS calls.
The following visual displays the voice workflow when CCaaS integrates with ICC within the CSM
Configurable Workspace.
Voice call flow

Key benefits
The primary benefits of this integration are as follows:
Centralized routing
Manages routing across departments and channels without switching interfaces.
Consistent agent experience
Promotes a consistent experience across all channels with a universal inbox.
Fast resolution
Helps reduce resolution time by reducing the need to switch between CCaaS and
ServiceNow Workspace.
Enhanced efficiency
Streamlines workflows with direct access to consult and blind call transfer controls
in the CSM Configurable Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
Interaction Controls Component (ICC) call features
Streamline call handling and enhance the agent experience in the Agent Workspace. Integrate
voice call capabilities and the core contact center features with Interaction Controls Component
(ICC).
The core features and capabilities of the contact center include:
• Voice interaction feature
• Intelligent routing
• Workforce engagement management (WEM)

Note:
To use voice call capabilities available with Interaction Controls Component (ICC)
integration, see Interaction Controls Component (ICC) for voice calls.
Use the ICC call control features with the existing contact center core features to promote
streamlined operations and an enhanced agent experience. The following features are available
within call interactions, and are numbered alongside the image as follows.

Overview of ICC call interaction features within CSM Configurable Workspace
ICC call features

The following table outlines the key call control features available when integrated with ICC
within CSM Configurable Workspace.

Callout

Feature

1

Interaction record

Description

View an interaction record within
the global call component in the
supported workspaces, such as
CSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
Callout

Feature

Description

An interaction record is
automatically created for each call.
Opening the interaction record
expands any voice interaction
to show additional call details,
including call transcript, wrap-up
options, and customer context. The
agent can view and update this
record during the call and in the
wrap-up interaction.

Note: You can use an
identity property and
extension point to hide the
conversation panel when realtime transcription is turned on
or off. See: Show or hide the
conversation panel
The Interaction record page
contains several other features
that can be used to assist agents
resolve customer issues while on
call. Description of these features,
such as record information,
customer history, and KB search are
available in the next table.
Agents can also view interaction
record details in unsupported
workspaces with the call resiliency
capability. See: Call resiliency.
2

Active call component

Use the active call features to
manage incoming, ongoing, and
outgoing calls, and is available
as an embedded component
within the open interaction page.
The active call components are
available via integration with ICC.
The agent can monitor interactions
and access them using the call
control panel, which provides call
control buttons such as record,
mute, hold, and transfer (consult or
blind). Additionally, real-time call
data is shown, such as the call's
associated interaction record, hold
time, and call duration. Moving
away from the interaction page
to another area of the workspace
automatically opens the global call
component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
Callout

Feature

Description

• Active call: When an agent is in
an active call, the associated
interaction record displays.
Selecting the link opens the
interaction record in a new tab.
During an active call, you can
use buttons to hold, start, or stop
recording, mute yourself or other
parties, and transfer calls to a
queue, other agents, or external
numbers. Additionally, agents
get notified when a supervisor is
coaching or has joined an active
call while monitoring agents
directly through the CCaaS
system.
• Call transfer: Transfers calls using
either consult or blind transfer
methods. In a consult transfer,
you can share the call context
with the external contact before
completing the transfer. A blind
transfer immediately transfers
the call to the external contact.
Follow these steps to better
assist a customer using the 'call
transfer feature:
Initiate call transfer
Select the transfer
icon on the active
call component,
which places the
customer call on
hold.
Select Receiving agent
Choose the agent to
transfer the call to
from the Agent's list.
Choose transfer method
Consult: Talk to
the agent before
transferring the call.
You can then either
'Merge calls' by
combining your call
with the new agent's
call, or 'Leave &
Transfer calls' by
disconnecting
from the call and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


<!-- page 1488 -->
Callout

Feature

Description

transferring the call
directly.
Blind: Transfer the
call directly without
consultation.
3

Global call component

Enable agent movement between
screens in the ServiceNow instance
by displaying real-time call data
in the component panel. The
global call component provides
an experience that enables
agents to access call controls and
embedded functionality within
any workspace that supports the
ICC enabled features. The global
call components are available via
OpenFrame integration. See: Global
call list.
This component is used to make
and manage outbound and
incoming calls. Agents can switch
between workspaces anywhere
within the application while taking
ongoing calls. If an agent switches
to a non-interaction tab during an
ongoing call, the call continues
to be active. All other active call
controls can be accessed from this
component.
• Outbound call: Initiates outbound
calls to contact customers,
using the phone keypad to dial
manually, or by selecting the call
icon on the record phone field
for direct calls. Avail the phone
directory for ease of making
outbound calls.
•◦ Callbacks: Outbound calls also
support customer callback
requests. When enabled
and integrated within CSM,
the agent can follow up on a
callback request by manually
completing an outbound call.

Note: For more
information on callbacks,
view Callback interaction
features

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
Callout

Feature

Description

◦ Phone directory: Agents can
use the integrated address
book to make outbound calls
to queues, other agents, and
external numbers. They can
also enter a phone number
directly in the global call list
window to make calls. See:
Phone directory.

Interaction record page features within the CSM Configurable Workspace
The Interaction records page surfaces capabilities that assist agents both during and after calls.
The following table describes additional features that are embedded within the record page.

Feature

Description

Inbox alert
card

When an inbound call comes through, choosing to accept or reject the call
appears as an inbox notification. Manage inbound calls by accepting or
rejecting them directly from the Agent Workspace. If an agent chooses to
accept a call, they’re navigated to the embedded active call window within the
Interaction page.

Record
information

An agent is able to view and update the record during their call. This section
displays details of the task or case linked to the interaction.

Contact
information

This section displays customer contact details, such as phone number and
email. The agent can verify, identity, and use this information for follow-ups.

Customer
history

Agents can open an overview of the customer and their interaction history, as
well as display a timeline of the all previous agent interactions. The agent can
use this context to identify recurring issues or follow up on earlier cases.

Troubleshoot This feature surfaces relevant knowledge articles based on the call context.
and KB
The agent can browse suggested content or manually search knowledge base
search
articles to support troubleshooting.
Wrap up

Now Assist automatically generates a call summary and adds it to the
interaction. The agent can review the summary, select either suggested or
generated wrap-up codes from Now Assist, add additional notes, and end the
interaction.

Note: Enable the call transcription capability to implement this feature.
Show or hide the conversation panel
Show or hide the conversation panel in the real-time transcription (RTT) interface using the
rtt_show_conversation_tab identity property. This feature allows the contact center
providers to control the visibility of the conversation panel using the identity property.

Configure and set up the conversation panel
Show or hide the conversation panel using the rtt_show_conversation_tab property:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
• true – Displays the conversation panel
• false – Hides the conversation panel
Follow these steps to add the property to enable or disable the conversation panel feature in
your application as follows:
1. Navigate to the provider application associated with your Interactions.
2. Create the property rtt_show_conversation_tab.
The Call Transcript tab doesn't show if the rtt_show_conversation_tab property is
false or doesn't exist.
Global call list
Use the global call list capability enabled via OpenFrame integration. Access call controls to
manage voice calls using the phone icon available in any workspace within your ServiceNow
instance to ensure efficient call management without losing access to call controls.

Global call list overview
Enterprises can integrate with any third-party Contact Center as a Service (CCaaS) voice call
capability within their ServiceNow instance. Using the global call list call controls, agents can
initiate new phone calls by using the dial pad or phone directory and manage existing calls. This
capability enables agents to access their contact details, queues, and other relevant information
via integrated contact center.
Every call creates an interaction record with the call details, which can be accessed by
selecting the Open interaction link in the call window. The interaction opens in a supported or
unsupported workspace based on your integration settings. The feature allows agents to access
and manage call controls from a phone icon, regardless of the workspace or tab they are in.
Agents can move freely between tabs or other workspaces that don't support the call control
capability.
The following screenshot gives you the context for the global call list view.
Global call list view

The global call list provides the following functionality:
Switching workspaces during active calls
Agents can switch between different workspaces while on an active phone call,
ensuring continued access to necessary information and tools without losing call
controls.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
Accepting calls outside ICC supported workspaces
Agents can accept phone calls from workspaces even if they aren't integrated with
the Interaction Controls Component (ICC) voice controls.
Navigating to supported workspaces
If the current workspace is supported, agents can select the Open interaction link
from the voice control screen to open the interaction and display the details.
Improved call management
The badge on the phone icon keeps agents informed and helps them track the
number of active phone calls. The feature is particularly useful in workspaces
that do not support call controls, ensuring the agent can manage calls effectively
regardless of the tab or workspace they are in.

Global call list scenarios
Before going over some typical scenarios, let's review certain terms for insight on the global call
list feature:

Workspace terms

Definition

Current Workspace

Workspace the agent is currently on.

Supported Workspace

Workspace integrated with ICC call controls.

Unsupported Workspace

Workspace not integrated with ICC call
controls.

Default Workspace

Workspace configured via OpenFrame
enables agents to navigate to an ICC
integrated workspace if they are in an
unsupported workspace.
See: Set default workspace for CCaaS.

Let’s go over some scenarios to understand how an agent can switch between supported and
unsupported workspaces while managing inbound and outbound calls:
Scenario 1
The global call list is available from an unsupported workspace, which allows the
agent to accept and manage calls. The agent can accept a call and select the Open
interaction link to open the interaction record in the default workspace.
Scenario 2
The agent is in an active call in a supported workspace, and during the call moves to
an unsupported workspace. The call control is available to the agent via the phone
icon in the global call list window.
Scenario 3
The agent selects the phone icon to open the phone dial pad to make an outbound
call from an unsupported workspace. The related interaction record opens in the
agent’s current unsupported workspace. However, the agent must have default
workspace configured to see the current call in the Interaction screen.

Note: See: Set default workspace for CCaaS.
Scenario 4
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
The agent can access and display the global call list from anywhere within the
ServiceNow instance by selecting the phone icon. Selecting the Open interaction
link displays the call details with the global call controls in their default workspace.

Note: The default workspace must be set by the contact center admin.
Scenario 5
The agent ends a call from an unsupported workspace. Selecting the interaction
record links from the call that just ended or for other previous calls, displays in the
same unsupported workspace the agent is in.

Global call list features
The feature streamlines the call handling experience for contact center agents. Agents
can access call controls and manage calls while viewing other resources in supported or
unsupported tabs in their ServiceNow instance.
From the global call list view, Agents can do the following:
• Initiate new calls using either the keypad or the phone directory and view a list of queues,
other agent names, and external contacts in the phone directory.
• Use Search in the phone directory to display a maximum list of 25 results at a time. The limit
can be set by configuring the system property setting calledicc_search_limit using an
integer value. The default minimum value is 10, and a limit can be set to return a maximum of 25
results according to list of queues, agents, or external data.
• Use the phone icon next to the search input field to make outbound calls to an external number
that doesn't display in the Queues, Agent, or External tab results.
• View and access call controls even when navigating to other tabs and screens. The global call
list icon is available from supported and unsupported workspaces.
• View a badge count on the phone icon indicating the number of ongoing calls.
• Select the Open interaction link to open the interaction record details in their supported
workspace in call resiliency mode. See: Call resiliency.

Note: The Transfer function isn't supported in the global call list feature.
For more information on ICC call features, see Interaction Controls Component (ICC) call
features.
Phone directory
Agents can use the phone directory integrated into their ServiceNow instance to make outbound
calls to queues, other agents, and external numbers. They can also enter a phone number
directly in the global call list window or use the phone directory to make calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


<!-- page 1493 -->
Phone directory overview
Phone directory

Note: The contact center admin must enable and configure the phone directory for the
agents to view and use it in their global call list from their ServiceNow instance. Once
the back end integration is done, the phone directory displays in CSM Configurable
Workspace.
The following CCaaS Store Apps offer voice channel integration:
• Unified Experience from Genesys - Core
• Unified Experience from Genesys
The phone directory helps agents make outbound calls to contacts within their organization and
external numbers. Organizations can integrate with any third-party CCaaS call integration feature
that allows agents to access their contacts and queues via their integrated contact center.
The phone directory displays tabs for queue, agent contacts, and external contacts, and the
contact center admin can configure the number of contacts displayed. Use Search on the phone
directory to display a list of a maximum of 25 results at a time. The limit can be set by configuring
the system property setting called ‘icc_search_limit’ using an integer value. The default minimum
value is 10, and a limit can be set to return a maximum of 25 results according to list of queues,
agents, or external data.
When a call is made, a connecting screen displays with the call context details. If the context fails
to display within a few seconds, the screen defaults back to the previous view with the phone
directory tabs and dial pad.
For more information on ICC call features, see Interaction Controls Component (ICC) call
features and Implement the Interaction Controls Component (ICC) for contact center voice call
and callback integration.
Call resiliency
Call resiliency for Contact Center as a Service (CCaaS) delivers phone calls to Agent
Workspaces without creating an Interaction in the ServiceNow instance. This capability verifies
uninterrupted and reliable call management.

Call resiliency for contact center integration overview
Call resiliency for CCaaS voice call integration ensures that inbound calls are delivered to
agents. Inbound calls are delivered even if there are issues with creating Interactions in the
ServiceNow instance. This feature routes phone calls to agents without requiring an Interaction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
When an agent accepts a call, an Interaction and a phone log record are created. If an agent
rejects the call or the call times out, the contact center redirects the call to the next available
agent. The integrated contact center, using the Interaction Controls Component (ICC) capability,
displays call data such as the phone number and call duration, and provides basic functions
such as mute, hold, and disconnect. Agents can open interactions by clicking the Open
interaction link, although call transfer isn’t possible without an Interaction record. This approach
ensures seamless call handling and minimizes service disruptions.
The following call resiliency visual gives you a snapshot of the end-to-end workflow.
Call resiliency flow

Refer to the following table for annotation description of the preceding image.

Annotation

Description

1

Incoming call

2

Create voice interaction

3

Offer voice call option to the agent

4

Agent can accept/reject a call

5

When agent accepts a call, a voice interaction is created

6

Notification is sent to OpenFrame for the successful creation of an interaction

7

Global call screen displays

8

Synchronized call occurs continuously from steps 6 to 9. Once the agent
accepts a call, any action the agent takes gets synced between ServiceNow
and CCaaS

9

Conversation gets updated in the interaction

10

Interaction record gets updated

Call resiliency workflow use cases
Let’s go over some use cases to understand how call resiliency works for an integrated contact
center.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
In the call resiliency mode, calls are delivered to the Agents without interruption to call control
options such as accept, hold, mute, or move calls to queues.
Accept/Auto-accept calls
Agents can accept or auto-accept calls seamlessly in the call resiliency mode even
without creating an Interaction. If an Interaction record doesn't get created, the
agent has the option to create one by manually clicking the Open interaction link
during the live call.
Reject call
When a customer makes an inbound call, in the resiliency mode, CCaaS delivers
the call to the agent's workspace. If the agent clicks Reject, the system generates
an event. The event is communicated to the contact center, which in turn redirects
the call to the next available agent. The contact center takes necessary actions to
ensure seamless service delivery. This process verifies that the system is aware of
the agent's action and can respond appropriately to maintain efficient call handling.
Call timeout
If a call times out, call resiliency promotes ensures efficient interaction management
by automatically creating an interaction and a work item. This process guarantees
that, even if a call times out, the necessary interactions and work items are
generated and managed effectively that enables contact centers to maintain
seamless service delivery.

Key Benefits of call resiliency
The call resiliency workflow improves the efficiency and reliability of handling incoming calls in a
contact center. The following are some benefits:
Enhanced reliability
Calls are delivered to agents even if interaction creation fails, promoting prompt
handling and continuous service.
Efficient call handling
The 'Offer API' creates interactions after the agent accepts the call, reducing wait
time.
Call management flexibility
Agents can reject or let calls time out, and the system redirects them to the next
available agent, promoting no call is missed.
Comprehensive call data
The ICC call controls display essential call information, such as phone numbers and
duration, aiding effective call management.
Limited functionality for seamless operations
Agents can perform basic functions such as mute, hold, and disconnect,
maintaining smooth call operations even in resiliency mode.
On-demand interaction creation
Interactions are created after the agent accepts the call, promoting all necessary
records are generated without delay.
Improved Agent experience
A clear and efficient workflow enhances the agent's experience, making call and
interaction management easier.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
For more information on ICC call features, see Interaction Controls Component (ICC) call
features.
Monitoring calls
Call monitoring is a feature in the Contact Center as a Service (CCaaS) solution that enables
supervisors and managers to observe, monitor, and analyze customer interactions.
Contact centers integrating with ServiceNow’s native voice call capability via Interaction Controls
Component (ICC) and OpenFrame have the option to enable the call monitoring feature,
embedded in their CSM Configurable Workspace.

Key benefits of call monitoring
Some of the key advantages of enabling this feature are as follows:
• Provides real-time feedback to agents, helping them improve their interactions.
• Identifies training needs for agents.
• Promotes consistent quality of customer interactions.
• Offers insights into customer preferences and sentiment, influencing strategic decisions.

Core functionality of call feature
Monitor:
Enables supervisors to listen-in to live calls for training and compliance.
Coach:
Enables supervisors to support agents during live calls via:
• Coach, where the supervisor privately coaches using a one-way whisper feature
enabling the supervisor to provide guidance that only the Agent can hear.
• Barge in, where the supervisor joins the call as a participant and can speak with
both the agent and customer.
Supervisor proactive call monitoring
Supervisors can monitor live customer calls enabling them to provide immediate guidance and
support through listening, coaching, or intervening as needed. This helps promote high-quality
customer interactions.

Dependencies
Enable the following capabilities to view and use the call monitoring features in the Active call
and Global call list:
Contact Center as a Service (CCaaS) integration:
Contact centers must enable the call monitoring capability when integrating with
the native call controls via Interaction Controls Component (ICC) and OpenFrame.
Role-based access and permissions:
When a supervisor with the awa_manager role views an interaction, the CCaaS is
notified and configures the call controls accordingly.
UI controls:
On enabling the feature, the action buttons for Monitor, Coach, and Barge in display
as actionable icons on the supervisors call interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
How does the process work
The following steps define a typical workflow for a supervisor-initiated call monitoring:
1. The supervisor views a dashboard of active calls and agent interactions. They can select an
active interaction and choose to monitor, coach, or barge in, depending on the scenario and
their permissions.
2. The CCaaS platform is notified when a supervisor views an interaction.
3. The CCaaS platform sets the context for the supervisor's available actions.
4. The manager selects the Monitor button to begin monitoring the call.

Note: Silent monitoring isn't visible to the agent.
Supervisor call monitoring workflow

Selecting queues for outbound calls
Agents can select a queue for their outbound calls directly from the keypad or phone directory in
the Global Call window to improve routing and reporting accuracy.

Queue selection overview
This feature provides a search interface that enables agents to find and select a queue, and then
choose to either:
• Set it as default for all outbound dialing methods
• Apply it to the current call only

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
Agents can modify queue settings during the idle state or during active calls. The default queue
selection persists until changed or log out, and applies across keypad, phone directory, and
click-to-dial workflows. This feature is available for CCaaS partner integration.

Key benefits
Queue selection for outbound calls addresses the following capabilities for contact center users:
• Easy-to-use queue selection directly from the Global Call window.
• Accurate reporting to track call outcomes by queue.
• Compliance to ensure calls meet queue-specific requirements.
• Consistent routing by applying business logic based on the selected queue.
• Efficient workflow to reduce repetitive actions and errors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
Queue selection Features

Find and select a queue in Global Call
Search for a queue by entering in the Search field and select the relevant queue.
Active context behavior
The selected queue applies to all subsequent outbound calls and remains active
until the agent changes it or logs out. Only one queue is active at a time.
Adjust on-demand
Agents can change the active queue in the idle state or during an active call. Queue
changes made during a call take effect on the next outgoing call, not the current
one.
Consistency across dialing methods
The active queue persists across keypad, phone directory, and click-to-dial
workflows to maintain consistent routing and reporting.
UI scope
Queue selection is embedded within the keypad and phone directory, as required
by the CCaaS platform.
See Select queues for outbound calls from keypad, phone directory, and Interaction record.
Select queues for outbound calls from keypad, phone directory, and Interaction record
This procedure describes how to select a queue and place outbound calls using the Global
Call keypad and phone directory in the CCaaS platform. It covers both standard and mandatory
queue selection scenarios.

Before you begin

Role required: Agent managing voice calls
• Log in to the CCaaS platform with the required permissions.
• Confirm access to the Global Call component in your workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
• Ensure the Interaction Controls Component (ICC) component is enabled.
• Verify assignment to at least one queue or skill group.
Follow these steps to select a queue and place an outbound call using the keypad, phone
directory, or an Interaction record.

Procedure
1. Navigate to your configured CSM Configurable Workspace and select the phone icon to launch
the call keypad.
The Select outbound queue field displays giving you the option to either search for a queue by
name or select one from the list of available queues.
You can also click-to-dial from an Interaction record. In the keypad, select and set a queue as
default for outbound calls. Once you set a queue for outbound calls and click-to-dial from a
different Interaction record, the Active Call window displays. This window is integrated with the
ICC, instead of the Global Call window.

2. In the Search field, begin entering the name of the queue to search for it or select the queue
directly from the list displaying available queues.
3. The selected queue displays in the search field, confirming your choice.
4. If you set a queue as default, it applies to all your outbound calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
5. Use the keypad or the phone directory to enter or select the phone number.
The dial button becomes enabled when a valid number is entered in the keypad.
6. Select the dial button to initiate the outbound call with the selected queue and the interface
transitions to an active call state displaying call details.
7. After the call ends, complete any required wrap up activities, such as selecting a wrap-up code
and adding notes, and select Submit & close.

What to do next

The queue you selected remains active for your next outbound call. You can change the queue at
any time by repeating steps 2 and 3, or you can continue using the same queue for subsequent
calls.

Using Interaction Controls Component (ICC) call controls with Amazon
Connect
Agents can access the Active call controls directly from their CSM Configurable Workspace to
manage phone interactions. This reduces context switching, improves productivity with Amazon
Connect.

Amazon Connect for voice calls overview
Amazon Connect integration with ICC provides voice controls enabling agents to handle
phone interactions without leaving their Workspace. Call features include actions such as
answering, holding, transferring, muting, ending, and accessing the phone directory. Realtime synchronization of agent presence, compliance, and support for various call management
features are key achievements of this integration.
To use this feature, complete the steps in the Enable Interaction Controls section of the Amazon
Connect guided setup for configuring the components. See Integrate ServiceNow Voice with
Amazon Connect

Key Features and Benefits of the Amazon Connect integration
Call controls:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Agents can answer, hold, transfer, mute, and end calls directly within their
ServiceNow Workspace.
Real-time agent presence updates:
Agent status in Amazon Connect, is automatically updated in real-time based on
Workspace status change. Amazon Connect status change by system or supervisor
reflects in real-time in the agent Workspace.
Access to the phone directory for dialing calls:
Agents can use the phone directory to search for customers to make outbound
calls. They can also use it on an active call to search for internal agents to transfer
customer calls via Consult or Blind transfer.
An agent performs the following key actions within their Workspace:

Log in to Amazon Connect
Log in to Amazon Connect and set your status to 'Available', within your Workspace. You’re now
available and ready to receive inbound customer calls.

State presence
Your presence status synchronizes with Amazon Connect. Any change in your status due to
system events or supervisor actions is reflected in real-time within your inbox verifying that your
availability is updated.

Note: Presence states values configured must match between ServiceNow and Amazon
Connect to ensure bi-directional synchronization.

Receiving and accepting inbound calls
Use the inbox Alert Card to accept or reject calls. Manage calls via actions such as hold, transfer,
mute, or access the transfer target list to transfer calls to other agents or queues. If you’re away
from your Workspace, the alert times out and sets you in the 'Missed call' status. Change your
status back to 'Available' to continue receiving calls. Additionally, you can open or close the
phone keypad during an active call.

Initiating outbound calls
Make outbound calls by using the keypad, phone directory, or click-to-call. An outbound call
creates an Interaction record that displays in the agent’s Workspace displaying the call details.

Transferring a call to an agent or queue
Access the transfer target list with the Active call window to transfer calls to other agents or
queues by searching for an agent or queue. Select the contact and begin transferring the call to
other agents via Consult or Blind transfer.
When the second agent accepts the call, the first agent can either end the call or continue to
stay in the call. If the first agent ends the call after transferring it to the second agent, the call
Interaction is ready for wrap-up.

Integrating contact centers with Interaction Controls Component (ICC) for
callbacks
The callback interaction feature built on the Interaction Controls Component (ICC) supports
callback voice interactions directly within the ServiceNow configurable workspace. The
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
workspace provides agents with callback voice interaction and callback control features in a
unified view, resulting in improved productivity and enhanced customer experience.

Callback feature overview
Contact Center platforms provide a callback feature that lets callers keep their place in line and
receive a callback when an agent is available. The callback requests are assigned to agents
based on the order they are received. Alternatively, callers may select a specific date and time
for a scheduled callback. The Callback functionality enables contact centers to reduce hold
times and enhance customer experience by enabling customers to request a return call instead
of waiting in the queue. This asynchronous communication model helps balance contact center
load and improves both customer satisfaction and agent efficiency. The callback routing can
be implemented in two different modes, depending on operational goals and infrastructure:
Customer-first and Agent-first. These modes dictate how and when a call is established between
the customer and the agent during a callback request.
Customer-first mode
In this mode, CCaaS first dials the customer and connects them to an available
agent after the customer answers the call.
Callback flow: The callback request is queued. When the callback request reaches
the top of the queue and an agent becomes available, the CCaaS dials the
customer first. If the customer answers, the CCaaS dials and connects to an agent
by routing the call to the agent's inbox in the configurable workspace. If the agent
accepts, the call is bridged. This mode reduces unnecessary agent idle time and
ensures that an agent is only engaged when a customer answers.
The following image shows the customer-first mode with an immediate (ASAP)
callback request on IVR where a customer is dialed before agent is connected.
Agent views the callback interaction as any other normal voice interaction in the
CSM Configurable Workspace.
Customer-first mode - Immediate callback request

Agent-first mode
In this mode, CCaaS routes the interaction first to an available agent. The Agent
previews the callback context and dials the customer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
Callback flow: The callback request is queued. When the callback request reaches
the top of the queue and an agent becomes available, CCaaS routes the interaction
to an available agent. The agent accepts the interaction and opens it in ServiceNow
configurable workspace. The agent previews the callback context card and then
dial the customer. Dialing the customer can be manual or automatic based on a
configuration in CCaaS. If the customer doesn’t answer, the agent can redial or
close the callback interaction.
The following image shows the agent-first mode with immediate (ASAP) callback
request on IVR where an agent is dialed before the customer is connected.
Agent-first mode - Immediate callback request

The Interaction Controls Component (ICC) for callbacks feature enables CCaaS providers
to display callback interactions so agents can manage customer calls directly from their
configurable workspace. For more information on how to handle CCaaS callback requests,
see Manage a CCaaS callback request in the Configurable Workspace and Manage a CCaaS
callback request using Global Voice Control.

Note:
To manage and activate the ICC integration for callbacks, see Implement the Interaction
Controls Component (ICC) for contact center voice call and callback integration and Plugin
requirements for voice and callback integrations with contact centers.
Related topics
Manage a CCaaS callback request in the Configurable Workspace
Manage a CCaaS callback request using Global Voice Control
Callback interaction features
Integrate callback voice capabilities and core contact center functions into Agent Workspace
using Interaction Controls Component (ICC) to streamline call handling and enhance the agent
experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
ICC Callback interaction features
The following table shows the Interaction Controls Component (ICC) callback interaction
features on the Callback actions component:
ICC callback interaction features within the Agent Workspace
Feature

Description

Callback actions component
Initiate a call

The Call number button enables you to initiate
a call with the customer by dialing the number
in the Callback number drop-down.

Redial a number

The Retry call button enables you to redial the
number in the drop-down, when the customer
doesn't answer.
• If the customer answers, resolve customer
issue.
• If customer doesn’t answer after multiple
retries, agents can close the callback. The
number of retries is typically left to the
discretion of the agent.

Choose a callback number

The drop-down enables you to view the
list of the available contact numbers of the
customer. You can select any number in the
drop-down to connect with the customer.

Close a call request

The Close callback button enables you to wrap
up a callback request.

Transfer callback

Enables agents to transfer an ASAP or
scheduled callback to another queue or agent
before the call to the customer begins.

Manual dial

In manual dial method, agent dials the
customer manually after viewing callback
context. In this mechanism, the timer doesn’t
appear on the Callback actions component.

Automatic dial

In automatic dial, the call automatically gets
dialed after the countdown timer reaches
zero. Alternatively, the agent can select the
Call number button and manually dial the
call before the timer reaches zero. In this
mode, after the call ends, the callback is
automatically wrapped up after the countdown
timer reaches zero.

In the agent-first mode, the callback interaction page appears with Callback actions component
and Callback context card when you accept the callback request in your inbox. In this mode, you
can view the callback context card to get the callback request details before making the call. In
the customer-first scenario, the callback interaction appears like any other voice interaction and
the customer will already be on the call. For more information on these modes, see Integrating
contact centers with Interaction Controls Component (ICC) for callbacks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
For more information on how to handle callback requests in the CSM/FSM Configurable
Workspace, see Manage a CCaaS callback request in the Configurable Workspace.
When agents are working from an unsupported workspace or they aren’t on the callback
interaction page, they can manage callbacks through the Global Voice Control (GVC) component.
This feature offers quick access to the Callback Actions component, enabling agents to initiate
calls and handle active calls using the available call controls. The features described in the
preceding table are available in the Global Voice control (GVC) for easy access to the agent. In
addition to these features, you’re provided with an Open Interaction page link on the global call
list so that you can navigate to the current callback interaction page. For more information on
how to use GVC for callback interactions, see Manage a CCaaS callback request using Global
Voice Control.
Callback interactions page with ICC Callback features and callback context card

Additional callback features
In addition to the ICC callback features, the following features are available in the callback
interactions.
• Callback context card: The callback context card on the Callback interaction page provides
the details of the callback request. For more information on the callback context card, see
Callback context card.
This feature uses the Interaction table, which includes a reference to the Callback
[sys_cs_callback] table. The Callback table, in turn, references the Callback Context
[sys_cs_callback_context] table to store the information related to the callback request.
Agents with the callback_writer role can edit callback tasks. They can select the appropriate
option from the Reason for the call field to manage callback requests effectively for both sales
and customer service scenarios.
For sales-related callbacks, the relevant options in the Reason for the call field are Customer
Survey, Sales Discovery, Product Feedback, and Customer Relationship Building. For customer
service-related callbacks, the relevant options in the Reason for the call field are Product Issue,
Order Issue, Billing Issue, and Other issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
In UI Builder, the callback context card is configured to use the Lookup component , which
can be used to look up a record on any table in card format. It also uses a data resource that
returns the callback task for the specific interaction.
• Preview duration: The preview time measures the time between the agent accepting the
callback in their inbox and the agent dialing the customer from the CSM/FSM Configurable
Workspace. You can view the preview time in the Interaction table.
• Callback list: You can view the callback interactions assigned to you by navigating to the My
callbacks list on the List page of the CSM/FSM Configurable workspace.
Related topics
Implement the Interaction Controls Component (ICC) for contact center voice call and callback
integration
Plugin requirements for voice and callback integrations with contact centers
Integrating contact centers with Interaction Controls Component (ICC) for callbacks
Manage a CCaaS callback request in the Configurable Workspace
Manage a CCaaS callback request using Global Voice Control
Components installed with Omnichannel Callback

Using Customer Service Management
Agents and managers can use Customer Service Management application to create cases for
customers, route cases to agents with the required skills and availability, manage customer
information and case activity, and connect with other applications and departments to assist
with case resolution.

Manage cases

Find tools for creating
cases, interacting with
customers, and resolving
questions and issues

Manage schedules
and sites

Find tools for managing
your calendar, using
the mobile app to
manage work, and
plan install base tasks.

Automate and optimize

Find tools to automate
your work, and use AI
tools to streamline cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Agent management

Customer management

Customer communication

Manage tasks
and schedules for
agents on your team.

Oversee customerrelated tasks, including
location and access
management, handling
contracts and entitlements,
managing social
media, and outsourcing
customer service.

Learn about tools
for portals and case
deflection. Find examples
and information on
using self-service
tools and contacting
agents for assistance.

Manage cases
Efficiently manage customer and consumer interactions by creating, assigning, and
resolving cases received through various channels like chat, email, and calls.
Use advanced tools, configurable workspaces, and knowledge resources to
streamline workflows, and ensure personalized and timely support.
Manage schedules and sites
Manage agent schedules, customer service cases, and install base plans using
tools like agent calendars, Microsoft Outlook integrated with CSM, and the CSM
mobile app.
You can get real-time updates, streamlined collaboration, and service contracts to
enhance customer service efficiency and support.
Automate and optimize
Integrate Virtual Agent for automation and Proactive Customer Service Operations
for early issue resolution. Use Task Intelligence, Guided Decisions, and Playbooks to
streamline case management.
Agent management
Agent Management involves recruiting, training, and monitoring agents to improve
customer service. Key tasks include time entries, case assignment, managing
special handling note, chat support and overseeing outsourced service provider
tasks.
Customer management
Streamline customer access, contract management, and social media integration
to enhance service efficiency. Support B2B2C models for better customer
relationships and improve workflows across multiple service channels.
Customer communication
Optimize customer service with Playbooks, reducing resolution time and guiding
users through tasks. Empower customers with seamless service via autoresponders, omnichannel callbacks, and personalized portal experiences for faster,
smarter support.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
Manage cases
Case management within provides a structured and efficient approach to handling a wide variety
of service requests, incidents, and inquiries. It encompasses the processes and tools used to
manage individual cases from initiation through resolution, ensuring that service delivery is
consistent, timely, and aligned with organizational goals.
Manage cases for Customer Service Management
Application or feature

Create customer service cases

Description

• Create a customer service caseCustomer service agents and agent
managers can create cases using the
Customer Service Management application.
• Create a customer service case of a
specific type-Customer service agents can
create different types of cases by making
selections from the case type selector.
• Create a customer service case from a chatIf a customer chat results in the need to
open a case, create the case directly from
the conversation.

Assign a customer service case
Create a task for a customer service case

Agents can assign cases to themselves or to
other customer service agents.
Create a task for a customer service case for
additional work that needs to be completed as
part of resolving the case.

Create a case task of a specific type for a
customer service case

Customer service agents can create different
types of case tasks by making selections from
the case task type selector screen.

Create a work order for a customer service
case

Create a work order for a customer service
case as part of the case resolution process.

Create a request on behalf of a customer or
consumer

Customer service agents can create
requests on behalf of customers from CSM
Configurable Workspace or from the platform
interface.

Close a customer service case

Close a case at any time, except when it is in
the Resolved state.

Create a consumer case

• Create a consumer case from a chat- If a
consumer chat results in the need to open
a case, create the case directly from the
conversation.
• Create a consumer case from an
anonymous chat- If an anonymous chat

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Manage cases for Customer Service Management (continued)
Application or feature

Description

results in the need to create a consumer
case, create the case directly from the
conversation.
Create a consumer record

• Create a consumer record- Consumer
service agents and managers can create
consumer records from the Customer
Service Management application.
• Create a consumer record from an
anonymous chat- If an anonymous chat
results in the need to create a consumer
record, create the record directly from the
conversation.

Create additional consumer addresses

Consumers can have multiple addresses,
including one primary address.

Respond to a case using an email quick
message

Use predefined quick email messages to
quickly draft replies to customers. Agents can
select predefined quick messages to add
content into the message body of emails.

Initiate a conference call from a case

As part of resolving a customer service case,
you can initiate a conference call between
involved users.

Use the Activity Stream

Enhancements in the Activity stream help
reduce cluttering in the Activity stream and
reduce the agent effort to understand the case
context.

Resolve cases with knowledge and community Enable agents to resolve a case more
content
quickly by searching for information from
the knowledge base and community and, if
helpful, associating it to the case.
Manage skills for a customer service case

Add or remove optional and mandatory skills
for a customer service case.

Using Chat Zoom Connector

As an agent you can initiate a Zoom
meeting from a chat to understand and
resolve customer issues faster through live
interactions.

Using CSM Configurable Workspace in
Customer Service Management

Use CSM Configurable Workspace to interact
with customers, create and work on cases, and
resolve questions and issues.

Using Business Location 360

Enable customer service agents to get a
comprehensive, 360-degree view of the
business location issues, so that they get the
required contextual data to effectively resolve

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Manage cases for Customer Service Management (continued)
Application or feature

Description

the reported issues within the Customer
Service Management (CSM) application.
Outsourced Service Provider agent tasks

Outsourced service provider agents extend
the capabilities and reach of an organization’s
customer service operations by providing
basic customer service to customers and
consumers.

Create a customer service case
Customer service agents and agent managers can create cases using the Customer Service
Management application.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

Note: Apart from these roles, contributor roles also can create cases. To learn more, see
Contributor user roles.

Procedure
1. Create a case.
Option

Description

CSM Configurable Workspace

From the Interaction form, select Create Case.
Navigate to Customer Service > Cases > Create New.
You can also create cases by:

Platform interface

◦ Selecting New from the Customer Service Cases list.
◦ Selecting the Create New Case related link from any
of the entities that can be associated with a case,
such as accounts or products.

2. On the Create Case form, fill in the fields.
To learn more about the fields on the Case form, see Case form
3. Select Submit.

Result

If available, the following information is associated with a newly created case:
• The name of the contact and the contact's company
• The product and contract details
• The SLA and entitlements

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Create a customer service case of a specific type
Customer service agents can create different types of cases by making selections from the case
type selector.

Before you begin

Role required: sn_customerservice_agent

About this task

The types of cases that agents can create depend on the configuration of the customer service
case types and service definitions features. For more information, see the following topics:
• Configure customer service case types
• Manage customer service case types
• Configuring service definitions
In CSM Configurable Workspace, agents use the Case type selector to make selections and
create cases.

Note: In the Core UI, use the Case interceptor to make selections and create a case.
Procedure
1. Create a case by selecting one of the following actions.
Agent action field description
Agent action

Select New

Select Create Case

Description

Select this action from case lists and case type lists such as
My Cases or My Complaint Cases.
Select this action from the following records:
◦ Interaction
◦ Account
◦ Contact
◦ Consumer
◦ Sold Product
◦ Install Base Item

2. Make selections from the version of the case type selector that has been configured by the
system administrator.
Case selector version field description
Version

Multi-select

Steps

a. Select a Case Type.
b. If desired, select an optional category and subtype to
narrow the available choices.
c. Select Create Case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
Version

Steps

Note: If a subtype hasn't been configured for a case
type, the field for the subtype is not displayed.
Single-select

a. Select a Case Type.
b. Select Create Case.

Product Service Select

a. Enable or disable the This case is for an owned product
check box. This check box controls the display of the
Product field
b. If displayed, select a Product.
c. Select a Service.
d. Select a Case type.
e. Select Create Case.

3. Fill in the fields on the Case form.
For more information about these fields, see Create a customer service case.
4. Select Save.
Create an onboarding case
Create a case to onboard new customers or to onboard existing customers for new products.

Before you begin

Role required: sn_customerservice_agent

About this task

Onboarding cases appear in the Onboarding Cases module and use the ONB prefix in the case
number. For example, ONB0001007.
If the case playbook for onboarding is available, you can use the playbook to guide you through
the steps that need to be completed to resolve onboarding cases.

Procedure
1. Create a case.
Interface

Description

CSM Configurable Workspace

From the Interaction form, click Create Case.

Platform

Navigate to: Customer Service > Cases and
click Create New.

2. Select the case type.
Interface

Description

CSM Configurable Workspace

In the Select Case Type popup window:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
Interface

Description

a. Select a Case Type.
b. In the Category field, select Customer On­
boarding.
c. Click Create Case.
Platform

Select Customer Onboarding in the list of
available case types in the interceptor.

3. Add the customer information.
◦ If the onboarding case is for an existing customer, fill in the Account and Contact or
Consumer fields.
◦ If the onboarding case is for a new customer, enable the New customer check box and fill in
the fields in the New Customer Information form section.
Field

Description

Customer type

The type of customer, either Business or Indi­
vidual.

Business name

The name of the business. This field is dis­
played and is required when you select Busi­
ness as the customer type.

Note: You can enter customer names
in this field but not partner names.

User name

The name of the contact or consumer. This
field is displayed and is required when you se­
lect Individual as the customer type.

Email address

The email address for the user. This address
is used for notifications.

Phone number

The phone number for the user.

4. Optional: Add additional members to the case from the Additional Members related list.
Use this related list to create the users or business entities that should be included in the
onboarding case. Click New and fill in the fields on the Related Party form.
Field

Description

Use the Type field to select the authorization
type of the additional member. Example au­
thorization types include:
◦ Joint Owner
Type

◦ Signatory
◦ Beneficiary
◦ Sub Account
Additional members can be accounts, con­
tacts, or consumers. The selection in the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
Field

Description

Type field determines which of the following
fields is displayed:
◦ User
◦ Consumer
◦ Account
User

The name of the contact being added as an
additional member.

Consumer

The name of the consumer being added as
an additional member.

Account

The name of the account being added as an
additional member.

5. Fill in the fields on the Case form.
For more information and field descriptions, see Create a customer service case.
6. Click Save.
◦ If the New customer check box is enabled, the Account and Contact or Consumer fields
are not required to save the case.
◦ If the New customer check box is disabled, the Account and Contact or Consumer fields
are required to save the case.

Create a record in CSM Configurable Workspace
Create a record in CSM Configurable Workspace from the Record tab menu.

Before you begin

Role required: sn_customerservice_agent,sn_customerservice.consumer_agent

About this task

You can create records from the Add tab in CSM Configurable workspace. Select the plus sign
(+) icon on the Add tab to see the list of records that can be created.
Record creation from Add tab

Users with the system administrator role can configure the types of records that appear in this
list. The default is an interaction record. For more information about configuring the records
that can be created from the Add tab, see Configure record creation from the new tab menu in
Service Operations Workspace .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
Procedure
1. In CSM Configurable Workspace, select the plus sign icon (+) icon on the Add tab.
If you can create more than one type of record, the system displays a list of the available
record types. For example, New Interaction or New Incident.

Note: If you can only create one type of record, the system displays a blank form of that
record type.
2. Select the type of record to create.
The system displays a blank form of that record type in the tab.
3. Fill in the fields on the record form.
4. Select Save.

Create a customer service case from a chat
If a customer chat results in the need to open a case, create the case directly from the
conversation.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

About this task

When you create a customer service case from a support conversation, the system copies the
conversation history to the case activity stream as comments and work notes. Future messages
are tracked in the case as well.

Important:
Starting in Utah, Connect Support has been deprecated and is no longer supported or
available for new activation. For similar capabilities, please move to Advanced Work
Assignment and Agent Chat. For details, see Move from Connect Support to Advanced
Work Assignment and Agent Chat .

Procedure
1. Navigate to All > Connect > Connect Support.
The Connect workspace opens in a new tab.
2. Click the support tab of the Connect sidebar, indicated by a headset icon (

).

3. Under Cases, open a customer service conversation.
4. At the bottom of the conversation, click the menu icon (
menu.

) to open the Connect actions

5. In the Connect actions menu, select Create Case.
The system opens a new case form in a record tab and automatically fills in some fields based
on conversation details.
6. Complete the form as necessary and click Submit.
Any comments or work notes in the record conversation appear as comments on the incident
form. Work notes do not appear in the chat for the ESS user. The chat agent can select whether
a message is a Comment or Work Note in the conversation.
a. In the record conversation, by the text entry field, click the message type icon (

).

b. Select Comment or Work Note.
c. Enter a message.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
By default, record conversation messages are added as comments.

Note: If you add an attachment to a record conversation, it is attached to the underlying
record as well.
The system automatically shares the record in the conversation, copies the conversation to the
record activity stream, and references the record on the Chat Queue Entry [chat_queue_entry]
table. Any new journal fields added to the record do not appear in the chat. The system also
changes the document ID for the conversation to reference the incident number instead of the
entry in the Chat Queue Entry table.
Related topics
Connect workspace

Assign a customer service case
Agents can assign cases to themselves or to other customer service agents.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

The Assign to me button is only visible if the current user has the customer service agent role
and is not already assigned to the case.

Procedure
1. Open a customer service case.
2. Assign the case.
Option

Description

Assign the case to yourself

Click Assign to me.

Assign the case to another agent

Select an agent in the Assigned to field.

The agent's name appears in the Assigned to field. If the agent also belongs to an agent group,
the group name appears in the Assignment group field.

Create a task for a customer service case
Create a task for a customer service case for additional work that needs to be completed as part
of resolving the case.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

When you create a task, the system uses information from the case to automatically fill in fields
on the Case Task form. After you create and save a task, it appears in the Tasks related list on the
Case form.

Procedure
1. Open the desired case.
2. From the Tasks related list, click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
3. Fill in the fields on the Case Task form.
Case Task form fields
Field

Description

Number

The automatically assigned case task number.

Parent case

The number of the parent case. This can be a case
from the Case [sn_customerservice_case] table or any
child tables of the Case table.

Parent

The number of the parent record if the task is created
from a type of record other than a case. This field is
populated when a case task is created from a noncase record such as an incident, problem, change,
or request. This field is a reference to the Task [task]
table.

Note: You may need to configure the case

task record to display the Parent field. For more
information about adding fields to a form, see
Configuring the form layout .
Contact

The contact for the parent case. This field is a
reference to the Contact [customer_contact] table.

Account

The account for the parent case. This field is a
reference to the Account [customer_account] table.

Consumer

The consumer for the parent case. This field is a
reference to the Consumer [csm_consumer] table.

Subject

The subject of the case task.

Description

A description of the work that needs to be done in
order to complete the case task.

Priority

The assigned priority of the case task:
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low (default)

State

The current state of the case task:
◦ Open
◦ Closed

Assigned to

The assigned user.

Service Definition

This field is a reference to the Service Definition
[sn_case_type_selection] table.

Work notes list

Internal users who receive a notification about this
case when work notes are added. You can only add
internal users to the work notes list.

Work notes

Information about the case task, such as steps taken
toward resolution. Internal users who have been added

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


