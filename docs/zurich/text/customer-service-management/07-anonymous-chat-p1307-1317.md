# Zurich Customer Service Management — Anonymous chat / Customer Service Management Workflow Studio actions / Extension points in Customer Service Management

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1307–1317 of 2452

Sections: Anonymous chat (p1307); Customer Service Management Workflow Studio actions (p1311); Domain separation and Customer Service Management (p1312); Extension points in Customer Service Management (p1315)

---

<!-- page 1307 -->
Features and applications for administering Customer Service Management (continued)
Feature or application

Description

Case and account escalation

Use the escalation feature to highlight specific
cases or accounts and raise awareness of
important customer issues.

Administering case action status

Use the case action status feature to indicate
the status of cases in the Case list. Agents can
easily identify cases that need attention and
quickly prioritize their work.

Major issue management overview

Major issue management enables customer
communication for issues that impact a wider
audience. Use this feature to proactively
identify impacted customers, provide
information to these customers, and manage
the resolution process.

Automatically close customer service cases

Automatically close cases in the Resolved
state if customers do not take any action.

Administer Customer Contracts and
Entitlements

Customer service managers can perform tasks
to maintain service contracts, contract lines,
and entitlements.

Anonymous chat
Consumers can chat with a consumer service agent without logging in to the Consumer Service
Portal.
From the Consumer Service Portal, guest users can click the Chat link in the portal header
to initiate a chat session with a consumer service agent. Clicking this link opens a form that
requests some basic information, including the user's name, email address, and type of issue.
Completing and submitting the form creates a chat request that is routed to the appropriate
agent queue based on the selected issue type. Once the assigned agent accepts the request, a
chat session is established. If necessary, the agent can create a consumer record or a case for
the guest user, or transfer the chat to another agent.

Setting up anonymous chat
Setting up the anonymous chat feature involves the following steps.
1. Activate the Consumer Service Portal plugin (com.glide.service-portal.consumer-portal).
2. Modify the default anonymous chat record producer or create a new record producer.
3. Create one matching rule for each agent queue.
4. Configure anonymous chat properties.
5. If necessary, modify the Connect actions to provide the desired functionality for consumer
service agents in chat conversations. The anonymous chat feature includes these actions:
Create Case for Guest and Create Consumer and Case for Guest. For more information, see
Administer Connect actions .

Anonymous chat plugins
The anonymous chat feature requires two plugins which are activated as part of the Consumer
Service Portal plugin:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
• Anonymous Connect Support (com.glide.connect.anonymous_support): enables the
anonymous chat feature for Connect.
• Connect Support Routing (com.glide.connect.support.routing): routes Connect Support
requests to the appropriate chat queue.

Anonymous chat record producer
The form used to request information from a guest user is a configurable record producer based
on the Consumer Interaction table (sn_customerservice_customer_interaction), which is a new
table in the Istanbul release. When a guest user submits the form, the information provided is
stored as a record in the Customer Interaction table. This record is used for routing the chat
request.
The default anonymous chat record producer, What can we help you with?, is located at Service
Catalog > Catalog Definition > Record Producers. This is a public record producer. You can
modify this record producer or create your own. If you choose to create your own, see Section 3
in the Making a record producer and catalog item public on a CMS page [KB0551300]
article.
You must also set the glide.sc.use_user_criteria property to false.
For more information, see Record Producer

.

Anonymous chat routing
Information provided by the guest user assists with routing and also provides the context
of the request to the consumer service agent. The chat request is routed to the appropriate
agent queue based on the type of issue selected. The routing for anonymous chat requests
uses matching rules. Create one matching rule for each queue and tie a chat request to a chat
queue based on the selected issue type. Matching rules for anonymous chat are based on the
Customer Interaction table.
The following matching rules are provided:
• Anonymous Connect - Billing Support
• Anonymous Connect - Order Support
• Anonymous Connect - Product Support
These rules are based on the selections in the Issue Type field on the default anonymous chat
record producer.

Anonymous chat properties
There are two properties related to the anonymous chat feature. Set these properties to limit the
number of chat requests created by guest users.
Properties of Anonymous chat
Property

Description

connect.support.max_guest_sessions_per_hour

Limit maximum number of
guest conversations created
in the last hour.
• Type: integer
• Default value: 200

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
Properties of Anonymous chat (continued)
Property

Description

• Location: Collaborate
> Connect Support >
Support Administration >
Properties
connect.support.guest_sessions_rate_limit_reached_message Message shown to user
when rate limit for guest
conversations is breached.
• Type: string
• Default value: Guest Chat
is currently not available,
please retry later.
• Location: Collaborate
> Connect Support >
Support Administration >
Properties

Related topics
Record Producer
Connect Support
Routing and assigning customer service cases

Modify the anonymous chat record producer
Modify the default anonymous chat record producer to gather the desired information from guest
users.

Before you begin

Role required: admin

About this task

This record producer requests information from a guest user on the Consumer Service
Portal and stores the information as a record in the Consumer Interaction table
(sn_customerservice_customer_interaction). The record is then used for routing the chat request.

Procedure
1. Navigate to All > Service Catalog > Catalog Definition > Record Producers.
2. Click What can we help you with?.
3. Modify the record producer as necessary, including the variables in the Variables related list.
For more information, see Create a record producer to log incidents .
4. Click Update.

Create a matching rule for anonymous chat
Create one matching rule for each agent queue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
Before you begin

Role required: admin

About this task

A chat request is tied to a chat queue based on the selected issue type.

Procedure
1. Navigate to All > Routing and Assignment > Matching Rules.
2. Click New.
3. Enter a Name for the matching rule.
4. In the Table field, select Customer Interaction.
5. In the Conditions field, use the condition builder to create the following conditions.
Create conditions with condition builder
Field

Operator

Value

Channel

is

Chat

Category

is

Select one of the categories
created for anonymous users
to define an issue on the
record producer:
◦ Product Issue
◦ Billing Issue
◦ Order Issue

6. Click Submit.

Configure anonymous chat properties
Users with the system administrator role can set properties to limit the number of chat requests
created by guest users.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Collaborate > Connect Support > Support Administration > Properties.
2. Set the following properties.
Option

Description

Limit maximum number of guest con­
Limits the number of guest chat requests that
versations created in the last hour.
can be created in a one-hour time frame. The
(connect.support.max_guest_sessions_per_hour
default value is 200.
)
Message shown to user when rate lim­
The message that is displayed on the Con­
it for guest conversations is breached.
sumer Service Portal when the limit on the
(connect.support.guest_sessions_rate_limit_reached_message)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
Option

Description

number of guest chat requests has been
reached.
3. Click Save.

Respond to an anonymous chat request
Select a chat request from the chat queue and respond to a guest user's question or comment.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

Procedure
1. Navigate to All > Collaborate > Connect Chat.
The Connect workspace opens in a new tab.
2. Click the support tab of the Connect sidebar, indicated by a headset icon.
The support tab displays Queues to which you belong. It also displays your open support
conversations under Cases. When a consumer starts a support conversation or an agent
transfers a conversation to a queue, any agent who belongs to the associated queue has
the option to accept the conversation. An agent can also request to transfer a conversation
directly to you.
3. Accept a conversation in one of the following ways.
◦ Accept a conversation from a queue
◦ Accept a transfer request
4. Respond to the guest user and help resolve the issue.
By default, your messages are added to the conversation record as comments and are visible
to the user.

What to do next

If necessary, you can create a consumer record for a guest user and create a consumer service
case from the conversation to track the issue. You can also transfer the conversation to a
different agent or queue, or escalate the conversation to a higher priority queue. For more
information, see Connect Support .

Customer Service Management Workflow Studio actions
Use Workflow Studio actions as building blocks to create Customer Service Management
business processes.
CSM Workflow Studio actions
Action

Description

Get Case

Retrieve a case record using the case number.
If multiple records are found, only the first
record is returned.

Create Case

Create a case using one or more attributes.
This action mimics the structure of the Case
table (sn_customerservice_case) and exposes
all of the fields present on the Case table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
CSM Workflow Studio actions (continued)
Action

Description

Create Quick Case

Create a case using the customer, description,
channel, priority, and category attributes.

Create Task on Case

Create a case task and optionally associate it
with a case.

Update Case

Update a case by providing the case reference
and the fields that you want to update.

Assign Case

Assign a case using matching rules. To use
this action, you must first define the matching
rules that match cases with resources
(assignment groups, agents).

Escalate Case

Request case escalation. This action does not
automatically approve escalation. Approval is
based on the selected escalation template.

Escalate Account

Request account escalation. This action
does not automatically approve escalation.
Approval is based on the selected escalation
template.

Add Work Note to Task

Add a work note to a task or to task extended
objects (for example, a case or case task).

Add Comment to Task

Add a comment to a task or to task extended
objects (for example, a case or case task).

Related topics
Flow Designer
Action Designer

Domain separation and Customer Service Management
Domain separation is supported in Customer Service Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
For more information on support levels, see Application support for domain separation

.

Overview
Domain separation for Customer Service Management is designed for:
• Customers using the application in a domain-separated environment or in a hybrid
environment. With domain separation, a customer can grant access to end users (contacts or
consumers) to other entities in addition to customer service cases. For example, contacts or
consumers can access problems, changes, or projects. Administrators can synchronize the
CSM account model with the domain structure and maintain data separation for entities that
don’t have account-based data separation enabled.
• Managed service providers (MSPs) using the application to provide customer support.
In this scenario, an MSP can provide support to multiple customers, where domains are
necessary to contain all relevant customer data and processes. For example, an MSP
providing support to customers related to billing questions, contract renewals, or other nonservice operations.
• Managed service providers offering the application as a service that customers can provide
to their customers. In this scenario, an MSP can offer Customer Service Management as a
service to customers who, in turn, use the application to support their end customers. This
scenario requires additional configuration due to domain support for some of the core entities
in the platform such as Product Model.

How domain separation works in Customer Service Management
Domain separation for Customer Service Management aligns each customer account to one
domain. To use domain separation with the application, all customer accounts must be assigned
to a domain.
The customer account is the main entity within Customer Service Management. All entities
related to the account, such as contacts and cases, are created in the same domain as the
account. This rule also applies for all entities on customer service cases, including addresses,
assets, and contacts.
When a new account is created, a domain of the same name is also created and assigned to the
account. All related entities for an account, such as contacts and cases, must reside in the same
domain. When a related entity for a domain-separated account is created, the entity is assigned
to the account domain.

Setting up domain separation for Customer Service Management
Domain separation for Customer Service Management requires the domain separation plugin.
Contact ServiceNow to activate domain separation.
Domain separation for Customer Service Management also requires enabling the
csm_auto_account_domain_generation property. This property is installed with Customer
Service Management and is available only after the domain separation plugin is active. Contact
ServiceNow to enable this property.
When the csm_auto_account_domain_generation property is enabled, the Customer Service
Management application automatically creates a domain of the same name when a new account
is created.

Note: Enabling the csm_auto_account_domain_generation property doesn’t add
domains for existing accounts. It only creates domains for newly created accounts. Adding
domains for existing accounts requires a migration script. You can request for the migration
script from the ServiceNow Professional Services team.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
Changes to Customer Service Management tables
Domain separation for Customer Service Management adds the Domain and Domain Path fields
to the Account [customer_account] table. These fields aren’t exposed by default. Customers can
customize lists and forms to view these fields.

Account domains and related entities
When creating related entities for an account, the domain for the related entities is set to the
account domain. Related entities include:
• Contacts
• Cases
• Assets
• Contracts
• Entitlements
• Addresses
• Social profiles
• Escalations
• Sold Products
• Installed Products
• Install Base Items
• Affected Install Base Items
• Sold Product Covered
Changing the domain for an account also changes the domain for all the account’s related
entities.

Domain visibility for customer service agents and managers
Users with the customer service agent (sn_customerservice_agent) and customer service
manager (sn_customerservice_manager) roles must be manually assigned to the TOP/MSP/
Default domain. Agents and managers can’t see case or account details until they’re assigned to
the TOP domain.

Domain separation for case and account escalation
Escalation template records and escalation severity records are domain separated. By default,
these records reside in the global domain. Users can configure the Escalation Template and
Escalation Severity forms to display the Domain field and set the domain as needed.
When an escalation record is created from a case or account, it’s created in the account domain.

Domain separation for ribbon configuration, Lookup and Verify configuration,
and Special Handling Notes
Ribbon and Lookup Verify configurations and Special Handling Notes support domain separation
as process-separated tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
When inserting or updating a record for process-separated tables, the picker domain scope
takes precedence by design with the Overrides [sys_override] field on process-separated tables.
For more information, see Process administration .
Related topics
Domain separation for service providers

Domain separation and entity relationships
With domain separation in Customer Service Management, you can further control visibility and
access to data by using contact, partner, and parent-child relationships.

Partner-customer account relationships
In partner-customer account relationships, the partner account can see data in the customer
account’s domain. When setting up an account relationship, the domain visibility direction is
From > To. The account in the From field contains the domain of the account in the To field.
When a partner admin creates a case for a customer account, the case is created in the
customer account's domain so that all relevant parties can access the case.
In partner-customer account relationships where the customer account has child relationships,
the partner admin can create a case for the customer account but not for the child accounts.
The partner admin can only create cases for the account with which the relationship has been
established.

Contact relationships
In contact relationships, the contact included in the relationship can see data for the specified
account domain.

Parent-child relationships
The account hierarchy feature creates a parent-child relationship between accounts. This
relationship is defined by selecting the parent in the Parent Account field on the Account form
for the child account. Domain hierarchy is also achieved using the Parent Account field. In
parent-child account relationships, parent domains can see data in child domains.
To provide access from the child account to the parent account, you need to set domain
visibility. Navigate to the child account and set visibility in the Visibility Domains related list
(sys_user_visibility) by connecting the user to the domain.

Extension points in Customer Service Management
Use extension points to call custom scripts in the Customer Service Management application.
To access the available extension points, type sys_extension_point.list in the application
navigator and press Enter. Click the desired extension point to view the record details.
You can create multiple implementations for each extension point and provide an order
number for each implementation. The implementation that has the lowest order number is the
implementation that is executed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
Customer Service Management extension points
Extension point

Description

sn_customerservice.CSMService

Defines the default value logic for case
objects.
Available with the Customer Service
(com.sn_customerservice) plugin.

sn_customerservice.CSMCaseSync

Use this extension point to customize the logic
for parent-child case synchronization. This
extension point can be used in one of two
ways:
• Define the conditions for parent case
records that can be considered for
synchronization to child cases. The
default functionality is based on the
sn_customerservice.parent_child_
case_sync system property. Customers
can add additional conditions using this
extension point.
• Customize the logic for parent-child case
synchronization based on the state of the
child case. By default, if the child case is in
the Resolved, Closed, or Cancelled state,
there is no sync from the parent case.
This extension point is used by the
CSCaseSyncHelper script include and
is available with the Customer Service
(com.sn_customerservice) plugin.

Note: In the base system, parentchild case synchronization is
available only for the Case table
(sn_customerservice_case). This feature
must be configured for tables that extend
the Case table.

sn_majorissue_mgt.MajorCase

Available with the Major Issue Management
(com.sn_majorissue_mgt) plugin.

sn_action_status.NeedsAttentionAccessUtil
Enables each application to choose the user
roles that can enable and disable the Needs
Attention field on a case form.
Available with the Customer
Service Case Action Status plugin
(com.snc.csm_action_status).

sn_cs_sm.CSMChangeIntegrations

Creates the logic for mapping the Change
Request field on the case record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
Customer Service Management extension points (continued)
Extension point

Description

Available with the Customer Service with
Service Management (com.sn_cs_sm) plugin.

sn_cs_sm.CSMIncidentIntegrations Creates the logic for mapping the Incident
field on the case record.
Available with the Customer Service with
Service Management (com.sn_cs_sm) plugin.

sn_cs_sm.CSMProblemIntegrations

Creates the logic for mapping the Problem
field on the case record.
Available with the Customer Service with
Service Management (com.sn_cs_sm) plugin.

sn_cs_sm_request.CSMRequestIntegrations
Creates the logic for mapping the Request
field on the case record.
Available with the Customer
Service with Request Management
(com.sn_cs_sm_request) plugin.
global.CSMRelationshipServiceEP

Create CSM relationships with responsibilities.
Available with the Customer Service
(com.sn_customerservice) plugin.

global.CSMContentAccessEP

Creates the logic to implement ACLs for
create, read, update, and delete (CRUD)
operations.
Available with the Customer Service
(com.sn_customerservice) plugin.

AddressMgmtExtensionPoint

Enables users to customize the reference
qualifiers of the location field in the Account
Address table.
Allows users to create an implementation
of this extension point and override the
“getAccountLocationsRefQual” function.

Related topics
Using extension points to extend application functionality
Using scripted extension points in server-side scripts
Using UI extension points in server-side UI macros
Using client extension points in client-side UI scripting

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


