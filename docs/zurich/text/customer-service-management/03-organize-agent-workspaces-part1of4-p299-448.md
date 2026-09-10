# Zurich Customer Service Management — Organize agent workspaces

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 299–448 of 2452 | Part 1 of 4

Sections: Organize agent workspaces (p299)

---

<!-- page 299 -->
• What is the difference between entitlements managed at the CSDM Service Offering and the
CSM Contracts and Entitlements?
Service Commitments in CSDM define the expected level of a service. A service offering
consists of a set of service commitments which uniquely define the service offerings. For
example, a service offering may include a service commitment to perform a data backup each
night.
Service contracts in CSM store information about the type of support that is provided to a
customer. A contract can include an account or consumer, a contact, and the specific assets
that are covered. A contract can also include multiple service entitlements and SLAs. An
entitlement defines the type of support that a customer receives, as well as the supported
communication channels. For example, a customer may sign a service contract to receive
support from 6:00 a.m. to 9:00 p.m. on weekdays.
• How can I request additional services based on the product that I've purchased?
The relationship between the product model and the catalog items enables you to use the
customer portal to request additional services for the products you've purchased. Multiple
catalog items can be associated with a product model.
• Do I need elements from all the CSDM domains to set up CSM?
No. The approach mentioned in this use case is based on the recommended guidelines and
assumes you are in the Run or Fly stage of the CSDM implementation. See Implementing the
CSDM framework in stages
for more information.
When you’re implementing CSM, start with the tables in the CSDM Foundation domain and the
CSM Customer Service domain. Using these domains enables you to leverage the capabilities
included in CSM.
To enable the proactive customer service operations, use tables from the CSDM Manage
Technical Services domain for monitoring the application services tied to the customers’ install
base. Using this domain enables you to leverage the CSM and ITOM integration.
Service-centric organizations can leverage the tables from the CSDM Sell/Consume domain
to connect the product model to the service offerings and then to sold product. These
connections enable you to track the service portfolio and see a complete view of how
customers are consuming services.

Organize agent workspaces
Configure agent workspaces and boost efficiency by optimizing interfaces, setting up case
management and routing, and integrating tools for smooth case handling.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
Case management

Case routing and assignment

Configure your case management
tools to optimize case handling.

Use Advanced Work Assignment (AWA)
to automatically route cases to the
appropriate customer service agents
in CSM Configurable Workspace.

CSM Configurable Workspace

Agent tools

Set up the CSM Configurable Workspace
to provide agents with the tools they
need to answer customer questions
and resolve issues efficiently.

Configure organizational tools for agents,
including Customer Central, dynamic
related records, mobile application,
guided decisions, and playbooks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
Agent workspaces overview

Case management
Configure your case management tools to manage cases efficiently by setting up
features that permit you and your customers to create, resolve, and categorize
cases. Define case types for different customer issues and configure service
definitions to link products, services, and case types. This setup enhances case
handling efficiency, improves customer satisfaction, and ensures accurate tracking
and resolution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
CSM Configurable Workspace
Set up the CSM Configurable Workspace and expand the Workspace UI to optimize
agent customer service processes. This user interface provides agents with the
tools they need to answer customer questions and resolve issues efficiently.
Case routing and assignment
Set up Advanced Work Assignment in the CSM Configurable Workspace to route
and assign cases automatically to the appropriate agents based on their availability,
capacity, and skills. This setup helps to improve efficiency and response times.
Agent tools
Configure organizational tools for agents such as Customer Central, dynamic
related records, mobile application, Guided Decisions, and playbooks. These tools
enable agents to resolve cases quickly and efficiently.

Case management
Set up case management features to enable agents and customers to create cases as needed
and work to resolve those cases. Create the necessary case types to handle specific types
of customer issues. Configure service definitions to create connections between products,
services, and case types.
Setting up case management, case types, and service definitions
Task

Description

Configure case management

Configure the case management features
that enable agents and customers to create
cases for issues and questions, track the
activities related to resolving issues, and
provide communication between the agent
and customer.
Some of the case management features
include the following:
• Configure a Case form view to display the
desired fields and related lists.
• Configure SLA definitions for customer
service cases to specify the time within
which service must be provided.
• Configure major issue management to
manage the communication and resolution
process for issues that impact multiple
customers.
• Configure special handling notes to bring
important case information to an agent’s
attention.

Customer service case types

Configure case types to handle different
types of customer issues. When creating
cases, agents can select the case type that
corresponds to the customer issue.

Task Plan Templates

A task plan template is a collection of tasks
and records, known as template items, that are

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Setting up case management, case types, and service definitions (continued)
Task

Description

automatically generated when the template
is applied. It also includes conditions that
specify when the template is applicable.
Order Operations Case Management

Order operations case management enables
to refer multiple orders or case line items.
Case line items further helps to track and
resolve multiple issues.

Case Lines and Workflows

The Case lines and workflows application
provides the framework for a case type to
handle multiple related issues. Agents can use
these line items to capture, track, and resolve
multiple related issues in a single case.

Case Management for Invoice Operations

Case Management for Invoice Operations
enables customer service agents to create
cases for specific lines within a single invoice
or for multiple invoices.

Service definitions

Configure service definitions that agents can
use to create cases of the right type to support
those service requests.

Configure case management
Configure the Customer Service Management features and components that agents and
managers use to create and resolve cases. This process includes setting up case forms,
assignment workbench configurations, service level agreements (SLAs), and managing major
issues and escalations. Additionally, it covers the use of special handling notes, case digests,
and auto-close resolved cases to streamline customer service operations.

Before you begin

Role required: admin

About this task

The customer service case is the primary entity of the customer service application. An agent
creates a case to identify a customer's question or issue and to track the activities related to
resolving the issue. An agent also uses a case to track all communication with the customer,
including the communication channels used.
Case activities include any action that is taken to resolve an issue. These actions can include
phone calls or emails, knowledge base research, conversations with subject matter experts, and
dispatch requests to field service agents, as well as other activities.
From the case form, an agent can store related information such as the customer's name, contact
details, company, account, product and asset information, service contract, entitlement details,
and any associated SLAs.

Note: These steps also apply to case type configuration.
To configure case management, use the Customer Service-guided setup. The guided setup takes
you through the entire setup and configuration process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, view the list of tasks to configure the feature.
Case Management configuration tasks
Task

Description

Cases and case tasks

Case records include detailed information
about customers, their reported questions
or issues, and the work performed to answer
questions and resolve issues.

Configure a case form view

The case form displays detailed information
about a customer issue or problem. Configure
a case form view to display the desired fields
and related lists.

Configure SLA definitions for customer
service cases

Customer Service Management uses service
level agreements (SLAs) with customer
service cases. SLA can be attached to a
service contract, to a company, and to a
product and can be configured to start,
pause, and stop based on any customer
service case attributes.
After creating the necessary SLAs, associate
them with customer service cases related list
on the case form.

Configure case routing and assignment

The case routing feature uses matching rules
and assignment rules to identify cases that
meet certain conditions and then route those
cases to customer service agents.
Create matching rules to identify cases and
then create assignment rules to route cases
to agents.

Configure case routing and assignment

The case routing feature uses matching rules
and assignment rules to identify cases that
meet certain conditions and then route those
cases to customer service agents.

Configure assignment workbench

The assignment workbench uses
configurable criteria, such as skills and
availability, to evaluate the agents in a
selected group and provide an overall
ranking. Managers can view these results and
select one button to assign a task.
To configure the assignment workbench:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


<!-- page 305 -->
Task

Description

◦ Create matching criteria.
◦ Create an assignment workbench
configuration.
Configure major issue management

Major issue management enables customer
communication for issues that impact a
wider audience. Use this feature for the
impacted customers, create cases for these
customers, provide information, and manage
the resolution process.

Targeted communications

The Targeted Communications application
provides the ability to create and send
articles and emails to internal and external
customers.

Configure special handling notes

Use special handling notes to bring
important case information to an agent’s
attention. Create a configuration for the case
[sn_customerservice_case] table and then
configure the form layout to display the notes
in a pop-up window or a related list.

Configure case action status

The case action status feature enables
customer service agents to identify cases
that need attention and quickly prioritize their
work. Visual indicators in the Action Status
column on the case list highlight case status.

Create cases as a proxy contact

The proxy contact role creates cases and
requests on behalf of customers by email,
phone, chat, Virtual Agent, and from the
customer service portal.

Configure auto close resolved cases

Automatically close cases in the Resolved
state if customers do not take any action.

Configure escalation management

Escalating a case or account raises
awareness about important customer issues,
facilitates communication, and enables you
to track progress toward a resolution. Create
escalation templates and severity definitions
to control the escalation process.

Configure case digests

Case digests enable agents to communicate
with customers and internal stakeholders
about cases.
◦ Summaries: While a case is in progress,
agents can send periodic case summaries
that describe actions taken, next steps,
and other case-related information.
◦ Post case reviews: When the work on a
case has been completed, agents can
create a post case review that includes
information such as the root cause,
mitigation plan, and preventive actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Cases and case tasks
Customer service cases store information about customers, their questions and issues,
and related information. Case tasks are created and assigned to users to complete the work
necessary to resolve cases.

Cases
A case record is the main type of record used by the Customer Service Management application.
Case records include detailed information about customers, their reported questions or issues,
and the work performed to answer questions and resolve issues. The system stores case records
in the Case [sn_customerservice_case] table.
Customer service agents create cases to identify questions or issues, gather information, and
track the activities related to resolution. Agents also use cases to communicate with customers
and other users.
Key features of a customer service case
Feature

Description

Case details

The Details tab includes the following information:
• Customer information such as the customer's name,
phone number, and email address.
• Product information such as the products, assets, and
services owned by the customer.
• Case information, such as the priority, assignment
group, and assigned agent.
• Service contracts, entitlements, and associated
service level agreements (SLAs).

Case activities

The Activity pane enables communication between:
• Agents and customers.
• Agents and other employees within the organization.
The Activity pane also shows the communication
history, case notes and updates, and attachments.

Related tasks

Related tasks include tasks that result from the case,
such as case tasks, work orders, and requests. These
tasks can be internal to the organization or they can
involve the customer.

Information

Information that is gathered as part of resolving a case
can be included in the knowledge base and used to
help resolve similar cases. Agents can also search
knowledge bases and attach useful articles.

For more information about cases and case records, see the following topics:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
• Create a customer service case
• Create a customer service case of a specific type
• Customer service case form

Case tasks
Case tasks are created for additional work that must be completed as part of resolving a
customer service case. These tasks are frequently assigned to users such as middle or backoffice agents. Case tasks are stored in the Case Task [sn_customerservice_task] table.
Agents can manually create case tasks from cases or have them automatically generated from
case playbooks. When a case task is created, the system uses information from the case to
automatically populate some fields on the case task record. This includes the case number in
the Parent case field and customer information in the Account, Contact, or Consumer fields, if
available in the case record.

Note: Case tasks can also be created from other records. If a task is created from a non-

case record, such as an incident, problem, change, or request, the Parent field is updated
with the number of the parent record. The Account, Contact, or Consumer fields aren’t
updated.
If the value in the Parent case or Parent fields is updated, the customer information in the
Account, Contact, or Consumer fields is also updated.
Depending on a user's assigned roles, case tasks appear in a number of different Case Task lists
in the application navigator in CSM Configurable Workspace, including:
• My Case Task
• My Open
• Unassigned for my groups
• All
• My Contributing Tasks
• My Accessible Tasks
For more information about case tasks and case task records, see the following topics:
• Create a task for a customer service case
• Case task form

Cases, case tasks and related parties
The Customer Service Management application enables you to support multiple contacts and
consumers on cases and sold products and provide these contacts with varying levels of case
access. These additional contacts and consumers are called related parties. Related parties are
added to the Related Parties related list on the case record.
Customer service agents can also add related parties to case tasks. Customers that can be
added to a case task are limited to the following:
• Customers that are related parties on the parent case.
• Customers that the agent has access to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
Users with the admin role can remove related parties from cases. When an admin attempts to
remove a related party from a case, the system checks to see if that related party is associated
with any open case tasks.
• If no, the related party is removed from the case.
• If yes, the related party isn’t removed from the case and the system displays a message that
lists the associated case tasks.

Case task integration with Service Definitions
The service definitions feature enables you to create connections between products, services,
and case types.
• Agents can use configured service definitions to create cases of the correct type based on the
selected product or service.
• Customers can use configured service definitions to discover and request the services that
they need .
Case task integration with Service Definitions roles
Role

Description

Admin

When creating and updating case tasks, users with the admin
role can select service definitions in the Service definition
field on case task records.

[admin]
Case task agent
[case_task_agent]

• Contains the service definition viewer role
(sn_csm_case_types.service_definition_viewer). This
role gives users access to the service definitions that are
mapped to case task tables.
• Can create case tasks and update the Service definition
field on the case task record.

Case task viewer
[case_task_viewer]

• Contains the service definition viewer role
(sn_csm_case_types.service_definition_viewer).
• Can view case tasks and service definitions.

Case tasks and user roles
User roles and how they interact with case tasks
Role

Description

Admin role
Admin

This user can:

[admin]

• Create and assign case tasks.
• Update the Account, Contact, and Consumer fields after the
case task is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
User roles and how they interact with case tasks (continued)
Role

Description

Note: The admin can change the values of these
fields to one of the related parties associated with the
parent case.
• Delete case tasks.

Agent roles
Customer service agent

This user can do the following for account cases:

[sn_customerservice_agent]

• Create and assign case tasks.
• Update all case task fields.
• Delete case tasks.

Consumer service agent

This user can do the following for consumer and household
cases:
[sn_customerservice.consumer_agent]
• Create and assign case tasks.
• Update all case task fields.
• Delete case tasks.
Case task agent

This user can work on case tasks that they’ve created and that
are assigned to them or to their assignment groups.
[sn_customerservice.case_task_agent]
Case task agents have read access to the Account, Contact,
Consumer, and Parent case fields for case tasks that are
assigned to them or to their assignment groups.
This user can:
• View and update assigned tasks.
• View and update created case tasks.
• Create case tasks and assign those tasks to other users.
• Add work notes, comments, and attachments to case tasks.
• Update the status of case tasks.
• Perform additional actions from case tasks such as sending
email.
Relationship agent

This user can view, create, update, and delete case tasks for
the customers they have relationships with.
[sn_customerservice.relationship_agent]
Location agent

This user can view, create, update, and delete case tasks for
the business locations they have access to.
[sn_customerservice.svc_location_agent]
Consumer location agent

This user can view, create, update, and delete case tasks for
the business locations they have access to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
User roles and how they interact with case tasks (continued)
Role

Description

[sn_customerservice.svc_location_consumer_agent]
Outsourced agent
[sn_csm_ocs.ext_agent]

This user can view, create, update, and delete case tasks
based on the outsourcing criteria for the cases they have
access to.

Account consumer

Can view the Account, Contact and Consumer fields for the
[sn_acct_consumer.consumer] case tasks they have access to.
An user with this role can work on the following case tasks:
• Tasks that have been created by an user and tasks that are
visible to them based on their access to the case.
• Tasks that are assigned to the user or to the user's
assignment groups.
This user can:
• View and update assigned tasks.
• Create case tasks and assign those tasks to other users.
• View and updated created case tasks.
• Add work notes, comments, and attachments to case tasks.
• Update the status of case tasks.
• Perform additional actions from case tasks such as sending
email.

Note: Available with the Customer data models for
B2B2C plugin (com.sn_csm_b2b_consumers).
Contributor roles
Account contributor

This user can:

• View and update case tasks and the fields on the case task
[sn_customerservice.account_contributor]
record that they have access to.
• View the Parent case, Account, Contact and Consumer
fields on the case task record
Consumer
This user can:
contributor[sn_customerservice.consumer_contributor]
• View and update case tasks and the fields on the case task
record that they have access to.
• View the Parent case, Account, Contact and Consumer
fields on the case task record
Service organization
contributor

This user can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
User roles and how they interact with case tasks (continued)
Role

Description

• View and update case tasks and the fields on the case task
[sn_customerservice.service_organization_contributor]
record that they have access to.
• View the Parent case, Account, Contact and Consumer
fields on the case task record
Self contributor

This user can:

• View and update case tasks and the fields on the case task
[sn_customerservice.self_contributor]
record that they have access to.
• View the Parent case, Account, Contact and Consumer
fields on the case task record
Related parties roles
Case authorized contact

This user can:

• View and update case tasks and the fields that they have
[sn_customerservice.case_authorized_contact]
access to.
• View the Parent case, Account, Contact and Consumer
fields.
Case authorized consumer

This user can:

• View and update case tasks and the fields that they have
[sn_customerservice.case_authorized_consumer]
access to.
• View the Parent case, Account, Contact and Consumer
fields.

Case tasks and external user roles
End users and requesters can access case tasks from the Customer and Consumer Service
Portals by selecting My Lists > My Case Tasks.
End users and requesters can view and update case tasks and the fields that they have access
to (case tasks that have the Visible to customer field enabled). You get read access to the
Parent case, Account, Contact and Consumer fields.
• sn_customerservice.customer
• sn_customerservice.consumer
• customer_case_manager
• sn_customerservice.partner
• sn_customerservice.consumer
The users can see the following fields on the Case Task lists and forms: Account, Contact and
Consumer. If an end user is viewing a case task from a list of case tasks, the Case Task form also
displays the Parent case field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
Scheduled job for case tasks
Case task enhancements in the Zurich release add several fields to the case task record. After
upgrading to the Zurich release, you can run a scheduled job that populates these fields for
active case tasks.

Note: Make sure to run the scheduled job during planned downtime.
If the parent case is an active record in the Case table (sn_customerservice_case) or a table that
extends the Case table, the Update case task fields scheduled job does the following:
• Copies the parent case number to the Parent case field.
• Copies the account and contact or consumer information to the Account and Contact or
Consumer fields, if this information is present in the case record.
To run this scheduled job:
1. Navigate to All > System Definition > Scheduled Jobs.
2. Select Update case task fields in the Name field.
3. Select Execute Now.
Configure a case form view
The Case form contains detailed information about a customer issue or problem. Configure a
Case form view to display the desired fields and related lists.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Cases > Create New.
2. Configure the form layout to add the fields you require.
For more information about adding fields to a form, see Configuring the form layout

.

Note: If you are using Customer Service Install Base Management and Proactive
Customer Service Operations, add the Sold Product field.

3. Configure the form layout to add the related lists you require.
For more information about adding a related list to a form, see Configuring the form layout

.

Note: If you are using Customer Service Install Base Management and Proactive
Customer Service Operations, add the Affected Install Base Items related list.
4. Select Submit.
Related topics
Create and delete views
Add the Internal User field to the Case form
Add the Internal user field to the Case form for the Case view and the Workspace view.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
About this task

The Internal User field displays the name of an internal user. When an agent is creating a case
on behalf of someone else, they can use this field to identify the person requesting assistance.
This user can be an internal employee asking for help for an account, consumer, or service
organization, or for themselves.
With the Customer Service Management plugin (com.sn_customerservice), agents can create
cases for internal employees or on behalf of their accounts and consumers. Additional plugins
provide additional functionality for the Internal User field. For more information, see Contributor
users.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Case Management category, click Get Started.
3. Select Add Internal User Field to the Case Form View.
4. Add the Internal user field to the case form for these views: Case and Workspace.
Related topics
Create and delete views
Configure SLA definitions for customer service cases
A service level agreement (SLA) specifies the time within which service must be provided.
Configure SLA definitions that include the necessary information to create and progress SLAs for
customer service cases.

Before you begin

Role required: admin

About this task

The Customer Service Management application uses service level agreements with customer
service cases. An SLA can be attached to a service contract, to a company, and to a product and
can be configured to start, pause, and stop based on any customer service case attributes.
An SLA is automatically associated to a case when the case is created or updated based on the
conditions that have been set up in the SLA definition. The specific record that gets attached to
a case is the Task SLA record, which tracks the SLAs for that particular case. The Task SLA table
[task_sla] stores Task SLA records.

Procedure
• For more information about SLAs, see Service Level Management concepts
• To create an SLA, see Create an SLA definition

.

.

Configure case routing and assignment
The case routing feature uses matching rules and assignment rules to identify cases that meet
certain conditions and then route those cases to customer service agents.

Before you begin

Role required: admin

About this task

Matching rules are based on two defined sets of conditions: One that identifies specific case
attributes and another that identifies the agent resources best suited to handle cases with these
attributes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
Assignment rules automatically assign tasks to users and groups when the conditions in
a matching rule are met. Create an assignment rule for a matching rule using the Create
assignment rule related link on the Matching Rule form.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, view the list of tasks to configure the feature.
Case Routing and Assignment
Task

Description

Create a matching rule for case routing

Matching rules are based on two defined
sets of conditions, one that identifies specific
case attributes and another that identifies the
agent resources best suited to handle cases
with these attributes.

Create an assignment rule for case routing

Assignment rules automatically assign tasks
to users and groups when the conditions in a
matching rule are met.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Routing and assigning customer service cases
Create a matching rule for case routing
Create a matching rule for a customer service case that identifies the case attributes as well as
the agent resources.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Routing and Assignment > Matching Rules.
2. Select New.
3. Fill in the fields on the Matching Rule form.
This form contains the following sections:
◦ Basic rule information
◦ Applies to: Use this section to create rule conditions
◦ Resource: Use this section to create agent and agent group conditions
Matching Rule form
Field

Description

Name

The name of the matching rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
Field

Description

Execution
order

The order in which this matching rule is to be executed. Similar to business
rules, matching rules are processed based on execution order, from the lowest
to the highest.

Active

Enable this check box to activate the matching rule.

Applies To
Table

The table that stores the task for which the matching rule is being created. The
default is the Case [sn_customerservice_case] table.

Conditions Use the buttons in this field to build one or more conditions on the selected
table. A condition is made up of a selected field, an operator, and a value. Add
conditions using the AND and OR buttons. Delete conditions by selecting the X
icon.
Resource
Matching

The type of resource matching method to use for this rule: Simple, Advanced,
Scripted, Selection Criteria.
Select Simple to assign a task to a specific user.
a. Select the lookup icon next to the Resource field.
b. Select a Table name.
c. Select a Document from the table.
d. Select OK.
Select Advanced to create a specific set of resource conditions. Then use the
condition builder in the Resource field to identify these conditions.
Select Scripted to create a customized script for identifying resources, with the
goal of returning a list of users that have the same skills as the task. The task
under consideration is set in the context of the script. For example:
//current has the task record for which the rule is
being executed.
var task = current;
var skills = task.getValue("skills");
var skillUtil = new global.SkillsUtils();
var skilledUsers =
skillUtil.getAllSkilledUserIds(skills);
return skilledUsers;

Resource

This field changes depending on the resource matching type selected in the
Matching field.
For Simple matching, use this field to select a table and a user.
For Advanced matching, use the condition builder in this field to build one or
more conditions to identify a resource. These conditions can be based on user
role, agent group, specific skills, work load, or agent availability.

Schedulebased
filtering

This field applies to Advanced matching. Enable this check box to filter
resources that are in schedule (work hours) at the time of routing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
Field

Description

Script

For Scripted matching. Use this field to create a customized script for
identifying resources. An example script is included. The expected return from a
customized script is an array of resource sys_ids.

4. Select Submit.
The rule appears in the Matching Rules list.
5. Open the newly created rule from the Matching Rules list and add the desired matching
criteria.
6. From the Select Criteria related list, select New.
7. Select a Criterion.
8. In the Use for field, specify how you want the matching criterion to be used.
Option

Description

Ranking and display

Use the criterion to determine agent ranking
and displays it in a column on the workbench.

Display only

Displays the criterion in a column on the work­
bench but does not use it to determine agent
ranking.

Ranking only

Uses the criterion to determine agent ranking
but does not display it on the workbench.

9. Select a Ranking Method.
Option

Description

More is better

For example, more availability is better when
determining the agent ranking.

Less is better

For example, fewer assigned cases are better
when determining agent ranking.

10. Select Submit.
The criterion appears on the Matching Rule form in the Select Criteria related list.
11. Optional: From the Select Criteria related list, set a Threshold for the criterion.
A threshold sets a minimum requirement for a criterion. If necessary, personalize the list and
add the Threshold field.
Create an assignment rule for case routing
Create a rule that assigns those cases that meet the matching rule criteria to a customer service
agent.

Before you begin

Role required: admin

Procedure
1. Open the desired matching rule.
2. Select the Create assignment rule related link.
You can also create an assignment rule by navigating to Routing and Assignment >
Assignment Rule and selecting New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
3. Fill in the fields on the Assignment Rule form.
Assignment Rule form
Field

Description

Name

The name of the assignment rule.

Application The name of the application to which this assignment rule belongs. The default
application is Global.
Order

The order in which this assignment rule is executed. Similar to business rules,
assignment rules are processed based on execution order, from the lowest to
the highest.

Active

Enable this check box to activate the matching rule. Only active assignment
rules take effect.

Applies To
Table

The table that stores the task for which the assignment rule is being created.
This list shows only those tables and database views that are in the same
scope as the assignment rule. If you select a custom table that extends the
task table, you must clear the instance cache by navigating to https://
<instance_name>.service-now.com/cache.do for the assignment
rule to work.

Warning: Clearing the system cache can affect overall performance,
and degrade system response times. Don’t run cache flushes during
business hours, and don’t trigger cache flushes automatically.
Conditions The conditions in which the assignment rule applies.
Use the buttons in this field to build one or more conditions on the selected
table. A condition is made up of a selected field, an operator, and a value. Add
conditions using the AND and OR buttons. Delete conditions by selecting the X
icon.
Assign To
User

User to be assigned to the task.

Group

The assignment group to be assigned to the task.

Script
Script

A script to determine advanced assignment rule functionality. Scripts provide
access to current.variable_pool variables.

4. Select Update.
Related topics
Define assignment rules
Configure skills management
Manage skill data in a central location for customer service agents and work items.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


<!-- page 318 -->
About this task

To configure skills management, use the Customer Service guided setup. The guided setup takes
you through the entire setup and configuration process.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Skills Management category, view the list of tasks to configure the feature.
Skills Management configuration tasks
Task

Description

Manage skills

Organize skills data of agents and work items
in a centralized location.

Assign skills to work items

Create rules to identify skills and
automatically associate them with work items.

Assign skills to customer service agents

Identify skills that each agent has to work on
tasks and assign it to the agent.

Mandatory Skills
Use the mandatory skills feature to identify any skills that are required for agents and technicians
to work on customer service cases and field service work orders and tasks. Then assign cases
and tasks to agents and technicians who have those required skills.
When assigning cases, work orders, and work order tasks, the assignment tools consider the
mandatory skills, filter out agents and technicians who don’t have these skills, and then rank the
remaining agents.
• If agents with the mandatory skills are available, the cases and tasks are assigned to these
agents.
• If agents with the mandatory skills aren’t available, then agents with any other, non-mandatory
skills identified in the cases and tasks are ranked and assigned.
Field service dispatchers (wm_dispatcher), field service technicians (wm_agent),
customer service managers (sn_customerservice_manager), and customer service agents
(sn_customerservice_agent) can specify both skills and mandatory skills for cases and tasks.
Mandatory skills are an optional feature. Mandatory skills can be identified on the assignment
workbench. In addition to the Skills list, the assignment workbench includes a Mandatory Skills
Added list. Agents are ranked in the workbench based on the number of skills that match the
skills identified in the skills list. If the mandatory skills feature is being used, then the agents
displayed are filtered by the skills listed in the Mandatory Skills Added list and then ranked by
the other matching criteria.
Related topics
Use the assignment workbench
Configuring Mandatory Skills
Configure the mandatory skills feature for use with the Customer Service Management and Field
Service Management applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
Mandatory skills are an optional feature included with the Customer Service Management and
Field Service Management plugins. Use the following steps to configure this feature with the
desired application.

Customer Service Management configuration
To configure the mandatory skills feature for use with Customer Service Management:
• In the Case form:
◦ Configure the form layout to use the Task Skills [task_m2m_skill] table.
◦ In the Task Skills table, set the Mandatory field to True to identify skills that are mandatory to
complete a task.

Note: The Case form should use either the Skills field or the Task Skills table, but not
both.
• [Optional] For existing cases that have data populated in the Skills field on the Case form,
run the Migrate Skills to Task Skill M2M script to move this data to the Task Skills table. By
default, this fix script migrates the skills from existing entries in the Case, Work Order, and
Work Order Task tables to the Task Skills table. For more information, see Migrate skills to the
Task Skill table.
• If you are using the assignment workbench, replace the Matching Skills matching criteria with
the Matching Skills - Mandatory Skills Support matching criteria. For more information, see
Matching rules for case assignment.

Field Service Management configuration
To configure the mandatory skills feature for use with Field Service Management:
1. Enable the work.management.use.mandatory.skills system property.
2. Configure the Work Order form and the Work Order Task form to use the Task Skills
[task_m2m_skill] table.
3. [Optional] For existing work orders and tasks that have data populated in the Skills field on
the Work Order and Work Order Task forms, run the Migrate Skills to Task Skill M2M script
to move this data to the Task Skills table. By default, this fix script migrates the skills from
existing entries in the Case, Work Order, and Work Order Task tables to the Task Skills table
and configures them as optional skills. For more information, see Migrate skills to the Task Skill
table.
4. If you are using dynamic scheduling, update the task filter for the dynamic scheduling
configuration and replace the Matching Skills for Dynamic Scheduling matching criteria
with the Matching Mandatory Skills for Dynamic Scheduling matching criteria. For more
information, see Create a task filter .
For configuring optional skills, navigate to Field Service > Administration > Configuration, select
the Assignment tab and set Auto-selection of agents for tasks requires them to have skills to
one of the following:
• All - indicates that the agent must have all optional skills listed in the task for task assignment.
• Some - indicates that the agent must have at least one optional skill listed in the task for task
assignment.
• None - indicates that the agent is not required to have any optional skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
Mandatory Skills system properties
The Migrate Skills to Task Skill M2M script migrates skills from existing tasks to the Task
Skills [task_m2m_skill] table. Configure the task tables included in the migration using the
skills_management.migration system property.
The mandatory skills feature adds the following system properties.

Note: To open the System Property [sys_properties] table, enter
sys_properties.list in the navigation filter.
Properties installed with Mandatory skills feature
Property name

Description

work.management.use.mandatory.skills

Enables the mandatory skills feature and indicates
that the Task Skills [task_m2m_skill] table is being
used for work orders and work order tasks.
• Type: true/false
• Default value: false

skills_management.migration

Lists the task tables to migrate to the Task Skills
[task_m2m_skill] table when an admin runs the
Migrate Skills to Task Skill M2M script.
• Type: choice list
• Default value:
wm_task,customerservice_case,wm_order

com.snc.skills_management.task_skill_migrated_tables
Contains a list of tables for which the Skills field
has already been migrated to the Task Skills
[task_m2m_skill] table. If the table name is listed in
this property, it indicates that the data is migrated
and cannot be migrated again.
• Type: choice list
• Default value: none

Migrate skills to the Task Skill table
Migrate data from the Skills field to the Task Skills table to utilize mandatory skills support for
executing tasks in a case or work order.

Before you begin

Role required: wm_admin, admin

About this task

The Task Skills [task_m2m_skill] table stores skills and mandatory skills.
In the Customer Service Management application, the assignment workbench uses the Task
Skills table instead of the Skills field in the Case table to display agents based on the evaluation
criteria for task assignments.
In the Field Service Management application, the work order task assignments done using
auto-assignment, dynamic scheduling, and Dispatcher Workspace use the Task Skills table
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
instead of the Skills field in the Work Order and Work Order Task tables to assign agents for task
assignments.

Procedure
1. Add a system property

with the following settings.

Option

Description

Make sure that you are logged in to the Cus­
tomer Service Management application.

Note: Configure the System Properties
Create a system property for a table in the
Customer Service Management applica­
tion.

form to display the Suffix field.

In the Suffix field, enter the name of the sys­
tem property as follows:

com.snc.skills_management.<table_name>_migr
where <table_name> is the name of a case
task table from which the skills need to be
copied.
Make sure that you are logged in to the Global
application.
Create a system property for a table in the
Field Service Management application.

In the Name field, enter the name of the sys­
tem property in the following format:

com.snc.skills_management.<table_name>_migr
where <table name> is the name of a work or­
der or work order task table from which the
skills need to be copied.

2. In the Type field, set the value to true.
3. Click Update.
4. Navigate to System Definition > Fix Scripts and run the Migrate Skills to Task Skill M2M fix
script.
The skills are copied to the task_m2m_skill table. The name of
the table from which the skills are copied gets appended to the
com.snc.skills_management.task_skill_migrated_tables system property.
When the script is run again, it ignores all tables from which skills have already been migrated.
Configure assignment workbench
The assignment workbench uses configurable criteria, such as skills and availability, to evaluate
the agents in a selected group and provide an overall ranking. Managers can view these results
and select one button to assign a task.

Before you begin

Role required: admin

About this task

There are three types of matching criteria available for selection:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
• Simple match
• Aggregate
• Scripted
After creating matching criteria, create a configuration for the assignment workbench by creating
a matching rule of the type Selection criteria and selecting the desired matching criteria.
If necessary, set the assignment workbench properties.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, view the list of tasks to configure the feature.
Configure Assignment Workbench
Task

Description

Create assignment workbench matching
criteria Create assignment workbench
matching criteria

The assignment workbench uses
configurable matching criteria, such as
skills and availability, to evaluate agents
in a selected group and provide an overall
ranking. To create matching criteria, select
the type and then use the fields related to
that type to build the query.

Create an assignment workbench
configurationCreate an assignment
workbench configuration

After creating matching criteria, create a
configuration for the assignment workbench
by creating a matching rule of the type
Selection criteria and selecting the desired
matching criteria.

Configure assignment workbench
propertiesConfigure assignment workbench
properties

Configure the properties related to the
assignment workbench display.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Assignment workbench overview
Matching criteria for case assignment
Matching rules for case assignment
Create assignment workbench matching criteria
Create one or more matching criteria that can be used in an assignment workbench
configuration.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
About this task

The assignment workbench uses configurable matching criteria, such as skills and availability,
to evaluate agents in a selected group and provide an overall ranking. The Matching Criteria
[matching_dimension] table stores the individual criterion that can be added to a matching rule
to create an assignment workbench configuration.

Procedure
1. Navigate to All > Routing and Assignment > Criteria.
2. Select New.
3. Enter a Name and a Description for the criterion.
4. Select the Type of matching criterion.
Option

Description

Simple Match

Creates a one-to-one match. For example,
match the time zone of an agent with the time
zone of a task location.

Aggregate

Takes a simple query as an input and pro­
vides aggregate results. The query returns a
set of users.

Scripted

Includes a scripted query that returns a list of
users.

5. To create a Simple Match criterion, fill in the following fields.
Simple match criterion fields
Field

Description

Applies to

The type of task that this criterion applies to.

Field

The field from the selected task table that you want to match.

Resource Table

The table that stores the resource to use for this matching criterion.

Resource Matching
Field

The field from the resource table that you want to match.

Resource Field

The resource field to be displayed for the task records that match the
resource records.

6. To create an Aggregate criterion, fill in the following fields.
Aggregate criterion fields
Field

Description

Aggregate
Table

The type of task that this criterion applies to.

Aggregate
Filter

Use the condition builder to create a query that returns a set of users from the
selected task table.
For example, create a query that returns customer service cases with the
following states: New, Open, Awaiting info.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
Field

Description

Aggregate
Field

The field from the selected task table to be displayed for the task records that
match the query conditions.

7. To create a Scripted criterion, fill in the following fields.
Scripted criterion fields
Field

Description

Script

Create a customized script that returns a list of users. An example script is
included. The expected return from a customized script is an array of resource
sys_ids.

Aggregate The field from the selected task table to be displayed for the task records that
Field
match the query conditions.
8. Optional: Enter a Display Name.
9. Optional: Enable the Use Reference field.
If you use a reference field, fill in the following fields.
Reference fields
Field

Description

Reference
Table

The table that stores the referenced information.

Reference
Filter

Add filter conditions to return the desired reference information.

Reference
Field

The field from the selected reference table to be displayed for the records that
match the filter conditions.

UI Filter
Label

The label for this field that appears on the assignment workbench

10. Select Submit.
Related topics
Matching criteria for case assignment
Create an assignment workbench configuration
Use a matching rule to create a configuration for the assignment workbench.

Before you begin

Role required: admin

About this task

The assignment workbench configuration is stored in a matching rule that is based on the
Selection criteria matching type. The default configuration uses the Recommendation for Case
Assignment matching rule, which includes three of the four default matching criteria:
• Availability today
• Matching skills
• Assigned cases
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
You can modify or create matching criteria and then modify the Recommendation for Case
Assignment matching rule as needed or you can create your own configuration.

Procedure
1. Navigate to All > Routing and Assignment > Matching Rules to access the Matching Rules list.
2. Select New.
3. Enter a Name for the matching rule.
4. If desired, enter an Execution Order for the matching rule.
This execution order is the order in which the matching rule is to be executed. Similar to
business rules, matching rules are processed based on execution order, from the lowest to the
highest.
5. In the Applies To tab, select the Table that stores the task for which the matching rule is being
created.
6. Use the Conditions field to build one or more conditions on the selected table.
A condition is made up of a selected field, an operator, and a value. Add conditions using
the AND and OR buttons. Delete conditions by selecting the X icon on the right-side of a
condition.
7. In the Resource tab, select Selection Criteria in the Matching field.
8. Select Submit.
9. From the Matching Rules list, open the matching rule that you created .
10. In the Select Criteria related list, select New.
The select Criterion form is displayed.
11. Select a Criterion from the Matching Criteria list.
12. Select how the criterion is to be used in the Use for field.
Option

Description

Ranking and Display

Uses the criterion to determine agent ranking
and displays it in a column on the workbench.

Display Only

Displays the criterion in a column on the work­
bench but does not use it to determine agent
ranking.

Ranking and No Display

Uses the criterion to determine agent ranking
but does not display it on the workbench.

13. Select a Ranking Method.
Option

Description

More is better

A higher value is better. For example, more
availability is better when determining the
agent ranking.

Less is better

A lower value is better. For example, fewer
cases are better when determining the agent
ranking.

14. Select Submit.
15. Repeat steps 10 through 14 for each criterion to add to the matching rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
16. If desired, change the weight of a criterion by double-clicking the Weight field in the Select
Criteria related list and entering a new weight.
Each matching criterion has an assigned weight. By default, the matching criteria in the
Recommendation for Case Assignment matching rule have an assigned weight of 10. You can
assign a higher weight to the criteria that are more important.
17. If desired, set the threshold for a criterion by double-clicking the Threshold field in the Select
Criteria related list and entering a threshold number.
A threshold sets a minimum requirement for a criterion. It may be necessary to personalize the
list and add the Threshold column.
18. If desired, set a criterion active or inactive by double-clicking the Active field in the Select
Criteria related list and selecting true or false.
Changing this setting has an immediate impact on the agent ranking. It may be necessary to
personalize the list and add the Active column.
Configure assignment workbench properties
Configure the properties related to the assignment workbench display.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Routing and Assignment > Properties.
2. Set the following properties, as needed.
Option

Description

Title for the macro button

Creates the title for the macro button on the

assignment_workbench.find.agents.title
task form. The default is Find Agents.
When enabled opens the assign­
ment workbench in a new window

assignment_workbench.new.window

Opens the assignment workbench in a new
window. The default is False.

Set this property to 20, 30, or 50 agents. To
get better performance, do not use more than
assignment_workbench_no_of_agents
50 agents per page. The default is 30.
Number of agents per page

3. Click Save.
Configure major issue management
Major issue management enables customer communication for issues that impact a wider
audience. Use this feature to identify impacted customers, provide information to these
customers, and manage the resolution process.

Before you begin

Role required: admin

About this task

This feature enables you to manage the communication and resolution process efficiently for
issues that impact multiple customers. With major issue management, you can identify impacted
customers who have not yet reported an issue and proactively create cases for these customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, view the list of tasks to configure the feature.
Major Issue Management
Task

Description

Activate Major Issue Management

Activate the Major Issue Management
(com.sn_majorissue_mgt) plugin.

Configure Customer Service Properties

Enable a system property to synchronize data
between parent and child cases.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Major issue management overview
Activate Major Issue Management
Activate the Major Issue Management plugin to use the major issue management feature.

Before you begin

Role required: admin

About this task

This plugin requires:
• Customer Service [com.sn_customerservice]
• Targeted Communications [com.sn_publications]
• Task Communications Management [com.snc.task_communication_management]
Major issue management uses the Targeted Communications recipients lists feature to identify
impacted customers.

Note: If you have installed the Proactive Customer Service Operations plugin, the Major
Issue Management plugin is activated by default.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.sn_majorissue_mgt.
3. Select Activate.
Configure case synchronization
Configure the major issue management system properties to enable synchronization between
major cases and associated child cases.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
Procedure
1. Navigate to All > Customer Service > Administration > Properties.
2. Enable the Synchronize fields from parent to child case property.
3. In the Comma separated list of fields that synchronize from parent to child cases property,
add a comma-separated list of fields that synchronize from the major case to each of the
associated child cases.
4. Optional: Set the Processes SLA asynchronously during parent to child case creation and
synchronization property to false to process the SLA synchronously.
This property is enabled by default.
5. Select Save.
Targeted communications
The Targeted Communications application provides the ability to create and send articles and
emails to internal and external customers.
Users with the publications author (sn_publications.author) and publications administrator
(sn_publications.admin) roles can use the Targeted Communications application to author
publication articles and emails for employees, customer contacts and accounts, and consumers.
Articles are available for viewing from the self-service portals and can also be sent out as email
notifications.
Each publication article includes content and a specified list of recipients. Articles can also
include an optional email notification. Recipients lists can be created dynamically by using a
condition builder to identify the desired conditions, by running scripts, or by manual file upload.
Recipients can be added to or removed from a list manually and lists can have both dynamically
generated and manually added records of the same type.
When creating an article, publication authors specify a publish date and an expiration date. The
system uses these dates to automatically publish and expire the article. Authors can also request
a review before publishing an article. Articles can include an optional email notification that is
sent to all recipients in the recipients list when the article is published. In this email notification,
all the recipients are included in a bcc list to maintain privacy.

Note: Delegates of recipient list users do not receive published email notifications.
The process of publishing articles is based on workflows and two default workflows are
provided: one to publish articles instantly and one that requires approval before publishing.
Publication administrators can update workflows and add users with the publications approver
(sn_publications.approver) role to perform reviews. Both authors and administrators can monitor
publications and see which users have received and viewed the information.
Customer contacts and consumers can view publications by logging in to the Customer
Service Portal or the Consumer Service Portal and selecting the Publications link in the portal
header. Employees can view these publications by navigating to Targeted Communications >
Publications in the application navigator.

Note: For more info see, Components installed with additional plugins for Customer
Service Management

Publication article stages
Publication articles progress through several stages that are displayed in a process flow
formatter on the Publication form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
Publication stages
Stage

Definition

Author

The initial state of the publication creation process.

Review

Publications that are waiting for review. A publication cannot be updated when it
is in the Review stage.

Ready To
Publish

Publications that have been reviewed and are ready to be published.

Published

Publications that that have reached their Publish Date.

Expired

Publications that have reached their Expiry Date or that have been manually
expired.

Cancelled

Pending publications that have been cancelled.

States are shown in a process flow formatter at the top of the Publication form. The current state
is indicated by a blue underline. States that have been completed are indicated by a blue check
mark.

Publication lists
The Targeted Communications application menu includes several views of publication records.
Publications lists
State

Definition

Active
Publications

Includes publications in the following stages:
• Author
• Review
• Ready to Publish
• Published

Draft Publications Includes publications that have been created and sent for review.
Expired
Publications

Includes publications that have reached their Expiry Date or have been set
to Expired.

Targeted communications workflows
Starting with the Zurich release, legacy publication workflows for the Targeted Communications
(com.sn_publications) application have been migrated to low code flows in Workflow Studio .
The functionality of the flows remains the same.
If customers have customized the legacy workflows, a fix script deactivates the new flows and
activates the legacy workflows during instance upgrade.

Note: The new flows are only activated if the legacy workflows have not been customized.
For more information, see Targeted communications publication workflows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
Recipients lists
Create the recipients list for a targeted communications that can include internal users,
customers, accounts, contacts, and consumers. You can create the recipient list using the
methods of user import, dynamic lists, or scripting.
When an article is published, the recipients on this list can view the article on the Customer or
Consumer Service Portal. Recipients can also receive optional email notifications.
Recipients lists are also used by the Major Issue Management application to create child cases
for a major case.
Recipients lists are created in the following ways:
• By creating a list of imported users.
• By creating a dynamic list based on selected conditions.
• By creating a script.
Recipients lists can have both dynamically generated and manually added records of the same
type.
The system administrator can manage a scheduled job to refresh recipient lists. This scheduled
job, Targeted Communications Refresh recipient list, adds new recipients to
each of the active published articles. The new recipients receive email notification of the article
and are granted access to view the article on the portal.

Create a recipient list by importing contact information
Create a recipient list by importing contact information. For contacts, supported file types include
xls and csv.
Multiple files can be imported into the same recipient list, with new recipients appended to the
recipient list file. The system checks and imports only those accounts and contacts that exist
in the system. Duplicate entries are not created. At the end of the import process, the system
displays a status with the number of records imported and rejected.
The system uses the sys_id and the email address attributes to match contacts. It first looks for
a matching sys_id match. If not found, it then looks for a matching email address. If neither are
found, the record is rejected.

Create a recipient list by importing account, consumer, or internal user
information
Create a recipient list by importing account, consumer, or internal user information. The
supported file type is xls.
The system uses the following attributes to match the imported records:
• Account: Uses the sys_id and the account number. Attempts to match the sys_id. If not found,
then attempts to match using the account number. If neither are found, the record is rejected.
• Consumer and User: Uses the sys_id or the email address. Attempts to match the sys_id. If not
found, then attempts to match the email address. If neither are found, the record is rejected.

Note: Column names are case sensitive. For example, use sys_id and number for
accounts and email for consumers and users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
Create a recipient list using a script
Create a recipient list using a script with these supported entities: contact, company/account,
consumer, and internal user. The output of the script is an array of sys_ids of the corresponding
entity. After creating the recipient list, the system shows the total number of records identified,
added to the list, and rejected.
To create a recipient list using a script, select Dynamic Condition in the Method field on the
Recipients List form and enable the Show Script check box. Then create your script in the Script
field.
Targeted Communications publication workflows
The Targeted Communications application (com.sn_publications) includes default workflows that
are used for publishing articles.
The application includes two publishing workflows:
• Instant Publish: Publishes an article instantly.
• Publish With Approval: Requires approval before publishing.

Migrating workflows to Workflow Studio flows
Starting with the Zurich release, legacy workflows for the Targeted Communications application
have been migrated to low-code flows in Workflow Studio . The functionality of the new flows
remains the same.
During an upgrade, the logic checks if a publication workflow or its configuration has been
customized.
• If customizations are detected in the workflows or the configuration, the system reverts to the
legacy workflows and disables the new flows and related configurations.
• If no customizations are detected, the system replaces the legacy workflows with the new
flows.
This upgrade logic ensures that customizations are preserved and are not overwritten.

Summary of upgrade actions
The following table provides a summary of the actions that take place during upgrade depending
on publication workflow and configuration customization.
Summary of upgrade actions
Setting

Customization detected

No customization detected

Legacy workflows

Activated

Deactivated

New flows

Deactivated

Activated

Legacy UI policies

Activated

Deactivated

New UI policies

Deactivated

Activated

Legacy business rules

Activated

Deactivated

New business rules

Deactivated

Activated

Workflow config value

Set to legacy workflows

Set to new flows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
Key steps during upgrade to Zurich
The following table describes the key steps that the system takes during upgrade to the Zurich
release.
Key steps during upgrade to Zurich
Step

Description

1. Customization detection

The logic checks if the legacy workflows or the
sn_publications_workflow_config table record
6c9b0e65c30112004bd67bfaa2d3ae56 have been
customized. If customizations are found, the system reverts to
the legacy workflows.

2. Legacy workflow activation

• The legacy versions of the workflows are activated:
◦ Instant Publish
◦ Publish With Approval
• The script chooses the correct workflow version based on
the installed plugins.
• If the Customer Service Base plugin is active, the script
activates the following workflow versions:
◦ Instant Publish (Base):
e7de79b7c3401300e7c7d44d81d3aece
◦ Publish With Approval (Base):
33987078c3d01300e7c7d44d81d3ae2f
• If the plugin is not active, the script activates the following
workflow versions:
◦ Instant Publish: f6d5c49a93201300ac40f5be867ffb3f
◦ Publish With Approval:
5be6c89a93201300ac40f5be867ffba1

3. New flow deactivation

• New Flow Designer flows for publications are deactivated:
◦ Publish With Approval Flow
◦ Instant Publish Flow
• All snapshots for these flows are also deactivated.

4. UI policy management

• Legacy UI policies are activated:
◦ Approver field required (legacy)
◦ Hide approver field (legacy)
◦ Show legacy workflow
• New UI Policies are deactivated:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
Key steps during upgrade to Zurich (continued)
Step

Description

◦ Hide approver field
◦ Show process flow
◦ Approver field required
5. Business rule management

• Legacy business rules for starting the old publication
workflow are activated.
• New business rules related to new flows are deactivated.

6. Workflow configuration
update

The workflow configuration record
(sn_publication_workflow_config) is updated to point out to the
correct process workflow:
• If legacy workflows are present, the config is set to use the
corresponding legacy flow.
• If not, it defaults to the Instant Publish Flow.

What to do before and after upgrading
Follow these steps before and after upgrading to the Zurich release:
• Before upgrading, review your publication workflow customizations.
• After upgrading, verify that the correct workflows, flows, UI policies, and business rules are
active as expected.
• If you want to use the new flows, remove customizations and reactivate the new flows and
related configurations.
If customizations are detected during upgrade
Setting

If customization detected (sys_id)

Legacy workflows

Activated:
• Instant Publish: a9587563d76302004f1e82285e6103ae
• Publish With Approval:
51a2f923d76302004f1e82285e610355

New flows

Deactivated:
• Publish With Approval:
e91f81a9a3e352107ee9d8b8651e6137
• Instant Publish: ec48616da36752107ee9d8b8651e611f

Legacy UI policies

Activated:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
If customizations are detected during upgrade (continued)
Setting

If customization detected (sys_id)

• Mandatory Approver: df2ea83bc34112004bd67bfaa2d3aef5
• Hide Approver: 3afeac3bc34112004bd67bfaa2d3ae29
• Show Legacy Workflow:
567136f84f0c62107ee9a701b1ce0b31
New UI policies

Deactivated:
• Mandatory Approver (Flow):
5a0f230ea3a312107ee9d8b8651e6110
• Hide Approver (Flow):
26d92306a3a312107ee9d8b8651e6107
• Show Process Flow: 57f5c434a39b52107ee9d8b8651e61e4

Legacy business rules

Activated:
• Start New Publication:
11eb8390c3a012004bd67bfaa2d3aeb8
• Approver List Required:
6a88a328c39112004bd67bfaa2d3ae04

New business rules

Deactivated:
Approver List Required (New Flows):
47b133b2a36b12107ee9d8b8651e61d1

Workflow config value

Set to legacy flow:
• Config Record: 6c9b0e65c30112004bd67bfaa2d3ae56
• Legacy Workflow sys_ids:
a9587563d76302004f1e82285e6103ae,
51a2f923d76302004f1e82285e610355

Workflow Config table update
The upgrade to Zurich adds the following columns to the Workflow Config
[sn_publications_workflow_config] table:
• Process Workflow (Workflow Studio flow field)
• Workflow (legacy workflow field)
• Approvers
Add or remove an approver
Facilitate the approval process by adding or removing approvers from your publication workflow.

Before you begin

Role required: sn_publications.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
Procedure
1. Navigate to All > Targeted Communications > Publication Workflow.
2. Select a workflow.
The approvers assigned to the workflow are displayed in the Approvers field.
3. To add an approver, select Edit Approvers next to the Approvers field and select an approver
from the Users list.
This list includes users with the sn_publications.approver role. The selected user is added to
the Approvers field. Approvals on workflows are a platform functionality. For more information,
see Approval and rollback workflow activities .
4. To remove an approver, select Edit Approvers next to the Approvers field, select the
approver's name, and then select Remove.
The approver's name is removed from the Approvers field.
5. Select Update.
Create a recipients list
Create and save a list of users to receive targeted communications.

Before you begin

Role required: sn_publications.author, sn_publications.admin, sn_customerservice_agent,
sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

A recipient list can include internal users, accounts, contacts, or consumers. Create a recipient
list using any of the following methods:
• By importing a list of users.
• By creating a dynamic list based on selected conditions.
• By creating a script.
Recipients lists can have both dynamically generated and manually added records of the same
type.

Note: You must create at least one recipient list before creating a publication.
Procedure
1. Navigate to All > Targeted Communications > Recipients Lists.
2. Select New.
3. Fill in the fields on the Recipients List form.
Recipients List form
Field

Description

Name

The name of the list.

Type

The type of recipients to include in the list.
◦ Contacts (customer_contacts)
◦ Internal Users (sys_user)
◦ Consumers (csm_consumer)
◦ Accounts (customer_account)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
Field

Description

State

The state of the recipient list.
◦ New: The list has not yet been generated. Select Refresh Recipient List.
◦ In Progress: The list is generated. (You can see only this state when
generating a large list of recipients.)
◦ Complete: The list has been generated.

Method

The method used to generate the recipient list.
◦ Upload File: Create a list by uploading user information from a selected
Excel .xlsx file.
◦ Dynamic Condition: Create a list by selecting conditions in the condition
builder or by adding a script.

Note: To exclude inactive users from receiving emails, use the
condition builder to exclude inactive users from the recipients list.
Choose
File

If the Method is Upload file, download an Excel template and then select
an .xlsx file that contains the user information.
The templates vary based on the entity selected in the Type field. For accounts,
the template includes columns for sys_id and account number values. For
contacts, consumers, and internal users, the template includes columns for
sys_id and email values.

Show
Script

If the Method is Dynamic Condition, enable this check box to create a
recipients list using a script. Enabling this check box displays the Script field.

Script

The script used to create a recipients list.

Table

The table that stores the user information. Depending on the selection in the
Type field, this field displays:
◦ Contact [customer_contact]
◦ User [sys_user]
◦ Consumer [csm_consumer]
◦ Account [customer_account]

User Field

The field that references the user record in the User (sys_user) table.
For the following types of recipient lists, this is the sys_id:
◦ Contacts (customer_contacts)
◦ Internal Users (sys_user)
◦ Consumers (csm_consumer)

Account
Field

The field in the selected table that stores the account information.
This field is displayed for the following types of recipients lists: Accounts.

Conditions Use the buttons in this field to build one or more conditions on the selected
table. A condition is made up of a selected field, an operator, and a value. Add
conditions using the AND and OR buttons. Delete conditions by selecting the
Deletebutton on the right side of a condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
4. Select Submit.
For recipients list created by file upload, selecting Submit validates the records in the Excel
file. Following validation, the system displays a pop-up window with the upload results,
including valid and invalid user records.
Edit a recipients list
Modify targeted communication recipient lists using the Dynamically Added column in the
Recipients related list.

Before you begin

Role required: sn_publications.author, sn_publications.admin, sn_customerservice_agent,
sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

The Recipients related list includes the Dynamically Added column that displays either True or
False, depending on how a record was added:
• True for records that are dynamically generated, either by using the condition builder or by
running a script.
• False for records that are added manually, either by using the Edit button on the Recipients
related list or by file upload.
The Active Communication column is set to True by default for both dynamically and manually
added records. This field indicates whether the recipient requires active communication.

Procedure
1. Navigate to All > Targeted Communications > Recipients Lists.
2. Select the desired list.
3. In the Recipients related list, select Edit.
4. Use the arrows to add or remove records.
5. Select Save.
Create a publication
Create a publication to send articles or emails to internal or external customers. You can specify
the content type and include an optional email.

Before you begin

Role required: sn_publications.author or sn_publications.admin

About this task

Two options to consider when creating a publication:
• Include the optional email notification (default)
• Select the type of content: HTML or Wiki
After creating an article, there are two publishing options:
• Submit: sets the stage to Author and saves the publication record.
• Send for review: sets the stage to Review and sends the publication to the approver.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
Procedure
1. Navigate to All > Targeted Communications > Create New Publication.
2. Fill in the fields on the Publication form.
Publication form
Field

Description

Number

The automatically generated publication number.

Content
Type

The type of data included in the publication. Select one of the following:
◦ HTML: this content can include Rich Text formatted (RTF) text, images,
attachments, and links. Enter the publication data in the Content field.
◦ Wiki: this content can include plain text. Enter the publication data in the Wiki
field.
The default selection is HTML.

Category

If desired, select a category for the publication. The following categories are
available:
◦ Defect
◦ Outage
◦ Information

Recipient
Lists

Select a predefined list to target specific customers. Recipient lists are created
by the publication author or administrator.

Short
A brief description or title of the publication.
Description
Publish
Date

Select the publication date as any future date.
Publications are sent automatically when the publish date and time are
reached.

Expiry Date Select the expiration date. This date must be at least one day after the Publish
Date.
Publications are automatically expired when the expiry date and time are
reached.
Skip
Notification Select the Skip Notification checkbox if you wish to skip notification after
creating publication.

Note:
On selecting Skip Notification checkbox, the Email Template field gets
disabled and Include Attach Links filed disappears.
Email
Template

Search and add an email template from the list or add new email template to
send articles to the customers.

Include
Attach
Links

Include links to any attachments in the email notification preview.

Content

This field appears when you select HTML as the Content Type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
Field

Description

Enter the text of the publication in this field. HTML content can include Rich Text
formatted (RTF) text, images, attachments, and links.
Wiki

This field appears when you select Wiki as the Content Type.
Click the Wikitext button and enter the text of the publication in this field. Wiki
content can include plain text.

3. Click one of the following options.
Option

Description

Submit

The stage is set to Author and the publication
record is saved.
The stage is set to Review and the publica­
tion is sent to the approver for review.

Send for Review

Approvers can navigate to Self-Service > My
Approvals to see a list of review requests.

Publish a publication
Automatically publish a publication with an optional email notification to send to customers.

Before you begin

Role required: sn_publications.author or sn_publications.admin

About this task

Publications are automatically published at the date and time selected in the Publish Date field
on the Publication form. When creating a publication, set the Publish Date and the Expiry Date
fields to control when the publication is automatically published and expired.

Note: A UI action to manually publish a publication is not available out of box. If needed,
the system administrator can Create a UI action

and add it to the Publication form.

When creating a publication, you can also include an optional email notification that is sent to
all recipients in the recipients list when the publication is published. In this email notification, all
recipients are included in a bcc list to maintain privacy.

Note: To exclude inactive users from receiving emails, use the condition builder to
exclude inactive users from the recipients list.

Procedure
1. Navigate to All > Targeted Communications > Active Publications.
2. Select the desired publication.
3. View the date in the Publish Date field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
The system automatically publishes the publication on this date and time and sends an email
notification to the recipients in the recipients list.

Note:
◦ If the system administrator has configured a UI action, you can use this UI action for
manually publishing the publication.
◦ For more info, see Email templates

.

Create a recurring publication
Review publications to either accept or reject them. You must have the publication’s approval
role to review the publication. If the publication is not reviewed before the Publish Date, the
publication is rejected.

Before you begin

Role required: sn_publications.author or sn_publications.admin

About this task

You can specify the recurrence interval and the recurrence start and end date. The number of
copies that are created are based on these settings and appear in the Publications related list
on the original publication form. Each copy has a different publish date, which is based on the
interval. Each copy gets reset to the Author state and each one goes through its own workflow.

Procedure
1. Do one of the following:
◦ Navigate to Targeted Communications > Active Publications, open the desired publication,
and select the Setup Recurrence related link.
◦ Navigate to Targeted Communications > Recurrences and select New.
2. Fill in the fields on the Recurrence form.
Recurrence form
Field

Description

Short
Description

A brief description or title of the publication.

Publication
Template

The number of the publication being used as a template.
◦ If you selected the Setup Recurrence related link, this field displays the
original publication number.
◦ If you selected Recurrences in the Targeted Communications menu,
select a publication from the Publications list.

Recurrence
Start

Select a date for the first occurrence of the recurring publications.

Recurrence
End

Select a date for the last occurrence of the recurring publications.

Recurrence
Interval

Select an interval for the recurring publications:
◦ Daily
◦ Weekly
◦ Biweekly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
Field

Description

◦ Monthly
◦ Custom
Custom
Interval in
Days

This field appears when you select Custom as the Recurrence Interval.
Enter the number of days for the interval.

3. Select Submit.
The recurring publications are created based on the selected dates and the recurrence
interval and the stage for each copy is set to Author. The copies appear on the Publications
related list on the original publication form, as well as on the Active Publications and the Draft
Publications lists. From any of these lists, you can open each publication and change the
information as necessary. Each copy lists the publication template number in the Recurrence
field.
A record of the recurrence appears on the Recurrences list.
Preview an email notification
Before sending a publication, authors or administrators can preview the email notifications,
reviewing the recipient list, subject information, and publication content.

Before you begin

Role required: sn_publications.author or sn_publications.admin

About this task

Users can preview the following information for an email notification when the Customer Service
plugin (com.sn_customerservice) is installed:
• The recipient list
• The subject of the publication
• The text of the publication and any attachments.

Procedure
1. Navigate to one of the following modules:
◦ Targeted Communications > Active Publications
◦ Targeted Communications > Draft Publications
2. Select the desired publication.
3. Select the Preview Target Email related link.
4. View the email notification in the Notification Preview window.
5. If desired, view the publication on the customer portal by selecting the link in the body of the
email.
6. Close the Notification Preview window.
Once the publication has been published, the customers in the recipient list should receive
the email.
Update a publication
You can make changes to a publication that is in the Author or Review stages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


<!-- page 342 -->
Before you begin

Role required: sn_publications.author or sn_publications.admin

Procedure
1. Navigate to one of the following modules:
◦ Targeted Communications > Active Publications
◦ Targeted Communications > Draft Publications
2. Open the desired publication.
The stage of the publication must be either Author or Review.
3. Make the desired changes.
4. Select Update.
Send a publication for review
Send publications for a review, either the author or administrators, from the Author stage,
triggering a transition to the Review stage. Approvers are automatically added to the Approvers
related list.

Before you begin

Role required: sn_publications.author or sn_publications.admin

Procedure
1. Navigate to one of the following modules:
◦ Targeted Communications > Active Publications
◦ Targeted Communications > Draft Publications
2. Select a publication in the Author stage.
3. Select Send For Review.
The publication stage is set to Review and the approvers are added to the Approvers related
list on the Publication form.
Approvers can navigate to Self-Service > My Approvals to see a list of review requests.
Review a publication
Users with the publications approver role that have been added as approvers to the publication
workflow can review a publication.

Before you begin

Role required: sn_publications.approver or sn_customerservice_manager

About this task

After reviewing, an approver can either accept or reject a publication. If an approver does not
review a publication before the Publish Date, the publication cannot be approved. The Approve
button is not displayed and the approver sees a message that the publish date and time has
passed. The approver can only reject the publication, which returns it to the Author stage.
The Approvers related list displays a list of approval tasks and includes most recent comment
from each approver.

Note: Delegate approval is not available in the Targeted Communications application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
Procedure
1. Navigate to All > Self-Service > My Approvals.
2. Select a publication for review from the Approvals list that has a state of Requested.
3. Review the publication summary at the bottom of the approval form.
4. Add review comments to the Comments field.
5. Select one of the following options.
Option

Approve

Description

The review state changes to Approved on the
Approvals list and the publication stage is set
to Ready To Publish.
For other approvers of this article, the review
state changes to No Longer Required.

Reject

The review state changes to Rejected on the
Approvals list and the publication stage is set
to Author.

View approvers for a publication
Access and review the assigned approvers for a publication sent for review in Targeted
Communications.

Before you begin

Role required: sn_publications.author or sn_publications.admin

Procedure
1. Navigate to one of the following modules:
◦ Targeted Communications > Active Publications
◦ Targeted Communications > Draft Publications
2. Open the desired publication.
3. Select the tab for the Approvers related list.
The Approvers list includes the users with the publications approver role that have been
added as approvers to the publication workflow.
Track a publication
Access a list of recipients for a publication and see which recipients have viewed the content.

Before you begin

Role required: sn_publications.author or sn_publications.admin

Procedure
1. Navigate to All > Targeted Communications > Active Publications.
2. Open the desired publication.
3. Select the Publication Recipients related list.
For each recipient on this list, you can see if the customer has viewed the article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
Expire a publication
Expire a published article before it reaches the Expiry Date.

Before you begin

Role required: sn_publications.author or sn_publications.admin

Procedure
1. Navigate to All > Targeted Communications > Active Publications.
2. Select an article that has been published.
3. Select Expire.
The publication Expiry Date is set to the current date. The publication is removed from the
Active Publications list and appears on the Expired Publications list.
Cancel a publication
Cancel a pending publication before it reaches the publish date.

Before you begin

Role required: sn_publications.author or sn_publications.admin

About this task

You can cancel a publication in any of the following stages: Author, Review, or Ready to Publish.

Procedure
1. Navigate to one of the following:
◦ Targeted Communications > Active Publications
◦ Targeted Communications > Draft Publications
2. Select the desired publication.
3. Select Cancel.
The stage of the publication changes to Cancelled.
View a publication
Access the details of a publication and review them using the Targeted Communications menu.

Before you begin

Role required: sn_customerservice.customer

Note: To view a published publication, see View a publication on the Customer Service
Portal

Procedure
1. Navigate to All > Targeted Communications > Publications.
2. Select a publication from the Publications list.
Configure special handling notes
Use special handling notes to bring important case information to an agent’s attention.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
About this task

Configure the desired entity tables to use special handling notes and then configure the
corresponding forms to display either the Special Handling Notes list or pop-up window.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, select the Special Handling Notes task.
Configuring special handling notes includes the following steps.
Special Handling Notes configuration steps
Task

Description

Configure an entity table to use special
handling notes

Configuring an entity to use special handling
notes adds the Create Special Handling
Notes related link to the corresponding entity
form.

Configure a form to show special handling
notes in a list or pop-up window

Configure a form to display special handling
notes in either a list or a pop-up window.

Configure the necessary properties to display Configure properties that determine the
special handling notes
frequency and the number of special
handling notes that are displayed.
4. To perform the task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Special handling notes
Configure an entity table to use special handling notes
Configure an entity table to use special handling notes.

Before you begin

Role required: sn_shn.admin

About this task

Configuring an entity to use special handling notes adds the Create Special Handling Notes
related link to the corresponding form.

Procedure
1. Navigate to All > Special Handling Notes > Configuration.
2. Select New.
3. Select a table in the Table name field.
4. If desired, select one or more Related Fields.
You can also display notes from related entities by including those fields in the configuration.
For example, you can display notes for the account and contact associated with a customer
service case by selecting the Account and Contact fields on the Case form.
5. Select Submit.
The configuration is added to the Special Handling Configuration list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
Configure a form to show special handling notes
Display special handling notes on a form, such as the case form, in either a form list or a pop-up
window.

Before you begin

Role required: sn_shn.admin

Procedure
1. Navigate to a form such as the case form.
2. Right-click the form header and select Configure > Form Layout.
The system displays a pop-up window that gives you the choice to use Form Builder or
continue with the following steps. Selecting Try Form Builder opens the Form Builder tool in a
new window. For more information, see Accessing Form Builder .
3. Select Not Now on the pop-up window.
4. Select one or both of the following choices from the Available column and move it to the
Selected column.
◦ Special Handling Notes List
◦ Special Handling Notes Pop Up
5. Select Save.
Related topics
Special handling notes
Configure special handling notes properties
Configure the necessary properties to display special handling notes.

Before you begin

Role required: sn_shn.admin

Procedure
1. Navigate to All > Special Handling Notes > Properties.
2. Configure the following properties.
Option

Description

Special handling notes are displayed each
Display special handling notes only once ac­ time you access a record. Enable this proper­
cording to session
ty to display special handling notes only once
as per the session.
Maximum number of notes displayed in the
Special Handling Notes pop-up window

Increase or decrease this number as desired.
The default is 20 alerts.

The width of the pop-up window in pixels. The
Width of the Special Handling Notes pop-up default width is 500. If you specify less than
window in pixels
300, the window automatically uses the de­
fault width.
3. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
Configure case action status
The case action status feature displays the status of cases in the Cases list. Customer service
agents can use this feature to easily identify cases that need attention and quickly prioritize their
work.

Before you begin

Role required: admin

About this task

Visual indicators in the Action Status column on the case list highlight case status:
• Needs attention: A blue indicator highlights cases that require attention, such as cases that
have been updated by customers or internal users and are waiting for input or review. A blue
indicator highlights cases that need attention.
• Blocked: A red indicator highlights cases that are blocked, such as cases that have open
related task records or are waiting for customer feedback.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started
3. In the Case Management category, view the list of tasks to configure the feature.
Case Action Status
Task

Description

Activate Case Action Status

Activate the Case Action Status plugin
(com.snc.csm_action_status) plugin to enable
the case action status feature.

Configure actionable case flows

Enable or disable the actionable case flows
that are provided with the Case Action Status
plugin.

4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Case action status
Activate Case Action Status
Activate the Case Action Status plugin to use the case action status feature.

Before you begin

Role required: admin

About this task

Case action status provides a Customer Service-specific application of the Action Status
Automation feature, which tracks blocking tasks created for customer service cases and updates
the action status indicators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.snc.csm_action_status.
3. Click Activate.
Related topics
Case action status
Configure actionable case flows
The Case Action Status plugin provides several actionable case flows that create and resolve
blocking tasks for different case-related actions.

Before you begin

Role required: admin

About this task

The actionable case flows included with the Case Action Status plugin are enabled by default. If
you do not want to create blocking tasks for a specific action, you need to disable the associated
flow. For more information about the case flows included with the plugin, see Actionable case
flows.

Note: The Case Action Status plugin provides case flows that create and resolve blocking
tasks for problems associated with cases. To get complete functionality, you must also
activate the Customer Service with Service Management plugin (com.sn_cs_sm). For more
information, see Integrate with Service Management.

Procedure
1. Navigate to All > Customer Service > Administration > Actionable Case Flows.
2. Review the list of case flows.
3. Set the Active field to false for the desired case flows.
Related topics
Case action status
Create cases as a proxy contact
The proxy contact role enables employees to create cases for customer accounts and contacts.
Employees can also be proxy case contacts on behalf of customers.
Assign the proxy contact role (sn_customerservice.proxy_contact) to employees in your
company who are not fulfillers or do not have other CSM-specific roles.

Note: This role requires licensing for access to CSM applications. The proxy contact
cannot co-exist with the contributor roles.
Employees with the proxy contact role can do the following:
• Create cases on behalf of customers by email, phone, chat, Virtual Agent, and from the
Customer Service Portal.
• Create requests on behalf of customers from the Customer Service Portal.
When creating a case, the employee can select a customer contact or a partner contact as the
case contact. The employee is also added to the case as the internal contact.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
From the Customer Service Portal, employees can do the following for the cases where they are
the internal contact:
• View a list of cases.
• View case details.
• Add comments or attachments to a case.
• Accept or reject a case resolution.
• View a list of related work orders.
• Check the status of a case using Virtual Agent.
Customer service agents can create cases and designate an employee with the proxy contact
role as the internal contact.
• From Agent Workspace, agents can create cases for employees from interaction records.
• From connect chat sessions with employees, agents can create cases that add the employee
to the Internal contact field on the Case form.

Plugin information
Activate the CSM Extension for Proxy Contacts (com.snc.csm_proxy_contacts) plugin to enable
this feature. This plugin adds the following to Customer Service Management:
• The sn_customerservice.proxy_contact role.
• The ProxyContactHelper script include.
• The Internal contact field on the case form.
• The Opened for field on the Interaction form.

Note: You need to configure the Interaction form to display the Opened for field and the
case form to display the Internal contact field.

Configure the Customer 360 ribbon component in Agent Workspace
With the workspace administrator role (workspace_admin), you can configure the Customer 360
ribbon component to display the internal contact for a case.
• If the Contact field (the primary field) is populated on the case form, the Customer 360
component displays the contact information.
• If the Consumer field (the secondary field) is populated on the case form, the Customer 360
component displays the consumer information.
• If the Internal contact field (the tertiary field) is populated on the case form, and the Contact
and Consumer fields do not contain any data, the Customer 360 component displays the
internal contact (employee) information.

Internal contact field on case form
When an employee with the sn_customerservice.proxy_contact role creates a case for a
customer account, the Internal contact field on the case form is populated with the employee's
name. This field determines case visibility for the employee. From the Customer Service Portal,
employees can see cases that they have created and are identified as the internal contact.

Note: This field appears on the case form in both the platform interface and Agent
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
When an agent creates a case, they can select an employee with the
sn_customerservice.proxy_contact role in the Internal contact field.

Creating a case from the Customer Service Portal
An employee with the proxy contact role can create a case for a customer from the Customer
Service Portal. As part of creating a case, the employee:
• Selects an account.
• Selects a contact from the available contacts for the account.
• Selects an asset or product for the account.
• Enters a subject and description for the case.
When the case is created, the employee is added to the Internal contact on the Case form.

Creating a case from an interaction record
An agent can create a case for an employee by selecting Create Case on the Interaction form.
On the resulting Case form, the Internal contact field:
• Is set to the value from the Opened for field, if the employee has the proxy contact role.
• Remains empty if the user in the Opened for field does not have the proxy contact role.

Creating a case via email
Employees can create a case by sending an email to the inbound email address. When the email
is received, the system checks to see if the user has the proxy contact role.
• If yes, the case is created and the employee is added to the Internal contact field. The content
of the email is logged in the case activity stream.
• If no, the case is not created.

Initiating a chat from the Customer Service Portal
Employees with the proxy contact role can initiate a chat with an agent directly from the
Customer Service Portal or using Virtual Agent. This creates a chat request card with the
employee's name in the agent's inbox.
• Agent Workspace: When the agent accepts the chat, the interaction record displays the
employee name in the Opened for field.
• Platform: When the agent accepts the chat and creates a case a case from the chat session,
the employee name is added to the case form in the Internal contact field.

Check the status of a case using Virtual Agent
Employees with the proxy contact role can use Virtual Agent to check the status of a case where
they are the internal contact.
After logging in to the Customer Service Portal and initiating Virtual Agent, use the options
available with the Check Case Status topic.

Viewing work orders
From the Customer Service Portal, employees with the sn_customerservice.proxy_contact role
can see work orders for the cases where they are the internal contact. Employees can also add
attachments to the work orders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
In the portal header, select Support > Work Orders.

Employee notifications
The system sends an email notification to the employee in the Internal contact field on the Case
form when:
• The case is opened or closed.
• Comments are added to the case.
Configure auto close resolved cases
Use the auto close resolved cases feature to close cases automatically in the Resolved state if
customers choose not to take action.

Before you begin

Role required: admin

About this task

Enable this feature by activating the Auto Close Resolved Cases Flow Designer flow. You can
also create a configuration that enables both the system and agents to exclude cases from auto
closure.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Case Management category, view the list of tasks to configure the feature.
Auto Close Resolved Cases
Task

Description

Activate Auto Close Resolved Case Flow

Activate the Auto Close Resolved Cases Flow
Designer Flow, which identifies cases in the
Resolved state that are waiting for a customer
response and takes the following actions:
◦ Sends a reminder notification to the
customer after 5 days with no response
that the case is pending solution
acceptance.
◦ Closes the case and sends a reminder
notification to the customer after 10 days
that the case has been auto closed.

Configure Business Rules for Auto Close
Field

Configure the following business rules to
enable or disable the Auto Close field on the
case form:
◦ Mark for Auto Close
◦ Clear Auto Close

Configure Auto Close Flag

The Auto Close Resolved Cases Flow
Designer flow uses the Auto Close flag to
exclude cases from auto closure. This flag is
hidden by default. To use this flag, configure
the case form to display the Auto Close field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Automatically close customer service cases
Configure escalation management
Escalating a case or account raises awareness about important customer issues, facilitates
communication, and enables users to track progress towards a resolution.

Before you begin

Role required: admin

About this task

An escalation provides increased attention to a customer issue and provides a way to track the
progress made in resolving the issue. Create escalation templates and severity definitions to
control the escalation process.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Case Management category, view the list of tasks to configure the feature.
Escalation Management
Task

Description

Create escalation templates

An escalation template defines how an
escalation request is processed and
includes:
◦ Type of escalation request (case or
account).
◦ Approval group and subfloware , required
when the request goes through an
approval process. This triggers the default
escalation approval flow.
◦ Escalation watch list.

Create escalation severity definitions

The escalation severity defines the type of
escalation and the color used to represent
the cases and accounts of this escalation
severity in the user interface.

4. To perform a task, select Configure.
The page in your instance where the configuration is completed is opened.
Related topics
Case and account escalation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
Case and account escalation
Use the case and account escalation feature to highlight specific cases or accounts and raise
awareness of important customer issues.
Escalating cases or accounts facilitates communication about an issue and enables users to
track progress toward a resolution. An escalation provides increased attention to a customer
issue and provides a way to track the progress made in resolving the issue. Escalation is an
internal process that is not exposed to customers. For more information, see Case and account
escalation overview.
Users with the escalation requester role can request and manage case and account escalations.
Users with the de-escalator role can de-escalate cases and accounts.
Related topics
Case and account escalation
Escalate a case or an account
Users with the escalation requester role can escalate a case or account.

Before you begin

Role required: sn_customerservice.escalation_requester or
sn_customerservice.deescalation_requester

Procedure
1. Navigate to the desired case or account.
2. Select the Escalate Case or the Escalate Account related link.
3. Fill in the fields on the Escalation form, as needed.
Escalation form fields
Field

Description

Number

The number automatically assigned to the escalation request.

Source
Record

The case or account for which escalation is requested.

Request
Source

The source of the case escalation request:
◦ Customer
◦ Internal

Reason

The reason for requesting the case escalation:
◦ Inactivity
◦ Lack of Progress
◦ Customer Imposed Deadline

Escalation
Severity

The escalation severity associated with this escalation, which defines the
severity level for the escalation and the color used to highlight the escalated
record in the user interface.
◦ High Severity: escalated records are highlighted in red.
◦ Medium Severity: escalated records are highlighted in orange.

Escalation
Template

The escalation template selected by the user who requested the escalation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
Field

Description

Watch List

The watch list for this escalation record. The watch list includes users on the
escalation template and any users that you add for this record.
For account escalations, you can Add account team members to watch list.

Assignment For account escalations, the assignment group for this account escalation.
group
Assigned to For account escalations, the customer service agent assigned to this account.
Request By The user who requested the escalation.
Escalation Additional information that explains why this escalation is needed.
Justification
4. Click Submit.
If the escalation template includes an approval flow, the approvers review the escalation
request and either approve or deny the request (provide a reason). Once the escalation
request is approved, the customer is notified.

Note: Multiple escalations cannot be created for the same case.
For more details see, Case and account escalation.
Manage an escalated case or account
Manage and document the progress for an escalation using the case or account escalation
record.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice.consumer_agent

About this task

Perform tasks such as changing the escalation severity (which can trigger a different SLA),
update the escalation trend, add or remove users from the watch list, and add comments.
• Case escalations: For managing a case escalation, the customer service agent typically
performs most of the problem resolution work directly in the case record, and the escalation
record is primarily used for status reporting purposes. For example, updating the escalation
trend and commenting to escalation stakeholders. All updates to the case escalation record
are automatically replicated to the case record as work notes. The escalation SLA is also
associated with the case record rather than the escalation record because that is where the
agent provides regular updates.
• Account escalations: For account escalations, the escalation record takes on a more
important role because account escalations are more serious and are often associated
with multiple underlying cases. An account escalation is typically assigned to an account
escalation manager who works closely with multiple case owners to resolve the customer
escalation. The account escalation manager can consolidate the status across the underlying
cases and provide regular updates using the escalation record. Therefore, the SLA is
associated with the escalation record.

Procedure
1. Navigate to the list of case and account escalation records by selecting All > Customer
Service > Escalations > All.
2. Select the desired case or account escalation record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
The Source Record field provides information about the related case or account.
3. Update the fields on the escalation form as needed.
For example, you can change the escalation severity, which can trigger a different SLA, and
update the escalation trend. You can also add users to the watch list and add comments about
the progress of the escalation. For more information about these fields, see Case and account
escalation form.
4. Select Update.
De-escalate a case or an account
The de-escalation requester can de-escalate cases or accounts when the cause of the
escalation is resolved.

Before you begin

Role required: sn_customerservice.deescalation_requester

About this task
Procedure
1. Navigate to the desired escalation record.
2. Select De-escalate in the form header.
This opens the De-escalate Case pop-up window.

3. Enter the necessary information in the De-escalation Justification field.
4. Select De-escalate on the window.
The state of the escalation record changes to Closed.
Create a case or account escalation template
Create a template for each type of case or account escalation.

Before you begin

Role required: admin

About this task

An escalation template determines how an escalation request is processed and includes the
type of escalation (case or account); an approval list or workflow (if approval is required), and an
escalation watch list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
Procedure
1. Navigate to All > Customer Service > Escalation Templates.
2. Click New.
3. Fill in the fields on the Escalation Template form, as needed.
Escalation Template form fields
Field

Description

Name

The name of the escalation template.

Skip
Escalation
Approval

Enable this check box to skip the need for approval. If skipped, escalations are
automatically approved.

Use Default Enable this check box to use the default approval flow (Escalation - Approval)
Approval
provided with the escalation feature.
If using the default approval flow, select an Approval Group.
Escalation
Approval
Flow

Staring with the Zurich release, the Escalation Approval Flow field is added
to the Escalation Template (sn_customerservice_escalation_template) table.
Existing customers with customizations can still view the legacy Escalation
Approval Workflow field. You can continue using your current escalation
workflows or migrate to the new flows, depending on your customizations.

Note: As per of this update:
◦ The legacy Escalation-Approval workflow has been migrated to the lowcode flow designer.
◦ The Escalation Master–Approval workflow has been converted into a
business rule.
Existing customers who haven’t customized these workflows should
migrate to the new equivalent base system flows. Customers with
customized versions might continue using them, but are encouraged to
transition to the updated flows. Custom workflows remain supported, and
customers can continue to create them as needed. However, any new
business requirements must be implemented using the new or updated
flow-based framework, rather than legacy workflows.
Add Case
For case escalation, enable this check box to add the manager of the case
Assignment assignment group to the list of approvers.
Group
Manager to
Approvers
Approval
Group

If the Use Default Approval check box is enabled:
◦ For the Case Escalation type, you can select an additional approval group.
◦ For the Account Escalation type, you must select an approval group.

Note: If there are no approvers, escalation requests are automatically
approved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
Field

Description

Escalation
Approval
Workflow

The workflow used to approve escalation requests. Use the default EscalationApproval flow or select a different flow.

Type

The type of escalation:
◦ Case Escalation
◦ Account Escalation

Escalation
Watch List

Add users to the escalation template watch list. These users receive
notifications for all escalations that use this escalation template.
For an account escalation, the account team is automatically added to the
watch list.

Note: Users can also be added to the watch list on the escalation record.
4. Click Submit.
Create a case or account escalation severity
The escalation severity defines the type of escalation and the color used to represent the cases
and accounts of this escalation severity in the user interface.

Before you begin

Role required: admin

About this task

The assigned severity allows agents to easily identify escalated cases and accounts on lists and
forms. The escalation feature provides two escalation severity definitions:
• High Severity: escalated records are highlighted in red.
• Medium Severity: escalated records are highlighted in orange.
The user interface determines which fields are highlighted for escalated cases and accounts:
• Agent Workspace: Field indicators and field highlights appear on the Short description field
for escalated cases and on the Name field for escalated accounts.

Note: You can move indicators and highlights to any field that is not a hyperlinked field.
• Platform interface: Escalated case and account numbers are indicated with a colored dot on a
list and a colored background on a form.

Procedure
1. Navigate to All > Customer Service > Escalation Severity.
2. Click New.
3. Enter a Name for the severity.
4. In the Style field, enter a color.
To configure additional escalation severity records, the system administrator must configure a
new style with the desired color. For more information, see Highlight list fields .
5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
Configure case digests
The case digests feature enables you to provide periodic updates and resolution information
about high priority customer service cases to customers and internal stakeholders.

Before you begin

Role required: admin

About this task

The case digests feature includes two types of case communication:
• Case action summary: While a case is in progress, agents can send periodic case updates
that describe actions taken, next steps, and other case-related information.
• Post case review: When the work on a case has been completed, agents can a post a case
review document that captures details about the issue, such as the root cause, mitigation plan,
and preventive actions.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Case Management category, view the list of tasks to configure the feature.
Case Digests
Task

Description

Activate Case Digests

Activate the Case Digests
(com.sn_csm_case_digest) plugin.

Create Assignment Rules

Assignment rules automatically assign tasks
to users and groups when the rule conditions
are met. Two rules are provided with the case
digests feature that assigns the post case
review and case action summary records to
the case agent:
◦ Auto- assign the CAS to case agent
◦ Auto- assign the PCR to case agent
For more information, see Case action
summary and post case review assignment
rules.

Create Approval Workflows

The case digests feature includes one
approval workflow that triggers the approval
process for post case reviews. This workflow
provides a one-step process that obtains a
list of approvers from the Approval group
and Approval users fields on the Post Case
Review form.

Create Document Templates

Document templates identify, organize,
and format the content from the case
digest record that is included in generated
documents. Two document templates are
provided with the case digests feature, one

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
Task

Description

for post case reviews and one for case action
summaries.
Create a Case Digest Configuration

Case digest configurations handle different
types of case review processes based on
business needs.

Create Mapping for Case Types

Create the mapping that identifies the case
type fields that are copied to post case
reviews and case action summaries.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Customer Service case digests
Customer Service case digests
Use the case digests feature to provide periodic updates and resolution information about high
priority customer service cases to customers and internal stakeholders.
With this feature, you can send periodic case updates while a case is in progress using a case
action summary. Once a case has been resolved, you can provide a post case review document
that captures details about the issue, root cause, resolution, and preventive measures.
The case digests feature uses a configuration for case action summaries and post case reviews.
The configuration determines the information from a customer service case that is captured
as part of the case action summary or the post case review document. The configuration also
identifies the template that is used to create the summaries and review documents.

Case digests workflows
Starting with the Zurich release, legacy approval workflows for the Case Digests
(com.sn_csm_case_digest) application have been migrated to low code flows in Workflow
Studio . The functionality of the flows remains the same.
Post case reviews can include optional approval workflows that trigger an approval process.
These workflows are selected as part of the case digest configuration.
• New customers can select a flow from the Approval flow field on the Case Digest
Configuration form when creating a configuration for a post case review.
• For upgrade customers:
◦ Selecting an existing post case review configuration displays the legacy workflow in the
Approval workflow field.
◦ When creating a new configuration for a post case review, customers can select a low code
flow from the Approval flow field.
Upgrade users with one or more case digest configurations that use legacy workflows can
continue to use the configurations. No changes have been made to existing configurations.
The Approval flow field appears on the configuration record and on the Case Digest
Configuration list by default. However, the Approval workflow field remains as part of the table
and is functional.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
Case action summaries
Use a case action summary to provide updates to customers and internal stakeholders while a
case is in progress.
Customer service agents typically use case action summaries to communicate information
about high priority cases and mass outage cases. Case action summaries can include both
internal content and customer-visible information. The summaries available to customers include
only the customer-visible information. The summaries available to internal users include both
customer-visible information and internal content.
Customer service agents can:
• Create case action summaries for cases that are in progress.
• Preview summaries prior to publishing.
• Publish summaries to customers and internal stakeholders or publish to customers and send
email notifications to internal stakeholders.
• Update and re-send summaries as needed.
Customer service agents use the Send Case Action Summary UI action to create a case action
summary. This action creates a case action summary record and adds the record to the Related
Records section on the Case form in the Case Action Summary field.
Customer service agents can preview a case action summary before publishing it to a case. In
the preview, internal content appears after the customer-visible information and is identified with
a message: The following content is not visible to customers.
When publishing a case action summary, agents have two options.
• When an agent clicks Publish to Case, the system takes the following actions:
◦ Adds the information from the customer-visible fields to the Additional comments field.
◦ Adds the information from all fields to the Work notes field.
• When an agent clicks Publish to Case & Notify, the system also sends an email notification
with the case action summary to the internal users included in the recipient list selected in the
Additional internal recipients field.

Note: The Publish to Case & Notify UI action is available when a list has been selected
in the Additional internal recipients field.

Closing a case automatically closes the corresponding case action summary.
Related topics
Create a case action summary
Post case reviews
Use a post case review to capture details about a resolved case, including a summary of the
issue, affected assets, root cause, resolution, and any preventive measures.

Creating a post case review
Customer service agents can create post case reviews for cases that are in the Resolved state.
Agents can select the Create Post Case Review UI action to create a post case review
document. This action creates a case action summary record and adds the record to the Related
Records section on the Case form in the Post Case Review field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
Publishing a post case review
Agents can preview a post case review document before publishing and, if necessary, have the
document reviewed and approved.
Agents can add an approval group or approval users to the Post Case Review record and then
request approval. The system sends an email notification to the approvers with a link to the post
case review document. The approvers can either approve the document or suggest changes by
adding them to the Work notes field on the Post Case Review record.
When an agent publishes a post case review document, the system adds a link to a PDF of the
document in the Additional comments field on the Case form. The system also adds the record
to the Related Records section on the Case form in the Post Case Review field. If the document
is available to customers, the link is visible from the Customer and Consumer Service Portals.

Post case review configuration records
The configuration selected for post case review documents identifies the information from the
case that is captured and populated in post case review record. The configuration also specifies
the template that the system uses to create the post case review document.

Closing a case while a post case review is in progress
If a case is closed while the post case review document is in progress, agents can still update the
Additional comments on the Case form with the post case review document link. Once a case
is closed, the Post Case Review form displays a message that the associated case has been
closed.

Post case review actions by role
Customer service roles can perform the following actions for post case review documents.
Post case review actions by customer service role
Role

Action

Customer service agent
• Create and preview one post case review
document for a resolved case.
• Request approval using an optional
approval workflow.
• Publish a post case review document to a
case.
• Reopen and edit a published post case
review document.
Customer service manager

Review, approve, and suggest changes to post
case review documents.

Major issue manager
• Create and publish post case review
documents for resolved major cases.
• Copy the documents to the associated child
cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
Post case review actions by customer service role (continued)
Role

Action

Customer

View post case review documents from the
Customer and Consumer Service Portals.

Post case reviews for major cases
Customer service managers and major issue managers can create and publish post case review
documents for resolved major cases. These documents capture the case data specified in the
configuration but do not include account-specific information. The customer service manager
can also copy a post case review document to the associated child cases. The system adds the
account-specific information when it generates the document for each child case.
The system administrator can enable post case review documents for major cases by setting the
sn_customerservice.parent_child_case_sync system property to true.

Note: Setting this property to true disables the Create Post Case Review UI action for
child cases.
Related topics
Create a post case review
Create a post case review for a major case
Post case review record states
Post case review records can be in a number of different states as they are created, approved,
and published.
Different states of post case review records
State

Description

New

A case review record has been created but is
not yet assigned to an agent.

In Progress

A case review record has been created and is
assigned to an agent.

Awaiting Approval

An agent created a case review document
from the case review record and sent it to one
or more approvers.

Approved

The case review document has been
approved by one or more approvers.

Closed

The case review record has been closed.

Post case review approvals
Enable an optional approval process for post case review documents.
In the case digest configuration, the system administrator can:
• Enable the approval process by selecting an approval workflow.
• Use a condition builder to define the conditions that determine the post case review
documents that require approval.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
One approval workflow, Post Case Review - Default Approval, is provided with the Case Digests
plugin. This workflow reads the approvers from the Approval group and Approval Users fields
on the Post Case Review form and sends an approval request notification to each user.
Approvers receive an email notification with a link to the post case review document. Approvers
can either approve the document or suggest changes by adding them to the Work notes field
on the Post Case Review form. The agent receives a notification when an approver approves the
case review document or suggests changes.
• If the approver suggests changes, the agent can see the changes in the Work notes field.
• If the approver approves the document, the status of the post case review record changes to
Approved.
Case action summary and post case review assignment rules
Use assignment rules to assign case action summaries and post case review documents to
customer service agents.
The Case Digests plugin includes two assignment rules:
• Auto assign the CAS to case agent
• Auto assign the PCR to case agent
When an agent clicks either Send Case Action Summary or Create Post Case Review on a case
record, the system creates the corresponding record and automatically assigns it to that agent.
The system administrator can modify these assignment rules or define different rules to assign
case action summary and post case review records. The system populates the Assigned to
field on the Case Action Summary or Post Case Review form with the user determined by the
assignment rule. If there are no active assignment rules, the Assigned to field remains blank and
the record can be assigned manually.
If using the provided assignment rules that auto assign the records to the same agent:
• The agent clicks Send Case Action Summary or Create Post Case Review on the Case form.
• The corresponding record opens with the agent's name in the Assigned to field.
• The record state is In Progress.
If using assignment rules that do not auto-assign the records to the same agent:
• The agent clicks Send Case Action Summary or Create Post Case Review on the Case form.
• The corresponding records are created but are not displayed.
• If assigned to another agent, the Assigned to field displays the agent's name and the state
updates to In Progress.
• If unassigned, the record remains in the New state.
Create a case action summary
Create a case action summary for a customer service case.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

You can send case action summaries for customer service cases that are in any states other than
New or Closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
After creating a case action summary, the record is added to the Case form in the Related
Records form section. Closing a case automatically closes the corresponding case action
summary.

Procedure
1. Open a customer service case.
2. To create a case action summary, do one of the following.
◦ Agent Workspace: Click the More UI Actions icon (
Summary.

) and select Send Case Action

◦ Platform interface: Click the form context menu icon and select Send Case Action Summary.
This opens a new Case Action Summary form with a status of In progress. Depending on the
table map configuration defined for the case action summary, some of the information from the
case is copied to the Case Action Summary form. With the CAS Configuration, this includes the
information from the Short description field.

Note: The Short description field on the Case Action Summary form can be edited in
the platform interface but cannot be edited in Agent Workspace.
3. In the Case Action Summary form, enter any necessary information in the following fields.
Case action summary form
Field

Description

Additional internal recipients

Select a recipient list. When an agent clicks
Publish to Case & Notify, the system sends
an email notification to the internal users in
the selected list.

Short description

The short description from the case.

Case summary

A brief summary of the case.

Actions taken

Details about actions taken so far to resolve
the case.

Next steps

The steps that the agent is planning to take
in order to resolve the case. This field is not
customer visible.

Internal notes

Other internal information that the agent
wants to share regarding the case. This field
is not customer visible.

4. Click Preview to generate the case action summary and view it in the Preview Document popup window.
5. Optional: Make any desired changes to the fields on the Case Action Summary form and click
Preview again.
6. Click Update to save the changes to the case action summary.
7. Publish the case action summary using one of the following actions.
Action

Description

Publish to Case

Updates the case with the case action summa­
ry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
Action

Description

◦ Information from the customer-visible fields
on the case action summary is added to
the Additional comments field on the Case
form.
◦ Information from the case action summa­
ry is added to the Work notes field on the
Case form.

Publish to Case & Notify

Updates the case with the case action sum­
mary as described above and sends an email
with the case action summary to the internal
stakeholders in the recipient list selected in
the Additional internal recipients field.

Note: The Publish to Case & Notify UI
action is available when a list has been
selected in the Additional internal recip­
ients field.

Create a post case review
Create a post case review document for a resolved case that captures the configured case
information.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

You can create post case review documents for customer service product cases that are in the
Resolved state. Creating a review document is a multi-step process that involves:
• Creating a post case review record from a case.
• Previewing the generated review document and making any corrections.
• Requesting approval, if necessary.
• Publishing the review document so that it is available to customers, internal stake holders, or
both.
You can create one post case review document per case. If this document has already been
created, the Create Post Case Review menu option is not available. You can view and edit the
post case review document from the Related Records form section.
If a case is closed while the post case review is in progress, you can still update the Additional
comments field on the Case form with the Post Case Review document link. When the case is
closed, the system displays a message about the case closure on the Post Case Review form.

Procedure
1. Open a customer service case in the Resolved state.
2. To create a post case review record, do one of the following:
◦ Agent Workspace: Click the More UI Actions icon (

) and select Create Post Case Review.

◦ Platform interface: Click the form context menu icon and select Create Post Case Review.
3. In the Post Case Review form, enter any necessary information in the following fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
Some information is copied from the Case form to the Post Case Review form, such as the
short description and the resolution information.
Post Case Review form
Field

Description

Number

The automatically assigned post case review
record number.

Case number

The case number from which this post case
review record was created.

Assigned to

The agent assigned to the post case review
record.

Commitment Date

The expected completion date of the post
case review.

Assignment group

The group assigned to the post case review
record.

Approval group

The group assigned to review and approve
the post case review record.
This field is visible if an approval workflow is
selected in the case digest configuration.

Approval users

The users assigned to review and approve
the post case review record.
This field is visible if an approval workflow is
selected in the case digest configuration.

Short description

Copied from the Short description field on
the Case form.

Summary

A summary of the issue.

Symptoms

Specific symptoms or problems created by
the issue.

Root Cause Analysis

Copied from the Cause field in the Resolution
Information section on the Case form.

Solution Provided

Copied from the Resolution notes field in the
Resolution Information section on the Case
form.

Preventive Measures Taken

Any measures taken to prevent the issue
from happening.

Work notes list

Internal users who receive a notification
about this case when work notes are added.

Work notes

Information about how to resolve a customer
service case, or steps taken to resolve it, if
applicable.

Activities

Records all activity associated with this
record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
4. Click Preview to generate the review document and view it in the Preview Document pop-up
window.
5. Optional: Make any desired changes to the fields on the Post Case Review record and click
Preview again.
You can edit the content in the Post Case Review record if the state is New or In Progress.
Clicking Preview creates a preview of the document with the latest record information.
6. Optional: If approval is required, complete the following steps:
a. Add an Approval group.
b. Add one or more Approval users.
c. Click Request Approval.
(Optional) You can request approval for a post case review document before sharing it with
customers or internal stake holders. When approval is requested, the status of the post case
review moves to Awaiting Approval and the record is locked for edits.
An email is sent to the approvers with a link to the post case review document. The approvers
can either approve the document or suggest changes by adding them to the Work notes field
on the Post Case Review record. The agent receives a notification when an approver approves
the case review document or suggests changes.
◦ If the approver suggests changes, the agent can see the changes in the Work notes field.
◦ If the approver approves the document, the status of the post case review record changes to
Approved.
7. Click Save.
8. Click Publish to Case to update the case with the Post Case Review document.
The document is included as a link in the Additional comments field on the Case form. If
the document is available to customers, the link is visible from the Customer and Consumer
Service Portals.
Create a post case review for a major case
Create a post case review document for a resolved major case that captures the configured case
information.

Before you begin

Role required: sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager, or
admin

About this task

You can create a post case review document for a resolved major case if the
sn_customerservice.parent_child_case_sync is set to true.

Note: Setting this property to true disables the Create Post Case Review UI action for
child cases.

Procedure
1. Open a major case in the Resolved state.
2. Complete steps 2 through 7 in the Create a post case review topic.
3. Select one of the following options.
Option

Description

Publish to Case

The system performs the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
Option

Description

a. Syncs the child case PCR record with the
parent case PCR record. (If the child case
PCR record is not present, the system cre­
ates a new child case PCR record.) The fol­
lowing fields are synced:
▪ Assigned To
▪ Case Digest Configuration
▪ Short Description
▪ Root Cause Analysis
▪ Solution Provided
▪ Summary
▪ Symptoms
▪ Preventive Measures Taken
▪ Commitment Date
▪ Assignment Group
▪ State
▪ Approval Users
b. Generates a PDF document for all of the
child case PCR records with customer-spe­
cific information.
c. Adds a link to the PCR document to the Ad­
ditional Comments field on the child case
form.
The system syncs the child case PCR record
with the parent case PCR record. (If the child
case PCR record is not present, the system
creates a new child case PCR record.) The fol­
lowing fields are synced:
◦ Assigned To
◦ Case Digest Configuration
◦ Short Description
Copy to Child Cases

◦ Root Cause Analysis
◦ Solution Provided
◦ Summary
◦ Symptoms
◦ Preventive Measures Taken
◦ Commitment Date
◦ Assignment Group
◦ State
◦ Approval Users

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
Review and approve a post case review
Review and approve a post case review document for a resolved case.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

When a customer service agent creates a post case review document that requires an approval,
the system sends an email notification to the list of approvers. This email contains the following
information:
• A short description of the case and the agent assigned to the case.
• Links to the post case review and case records.
• A link to download the post case review document.
• Links to approve the document or suggest changes.
When a post case review record is in the Awaiting Approval state, approvers can access the
Approve and Suggest Changes UI actions.

Procedure
1. Click the link in the email to download the post case review document.
2. Review the document.
3. To suggest changes to the document:
a. Click the link in the email to suggest changes.
Alternately, click the link to open the post case review record and then click Suggest
Changes.
b. Add the information in the Work notes field on the Post Case Review record.
4. To approve the document:
◦ Click the link in the email to approve the document.
◦ Click the link to open the post case review record and then click Approve.
The state of the post case review record changes to Approved.
Re-open a post case review
Re-open an approved post case review document if you need to make changes or update
information.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task
Procedure
1. Open a customer service case.
2. In the Related Records form section, access the record in the Post Case Review field.
3. Click Re-open on the Post Case Review form.
The status of the record reverts to In Progress.
4. Make the necessary changes to the fields on the Post Case Review form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
5. Click Preview to generate the review document and view it in the Preview Document pop-up
window.
6. Optional: Click Request Approval.
7. Click Publish to Case.
Withdraw post case review approval
Withdraw a post case review document after sending it for approval.

Before you begin

Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > Case Digest > My Post Case Reviews.
2. Click and open a post case review which is in Awaiting Approval state.
3. Click Withdraw.
The post case review document is now in In Progress state and approvers are notified by
email that the request for approval is no longer required. You can edit the post case review
document and resend it for approval.
Cancel a post case review
Cancel a post case review that hasn’t been approved, rejected, or no longer requested state.

Before you begin

Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > Case Digest > My Post Case Reviews.
2. Select and open a post case review that you want to cancel.
3. Select Cancel.

Note: If the post case review state was awaiting approval, approvers are notified by
email that the post case review has been cancelled and approval is no longer required.
The post case review document is now in Cancelled state.
Related topics
Re-open a post case review
Components installed with case digests
Several types of components are installed with the Case Digests plugin.

Tables
The Case Digests plugin adds the following tables:
• Case Digest Configuration (sn_csm_case_digest_config)
• Case Digest (sn_csm_case_digest_task)
• Post Case Review (sn_csm_case_digest_pcr)
• Case Action Summary (sn_csm_case_digest_cas)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
The Customer Service Document Template plugin adds the CS Document Template
(sn_csm_doctemplate_template) table.

Extension points
The Case Digests plugin includes the following extension points. Customers can use these
extension points to customize the publish action.
Case digests extension points
Extension point

Description

sn_csm_case_digest.CASPublish

Use this extension point to alter the
functionality of publishing a case action
summary to a case.

sn_csm_case_digest.PCRPublish

Use this extension point to alter the
functionality of publishing a post case review
document to a case.

sn_csm_case_digest.MajorPCRPublish

Use this extension point to alter the
functionality of publishing a post case review
document to a major case.

Activate Case Digests
Activate the Case Digests plugin to use the case digests feature.

Before you begin

Role required: admin

About this task

The Case Digests plugin automatically activates the following plugins:
• Customer Service (com.sn_customerservice)
• Customer Service Document Template (com.sn_csm_doc_template)
• ServiceNow Document Viewer (com.snc.documentviewer)
• Targeted Communications (com.sn_publications)
The Case Digests feature uses the recipient lists feature from the Targeted Communications
plugin (sn_publications).
When creating a case action summary record, users with the sn_esm_agent role can select a
recipient list of the type Internal Users. Selecting the Publish to Case & Notify UI action on the
Case Action Summary form sends an email notification to the users included in the selected
recipient list.

Note: The Publish to Case & Notify UI action is available when a list has been selected in
the Additional internal recipients field.
For more information, see Recipient lists.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.sn_csm_case_digest.
3. Click Activate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
Create a case digest document template
Create a template to use for generating case action summaries or post case review documents.

Before you begin

Role required: admin

About this task

Document templates identify the information to be included in case action summaries and post
case review documents. Create a document template to select, organize, and format the content
included in the generated documents. You can create a new template or modify an existing
template. Two document templates, CAS Template and PCR Template, are included with the
Case Digests plugin.

Procedure
1. Navigate to All > Case Digest > Administration > Document Templates.
2. Click New to create a template.
You can also modify an existing template by clicking the template name and opening the
template form.
3. Fill in the following fields on the CS Document Template form.
CS Document Template field description
Field

Description

Name

The template name.

Table Name

The table that contains the fields to include in
the document template.
◦ Case Action Summary
[sn_csm_case_digest_cas]
◦ Post Case Review
[sn_csm_case_digest_pcr]

Header Image

Click to add an image file to use in the
document header.

Footer Text

Text to include in the document footer.

Header Position

The position of the image within the header:
◦ Left
◦ Center
◦ Right

Body

The content to include in the generated
case action summary or post case review
document.
Add content by selecting fields from the table
identified in the Table Name field. Selected
fields are added to the text editor.

Internal content

The content in the case action summary that
is for internal users only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
Field

Description

This field is available if the Case Action
Summary table is selected in the Table name
field.
4. Click Submit or Update.
Create a case digest configuration
Create case digest configurations to handle different types of case review processes.

Before you begin

Role required: admin

About this task

As part of creating a case digest configuration, you can define the specific information from a
customer service case that needs to be captured as part of the review. Two configurations are
included with the Case Digests plugin:
• CAS Configuration
• PCR Configuration

Procedure
1. Navigate to All > Case Digest > Administration > Configuration.
2. Click New to create a new configuration.
You can also modify an existing configuration by clicking the configuration name and opening
the configuration form.
3. Fill in the following fields on the Case Digest Configuration form.
Case Digest Configuration form fields
Field

Description

Name

The configuration name.

Table name

The table that contains the fields to include in
the configuration.
◦ Case Action Summary
[sn_csm_case_digest_cas]
◦ Post Case Review
[sn_csm_case_digest_pcr]

Order

Determine the order for the configuration.
When multiple configurations match for a
case, the configuration with the lowest order
number is used.

Document template

Select a template to use when creating
a case action summary from the Case
Action Summary form or a post case review
document from the Post Case Review form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
Field

Description

You can select from a list of templates that
have been defined for the table selected in
the Table name field.
Case table

A read-only field that displays the Case
[sn_customerservice_case] table.

Approval workflow

If using an optional approval workflow, select
the workflow from the Workflow list.

Approval flow

If using an optional approval flow, select the
flow from the Flows list.
This field is displayed when the Post Case
Review [sn_csm_case_digest_pcr] table is
selected in the Table name field.

Case condition

Use the condition builder to select the
case conditions to which this configuration
applies.

4. Click Submit or Update.
Create a case digest table map
Create a table map to configure the fields that are copied from the case record to the post case
review or the case action summary records.

Before you begin

Role required: admin

About this task

Two table maps are included with the Case Digests plugin. The PCR Map uses the
Case (sn_customerservice_case) table as the source table and the Post Case Review
(sn_csm_case_digest_pcr) table as the target table. The PCR Map maps the following fields.
Case fields and Post Case Review fields on the PCR Map
Case field

Post Case Review field

sys_id

Case number

Short description

Short description

Cause

Root Cause Analysis

Close notes

Solution provided

The CAS Map uses the Case (sn_customerservice_case) table as the source table and the Case
Action Summary (sn_csm_case_digest_cas) table as the target table. The CAS Map maps the
following fields.
CAS MAP case fields
Case field

Case Action Summary field

sys_id

Case number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
CAS MAP case fields (continued)
Case field

Case Action Summary field

Short description

Short description

Procedure
1. To access the CSM Table Map list, navigate to csm_table_map_list.do.
2. Click New to create a new table map.
You can also modify an existing table map by clicking the map name to open the map form.
3. Fill in the following fields on the CSM Table Map form.
CSM Table Map form fields
Field

Description

Mapping name

The table map name.

Application

Read only. The application for this table map.

API Name

Read only. The API for this table map.

Advanced Field Mapping

Enables advanced field mapping.

Source Table

The source table for the map.

Target Table

The target table for the map.

Active

Enables the mapping from the source to the
target tables.

Use Advanced Condition

Enables advanced condition mapping, which
uses a script.
If enabled, add a script in the Advanced
Condition field.

Advanced Condition

The script to use if the Use Advanced
Condition field is enabled.

Conditions

Use the condition builder to select the
conditions that apply to the table map.

Order

Order of priority for processing multiple
matching map definitions simultaneously to
resolve dependencies.
◦ If there is only one matching table map, the
system uses that map.
◦ If there are multiple matching table maps
with the same order, the system uses the
map with the older created date.
◦ If there are multiple matching table maps
with different orders, the system uses the
map with the highest order.

4. Click Submit.
5. From the CSM Table Map list, select the table map created in step 2.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
6. In the Basic Field Mapping form section, click New.
7. Select a Source Field and a Target Field.
8. Enable the Active check box.
9. Enter a number in the Order field
10. Click Submit.
11. Repeat steps 7 through10 for each field to be mapped.
12. Click Update on the CSM Table Map form.
Create a table map for case types
Create table maps to configure the case type fields that are copied from a case record to the post
case review or the case action summary records.

Before you begin

Role required: admin

About this task

Case Type tables extend from the Case table but do not inherit the table mappings.

Procedure
1. Access the CSM Table Map list by navigating to csm_table_map_list.do.
2. Create two new table map records in the Case Digest scope, one for the post case review
mapping and one for the case action summary mapping.
3. In the first record:
a. Select the desired Case Type table in the Source Table field.
b. Select the Post Case Review (sn_csm_case_digest_pcr) table in the Target Table field.
c. Click Submit.
4. In the second record:
a. Select the desired Case Type table in the Source Table field.
b. Select the Case Action Summary (sn_csm_case_digest_cas) table in the Target Table field.
c. Click Submit.
5. For the two new case type table map records, map the fields from the source table to the target
table in the Basic Field Mapping form section.
For details, see Create a case digest table map.
6. Click Update.
Customer service case types
A case type represents the processes and the data that are needed to resolve a specific type
of customer issue. Use the case types feature to create and configure the different types of
customer service cases that your organization needs.
Customers can use case types to support a wide variety of end user needs, including:
• Diverse industries and products
• Complex processes, events, and systems
• Collaboration with multiple users

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
A good example of an industry that benefits from multiple case types is the banking industry.
Within a bank, customer service agents can use this feature to create case types for different
customer needs such as loan processing, credit card processing, or managing complaints.

Case types overview
Configuring case types
System administrators configure the case types feature by creating a table for
the new case type that extends the Case table and then setting up a number of
different processes and components for the case type.
• The Case Types Guided Setup section below provides an overview of these setup
steps.
• For details about the case type guided setup tasks, see Configure customer
service case types.
Managing case types
After a case type has been created, system administrators can view the case types,
manage settings, and update the configuration. For more information, see Manage
customer service case types.
Using case types
Agents can use the case types feature when creating cases for customers by
selecting from a list of configured case types. For more information, see the Using
case types to create cases section below.

Customer service case types plugin
Users with the system administrator role can activate the Customer Service Case Types plugin
(com.snc.csm_case_types) and Service Request Criteria plugin .
Activating these plugin adds the Customer Service > Case Types module to the application
navigator. The system administrator can use this module to create and manage case types.

Note: Starting with the Zurich release, the Customer Service Case Types application
(sn_csm_case_types) has moved to the ServiceNow Store. Any new enhancements to this
application are delivered through the Customer Service Case Types store app.

Product Model and Catalog Items Relationship plugin deprecation
The Customer Service Case Types plugin replaces the Product Model and Catalog Items
Relationship plugin (com.snc.product_catalog_relationship), which is being prepared for future
deprecation. Use the Service definitions feature, available with the Customer Service Case Types
plugin, to create definitions for the services that are offered to support your products. Then
configure the service definitions to associate them with the appropriate products and catalog
items.
For details, see the Deprecation Process [KB0867184]
base.

article in the Now Support knowledge

Customer service case types applications
®

The following applications for specific case types are available from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
Application

Description

Case Playbook for Onboarding

Provides an onboarding case type to capture
the details when onboarding customers for
a product or service and a playbook that
provides step-by-step guidance through the
lifecycle of the onboarding process.

(sn_csm_onboarding)

Case Playbook for Complaints
(sn_csm_complaint)

Provides a complaint case type to capture
the details for a customer complaint and a
playbook that provides step-by-step guidance
through the lifecycle of the complaint.

For more information, see Install a ServiceNow Store application

.

Note: These applications have dependencies on the following plugins:
• Customer Service Case Types (com.snc.csm_case_types)
• Customer Service Case Action Status (com.snc.csm_action_status)

Case Types Guided Setup
Activating the Customer Service Case Types plugin adds the Case Types section to the
Customer Service Management Guided Setup. Navigate to Customer Service > Administration
> Guided Setup > Case Types and use the tasks in this section to create and configure a case
type.
You can configure a number of different processes and components for a customer service case
type, including client scripts and business rules; views, roles, and ACLs; and notifications and
record producers.
To create and configure a new case type:
• Create a table for the new case type that extends the Case table (sn_customerservice_case).
• Configure UI actions, UI policies, and client scripts for the new case type.
• Configure views and view rules, roles and ACLs, and business rules for the new case type.
• Set up processes for the case type, including record producers, state flows, and special
handling notes.
• Create a case type definition record for the new case type and add it to the Case Type table
(sn_case_type).
• Configure the Get Case Types flow and modify the conditions that determine visibility for a
case type.
For more information, see Configure customer service case types.

Using case types to create cases
Customers can extend the Case table to handle different types of cases. Each extended case
type can support multiple types of requests. For example, if a customer creates a case type for
Credit Card Services, this case type can support requests such as applying for a new card and
reporting a lost or stolen card.
When creating cases, customer service agents select the case type that corresponds to the
customer issue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
• In CSM Configurable Workspace and CSM Agent Workspace, agents select a case type from
the case type selector.
• In the platform interface, agents select a case type from an interceptor.
In CSM Configurable Workspace, there are several versions of the case type selector that can
be configured for agents to use when creating cases of a specific type. These versions include
multi-select, single-select, and Product Service Select. The multi-select version is the default
functionality. In CSM Agent Workspace, agents can use the multi-select version of the case type
selector.
• Create a customer service case of a specific type
• Create a case task of a specific type for a customer service case
Configuring customer service case types
Configure case types to handle different types of customer issues. A case type identifies the
processes and the data needed to resolve a specific type of issue.

Before you begin

Role required: admin

About this task

For each case type, you create a table that extends the Case table and configure a number of
items, such as business rules and client scripts, that drive customer issues of this type from
creation to resolution. When creating cases, agents can select the case type that corresponds to
the customer issue.
There are a sequence of tasks that enable you to configure case types for Customer Service
Management. To configure Proactive Customer Service Operations, use the Customer Service
guided setup. The guided setup takes you through the entire setup and configuration process.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started
3. In the Case Types category, view the list of tasks to configure the feature.
Case types configuration tasks
Task

Description

Create Case Types

The first step in creating a case type is to
create a table for the case type that extends
the Case table (sn_customerservice_case).

Note: This table should be created in a
scope other than global.
You can create a table for the case type using
one of these methods:
◦ Guided Application Creator
◦ Platform table creation feature (navigate to
System Definition > Table and click New)
The extended table for the case type inherits
most of the functionality of the Case table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
Task

Description

Set Up View Rules

View rules determine the form views that
are available to users. Create view rules
that determine the conditions for when the
system displays the Case Type table in a
specified view.

Set Up States for State Flows

State flows enable you to customize
transitions from one state to another in tables
derived from the Task [task] table, including
the Case [sn_customerservice_case] table
and tables extended from Case. You can
configure the system to perform work during
transitions to specific states.
Create choice records for each of the states
to be used in state flows for the case type.
When creating your desired states, set the
Table field to the table for the case type and
the Element field to State.

Set Up UI Policies

UI policies dynamically change the behavior
of information on a form, such as setting a
field to read-only or making a field mandatory.
The case type inherits the following UI
policies from the Case table:
◦ Show or hide major case information
section
◦ Make Partner Contact Read only If Partner
is empty
You can configure additional UI policies for
the Case Type form.

Set Up Client Scripts

Client scripts allow the system to run
JavaScript on the client when client-based
events occur, such as when a form loads or
when a field changes value. The case type
inherits the following client scripts from the
Case table:
◦ Empty Partner Contact on Partner Change
◦ Empty Case Form on Account Change
◦ Hide Request Related List
◦ Hide SM section and list if no plugin
◦ Hide Related Records Section
You can configure additional client scripts for
the case type.

Set Up Business Rules

A business rule is a server-side script that
runs when a record is displayed, inserted,
updated, or deleted, or when a table is
queried. Use business rules to accomplish
tasks like automatically changing values in
form fields when certain conditions are met,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
Task

Description

or to create events for email notifications and
script actions.
You can set up the desired business rules for
the Case Type table.
Set Up Case Type UI Actions

UI actions include the buttons, links, and
context menu items that appear on lists and
forms. A case type inherits the UI actions
from the Case table.
You have the following options when setting
up UI actions for a case type:
◦ Create new UI actions for the case type.
If you create a new UI action, select the
Case Type table in the Table field on the UI
Action form.
◦ Use any of the inherited case UI actions.
◦ Use a combination of the two.
You can also block any inherited case UI
actions that you do not want. To block an
action, update the CSUIActionsimpl script
include.

Enable the Create Case UI action for case
type selection

This procedure adds the Create Case UI
action to records in the configured table.
Selecting this UI action displays the case
type selector.

Note: For CSM Configurable

Workspace, the Create Case UI action
for case type selection is disabled out of
box.
Set Up Case Types

Register a newly created case type by
creating a case type definition record. This
record is stored in the Case Type table
(sn_case_type) and includes the following
information:
◦ The name of the case type
◦ The table created for the case type
◦ An optional category
◦ An optional subtype
◦ A short description
◦ A field for setting the case type to active
The Case Type table extends the Application
File table (sys_metadata). This table includes
a Domain column that customers can use to
add their own logic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
Task

Description

To create a case type definition record,
navigate to Customer Service > Manage
Case Types and click New.
After creating and saving the case type
definition record, you can configure the
following process information for the case
type using the related lists on the Case Type
form:
◦ State flows
◦ Special handling notes
◦ SLAs
◦ Email templates
◦ Quick messages
◦ Reports
For more information, see Manage customer
service case types.

Note: These related lists only display
information for the new case type. They
do not include information for the base
case.
Set Up Notifications

Notifications keep users informed about
different activities and events. You can
determine the conditions when a notification
appears by creating a record in the
Notification table.

Set Up Roles

Create one or more roles to control access
to the case type features and capabilities.
Then grant these roles access to the desired
applications and modules. For agents to work
on a case type, configure the case type role
to contain the sn_customerservice_agent
role.

Set Up ACLs

Use Access Control List rules (ACLs) to
restrict access to data. These rules require
users to pass a set of requirements before
they can interact with data.
For external customers to see a case type,
add ACLs that provide read or create access
for external users.

Set Up Case Type Selection Conditions

When creating a case of a specific type, an
agent clicks Create Case and then selects
from a list of available case types. The system
presents the case types that have been
configured for the agent's role.
To set up case type selection conditions,
use Flow Designer to configure the Get Case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
Task

Description

Types flow and modify the conditions that
determine visibility for a case type.
There are two different implementations of
the Create Case UI action:
◦ The Customer Service plugin provides a
Create Case UI action that agents can use
as follows:
▪ To create a base case.
▪ To create a case for one specific case
type. For example, if your organization
always creates the same type of case
and you have created only one extension
of the Case table, you can modify this UI
action to create a case of that specific
case type.
◦ The Customer Service Case Types plugin
also provides a Create Case UI action that
agents can use to create a case based on
a selected case type. After clicking this UI
action to create a case, the agent selects
the desired case type from a list of multiple
available case types.

Note: It is recommended that you

configure one of the Create Case UI
actions but not both to avoid confusion.
Set Up Record Producers

A record producer is a specific type of
catalog item that enables users to create
task-based records, such as case records,
from the service catalog. Create a record
producer that exposes the new case type on
the Customer Service Portal.

Set Up Case Digest for Case Types

The case digest feature enables agents to
proactively communicate with customers
and internal stakeholders about cases.
While a case is in progress, agents can send
periodic case summaries that describe
actions taken, next steps, and other caserelated information. When the work on a case
has been completed, agents can create a
post case review that includes information
such as the root cause, mitigation plan, and
preventive actions.

Note: Using case types with the
case digest feature requires the
Customer Service Case Types
plugin (com.snc.csm_case_types)
and the Case Digests plugin
(com.sn_csm_case_digest).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
Task

Description

Cases that are created from a selected case
type can use Case Action Summaries and
Post Case Reviews. To create the mapping
that identifies the case type fields that are
copied to Post Case Review and Case Action
Summary records:
◦ Create a configuration for the desired
case type. Navigate to Case Digests >
Configuration and click New.
◦ Create new records in the CSM Table Map
table (csm_table_map) to map the Send
Case Action Summary and Create Post
Case Review UI actions.
The Case Digests related list on the Case
Type form shows the case action summaries
and post case review configurations for a
case type.
Set Up Contextual Search for Case Types

Navigate to Contextual Search > Table
Configuration and create a table
configuration record to add contextual search
to the case type. In this record, configure
the Table field as the case type and the
Search Context field as Case Knowledge
Base Search.

Set Up Agent Workspace for Case Types

To configure Agent Workspace differently for
each case type, follow the Agent Workspace
Guided Setup. You can configure the
following features specific to each case type:
◦ Workspace lists
◦ Notifications
◦ Highlighted values
◦ Ribbon settings
◦ Form headers
◦ Action assignments

Set Up Portal View for Case Types

Configure the fields that a customer can see
when they view a case on the Customer or
Consumer Service Portals. Create a new
record to configure the fields for each case
type.
For more information about the Ticket
Configuration form, see Configure the
standard ticket page .

4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
Related topics
Enable the case type single select property
Create a configuration for case type single-select
Configure case type ribbon settings
Create a ribbon configuration for a case type or enable ribbon configurations to be inherited by
the case type.

Before you begin

Role required: admin

About this task

In the Customer Service Management application, a case type represents the data and
processes that are needed to resolve a specific type of customer issue. The administrator can
create a table for a new case type that extends the Case table (sn_customerservice_case). The
extended table for the case type inherits most of the functionality of the Case table.
As part of configuring forms, you can configure ribbon settings for case types. The ribbon
appears at the top of the form and includes components that display customer and case
information, such as Customer 360, Timeline, and Active SLA. Each component has a ribbon
setting that stores configuration information about that component.
Case types that are extended from the Case table can display these components in the ribbon
on the Case form. For case types, you can do the following:
• Create ribbon settings for case extensions, or
• Modify existing ribbon settings so that the case extensions inherit the ribbon component
behavior.
To modify ribbon component behavior, use the following procedure.

Procedure
1. Navigate to All > Workspace Experience > Forms > Ribbon Settings.
2. Select the component name in the Ribbon Settings list.
For example, you can select Customer 360.
3. On the Ribbon Setting form for the selected component, enable the Inherit check box.
4. Select Update.
5. Repeat steps 2–4 for each component to be displayed in the ribbon.
Configure case type declarative actions
Configure declarative actions that enable agents to create cases and case tasks from different
locations within CSM Configurable Workspace.

Before you begin

Role required: admin

About this task

The Customer Service Case Types plugin includes declarative actions that enable agents to
create cases and case tasks using the case type selector and case task type selector. These
declarative actions are disabled by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
Declarative actions, locations, and actions
Action label

Location

Action

Create Case

Appears on the Case Task list views.

Displays the case task type selector.

Create Case

Appears on the Tasks related list tab
on case and case type records.

Displays the case task type selector.

Create Case

Appears on the Case and Case Type Displays the case type selector.
list views.

Declarative actions are stored in the Action Assignment [sys_declarative_action_assignment]
table.

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Form Actions.
The system displays the Action Assignments list.
2. Filter the list to display the actions for the CSM Case Types application.
If necessary, configure the list to display the Application column.
3. For each of the desired declarative actions, set the Active field to true.
Configure the service selector modal size
The service selector modal displays a list of available services to an agent when they are
creating a case. Users with the admin role can configure the size of the service selector modal.

Before you begin

Role required: admin

Procedure
1. Navigate to the sys_declarative_action_payload_definition.list in the application navigator to
display the Action Payload Definitions list.
2. Filter the Label field to display Case Type Selector.
3. Select the desired record from the Key column.
4. Edit the record and change the size of the modal in the Payload field.
The following choices are available: small, medium, large, xl. For example, enter: "size":
"xl",
5. Select Update.
Enable the case type single select property
Enable the case type single select property so that customer service agents can use the case
type single select version of the case type selector and create cases of a specific type with one
click.

Before you begin

Role required: admin

About this task

In CSM Configurable Workspace, there are three versions of the case type selector available to
agents when creating cases of a specific type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
• With the multi-select version, the agent selects a case type and optionally selects a category
and subtype to narrow the available choices before creating a case. This is the default
functionality.
• With the single-select version, the agent selects a case type and creates a case. The system
populates some of the fields on the Case form with values that have been predefined in the
selection configuration.
• With the Product Service Select version, the agent selects a product and a service to create a
case. For more information, see Product Service select version of the case type selector.
To use the single-select version, enable the

sn_csm_case_types.case_type_single_field_select property. You must also
create a configuration.

Procedure
1. Navigate to sys_properties.list.
2. Click the sn_csm_case_types.case_type_single_field_select property in the
Name field.
3. Set the Value to true.
4. Click Update.
Create a configuration for case type single-select
Create a configuration for the single-select version of the case type selector and define the fields
and values that the system uses to auto-populate the Case form.

Before you begin

Role required: admin

About this task

In CSM Configurable Workspace, there are three versions of the case type selector available to
agents when creating cases of a specific type.
• With the multi-select version, the agent selects a case type and optionally selects a category
and subtype to narrow the available choices before creating a case. This is the default
functionality.
• With the single-select version, the agent selects a case type and creates a case. The system
populates some of the fields on the Case form with values that have been predefined in the
selection configuration.
• With the Product Service Select version, the agent selects a product and a service to create a
case. For more information, see Product Service select version of the case type selector.
To use the single-select version, follow the procedure below to configure one or more selections
that are available to agents when creating a case. You must also enable the case type single
select property.

Procedure
1. Navigate to All > Customer Service > Case Types > Manage Case Types.
2. Select a case type.
3. In the Case Type Selections related list, click New.
4. In the Name field, enter a descriptive name for the case type selection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
This is the name that agents see in the Case Type field on the Select Case Type pop-up
window.
5. In the Default case type field values fields, select the desired fields and the corresponding
values.
The system uses this field and value configuration to auto-populate those fields on the Case
form when an agent creates a case of this type.
6. Click Submit.
The system saves the configuration in the Service Definition (sn_case_type_selection) table
and adds it to the Case Type Selections related list.
Manage customer service case types
Manage the settings and the configuration for a case type from the Case Type form.
After using the Customer Service Management Guided Setup to create and configure a case
type, you can view and manage the settings and configuration for the case type from the Case
Type form. To access a Case Type form, navigate to Customer Service > Case Types > Manage
Case Types and select a case type from the list.

Case Type form related links
The Case Type form includes the following related links.
Case Type form related links
Related link

Description

View Case Type Configuration

Displays the current configuration for this case
type, including:
• Business rules
• Client scripts
• Dictionary entries and overrides
• Notifications
• UI actions
• Access controls
• UI policies
• Data policies
• Styles
• View rules
• Flows

Launch Guided Setup for Case Types

Goes to the Case Types setup tasks in
Customer Service Management Guided Setup.

Launch Guided Setup for AWA

Goes to the Advanced Work Assignment
(AWA) setup tasks in Agent Workspace
Guided Setup.

Launch Guided Setup for Agent Workspace

Goes to the Agent Workspace for CSM setup
tasks in Customer Service Management
Guided Setup.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
Case Type form related lists
The Case Type form related lists display items configured for the case type table. Use the related
lists to create additional configurations.
• Record Producers
• State Flows
• Special Handling Notes
• SLAs
• Email Templates
• Quick Messages
• Reports
• Case Type Selections

Select a category and subtype for a case type
The system administrator can assign an optional category and a subtype to a case type. When
creating a case, agents can filter the available case types by category and subtype in the case
type selector. If an agent selects a category, the list of case types displayed is filtered by that
category. If an agent selects a subtype, the list is further filtered by that subtype.
The Customer Service Case Types plugin includes several categories that the system
administrator can select for a case type. These categories include:
• Onboarding
• Complaint
• Orders
• General
The Subtype field displays fields from the Case Type table that are of the following type:
• Choice list
• Reference
To select a category and a subtype for a case type:
1. Navigate to Customer Service > Case Types > Manage Case Types and select a case type.
2. Select a category in the Category field.
3. Select a field in the Subtype field.
4. Select Update.

Case types and major cases
The system administrator can enable the Propose Major Case UI action for different case types.
If this UI action is available, an agent can propose a major case from the selected case type
record. If the major case candidate is accepted, a major case is created and the case type record
is added as a child case on the major case.
The major case is created on the base Case table. Updates to the major case are synchronized to
the child case types. Multiple case type records can be added to the same major case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
Case type selector
The case type selector enables customer service agents to quickly and easily create the right
kind of case for a contact or consumer by selecting from a list of available case types or services.

Overview
The case type selector is a component that provides agents with the ability to select the
appropriate case type or service when creating a case. For example, an agent can use the case
type selector to do the following:
• Select a case type and create a case of that type.
• Select a product from a list of products owned by the customer and create a case for that
product.
• Select a service and create a case for that specific service.
The selections that an agent can make is determined by the case type selector configuration.
The system administrator can configure different versions of the case type selector by setting
properties. The different versions include:
• Multi-select (default)
• single-select
• Product Service select
Case type selector (multi-select version)

Using the case type selector
The system displays the case type selector when an agent creates a case from a list or a record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
Agent actions that display the case type selector
Agent action

Select New

Select Create Case

Description

Select this action from case lists and case type lists such as
My Cases or My Complaint Cases.
Select this action from the following records:
• Interaction
• Account
• Contact
• Consumer
• Sold Product
• Install Base Item
• Case
• Child Case

Some declarative actions available with the Customer Service Case Types plugin are disabled by
default. For more information, see Configure case type declarative actions.

Case type selector versions
Different versions of the case type selector are available for agents to use. The system
administrator can configure system properties to determine the version of the case type selector
that is presented to agents.
Versions of the case type selector component
Version

Multi-select

Description

With the multi-select version, the agent selects a case type
and optionally selects a category to narrow the available
choices before creating a case.
A category subtype field can also be configured. This field can
be a choice list field or a reference field from the Case Type
table.

Note: If a subtype has not been configured for a case
type, the subtype field is not displayed.
The multi-select version of the case type selector is the default
functionality.
For more information, see Select a category and subtype for a
case type.
Single-select

With the single-select version, the agent selects a case type
from a list of available case types and creates a case with one

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
Versions of the case type selector component (continued)
Version

Description

click. The system uses configured field mapping to fill in some
of the fields on the Case form.
The display of the single-select version is controlled by the

sn_csm_case_types.case_type_single_field_select
system property.
• When enabled, the system displays the single-select
version.
• When disabled, the system displays the multi-select version.

Note: The single-select version is only available in CSM
Configurable Workspace.
For more information, see the following topics:
• Enable the case type single select property
• Create a configuration for case type single-select
Product Service Select

With the Product Service Select version, the agent selects
a product and/or a service to create a case. For more
information, see Product Service select version of the case
type selector.
The display of the Product Service
Select version is controlled by the

sn_csm_case_types.service_definition_select
system property.
• When enabled, the system displays the Product Service
Select version of the case type selector.
• When disabled, the system uses the value of the

sn_csm_case_types.case_type_single_field_select
property.

Case type select properties
The following properties determine which version of the case type selector is presented to
agents.
Version properties of a case type selector
Property

Description

sn_csm_case_types.case_type_single_field_select
Set this property to true to enable the case
type single select feature in CSM Configurable
Workspace. When enabled, an agent can
use this feature to create a case of a specific
type with a single selection in the case type
selector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

392


<!-- page 393 -->
Version properties of a case type selector (continued)
Property

Description

• Type: true | false
• Default value: false
• Location: System Property [sys_properties]
table
sn_csm_case_types.service_definition_select

Set this property to true to enable the Product
Service Select version of the case type
selector in CSM Configurable Workspace.
When enabled, an agent can use this version
to create a record based on the selected
product or service.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties]
table
This property overrides the

sn_csm_case_types.case_type_single_field_sel
property.
• When set to true, the system displays the
Product Service Select version of the case
type selector.
• When set to false, the
system uses the value of the

sn_csm_case_types.case_type_single_field_s
property.
• If both properties are set to true, the

sn_csm_case_types.service_definition_selec
property takes precedence.

• If both properties are set to false, the system
displays the multi-select version of the case
type selector.
sn_csm_case_types.service_definition_select_count
Determines the number of the products and
services displayed in the Product Service
Select version of the case type selector.
• Type: integer
• Default value: 25
• Location: System Property [sys_properties]
table

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


<!-- page 394 -->
Configuring service definitions for cases and case tasks
The system administrator creates the service definitions for cases and case tasks, along with
their relationships. The service definition manager and service definition admin can also create
these service definitions and relationships.
For case task service definitions, the system administrator can include logic and default field
values that the system uses when creating the case tasks. For more information, see Configuring
service definitions.
Product Service select version of the case type selector
With the Product Service select version of the case type selector, agents can create cases of the
correct type based on the selected product or service.
The Product Service select version of the case type selector supports services as well as case
types. This version of the case type selector makes it easier for agents to find the available
services for a product. This version of the case type selector enables the agent to do the
following:
• Select a product from a list of products owned by the account or consumer and see the
available services for that product. This list includes sold products and install base items.
• Select a category of services and see the available services within that category.
• Search for a service by entering keywords in the search box.
• Browse the available services using scroll bars and pagination.
• Select a service and create a case based on the service or case type.
Case type selector (Product Service select version)

Creating cases using the Product Service select version
The system displays the case type selector when an agent creates a case from a list or a record.
The fields that are available in the Product Service select version of the case type selector are
context-driven based on how an agent creates a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

394


<!-- page 395 -->
Agent actions that display the case type selector
Agent action

Select New

Select Create Case

Description

Select this action from case lists and case type lists such as
My Cases or My Complaint Cases.
Select this action from the following records:
• Interaction
• Account
• Contact
• Consumer
• Sold Product
• Install Base Item
• Case
• Child Case

Creating cases from a record
When creating a case from a record, the Product Service select version of the case type selector
includes the following sections and fields:
Product Service Select fields
Field

Description

Product filter

Use the fields in this section to select a product

Only show services related to
owned products

This check box controls the display of the Owned product
field and determines the services included in the Services
section.
• If checked, the system lists the services categorized as postsales that are relevant to the product selected in the Owned
product field.
• If cleared, the system lists the services categorized as presales and general.

Owned product

Use the Owned product field to select a product.
This field uses typeahead search. Place the cursor in the
field and start typing to display a list of products. Selecting a
product filters the available services in the Services section.
For sold products and install base items, the first line of an
entry in the Product drop-down list displays the name of
the product from the Product Model record. The second line
displays the name of the sold product or install base item
associated with the product model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

395


<!-- page 396 -->
Product Service Select fields (continued)
Field

Description

Service category

Select a category to see the available services within that
category or select All categories to see all available services.

Services

Select a service in the Services section.
• Services are displayed in a card format that show the service
name, description, and image or icon.
• Use a keyword search to narrow the list of available services.
• Use the scroll bars and pagination to view the available
services.

Agents can select Create Case from the following records, which provide context about their
owned products and services.
Record types with the Create Case action
Record

Description

Interaction

Applicable services are based on products owned by the
contact or consumer.

Account

Applicable services are based on products owned by the
account.

Contact

Applicable services are based on products owned by the
contact and products that the contact has access to based on
related party access.

Consumer

Applicable services are based on products owned by the
consumer.

Sold Product

The Owned product field is auto-filled with the product model
from the Sold Product record.

Install Base Item

The Owned product field is auto-filled with the product model
if the install base item is mapped to the product model. If
there's no product model associated with the install base item,
the Owed product field lists the products for the account and
contact.

Case
Child Case

Creating cases from a list
Agents can select New from a case list or case type. Because there's no customer context, the
services listed include all available services (pre-sale, post-sale, and general).

Service categories
The administrator can group services into categories so that it's easier for agents to find the
services the need. Categories are displayed in the Service categories section. Agents can select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

396


<!-- page 397 -->
a specific category to see the available services within that group or All categories to see all
available services.

Service cards
The Product Service select version of the case type selector displays the available services in
a card view. Each card can include the following information for a service, depending on the
configuration:
• Name
• Description
• Image
When an administrator creates a service definition, they can provide a name for the service. They
can also provide a description of the service and add an image to represent the service. For
more information, see Create a service definition.

Browsing services in the case type selector
Agents can browse the available services for a selected category or for all categories. These
services are displayed in a card view.
The Product Service select version of the case type selector can display multiple pages of
services. It can display 24 services at a time and a total of 200 services.
The agent can perform the following actions:
• Use the scroll bars to view all the displayed services.
• Select Show more to see the next set of services (up to a maximum of 200) if more than 24
services are available.
• Filter the displayed services by selecting a category.
• View a count of the available services after applying a filter.

Note: The system displays the services that the logged-in agent has access to.
When the agent reaches the limit of 200 services, the system directs the agent to refine the
results.

Searching for a service
Agents can search for a service by entering keywords in the search box.
• A list of recent searches appears below the search box
• Search results include the services with names or descriptions that contain the keywords.
• Results are displayed in a card view.

Creating a case for a service
Agents can create cases from lists and from records.
Agents can create cases by selecting a service from the Product Service select version of the
case type selector and then selecting Create Case.
Agents see the Product Service select version with the Product filter when they create a case
from the following records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

397


<!-- page 398 -->
• Interaction
• Account
• Contact
• Consumer
• Sold Product
• Install Base
• Case
• Child Case
The Only show services related to owned products check box is selected by default.
• When selected, the agent can see Post-sales services.
• When cleared, the agent can see Pre-sales, Post-sales, and General services.
If the agent is on a Sold Product or Install Base record, the Owned product field is autopopulated.
If a customer hasn't activated the install base:
• The Product Service Select version displays the Service and Case type fields.
• The Service field lists all services, including pre-sales and post-sales.
• Agents can select Create Case from an interaction, account, contact, or consumer record and
select a case type in the Case type field.

Case type selector configuration
The Product Service select version of the case type selector includes a product filter. If you have
the administrator role, you can configure the case type selector to hide this filter.
By default, this configuration setting is false. The case type selector displays the product filter,
the Only show services related to owned products check box is empty, and the case type
selector shows all available service definitions.
To hide the filter:
1. In the application navigator, sys_declarative_action_payload_definition.list and press Enter.
2. In the Key column, select CREATE_CASE_TYPE.
3. In the Payload field, locate the hideProductFilter setting.
4. Change the value of the setting from false to true and select Update.
When this configuration setting is true, the case type selector doesn't display the product filter.
The case type selector shows all available service definitions.
Case task type selector
The case task type selector is a component that provides customer service agents with a way to
create the right types of tasks while working on cases.
Using the case task type selector, agents can select services and create case tasks specifically
for those services. The selections that an agent can make within the case task type selector
depends on where they create a case task from.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

398


<!-- page 399 -->
Case Type Task Selector Options
When an agent creates a case task from a
case task list, they can select a service in the
case task type selector.

Case task type selector (case
task list view)

When an agent creates a case task from a
case record, the case task type selector shows
related services based on the case type.

Case task type selector (case
record view)

An agent working on a case or a case type can create case tasks in the following ways.
How to create case tasks
Select New from a case task
list
Select New from the Tasks
related list tab on a case
record

The Service task field on the case task type selector shows
all of the related services where the target table is Case Task
[sn_customerservice_task] and extensions of Case Task.
The Service field is auto-filled with the case service. The Case
task service field lists the task services related to the case
service.
If the case has no service, the Service task field shows all
of the related services where the target table is Case Task
[sn_customerservice_task] and extensions of Case Task.

Select the + icon on the
related records task list in the
Dynamic Related Records
component

The Case task service field on the case task type selector
shows the following services:
• The task services related to the case service.
• The related services where the service target table is Case
Task and extensions of Case Task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

399


<!-- page 400 -->
How to create case tasks (continued)
Select Create Task in a case
playbook stage

The Service field is auto-filled with the case service. The Case
task service field lists the task services related to the case
service.

Select Create Task in the
activity viewer

The Service field is auto-filled with the case service. The Case
task service field lists the task services related to the case
service.

Some declarative actions available with the Customer Service Case Types plugin are disabled by
default. For more information, see Configure case type declarative actions.

Configuring service definitions for cases and case tasks
The system administrator creates the service definitions for cases and case tasks, along with
their relationships. The service definition manager and service definition admin can also create
these service definitions and relationships.
For case task service definitions, the system administrator can include logic and default field
values that the system uses when creating the case tasks. For more information, see Configuring
service definitions.
Onboarding case type
Agents can use the onboarding case type to capture the details when onboarding customers for
a product or service.
The onboarding case type includes a playbook that provides step-by-step guidance through the
lifecycle of the onboarding process.
Onboarding cases use the ONB prefix in the case number. For example, ONB0001007.
Onboarding cases appear in the Onboarding Cases module in the following lists:
• My Onboarding Cases
• All Onboarding Cases
• Unassigned Onboarding Cases
• Escalated Onboarding Cases
When creating a case, agents can select Customer Onboarding from the list of available case
types.

Creating onboarding cases for new or existing customers
Customer service agents can create cases to onboard new customers or to onboard existing
customers for new products.
The onboarding case form includes the New customer check box. Agents can enable this
check box to display the New Customer Information section on the Case form. This form section
includes fields that you can use to collect information and create a customer record.

Note: A new customer doesn’t have an existing account, contact, or consumer record.
If an existing case already has the Account and Contact or Consumer fields populated, then the
New customer check box is turned off.
When saving an onboarding case:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

400


<!-- page 401 -->
• If the New customer check box is enabled, the Account and Contact or Consumer fields
aren't required to save the case.
• If the New customer check box is inactive, the Account and Contact or Consumer fields are
required to save the case.

New Customer Information form section
The New Customer Information form section includes fields that agents can use to collect
information. This information is then used to create a customer record. These fields include:
• Customer Type: either Business or Individual
• Business Name: Required when the customer type is Business
• User Name: Required when the customer type is Individual
• Phone number
• Email

Additional members
The onboarding case type includes the Additional Members related list on the Case form.
Agents can use this related list to create the users or business entities that should be included in
the onboarding case.
Additional members can be any of the following:
• Accounts
• Contacts
• Consumers
Agents select information from the following fields when adding a member to an onboarding
case:
• Type: the type of user to be added. For example, a joint owner or a beneficiary or a subaccount.
• Name: the name of the contact or consumer or account.

Note: If using the onboarding playbook, the user is also added to the Member Information
card in the Add additional members step of the Initiate stage.

Onboarding case type stages and states
An onboarding case moves through several stages and states as the agent works to case
resolution.
An onboarding case has six stages:
• Initiate
• Pre approval
• Data capture
• Due diligence
• Resolve
• Close

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

401


<!-- page 402 -->
As an onboarding case moves through the stages listed earlier and toward a resolution, the case
status is updated. Stage and status are related to each other as described in the following table.
Onboarding case stages and status
Stage

Status

Description

Initiate

New

An onboarding case is created in the Initiate stage with
a status of New. An onboarding case can only be in the
New state during the Initiate stage.

Initiate

Open

The state of an onboarding case state changes to Open
when the case is assigned to an agent.

Pre approval

• Open
• Awaiting Info

Data capture

• Open
• Awaiting Info

Due diligence

• Awaiting Info
• Under Review

In the Pre-Approval stage, an onboarding case can be in
either the Open or Awaiting Info states.
The case moves to the Awaiting Info state when an
agent selects Request Info.
In the Data Capture stage, an onboarding case can be in
either the Open or Awaiting Info states.
The case moves to the Awaiting Info state when an
agent clicks Request Info.
In the Due Diligence stage, an onboarding case can be
in the Awaiting Info or Under Review states.
The case moves to the Awaiting Info state when an
agent selects Request Info.
The case moves to the Under Review state when an
agent selects Submit for Review.

Resolve

• Review
Complete
• Resolved

In the Resolve stage, an onboarding case can be in
either the Review Complete or Resolved states.
The case moves to the Review Complete state when an
agent clicks Review Complete.
The case moves to the Resolved state when an agent
selects Propose Solution.

Close

Closed

The case is closed.

Components installed with case types
Several types of components are installed with the Customer Service Case Types plugin
(com.snc.csm_case_types), including components that support the service definitions feature.

Tables installed with case types
The following tables are installed with the Customer Service Case Types
(com.snc.csm_case_types) plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

402


<!-- page 403 -->
Tables added with case types
Table

Description

Case Type

This table stores the defined case types.

[sn_case_type]

For more information, see Customer Service case types.

Service Definition

This table stores the defined service definitions.

[sn_case_type_selection]

The service definition feature adds the following fields to the
Service Definition table:
• Domain Path
• Playbook Record Generator
• Active
• Number
For more information, see Service definitions.

Service Definition Category

This table stores the categories that are created for service
definitions.
[sn_csm_case_types_service_category]
Service Definition Category
Relationships

This table stores the service definitions that are associated
with a service definition category.

[sn_csm_case_types_service_category_rel]
Product Service Relationship

This table stores the products that are linked to a service
definition.
[sn_csm_case_types_product_service_rel]
For more information about these relationships, see Associate
a product with a service definition.
Service to Service
Relationship

This table stores relationships that have been configured
between services. For example, related services that have
been added to a service definition.
[sn_csm_case_types_service_to_service_rel]
Catalog Service Relationship

This table stores the catalog items that are linked to a service
definition.
[sn_csm_case_types_catalog_service_rel]
For more information, see Configure catalog items for a service
definition.
Service Definition User Criteria This table stores the user criteria that has been configured for
a service definition record. The system uses this criteria to filter
[sn_csm_case_types_service_user_criteria]
the services that are available to users in the service selector
when creating a case. For more information, see Configure
user criteria for a service definition.
Service Definition Customer
Criteria

This table stores the customer criteria that has been
configured for a service definition record. The system uses this
criteria to filter the services that are available to customers. For
[sn_csm_case_types_service_customer_criteria]
more information, see Configure customer criteria for a service
definition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

403


<!-- page 404 -->
Roles installed with case types
The following service definition roles are installed with the Customer Service Case Types
(com.snc.csm_case_types) plugin.
Roles installed with case types
Role

Description

Contains roles

Service definition
admin

Administrator role for the Customer Service
case types tables. Users with this role can
view, create, update, and delete service
[sn_csm_case_types.service_definition_admin]
definitions, service definition categories, and
service definition category relationships.

• sn_csm_case_types.service_definitio

Service definition
manager

• sn_csm_case_types.service_definitio

Manager role for the Customer Service case
types tables. Users with this role can view,
create, and update service definitions, service
[sn_csm_case_types.service_definition_manager]
definition categories, and service definition
category relationships.

• sn_service_org.service_criteria_delet

• sn_csm_case_types.service_definitio
• sn_service_org.service_criteria_write

• sn_service_org.service_criteria_creat
• sn_service_org.service_criteria_read

Service definition
viewer

Users with this role can view service
definitions, service definition categories, and
service definition category relationships.
[sn_csm_case_types.service_definition_viewer]

sn_service_org.service_criteria_read

Service definition
report viewer

None

Provides report view access to service
definition related tables.

[sn_csm_case_types.service_definition_report_view]
Service definition all
table viewer

Provides view access to the service definition
tables. Users with this role can view service
definitions, service definition categories, and
[sn_csm_case_types.service_definition_all_table_viewer]
service definition category relationships.

None

Properties installed with case types
The following properties are added with the Customer Service Case Types plugin. These
properties control the version of the case type selector screen that is displayed to agents. For
more information, see Case type selector screen.
Properties installed with case types
Property

Description

sn_csm_case_types.case_type_single_field_select
Set this property to true to enable the case
type single select feature in CSM Configurable
Workspace. When enabled, an agent can
use this feature to create a case of a specific
type with a single selection in the case type
selector screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

404


<!-- page 405 -->
Properties installed with case types (continued)
Property

Description

• Type: true | false
• Default value: false
• Location: System Property [sys_properties]
table
sn_csm_case_types.service_definition_select

Set this property to true to enable the Product
Service Select version of the case type
selector screen. When enabled, an agent can
use this screen to create a record based on
the selected product or service.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties]
table
This property overrides the

sn_csm_case_types.case_type_single_field_sel
property.
• When set to true, the system displays the
Product Service Select screen.
• When set to false, the
system uses the value of the

sn_csm_case_types.case_type_single_field_s
property.
• If both properties are set to true, the

sn_csm_case_types.service_definition_selec
property takes precedence.

• If both properties are set to false, the system
displays the multi-select screen.
sn_csm_case_types.service_definition_select_count
Determines the number of the products and
services displayed in the Product Service
Select screen.
• Type: integer
• Default value: 25
• Location: System Property [sys_properties]
table
sn_csm_case_types.get_case_types_roles

Stores the admin and agent roles that
can access the Case Type Selector and
getCaseTypes API. Roles are listed in the
Value field in a comma-separated list. To add a
role, append the role at the end of the list.
• Type: string
• Default value:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

405


<!-- page 406 -->
Properties installed with case types (continued)
Property

Description

itil,admin,sn_customerservice_agent,sn_customerservice.con
• Location: System Property [sys_properties]
table

Extension points installed with case types
Extension points enable you to extend the functionality of an application and integrate
customizations without altering the application code. Extension points are stored in the
Extension Point [sys_extension_point] table.
The CSMServiceDefinitionIntegrations extension point returns a list of products that is available
to agents in the Product field on Product Service Select version of the case type selector screen.
Out of box, this list is based on customer context and displays the sold products and install base
items owned by the customer.
To access this extension point, navigate to All > System Extension Points > Scripted Extension
Points and select CSMServiceDefinitionIntegrations.
To modify this extension point:
1. Select the Create implementation related link on the extension point record.
2. Modify the Script field and add an API to return product information.
3. Select Update.
The system adds the implementation to the Implementations related list on the extension point
record.

Note: The implementation with the lowest Order number is used to return the list of
products.
Task Plan Templates
Use a task plan template to define the repeatable tasks and records that need to be created for
a business process. When the template is applied, these tasks and records are automatically
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

406


<!-- page 407 -->
Template items list for a task plan template

A task plan template is a group of tasks and records, called template items, that are automatically
created when the template is applied. A task plan template also includes conditions that
determine when the template is applicable.
A template item can be a task, a record, or a child task. When you create a template item, you
identify the type of item to be created by selecting the table where that item is to be created.
For example, to create a case task, select the Task [sn_customerservice_task] table. For each
template item, you can create conditions that determine when the template item is created.
A task plan template configuration defines pre-set fields to streamline the process of creating
task plan templates.
You can also create a hierarchy of the tasks and records to be created when the task plan
template is applied by creating child template items for a template item. For example, you can
create a template item that is a case record and then create child template items that are case
tasks for that case record.

Defining a process with a task plan template
Business users can define how a business process should be handled by using a task plan
template. When creating a task plan template, the business owner can create the following:
• The task plan template and the conditions for when the template applies.
• The template items to be generated. This can include tasks, child cases, child case tasks, and
other records such as work order tasks. Template items can also include attachments. These
attachments are available on the tasks created from the template items.
• The task order.
• Conditions that specify when tasks need to be created.

Benefits of task plan templates
Task plan templates enable you to define the repeatable tasks that are routinely performed for
specific business processes. When you apply the template, either to an existing case or to a new
case, the system automatically creates the tasks defined in the template.
For example, a bank can use a task plan template to onboard new customers. An onboarding
task plan template can include tasks similar to the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

407


<!-- page 408 -->
• Gather customer information
• Scan customer documents
• Check customer credit score
• Send welcome packet

Task Plan Templates plugin
Users with the system administrator role can activate the Task Plan Templates
(com.sn_task_plan_templates) plugin. The Task Plan Templates application is available from the
ServiceNow Store.
The Task Plan Templates application adds the Task Plan Templates module to the application
navigator and includes tables and roles. For more information, see the following topics:
• Task Plan Templates tables
• Task Plan Templates roles

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Creating task plan templates
A business process owner can create a task plan template by following these steps.
Steps for creating a task plan template
Step

Explanation

Create a task plan template.

Create the template and set the conditions as
to when the template applies.
• The template functions as a container or
group of template items.
• The template identifies a plan to apply the
associated template items.

Create one or more template items.

Create the template items to include in the
task plan template. These items can be tasks,
child cases, or child case tasks.
• Template items are the tasks or records
that are to be created when the template is
applied.
• Template items can be used to define a
hierarchy of parent and child entities of any
task type.

Create conditions for template items.

Set conditions as needed for each of the
template items that identifies when a template
item should be created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

408


<!-- page 409 -->
Steps for creating a task plan template (continued)
Step

Explanation

Publish the task plan template.

While in the Draft state, you can make changes
to the template, template items, and template
item conditions.
Publish the task plan template to apply it to
cases and case types.
To publish a task plan template, select Publish
on the Task Plan Template form.

Editing task plan templates
Once you create a task plan template, you can edit the template, the template items, and the
template item conditions.
Steps for editing a task plan template
Step

Explanation

Clone a task plan template.

Clone a task plan template that is in either the
Draft or Published state.
Select the task plan template number from a
task plan template list. Then select Clone.
The system clones the task plan template,
gives it a unique record number, and opens
the cloned template in a new tab. The cloned
template is also added to the task plan
template list.

Clone a template item.

Clone a template item for a task plan template
that is in the Draft state.
Select a task plan template, select a template
item in the Template Items tab, and then select
Clone on the Template Item form.
The system creates a copy of the selected
template item, gives it a unique record number,
and displays the Template Item form.

Edit a task plan template.

Edit a task plan template that is in the Draft
state.
• Select the task plan template number from a
task plan template list to open the record in
a tab.
• Select the pencil icon next to the task plan
template number to edit the form in a panel.
Make the necessary changes and then select
Save or Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

409


<!-- page 410 -->
Steps for editing a task plan template (continued)
Step

Explanation

Edit a template item.

Edit a template item for a task plan template
that is in the Draft state.
• Select the template item number from the
Template Items list to open the record in a
tab.
• Select the pencil icon next to the template
item number and edit the form in a panel.
Make the necessary changes and then select
Save or Update.

Applying task plan templates
You can apply task plan templates to existing cases or to new cases. When a case is created
based on a task plan template, the template items are automatically created as defined in the
template.
Task plan templates can be applied manually or automatically to an existing entity.

Get Started tab in the contextual side panel
The Get Started tab in the contextual side panel in CSM Configurable Workspace displays
information about task plan templates, template items, and template item conditions.
This tab is available for the following tables:
• Task Plan Template [sn_task_plan_template]
• Template Item [sn_task_plan_template_item]
• Template Item Condition [sn_task_plan_template_item_condition]
Information in the Get Started tab
Content

Description

Task plan template

A reusable framework that
A bank that is onboarding
you can use to define and
a new client can use a task
generate a sequence of tasks. plan template to define tasks
such as identity verification,
Use a task plan template
AML checks, document
to define tasks and the
collection, and account setup.
conditions under which those Those tasks can then be
tasks need to be created.
automatically created for
onboarding cases.

Template item

A task or a record, such as
a case or child case, that
is created for a task plan
template.
Each template item represents
a specific task that needs

Example

An onboarding task plan
template can include template
items such as the following:
• Perform anti-money
laundering (AML) task
• Send welcome packet

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

410


<!-- page 411 -->
Information in the Get Started tab (continued)
Content

Description

Example

to created when a task plan
template is applied.
A template item can include
conditions and predefined
data that is used during task
creation.
Template item conditions

Conditions that determine
if a task should be created
when the task plan template is
executed.

A template item to "Send
welcome packet" can include
a condition such as "If
applicant address is not
empty."

The conditions run against
the template item's table. If all Based on this condition, if
conditions return as true, then the applicant has provided
the task gets created.
an address, a 'Send welcome
packet" task would be created.
Task plan templates states and actions
A task plan template can be in one of the following states: Draft or Published. It can also be active
or inactive. Each state includes an available set of user actions.

Draft state
A task plan template is in the Draft state when it is first created.
When a task plan template is active and in the Draft state, the following actions are available.
Available user actions for task plan templates in the Draft state
Action

Description

Edit

Select a task plan template in the list and then select Edit to open the
task plan template record and make changes.
Editing a task plan template requires the sn_task_plan.creator role.

Clone

Select a task plan template in the list and then select Clone to create
a copy of the template, the template items and attachments, and the
template item conditions.
Cloning a task plan template maintains the template item hierarchy
along with the attachments and conditions. The cloned task plan
template is created in the Draft state and is active.
Cloning a task plan template requires the sn_task_plan.creator role.

Note: You can clone one task plan template at a time. If you

select more than one task plan template in the list, the Clone
action is not available.
Delete

Select one or more task plan templates in the list and then select
Delete. Only task plan templates in the Draft state can be deleted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

411


<!-- page 412 -->
Available user actions for task plan templates in the Draft state (continued)
Action

Description

Deleting a task plan template requires the sn_task_plan.delete role.

Note: The system displays a confirmation message when
deleting a template. When the user confirms the action, the
system deletes the task plan template.
Publish

Selecting Publish moves an active task plan template from the Draft
state to Published. When a task plan template is in the Published state,
the fields on the Task Plan Template form are read-only.
Publishing a task plan requires the sn_task_plan_template.writer role.

Note: The system displays a confirmation message when
publishing a task plan template. When the user confirms the
action, the system publishes the task plan template.

Published state
A task plan template is in the Published state when it is ready to be applied and a user with the
writer role has published it.
When a task plan template is active and is in the Published state, the following actions are
available.
Available user actions for task plan templates in the Published state
Action

Description

Clone

Select the task plan template in the list and then select Clone to create
a copy of the template, the template items and attachments, and the
template item conditions.
Cloning a task plan template maintains the template item hierarchy
along with the attachments and conditions. The cloned task plan
template is created in the Draft state and is active.
Cloning a task plan template requires the sn_task_plan.creator role.

Note: You can clone one task plan template at a time. If you

select more than one task plan template in the list, the Clone
action is not available.
Deactivate

Select the task plan template in the list and then select Deactivate to
disable the Active field on the Task Plan Template form.
Deactivating a task plan template requires the
sn_task_plan_template.writer role.

Note: The system displays a confirmation message before
deactivating a task plan template. When the user confirms the
action, the system disables the Active field on the task plan
template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

412


<!-- page 413 -->
Template item actions
Template items have an available set of actions, including row-level actions that enable users to
create new template items and to edit, clone, and delete template items.
The Task Plan Template form includes a Template Items tab that shows the included template
items in a hierarchical view. This view shows the relationship between case tasks, child cases,
child case tasks, and other records.
From the Template Items tab, users can select New to create new template items. This action is
available when the task plan template is in the Draft state.
The following row-level actions are available for template items when the task plan template is in
the Draft state.
Row-level actions for template items
Action

Description

Edit

Select the pencil icon to edit a template item inline in a pop-up
window. Make the desired changes and then select Update.

New Child

Select the additional items icon next to the template item and
then select New Child. This creates a new child record with
the selected template item as the parent item.

Clone

Select the additional items icon next to the template item and
then select Clone. This clones the template item to create a
new template item. This includes the hierarchy of the selected
template item along with the conditions and attachments of
the selected template item. The cloned template item is added
to the Template Items tab on the Task Plan Template form.
This action requires the sn_task_plan.creator role.

Delete

Select the additional items icon next to the template item and
then select Delete. This deletes the selected template item.
This action requires the sn_task_plan.delete role.

Note: The system displays a confirmation message
before deleting the template item. When the user
confirms the action, the system deletes the template
item, its child items, the template item conditions, and
attachments.

Actions for template item conditions
Actions for template item conditions
Action

Description

New

Select a template item and then select the Conditions tab to
display the Template Item Condition list.
Select New to create a new template item condition. Fill in the
fields on the Template Item Condition form and then select
Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

413


<!-- page 414 -->
Actions for template item conditions (continued)
Action

Description

Delete

Select a template item and then select the Conditions tab to
display the Template Item Condition list.
Select one or more template item conditions and then select
Delete.

Create a task plan template
Create a task plan template that includes template items, such as tasks, that are automatically
created when the task plan template is applied.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

Task plan templates include conditions that determine when the template applies.

Note: As part of creating a task plan template, you can select a target record. If you select
a target record, the task plan template is applied when a case or task matching the task
plan condition is created.
After creating a task plan template, you can create the template items, such as case tasks, work
order tasks, and child cases. Template items can also include conditions that determine when a
template item should be created as well as attachments.
You can also clone a task plan template.

Procedure
1. Navigate to All > Task Plan Templates > All Task Plan Templates.
2. Select New.
A Task Plan Template form opens in a new tab. The template is active and is in the Draft state.
3. Fill in the fields on the Task Plan Template form.
a. If there are task plan template configurations created, select one from the Task plan
template configuration field.
The task plan template configuration prefills the Short description and Target record
field. For more information about task plan template configurations, see Create a task plan
template configuration.
b. Provide a Name and Short description for the task plan template.
c. Optional: The Target record identifies the table that the task plan template is applied to.
For more information about these fields, see Task Plan Template form.
4. Select Submit.
The system saves the task plan template record and adds the Template items tab to the form.
Use the Template Items tab to define the tasks such as case tasks or work orders that you want
to be generated when the task plan template is applied.

What to do next

After creating a task plan template, you can create template items for that template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

414


<!-- page 415 -->
Create a template item
Create one or more template items, such as a task or record, for a task plan template. When the
task plan template is applied, these records are automatically created.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

Template items include tasks, child cases, and child case tasks. You can also create a hierarchy
of template items. For example, you can create a case as a template item and then create case
tasks as child template items for that case.
You can create new template items or you can clone existing template items. When you clone a
template item, it clones the hierarchy of that item.

Procedure
1. Navigate to All > Task Plan Templates > Draft Task Plan Templates.
2. Select a task plan template record number to display the record.
3. Select the Template items tab.
4. Select New in the Template items tab header.
The template item form opens in a new tab. The Number field displays the number of the
template item. The Task plan template field displays the number of the parent task plan
template.
For more information about these fields, see Template item form.
5. Provide a brief description of the template item in the Short description field.
6. Select a table from the Table field in which the system creates the template item record when
the task plan template is applied.
For example, if the template item is a case task, the system should create that item in the Case
Task table [sn_customerservice_task].
7. Specify the fields and the field values that the system should use to create the template item
record.
8. Optional: Add an attachment to the template item.
9. Select Save.
The system creates the template item record and adds the Conditions tab and the Child
Template Items tab to the form.

What to do next

After creating a template item, you can create one or more conditions for the template item. You
can also create child template items for a template item.
Create a child template item
Create one or more child template items, such as a task or record, for an existing template item to
create a task hierarchy.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

Template items can have child template items. By creating child template items, you can create
a hierarchy of template items. For example, you can create a case as a template item and then
create case tasks as child template items for that case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

415


<!-- page 416 -->
Procedure
1. Navigate to All > Task Plan Templates > Draft Task Plan Templates.
2. Select a task plan template record number to display the record.
3. Select the Template items tab.
4. Select New.
The template item form opens in a new tab. The Number field displays the number of the
child template item. The Task plan template field displays the number of the parent task plan
template.
5. Use the Search icon to choose a parent template item.
6. If applicable, choose a configuration in the Template item configuration field.
The corresponding field values are pre-filled. You can modify the field values if needed.
7. Provide a brief description of the template item in the Short description field.
8. Select a table from the Table field in which the system creates the child template item record
when the task plan template is applied.
For example, if the child template item is a case task, the system should create that item in the
Task table [sn_customerservice_task].
9. Specify the fields and the field values that the system should use to create the template item
record.
10. Optional: Add an attachment to the template item.
11. Select Submit.
The system creates the child template item record and adds the record to the Child Template
Items tab on the template item form.

What to do next

After creating a child template item, you can create one or more conditions for the template item.
Create a template item condition
Create conditions for a template item after the template item has been created. These conditions
determine when a template item is created when the task plan template is applied.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

You can create conditions for template items after the items have been created and the Template
Item Conditions tab appears on the Template Item record.
When you create a condition, you select a table on which the conditions are applied. The
following tables are available for selection:
• The same table as the Target record in the task plan template.
• The same table as the current template item.
You can also delete a condition by selecting the condition in the Template Item Conditions list
and then selecting Delete to remove the item from the list.

Procedure
1. Navigate to All > Task Plan Templates > Draft Task Plan Templates.
2. Select a task plan template record number to display the record.
3. Select the Template items tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

416


<!-- page 417 -->
4. Select a Template Item record.
5. Select the Conditions tab.
6. Select New.
The template item condition record opens in a new tab. The Template item field displays the
number of the parent template item.
For more information about these fields, see Template item condition form.
7. Select a table from the Condition table field.
This is the table on which the condition is applied.
8. Select Add Filter Condition to choose a condition from the drop down.
a. Use the operators in the field to set the filtering that you want.
b. Select x to remove a condition.
9. To add additional conditions to filter by, select Add OR Clause.
a. Use the operators in the field to set the filtering that you want.
b. Select x to remove a condition.
10. Select Submit.
The system creates the template item condition record and adds it to the Template Item
Conditions tab.
Clone a task plan template
Clone an existing task plan template to create a new template that includes the items, conditions,
and hierarchy of the original template.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

When you clone a task plan template, the system creates a new task plan template with a
unique record number and opens the cloned template in a new tab. The system creates the new
template in Draft status and in the active state. The cloned template is also added to the task
plan template list.
The cloned template includes the following:
• The template items, including the item hierarchy.
• Template item attachments.
• Template item conditions.
• Child Template Items related list.

Note: The Clone button is disabled if more than one task plan template is selected.
Procedure
1. Navigate to one of the following lists.
◦ All > Task Plan Templates > Draft Task Plan Templates
◦ All > Task Plan Templates > Published Task Plan Templates
◦ All > Task Plan Templates > All Task Plan Templates
2. Select a task plan template by selecting the check box next to the record number.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

417


<!-- page 418 -->
3. Select Clone from the Edit menu.
The system creates a copy of the selected task plan template and opens the cloned template
in a new tab.
Clone a template item
Clone an existing template item to add to a task plan template.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role

About this task

Template items include case tasks, child cases, and child case tasks. When you clone a template
item, the system clones the selected template item and creates a new template item that
includes the hierarchy, conditions, and attachments of the source template item.

Note: This action is only available for task plan templates in the Draft state.
The cloned template item is added to the Template Items tab on the Task Plan Template form.

Procedure
1. Navigate to All > Task Plan Templates > Draft Task Plan Templates.
2. Select a task plan template record number to display the record.
3. Select the Template items tab.
4. Select a template item and then select Clone on the Template Item form.
The system creates a copy of the selected template item, gives it a unique record number, and
displays the template item form.
Task Plan Templates tables
The Task Plan Templates application includes tables that store task plan template, template item,
and template item condition records.
The Task Plan Templates application includes the following tables.
Task Plan Templates application tables
Table

Description

Task Plan Template

Stores task plan template records.

[sn_task_plan_template]

A task plan template defines the plan to create
the associated template items, such as case
tasks and child cases.
A task plan template is a collection of
independent template items which can be
applied manually or automatically to an
existing entity such as a case.

Template Item

Stores template item records.

[sn_task_plan_template_item]

Template items are the tasks or the records
that are created when you apply a task plan
template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

418


<!-- page 419 -->
Task Plan Templates application tables (continued)
Table

Description

A task plan template can have multiple
template items and template items can have
child template items. This structure enables
you to define a hierarchy of parent and child
records of any task type.
You can add attachments to a template item.
The attachments are available on the tasks
and records created from the template item
when the task plan template is applied to a
case.
Template Item Condition

Stores template item condition records.

[sn_task_plan_template_item_condition]

You can add conditions to a template item
that determines when a template item is
applicable.

Related topics
Task Plan Template form
Template item form
Template item condition form
Task Plan Templates roles
Roles included with the Task Plan Templates application enable users to view, create, and edit
task plan templates, template items, and template item conditions. Users can use these defined
templates to automatically create tasks, child cases, and child case tasks for different types of
cases.
The following granular roles are included with the Task Plan Templates plugin
(com.sn_task_plan_templates).
Granular roles installed with the Task Plan Templates application
Role

sn_task_plan.admin​

Description

Can create, view, update and
delete records in the following
tables:​

Contains roles

• sn_task_plan.creator​
• sn_task_plan.delete​

• Task Plan Category
[sn_task_plan_category]​
• Task Plan Template
Configuration
[sn_task_plan_config]​

• sn_task_plan.report_viewer​
• sn_task_plan.navigation_menu​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

419


<!-- page 420 -->
Granular roles installed with the Task Plan Templates application (continued)
Role

Description

Contains roles

• Task Plan
Configuration Category
[sn_task_plan_config_category]​
• Task Plan Template
[sn_task_plan_template]​
• Task Plan Template Access
[sn_task_plan_template_access]​
• Task Plan
Template Category
[sn_task_plan_template_category]​
• Task Plan Template
Execution
[sn_task_plan_template_execution]​
• Template Item
[sn_task_plan_template_item]​
• Template Item Condition
[sn_task_plan_template_item_condition]​
• Template Item Configuration
[sn_task_plan_template_item_config]​
sn_task_plan.viewer

Can view information in the
following tables:
• Task Plan Template
[sn_task_plan_template]
• Template Item
[sn_task_plan_template_item]
• Template Item Condition
[sn_task_plan_template_item_condition]

sn_task_plan.writer

Can view and update
information in the following
tables:

sn_task_plan.viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

420


<!-- page 421 -->
Granular roles installed with the Task Plan Templates application (continued)
Role

Description

Contains roles

• Task Plan Template
[sn_task_plan_template]
• Template Item
[sn_task_plan_template_item]
• Template Item Condition
[sn_task_plan_template_item_condition]
sn_task_plan.creator

Can create records in the
following tables:

sn_task_plan.writer

• Task Plan Template
[sn_task_plan_template]
• Template Item
[sn_task_plan_template_item]
• Template Item Condition
[sn_task_plan_template_item_condition]
sn_task_plan.delete

Can delete records from the
following tables:

sn_task_plan.viewer

• Task Plan Template
[sn_task_plan_template]
• Template Item
[sn_task_plan_template_item]
• Template Item Condition
[sn_task_plan_template_item_condition]
sn_task_plan.report_viewer

Can view the task plan
template reports.

sn_task_plan.navigation_menu Can view the Task Plan
Templates lists.

sn_task_plan.viewer

Sharing task plan templates
Sharing task plan templates ensures that only authorized users can create, edit, and manage
templates. It involves setting access controls, defining roles and responsibilities.

Sharing task plan template overview
Effective sharing of task plan templates helps organizations manage ownership, sharing, and
access securely and efficiently. It defines the responsibilities of admin and owner, and supports
a seamless experience for users interacting with templates.
The sharing task plan template capability provides secure, efficient template management, and
role-based controls for all member types involved.
Sharing task plan template features include;

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

421


<!-- page 422 -->
• Role-based access control
• Ownership and sharing rules
• Global template settings
• Notifications when access is granted
• API and ACL configurations for automated access provisioning
Templates can be marked as global or non-global, activated, or deactivated, and shared with
users, groups, or service organizations.

Note: Query rules can be used with the CSM plugin to grant access to tables within Task
Plan templates. Alternatively, non-query rules are available for scenarios where the CSM
plugin is used independently.

Template sharing and access management
Sharing task plan templates is designed to ensure that only authorized users can access, edit,
or share templates, maintaining operational integrity and avoid misuse. Access is managed at
multiple levels—user, group, service organization, and service organization criteria—with each
entity able to receive read, write permissions. Member Type is a key field when sharing templates
with service organizations or based on service organization criteria.
Task plan admin role: (sn_task_plan.admin)
The task plan admin role is responsible for overseeing and managing templates within the
system. Admins can set templates as global or non-global, activate, or deactivate templates.
Admins can assign access to users, groups, service organizations, or based on service
organization criteria. Admins have the authority to update template owners and they can apply
global sharing rules and validations.
Task Plan Template Access
Field Names

Descriptions

Owner field

Task plan template owners are responsible
for sharing templates with users, groups, or
service organizations, granting read, write
access. They can view and manage access
permissions and publish, clone, or deactivate
shared templates. Owners can change the
owner of a template and to switch a template’s
status between global and non-global.

User, Groups, Service Org, Service Org
Criteria, and Member type fields

Users, groups, service org, and service orgs
filtered by service organization criteria are
able to view and write to shared templates.
They can filter and search for templates and
receive notifications whenever access is
granted. Member Type is a key field enabled
only when sharing templates with service
organizations or based on service organization
criteria. Member type enables owners and
admins to specify the exact role or type of
members like Location Agent, Listed Member.
These member type should have access to a
template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

422


<!-- page 423 -->
Share a task plan template with other users or groups
Share templates and grant access to the template with specific users, groups, or service
organization or service organization criteria and member type.

Before you begin

Role required: admin

About this task

If the template is in Draft state, users can edit it. If the template is in a published state, then users
cannot make any changes to the template.

Procedure
1. Navigate to All > Task Plan Templates > All Task Plan Templates.
2. Select an existing task plan template.
3. Select New.
A new access record opens with the template number pre-filled.
4. Specify task plan template access field details.
For access record fields and description see: Task plan template access record
5. Select Submit to save the access record.
Task plan template access record
The task plan template access record is created with pre-filled template number. The access
fields need to be specified to create and save the task plan record.
Task Plan Template Access Record form
User

User of the template. Search and select a user from the
list, or select New to create a user.

Group

Group for the template. Search and select a group from
the list, or select New to create a group.

Note: On entering or by selecting the user
or group name from the list, all other fields are
disabled.
Service Organization

Service organization for the template. Search and
select a service organization from the list, or select
New to create a new service organization.

Service Organization Criteria

Criterion for the template.

Optional

Member type. For example, Location Agent, Listed
Member, Location Contributor.

Member Type

Appropriate member type for the service organization
criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

423


<!-- page 424 -->
Task Plan Template Access Record form (continued)

Note: This field is enabled only when Service

Organization or Service Organization Criteria is
selected.
Notify users when a task plan template is shared
Notifications ensure that all relevant users, groups, service organizations, and members are
promptly informed when a task plan template is shared. Notifications supports operational
integrity and transparency in template governance.
Shared Task Plant Template Notifications

Individual users, groups, service organizations, and members, receive in-app notifications
when a task plan template is shared. Notifications are triggered to users, groups, and service
organizations based on criteria or roles ensuring that only authorized recipients are informed
about updates to template access.
Each notification specifies the template name and is sent directly to the users, groups, or
service organizations involved. If the user is on the platform view, the notification redirects to the
template record on Platform; if on workspace, it navigates to the template record on workspace.
Notification validation ensures that only those with the correct access receive alerts, maintaining
both security and relevance.
Owners and admins have the ability to manage access, update ownership.

Note: Notifications are not sent for global templates, maintaining a streamlined
experience for users who interact with widely shared resources.
Create a task plan template configuration
Admins can create configurations for task plan templates that pre-fill information in task plan
template fields.

Before you begin

Role required: sn_task_plan.admin or sn_task_plan.creator role
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

424


<!-- page 425 -->
About this task

When you create task plan template configurations, you streamline the process of creating task
plan templates for your team. Configurations pre-fill fields in task plan templates, such as Target
table and Description.

Procedure
1. Navigate to All > Task Plan Templates > Administration > Task Plan Template Configuration
2. Add a brief description to the Short description field.
3. Optional: Add the Target table you want to associate with the task plan template.
4. Check the Active checkbox to active the configuration.
5. Select Submit.
View task plan template executions
View tracking and diagnostic information for every execution of task plan templates in the Task
Plan Template Executions table. The information available includes success, failure, and skipped
details, along with references for traceability.

Before you begin

Role required: sn_task_plan.viewer

Procedure
1. Navigate to All > Task plan templates > Published Task Plan Templates.
2. Select a task plan template from the list, then navigate to the Task Plan Template Execution
related list to see the execution record.
3. In the record, view the information for each task plan template execution.
The information available includes the following.
Task plan template executions
Number

The task plan template execution number

Expected records

The total number of records expected to be
created.

Created records

How many records actually created, once the
task plan is applied.

Errored records

How many records were not created
due to an error encountered somewhere
(for example, if there is a business rule
preventing insert on the target table of the
template item)

Skipped records

How many records were skipped and not
created, due to a condition check failing
on the Template Item condition record
[sn_task_plan_template_item_condition]

Execution status

Status can be Completed, In_progress,
or Completed with Errors.
If the task plan has been applied, but there
are remaining template items yet to be

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

425


<!-- page 426 -->
visited/used to create records, then the
status is set to In_progress.
If the task plan has fully been applied
with NO errors, then the status is set to
Completed.
If the task plan has fully been applied with
NO errors, but some records were skipped,
then the status is set to Completed.
If the task plan has fully been applied with
at least ONE error spotted when attempting
to create a record using a template item,
then the status is set to Completed with
Errors.
Execution details

This is a field of type JSON. At the bare
minimum, if the task plan has been applied
and no records have been "skipped" or
"errored", then the JSON object looks
something like this:
{
Status: "Completed",
ParentRecord: ['CS0001',
'CS0002'],
RequestNumber: TPEX00001
}
The Status key in the JSON object is the
same as the execution_status field.
The ParentRecord key represents the
top-level parent record(s) within the newly
created hierarchy. It may either represent
a singular Glide Record (record existing in
the database) that was provided, or an array
holding the first level of records created from
ROOT template items. Root template items
are template items without any parent (toplevel).
The RequestNumber key points back
to the Number of the Task Plan Template
Execution record.
If there are skipped records or errored
records, then the Template Item number
of the skipped/errored item is provided.
The following is an example where both
'Skipped' and 'Errored' template items were
encountered during task plan execution:
{
Status: "Completed with
Errors", //status is set to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

426


<!-- page 427 -->
Completed With Errors, as
we encountered an errored
record
ParentRecord: ['CS0001',
'CS0002'],
RequestNumber: TPEX00001,
Skipped: ['TP0002',
'TP0005'],
Errors: ['TP0008']
}
Order Operations Case Management
The Order Operations Case Management application enables customer service agents to create
cases for multiple customer orders or for specific products within an order.
Order case page with Order Case Line list

The Order Operations Case Management application includes the Orders case type. This case
type provides the ability to reference multiple orders or order lines as case line items on an order
case record. By using case line items, agents can track multiple issues for the same order case
and resolve the issues in each case line item independently before resolving and closing the
order case.
Use order cases to handle issues such as change order requests, including changes in ordered
quantities or expedited shipping requests, or other order-related issues. With this application,
agents can:
• Create new order cases and add the requested orders or order lines to the case as case line
items.
• Add or remove orders or order lines from existing order cases.
• Edit existing case line items or create new case line items for order cases.
• Review the changes that have been requested on case line items.
• Create tasks for case line items and assign them to other agents or team members.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

427


<!-- page 428 -->
• Manage and track the requests and the actions taken to fulfill orders.
• Resolve the individual case line items before resolving the case.

Benefits of using order cases
Businesses can encounter order issues for many reasons such as inventory discrepancies,
payment processing problems, or shipping and delivery errors. Order issues can also result
from customer input mistakes or changes in customer needs, such as faster shipping or quantity
changes. The following table provides some examples of these issues and the resulting order
cases.
Order case examples
Reason

Request/Issue

Order case example

Change in quantity

A customer wants to increase
or decrease the quantity of an
item in their order.

An order case is created to
document the request and
confirm stock availability.​

Change in delivery date

A customer requests to
change the delivery date for
their order.

An order case is created to
coordinate with logistics and
confirm the new delivery
schedule.​

Change in address

A customer needs to update
the shipping address after
placing the order.​

An order case is created
to ensure the change is
processed before shipping.​

Price discrepancy

A customer notices that the
price charged differs from the
agreed price.

An order case is created to
investigate and correct the
billing.​

Incorrect item ordered

A customer received the
wrong product.

An order case is created to
initiate the return process
and ensure the correct item is
sent.​

Cancellation of order lines

A customer wants to cancel
specific items in their order.

An order case is created to
confirm which items can be
canceled and update the
order accordingly.

Overview of creating an order case
The following table provides an overview of the process for creating an order case. For detailed
steps, see Create an order case.
Steps for creating an order case
Step

Description

Creating an order case

An agent can create an order case in the
following ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

428


<!-- page 429 -->
Steps for creating an order case (continued)
Step

Description

• Selecting Create case from a customer
order.
• Selecting Create case from the Order
Line Items list on a customer order (after
selecting one or more order lines).
• Selecting Create case from an interaction
record.
• Selecting New from the Order Cases list
view.
Selecting a service

After initiating an order case, the agent selects
an order-related service from the case type
selector modal.
This modal displays the services that are
available for order cases, such as Sales Order
Change Request or Sales Order Dispute.

Filling in details on the Create New Order
Case intake form

Selecting Create case from the case type
selector modal displays the intake form where
the agent can enter the following order case
details:
• Account: the account for the order.
• Scope of request: the agent can create a
case for order lines from a single order or for
multiple complete orders.
• Order number: the order number
associated with the order case.
• Short description: a brief description of the
order case.
Depending on where the agent creates the
order case from, some of these fields are auto
filled.

Viewing the order case record

Selecting Save on the intake form creates the
Order case record in Draft state.
From this record, agents can:
• Add orders or order lines to the order case.
• Delete orders or order lines from the order
case.
• Create new order case line items.
• Edit the details of order case line items.
• Assign order case line items to themselves.
• Create tasks for order case line items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

429


<!-- page 430 -->
Steps for creating an order case (continued)
Step

Description

Submitting the order case record

Selecting Submit on the Order case record
moves the order case and the order case
line items to the New state. Once in the New
state, agents can begin working to resolve the
order case. This includes creating tasks for
order case line items, assigning them to other
agents or team members, and monitoring case
progress.

Order Operations Case Management plugin
Order Operations Case Management (com.sn_order_case) is a case management application
for handling support requests on orders or order lines. This application enables customers to
process order-related services such as inflight order changes, order inquiries, and order dispute
requests. It provides an order case type that includes order line items that need changes,
workflows, and agent and customer experiences.
The Order Operations Case Management application includes list views for CSM Configurable
Workspace and Core UI.
• In CSM Configurable Workspace, expand the Order Cases list category in the Lists tab.
• In Core UI, navigate to All > Customer Order Management > Order Cases.
The Order Operations Case Management application also includes tables, roles, service
definitions and other components. For more information, see Components installed with Order
Operations Case Management.
The Order Operations Case Management application is available from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Related topics
Case Lines and Workflows
Order case pages
The Order Operations Case Management application includes record pages that display order
cases and order case line items in CSM Configurable Workspace.
The Order Operations Case Management application enables agents to create order cases that
reference customer orders and order lines. Using order cases, agents can manage and track
customer requests and the actions taken to fulfill these requests.
Order cases contain order case line items, which represent either multiple complete orders or
multiple order lines from a single order. The Order Operations Case Management application
includes the following record pages to display this information in the workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

430


<!-- page 431 -->
Order case record pages
Page

Description

Create New Order Case intake page

When an agent initiates an order case and
selects a service from the case type selector
modal, the system displays the Create New
Order Case intake page.
The agent uses this page to enter basic
information about the order case, such as the
account, order number, and scope of request,
and then create the case.

Order case record page

The Order case record page displays the order
case and a list of the order case line items.
The agent uses this page to do the following:
• View details about the order case and the
order case line items.
• Add or remove orders or order lines to the
order case as order case line items.
• Create new order case line items.
• Edit order case line item details.
• Create tasks for order case line items.

Order case line item record page

The Order case line item record page displays
information about an order case line item.
The agent uses this page to view and edit
information about the order case line item,
including case line item details, ordered
and requested quantities, and shipping
information.

Order case record page
The Order case record page displays information about order cases and the associated list of
order case line items in CSM Configurable Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

431


<!-- page 432 -->
Order case page with Order Case Line list

Customer service agents use this page to do the following:
• View details about the order case and the order case line items.
• Add or remove orders or order lines to the order case as order case line items.
• Create new order case line items.
• Edit order case line item details.
• Create tasks for order case line items.

Order case record page components
The Order case record page includes the following components:

Component

Description

Order case form heading

The form heading displays the order case short description.
If there is no short description, it displays the order case
number. The form heading also includes the action bar and
record tags.

Order case action bar

The action bar contains the actions available to users while
working on order case records. The specific actions are
determined by factors such as the user role, order case state,
and other attributes.
• In-progress Actions: This icon provides a list of minimized
modeless dialogs. It includes a badge that displays the
number of items in the list. From this list, an agent can select
an item to open the minimized comment, work note, or email.
• Compose: Compose comments, work notes, and emails in
modeless dialogs.
• Manage case: Perform case management actions such as
requesting information or proposing a solution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

432


<!-- page 433 -->
Component

Description

• Save: Save changes to the order case record.
• More Actions: Perform additional actions such as proposing
a major case or reporting a knowledge gap.
Account lookup

Agents can use the account lookup component to do the
following:
• Search for an account.
• Link or unlink an account.
• Select a reference field on a lookup card, such as a contact
name, to open the reference in a sub-tab.
• Select a phone number on a lookup card to make a call.
The account lookup component displays information in record
cards. These cards display contact information and provide
quick access to customer details such name, address, and
phone.

SLA

Displays active SLAs for the order case, including time
remaining, the SLA state, and any breaches.

Case details

The case details component includes collapsible sections for:
• Case Details
• Notes
• Closure Information
• Related Records
This component also includes a menu with additional form
actions, such as personalizing the form, exporting data, and
copying the URL.

Case summarization

The case summarization component appears above the
Order Case Line list. When an agent opens an order case, the
component is collapsed and in the default state.
Agents can use this component to do the following:
• Summarize order case details.
• Generate order case resolution notes.
• Generate knowledge articles.
• Generate email reply recommendation.

Note: The case summarization component requires the
Now Assist for Customer Service Management (CSM)
application to be activated and configured.
Order Case Line list

The Order Case Line list component displays the order case
line items associated with the order case. Order case line
items can be created for orders or order lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

433


<!-- page 434 -->
Component

Description

• If an order case is created for one or more orders, the
system converts the order header from each customer order
to a case line item on the order case.
• If an order case is created for one or more order lines from
a single order, the system converts the selected order lines
from the customer order to case line items on that order
case.
Order Case Line action bar

The Order Case Line action bar contains the actions available
to users while working on order case line records.
• New: Opens a Create New Order Case Line record in a
separate tab. Fill in the fields and select Save to add the
order case line item to the list.
• Add: Displays one of the following modals depending on the
origin of the order case:
◦ Add order lines to case
◦ Add orders to case
Select one or more orders or order lines and then select Add
to add the selected orders or order lines to the Order Case
Line list.
• Create task: Creates a task for the selected order case line
item in a separate tab. Fill in the fields on the Create New
Case Line Task record and select Save.
After selecting an order case line item, agents can edit
selected order case line item details, assign an order case line
item to themselves, or delete a case line.
• Edit: Displays the details for the selected order case line
item in a panel. Make the necessary changes and select
Update at the bottom of the panel.
• Assign to me: Assigns the selected order case line item to
the current user.
• Delete: Deletes the selected order case line item. Select
Delete all in the confirmation pop-up window.

Activity stream

The activity stream component displays a list of activities
occurring on an order case record. This list can be collapsed to
provide a quick view of case activities or expanded to provide
more detail about individual activities.
The Order case record page uses modeless dialogs for
composing comments, work notes, and emails. For more
information, see the Composing emails, comments, and work
notes section below.

Contextual side panel

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Order case record page
includes the following tabs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

434


<!-- page 435 -->
Component

Description

• Activity stream
• Attachments
• Recommended Actions search
• Related Lists
• Email Templates
• Response Templates
• Form Templates
For more information about related lists, see the Order case
record page related lists section below.

Note: The Order Operations Case Management
application does not include response templates. To
configure a response template, see Create or modify a
response template .

Order case record page settings
The Order case record page includes the following settings.
Order case record page settings
Setting

Description

Active

Enabling the Active check box makes the page available to the
selected audience. The Order case record page is active by
default.
The active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the Order case record page is -1000.

Conditions

Conditions determine when a page variant is displayed.
The Order case record page has the following condition:
table=sn_order_case
This condition limits the use of the Order case record page to
records from the Order Case [sn_order_case] table and tables
that extend the Order Case table.

Audience

The audience determines who can see a record page. The
Order case record page does not have a specified audience.
For more information, see Learn about audiences

.

To access the settings for this page variant:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

435


<!-- page 436 -->
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select Front-line case page.
4. Select Settings at the top of the page.

Order case record page related lists
Related lists appear in the Related Lists tab in the contextual side panel.
The related lists component provides access to the order case related lists. This component
uses an expandable accordion format. Agents can expand the desired lists to see the related
items. This component also displays an icon with the number of items in a list.
1. Case Tasks
2. Order Case Lines
3. Order Tasks
4. SLAs
5. Emails
6. Draft Emails
7. Knowledge
8. Knowledge Gaps
9. Child Cases
The items in an expanded list are displayed as cards. An expanded list shows one card for each
item in the list, up to a maximum of 8 cards.
• Agents can open an item in a sub-tab.
• If a list has more than five items, it includes a Show more option.
Related lists include the following actions:
• Refresh: refreshes the items in the list.
• Create: opens a blank record in a sub tab that the agent can use to create a new item.
• View all: opens a list of records in a sub tab.
• Show more: is displayed for lists that have more than five items.

Composing emails, comments, and work notes
The Order case record page uses modeless dialogs to create and post comments and work
notes to the activity stream and to compose and send emails.
A modeless dialog is a window that appears in a workspace as an overlay on top of the main
window content. This overlay enables users to interact with the window content and the overlay
content at the same time.
The Compose group of actions on the Order case record page includes:
• Compose Comments
• Compose Email
• Compose Work Notes(Private)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

436


<!-- page 437 -->
These actions launch the corresponding modeless dialogs (the behavior is the same as the
Front-line case page).
The email templates should be accessed from email dialog.
For more information about composing emails, comments, and work notes, see Modeless
dialogs.
Order case line item page
The Order case line item page displays information about an order case line item associated with
an order case in CSM Configurable Workspace.
Order case line item page

The order case line item record shows the details of an order case line item, including customer
and product information, the requested change to the ordered quantity, the shipping location,
and estimated dates. This record also includes the following components:
• Details tab: Displays the case line item details, including order and account information,
ordered and requested quantities, and shipping information.
• Tasks tab: Displays the tasks created for the case line item.
• Characteristics tab: Displays the specific characteristics of the case line item.
• Contextual side panel: The contextual side panel includes different tools that agents can use
to research and resolve customer issues. The contextual side panel in the Order case line
record page includes the following tabs.
◦ Record Information
◦ Attachments
◦ Templates
Order case intake page
Customer service agents use the Order case intake page to capture the initial information when
creating a new order case.
The agent initiates an order case in one of the following ways:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

437


<!-- page 438 -->
• Selecting Create case from a customer order.
• Selecting Create case from the Order Line Items list on a customer order.
• Selecting Create case from an interaction record.
• Selecting New from the Order Cases list view.
The system displays the Order case intake page after the agent selects an order-related service
from the case type selector modal. The agent can enter the following order case details:
• Account: the account for the order.
• Scope of request: the agent can create a case for order lines from a single order or for multiple
complete orders.
• Order number: the order number associated with the order case. This field is mandatory for
cases created from the Order Line Items list on a customer order.
• Short description: a brief description of the order case.
Depending on where the agent creates the order case from, some of these fields are auto filled.
For example, the Scope of request displays the following:
• Specific line items, Single order: If the agent selects Create case from the Order Line Items
list on a customer order.
• Multiple orders: If the agent selects Create case from a customer order.
After saving the intake record, the agent can see the Order case record page with the case line
items created either from customer orders or customer order lines.
Order case and order case line item states
Order cases and order case line items move through several different states as agents work to
resolve the individual case lines in order cases.

Order case states
Order cases can be in the states listed in the following table. Actions available on the order case
record enable agents to move cases from one state to another.
Order case states
State

Description

Draft

The order case is in the Draft state.
Select Submit on the order case record page to move the
order case and all of the order case line items that are
currently in the Draft state to New.

New

The order case has been submitted and is in the New state.
Select Assign to me on the record page to assign the case
to the logged-in user and move the order case and all of the
order case line items currently in the New state to Work in
Progress.

Work in Progress

The assigned agent is working on the order case.
Select the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

438


<!-- page 439 -->
Order case states (continued)
State

Description

• Request Information: use this action to request additional
information from the contact or consumer. The state moves
to Awaiting Information.
• Resolve Case: use this action to propose a resolution to the
contact or consumer. The state moves from Work in Progress
to Resolved.
Awaiting Info

The agent is waiting for the contact to provide the requested
information for the order case.
Select Information Received to move the order case back to
Work in Progress.

Resolved

The agent has proposed a resolution for the order case to the
contact.
Select Close Case on the record page to move the order case
to Closed.

Closed

The order case has been resolved and the resolution has been
accepted by the contact.
When all of the case line items for an order case are in a
terminal state, the case can be set to Closed. Terminal states
include:
• Resolved - Accepted
• Resolved - Denied
• Cancelled

Canceled

The order case has been canceled.
Select Cancel to cancel an order case.

Note: You can only cancel order cases in the Draft state.
Order case line item states
Order case line items can be in the states listed in the following table. The case line items in an
order case can be in different states as the agent works to resolve each issue.
Order case line item states
State

Description

Draft

The order case line item is in the Draft state.
When an order case is created and is in the Draft state, the
associated order case line items are also in the Draft state.

New

The order case line item is in the New state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

439


<!-- page 440 -->
Order case line item states (continued)
State

Description

When an order case is submitted and moved to the New state,
the associated order case line items that are currently in Draft
state are also moved to the New state.
Work in Progress

The assigned agent is working on the order case line item.

Awaiting Info

The assigned agent has requested additional information
about the order case line item and is waiting for a response.

Resolved - Accepted

The change to the order case line item has been accepted.

Resolved - Denied

The change to the order case line item has been denied.

Cancelled

The order case line item has been cancelled.

Syncing the state of an order case with the order case line items
State changes for an order case can result in state changes for the associated order case line
items. These changes are detailed in the following table.
Order case and order case line item states
Order case state

Order case line item tate

Draft

Saving a new order case creates the case in the Draft state.
Order case line items for the order case are also created in the
Draft state.

New

When an agent submits an order case, the state is updated
from Draft to New. The states of the associated order case line
items that are currently in Draft state are also set to New.

Work in Progress

When an agent selects Assign to me on an order case in the
New state, the state is updated from New to Work in Progress.
The states of the associated order case line items are also set
to Work in Progress.
If any of the case line items are set to Work in Progress, then
the case is also set to Work in Progress.

Resolved

If a case is set to Resolved, the status of each of the case line
items is also set to Resolved.
If all of the case line items are Resolved, then the case is set to
Resolved.

Closed

When all of the case line items for an order case are in a
terminal state, the case can be set to Closed. Terminal states
include:
• Resolved - Accepted
• Resolved - Denied
• Cancelled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

440


<!-- page 441 -->
Order case and order case line item states (continued)
Order case state

Order case line item tate

When an agent selects Close Case on an order case in the
Solution Proposed state, the system updates the state to
Closed.
Cancelled

When a user selects Cancel on an order case in the Draft
state, the system updates the state to Cancelled. States for the
order case line items associated with the order case are also
set to Cancelled.

Note: You can only cancel order cases in the Draft state.
Creating an order case
Agents can create order cases from a customer order, from an interaction record, or from the
Order Cases list view in CSM Configurable Workspace.
Agents can create order cases in the following ways:
• Selecting Create case from a customer order.
• Selecting Create case from the Order Line Items list on a customer order. (This action is
enabled if one or more order lines are selected.)
• Selecting Create case from an interaction record.
• Selecting New from the Order Cases list view.
After initiating an order case, the agent can select an order-related service from the case type
selector modal. This modal displays the services that are available for order cases, such as Sales
Order Change Request or Sales Order Dispute.
Selecting Create case from the case type selector modal displays the Create New Order Case
intake form where the agent can enter the following order case details:
• Account: the account for the order.
• Scope of request: the agent can create a case for order lines from a single order or for multiple
complete orders.
• Order number: the order number associated with the order case.
• Short description: a brief description of the order case.

Note: Depending on where the agent creates the order case from, some of these fields
are auto filled.
Selecting Save on the intake form displays the Order case record page. From this record, agents
can:
• Add order lines to the order case.
• Delete order lines from the order case.
• Create new order case line items.
• Edit the details of order case line items.
• Assign order case line items to themselves.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

441


<!-- page 442 -->
Selecting Submit on the Order case record moves the order case and the order case line items
currently in the Draft state to the New state. Once in the New state, agents can begin working to
resolve the order case. This can include creating tasks for order case line items and assigning
them to team members.

Scope of request
An agent can create the following types of order cases:
• Cases that reference one or more order lines from a single customer order.
• Cases that reference multiple complete customer orders.
The Order case record includes the Scope of request field. Depending on where the agent
initiates the creation of an order case, this field is auto-filled with one of the following values:
• Specific line items, Single order: The system creates an order case and converts the selected
order lines from the customer order to case line items on that order case.
• Multiple orders: The system creates an order case and converts the order header from each
customer order to a case line item on that order case.
For example, if an agent creates an order case by selecting Create case on a customer order, the
scope of request is Multiple orders. If an agent selects one or more order lines and then selects
Create case from the Order Line Items list on a customer order, the scope of request is Specific
line items, Single order.

Add orders and order line items to an order case
Order cases include a list of order case line items. Depending on how the order case is created,
these case line items represent either customer orders or order lines from a single order.
Once an order case has been created, agents can add additional orders or order lines to that
case by selecting Add on the Order Case Line action bar. Selecting this action displays a modal
that shows information based on the values in the Origin table field and Order number field on
the case record.
• If the Origin table is set to Customer Order and the Order number field is empty, the case type
selector modal shows a list of orders associated with the account selected in the Account
field. The case type selector modal displays "Add orders to case".
• If the Origin table is set to Customer Order and the Order number field includes an order, the
case type selector modal shows a list of order lines associated with that order. The case type
selector modal header is "Add order lines to case".
The agent can select a line item from the modal and then select Add to add it to the order case
as an order case line item.
Create an order case
Create an order case for a customer order or for selected order lines.

Before you begin

Role required: sn_order_case.creator, sn_order_case.agent, sn_customerservice_agent, admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

442


<!-- page 443 -->
Procedure
1. In CSM Configurable Workspace, create an order case in one of the following ways.
◦ Select Create case from a customer order.
◦ Select Create case from the Order Line Items list on a customer order. (This UI action is
enabled if one or more order lines are selected.)
◦ Select Create case from an interaction record.
◦ Select New from the Order Cases list view.
2. Select an order-related service from the case type selector modal and then select Create case.
This modal displays the services that are available for order cases, such as Sales Order
Change Request or Sales Order Dispute.
3. Fill in the following details on the Create New Order Case intake form.
◦ Account: the account for the order.
◦ Scope of request: the agent can create a case for order lines from a single order or for
multiple complete orders.
◦ Order number: the order number associated with the order case.
◦ Short description: a brief description of the order case.
Depending on where you create the order case from, some of these fields are auto filled with
information from the customer order or interaction records.

Note: Default values that have been configured for a service definition record can auto

populate fields on the order case record. If the Account, Contact, or Contract field values
are also defined in the selected service definition record, those values take priority over
the values from the customer order record.
4. Select Save.
Saving the Create New Order Case intake form creates the order case record in Draft state.
5. View the order case record details and the order case line items and make any necessary
changes.
You can perform the following tasks while the order case is in Draft state:
◦ Add orders or order lines to the order case.
◦ Delete orders or order lines from the order case.
◦ Create new order case line items.
◦ Edit the details of order case line items.
◦ Assign order case line items to yourself.
6. Select Submit.
Submitting the order case record moves the order case and the order case line items currently
in the Draft state to the New state and enables you to begin working to resolve the order case.

What to do next

After submitting an order case, you can:
• Add or delete orders or order lines to an order case
• Create new order case lines for an order case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

443


<!-- page 444 -->
• Edit the information in order case line records
• Create tasks for order case lines and assign them to other users
Add orders or order lines to an order case
Add orders or order lines to an existing order case. You can also delete orders or order lines from
an existing order case.

About this task

Adding orders or order lines to an existing case is determined by the value in the Scope of
request field on the order case record.
• If the value is Specific line items, Single order, you can add order lines to the case.
• If the value is Multiple orders, you can add orders to the case.

Before you begin

Role required: sn_order_case.creator, sn_order_case.agent, sn_customerservice_agent, admin

Procedure
1. Open an order case record in CSM Configurable Workspace.
2. Select Add in the Order Case Line list.
3. Select the desired orders or order lines in the resulting modal.
◦ Add orders to case: displays the available orders.
◦ Add order lines to case: displays the available order lines.
4. Select Add in the modal.
The system adds the selected orders or order lines to the Order Case Line list.
Create an order case line item for an order case
Create a new order case line item for an existing order case.

Before you begin

Role required: sn_order_case.creator, sn_order_case.agent, sn_customerservice_agent, admin

Procedure
1. Open an order case record in CSM Configurable Workspace.
2. Select New in the Order Case Line list.
This opens a Create New Order Case Line record in a separate sub tab.
3. Fill in the details for the new order case line item.
4. Select Save.
The system adds the new order case line to the Order Case Line list.
Edit an order case line item
Edit one or more order case line items for an order case.

Before you begin

Role required: sn_order_case.creator, sn_order_case.agent, sn_customerservice_agent, admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

444


<!-- page 445 -->
Procedure
1. Open an order case record in CSM Configurable Workspace.
2. Select an order case line item in the Order Case Line list.
3. Select Edit to display the Edit item panel.
4. Edit the desired fields.

Note: For cases created for multiple complete orders, agents can only make changes to
the order header, such as changes to shipping dates and locations.
5. Select Update at the bottom of the Edit item panel.
Create a task for an order case line item
Create a task for an order case line item.

Before you begin

Role required: sn_order_case.creator, sn_order_case.agent, sn_customerservice_agent, admin

Procedure
1. Open an order case record in CSM Configurable Workspace.
2. Select an order case line item in the Order Case Line list.
3. Select Create task to display the Create New Case Line Task form.
4. Enter information in the fields on the form.
5. Select Save.
The system displays the new case line task record.
Order case form
The order case form displays details about an order case.
Order case form fields
Field

Description

Number

The automatically generated record number. The prefix for
numbers from the Order Case table is ORDCS.

Account

The name of the company that the order case is opened for.

Contact

The name of the customer contact for the order case.

Scope of request

Identifies the scope of the change for an order case
Agents can use this field to select the type of change for an
order case.
• Specific line items, Single order: Sets one or more order line
items as the source for case line items.
• Multiple orders: Sets one or more complete orders as the
source for case line items.
Selecting Specific line items, Single order sets the Origin
table field to "Order Line Item" and makes the Order number
field mandatory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

445


<!-- page 446 -->
Order case form fields (continued)
Field

Description

When the user selects the order number in the Order number
field and selects Add on the Order Case form, the system
displays the Add order lines to case modal. This modal lists the
order lines for the specified order number.
Selecting Multiple orders sets the Origin table field to
"Customer Order".
Order number

Reference to the customer order.
If the Scope of request field is set to "Specific Line Items,
Single Order" then this field becomes mandatory.

Channel

The method by which the customer initiated contact and the
case was opened.
• Web (default)
• Phone
• Email
• Chat
• Social

Service

The service that was selected from the service selector when
the order case was created.

Product

The product model of the asset. A model is a specific version
or configuration of an asset (for example, Apple Mac Book Pro).
If you select an asset in the Asset field and the asset has an
associated product, the Product field is automatically updated.
A product can be associated with multiple assets.

Asset

The asset tag number or the serial number of the asset
involved in this case.

Install Base

The Install base field helps you track which products and
services have been purchased by a customer, how they
have been installed or provisioned, along with the detailed
configuration for each installed item.

Origin table

Displays the table where the order case was initiated.

Short description

A brief description of the issue or request.

Needs attention

When checked, the system sends a notification to the agent
in the Assigned to field. The notification includes the case
number, state, priority, and short description.

Opened

The date and time that the case was opened.

Priority

The assigned priority:
• 1 — Critical
• 2 — High

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

446


<!-- page 447 -->
Order case form fields (continued)
Field

Description

• 3 — Moderate
• 4 — Low (default)
Assignment group

The assigned customer service agent group.

Assigned to

The assigned agent. If a group is selected in the Assignment
group field, the assigned agent must belong to this group.

Contract

The contract number associated with the order case.

Entitlement

The entitlement associated with this case. The entitlements
available for selection in the reference list channel matches
the case creation channel. The available entitlements are
filtered by the settings in the Account, Contract, Product, and
Asset fields.
If only one entitlement is available for this case, it is
automatically added to the Entitlement field.

Partner contact

The name of the partner contact.

Partner

The name of the partner company.

Parent

The parent record for the order case.

Resolution code

Choice list indicating the resolution states for the case. This
field is mandatory when an agent proposes a solution for a
case.
The Order Operations Case Management application adds the
following resolution codes to the Resolution code field:
• Change approved
• Added replacement product

Request reason code

• Increase Demand
• Change in Contract
• Initial input incorrect
• Other

Order case line item form
The order case line item form displays details about an order case line on a case record.
Order case line item form fields
Field

Description

Number

The automatically generated record number. The prefix for
numbers from the Order Case Line table is ORDCSL.

Parent case

Displays the related order line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

447


<!-- page 448 -->
Order case line item form fields (continued)
Field

Description

Order line number

The parent case for the order line item record.

Account

The name of the company that the order case is opened for.

Contact

The name of the customer contact for the order case.

Product offering

The product offering for the order case line item.

Product specification

The product specification for the order case line item.

Product model
Short description

A brief description of the order case line item record.

State

The state of the order case line item record:
• Draft
• New
• Work in Progress
• Awaiting Info
• Resolved - Accepted
• Resolved - Denied
• Cancelled

Priority

The priority of the order case line item record:
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Assigned to

The assigned agent. If a group is selected in the Assignment
group field, the assigned agent must belong to this group.

Assignment group

The assigned customer service agent group.

Sold product

A product, component, or service that has been sold to an
account or a consumer.

Request reason code

The reason that the customer is requesting a change to the
order case line item.
• Increase Demand
• Change in Contract
• Initial input incorrect
• Other

Ordered quantity

Stores the original ordered quantity.

Requested quantity

Stores the quantity change requested.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

448


