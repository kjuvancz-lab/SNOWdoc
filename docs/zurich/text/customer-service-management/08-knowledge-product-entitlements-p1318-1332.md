# Zurich Customer Service Management — Knowledge product entitlements / Limit knowledge base access to internal users

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1318–1332 of 2452

Sections: Knowledge product entitlements (p1318); Limit knowledge base access to internal users (p1319); Quick start tests for Customer Service Management (p1320)

---

<!-- page 1318 -->
Knowledge product entitlements
The Knowledge Product Entitlements application enables administrators to designate the
knowledge bases and knowledge articles that customers can view from the Customer Service
Portal.
Limit access on the Customer Service Portal to the following:
• The knowledge bases and articles for the products that a customer's company has purchased.
• The knowledge bases and articles for which a customer's company has entitlements.
The Knowledge Product Entitlements plugin (com.snc.kb_product_entitlements) must be
activated to use this application. Installing this plugin adds the Related Products field to the
Knowledge Base form and to the Knowledge form. The knowledge information available on the
customer portal is limited to the products selected in this field.
Additional controls are available by enabling properties that allow you to:
• Limit access to knowledge bases based on product entitlements.
• Enable access if no products are specified in the Related Products fields.

Add a related product to a knowledge base or knowledge article
Add a product to a knowledge base or knowledge article using the Related Products field on the
corresponding form.

Before you begin

Role required: admin

About this task

To access knowledge bases and articles associated with a product, a user must have read or
contribute access and have the product included in the user's account as an asset. For more
information about assets, see Configure assets.

Procedure
1. To add a related product to a knowledge base:
a. Navigate to Knowledge > Administration > Knowledge Bases.
b. Select the desired knowledge base.
c. Add one or more products in the Related Products field.
d. Select Update.
2. To add a related product to a knowledge article:
a. Navigate to Knowledge > Articles > All.
b. Select the desired knowledge article.
c. Add one or more products in the Affected Products related list.
d. Select Update.

Set knowledge product entitlement properties
Set various properties to allow customers to access knowledge bases and knowledge articles on
the Customer Service Portal.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
Procedure
1. Navigate to All > Knowledge Product Entitlements > Properties.
2. Set the following properties, as needed.
Option

Description

Enable access control of Knowledge Bases
based on product entitlements

If enabled, customers can access all of the
knowledge bases related to the products for
which they have entitlements.

If enabled, customers can access all knowl­
Allow access to Knowledge Bases with emp­ edge bases even if no products have been
ty related_products
specified in the Related Products field on the
Knowledge Base form.
Enable access control of Knowledge Arti­
cles based on product entitlements

If enabled, customers can access all of the
knowledge articles related to the products for
which they have entitlements.

Allow access to Knowledge Articles with
empty related_products

If enabled, customers can access all knowl­
edge articles even if no products have been
specified in the Related Products field on the
Knowledge form.

3. Click Save.

Limit knowledge base access to internal users
Limit access to the information in a knowledge base to internal users.

Before you begin

Role required: admin

About this task

The articles in a knowledge base are available to both internal users, such as customer service
agents, and to external users (customers and partners). If the articles in a knowledge base are
intended for internal users only, the system administrator can restrict access by customizing the
knowledge base form.

Procedure
1. Navigate to All > Knowledge > Administration > Knowledge Bases.
2. Click the desired knowledge base.
3. Right-click the form header and select Configure > Related Lists.
4. Select Cannot Contribute from the Available column and move it to the Selected column.
5. Click Save.
6. On the selected knowledge base form, click the Cannot Contribute related list.
7. Click Edit.
8. Click All Customer Contacts in the left column and move it to the right column.
9. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
Quick start tests for Customer Service Management
Quick start tests are part of the Automated Test Framework (ATF). Use these tests to validate
that the Customer Service Management application still works after you make any configuration
change, such as applying an upgrade or developing an application.
A quick start test is a test or test suite installed with the demo data of an application. You can
use quick start tests as templates to build your own tests and test suites that ensure successful
execution with your instance-specific data.
For more information about using quick start tests, see the following topics:
• Test your apps with the ATF
• Quick start tests
• Getting started with quick start tests

CSM test suites and tests
The CSM test suites and tests are listed in the tables below.
• CSM: Case management test suite
• CSM Configurable Workspace test suite
• CSM: Case Types - Complaint
• CSM: Case Types - Onboarding
• CSM: Operations Dashboard test suite
• CSM Portal test suite
• Guided Decision - Next Best Action ATF test suite
• TC: Targeted Communications test suite
• CSM Walkup Experience tests

Plugins
All Customer Service Management quick start tests require activating the Customer Service
Management Demo Data plugin (com.snc.customerservice.demo). Some quick start tests also
require activating the following plugins:
• Business Location (com.snc.business_location)
• Case Playbook for Complaints (sn_complaint)
• Case Playbook for Onboarding (sn_onboarding)
• Consumer Service Portal (com.glide.service-portal.consumer-portal)
• CSM Contributor User (com.snc_csm_contributor_user)
• CSM Extension for Proxy Contacts (com.snc.csm_proxy_contacts)
• Customer Service Household (com.snc.household)
• Customer Service Management for Orders (com.snc.csm.order)
• Customer Service Portal (com.glide.service-portal.customer-portal)
• Customer Service with Request Management (com.sn_cs_sm_request)
• Customer Service with Service Management (com.sn_cs_sm)
• Guided Decisions Experience (com.snc.guided_decisions_playbook_experience)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
• Guided Decision - Next Best Action (com.snc.next_best_action)
• Major Issue Management (com.sn_majorissue_mgt)
• Proactive Customer Service Operations with Event Management (com.snc.proactive_cs_itom)
• Skill Determination (com.snc.skill_determination)
• UX ATF Action (com.glide.ux.atf_action)
• Walk-Up for CSM (com.snc.walkup_for_csm)
CSM: Case Management test suite
Test

Description

Release version

CSM: Create Product Case

Create a case for a product.

Madrid

CSM: Assign Case to an Agent Create a case and assign it to
a customer service agent.

Madrid

CSM: Assign Asset on Case

Assign an asset to a case.

Madrid

CSM: Assign Entitlement

Assign an entitlement to a
case.

Madrid

CSM: Escalate an Account

Escalate an account.

Madrid

CSM: Escalate a Case

Escalate a case.

Madrid

CSM: Create Special Handling Create special handling notes
Notes
for a case.

Madrid

CSM: Close a Case

Close a case.

Madrid

CSM: Time Recording

Record the time worked on a
case.

Madrid

CSM: Create CHG from Case

Create a change record from a Madrid
case.

CSM: Create Incident from
Case

Create an incident record from Madrid
a case.

CSM: Create Order Case

Create a case for an order.

Madrid

Note: Requires
Customer Service
Management for Orders.
CSM - Create Order Case as
Customer from CSM Portal

Create an order case as a
customer from the Customer
Service Portal.

Madrid

Note: Requires the
Customer Service Portal.
Also requires that the
test be run as admin.
CSM: Create Problem from
Case

Create a problem record from
a case.

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

CSM: Create Major Case and
its Child Cases

Create a major case and the
associated child cases for
the customer accounts in the
recipient list.

Orlando

Note: Requires Major
Issue Management.
CSM: Agent Creating Request
for Customer

As a customer service
agent, create a request for a
customer.

Orlando

Note: Requires
Customer Service
Request Integration.
CSM: Register New Case Type Register a case type and
verify the record is created.

Orlando

CSM - Create Project for an
Account

Orlando

Project Manager creates
project for an account.

Note: Requires
Customer Project
Management.
CSM - Identify Project Contact Project manager identifies
customers to a project.

Orlando

Note: Requires
Customer Project
Management.
CSM - Create Case from
Project
CSM: Advanced Type Skill
Determination Rule Test

Create a case from a project.

Create an advanced type skill
determination rule.

Orlando
Orlando

Note: Requires Skill
Determination.
CSM - Create Case from
Project Task

Create a case from a project
task.

Orlando

CSM: Create Task from Case

Create a case task from a
case.

Orlando

CSM: Assign Case Task to
Case Task Agent

The customer service agent
creates and assigns a case
task to a case task agent.

Rome

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

CSM: Case Task Agent views
assigned Case Task

Verifies that the case task
agent can view an assigned
case task.

Rome

CSM: Case Task Agent
Completes Assigned Task

The case task agent
completes an assigned case
task.

Rome

CSM-Create a case using
'Create a case (POST)' API

Create a case using 'Create a
case (POST)' API.

Rome

Note: Requires a user
authentication record
assigned to the Basic
authentication field in
step 1 of the ATF.
CSM-Query a case using
'Query a case (GET)' API

Query a case using 'Query a
case (GET)' API.

Rome

Note: Requires a user
authentication record
assigned to the Basic
authentication field in
step 1 of the ATF.
CSM: Address sharing across
Accounts

Implement reusable
addresses for accounts to
support complex customer
operations and business
models.

Washington DC

CSM: Manage Consumer
Profile Locations

Create and manage consumer Washington DC
locations, and map them to
consumer profiles.

CSM: OCS Manager creating
New OSP

Verify that a new Outsourced
Service Provider (OSP) is
created by the OCS internal
manager.

Rome

Note: Requires
Outsourced Customer
Service.
CSM: Case Creation by OCS
Agent

Verify that an Outsourced
Customer Service agent is
able to create a case.

Rome

Note: Requires
Outsourced Customer
Service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

CSM - Create Proactive Case
by NOC Operator

Verify whether a proactive
case is created.

New York

Note: Requires
Proactive Customer
Service Operations with
Event Management.
CSM - Employee creating
case OBO customer

As an employee with
New York
the proxy contact role
(sn_customerservice_proxy_contact),
create a case from the selfservice portal on behalf of a
customer.

Note: Requires the
CSM Extension for Proxy
Contacts.
CSM - Lookup Type Skill
Determination Rule Test

Create a lookup type skill
determination rule.

New York

Note: Requires Skill
Determination.
CSM - Manager creating
request OBO customer from
CSM portal

As a user with the case
manager role, create a case
on behalf of a customer from
the Customer Service Portal.

New York

Note: Requires
Customer Service
Request Integration.
CSM - Simple Type Skill
Determination Rule Test

Create a simple type skill
determination rule.

New York

Note: Requires Skill
Determination.
CSM - Project Manager create Project manager creates
project task and assign to a
project task and assigns to a
customer
customer.

Orlando

Note: Requires
Customer Project
Management.
CSM - Agent Create Cases
from a Project

As a customer service agent,
create a case from a project.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

Note: Requires
Customer Project
Management.
CSM - Agent Create Cases
from a Project task

As a customer service agent,
create a case from a project
task.

Orlando

Note: Requires
Customer Project
Management.
CSM - Agent Create Change
Requests for a project

As a customer service agent,
create a change request for a
project.

Orlando

CSM - Service Contracts
covered under Sold Product

Create sold products and
service contracts and
associate service contracts
to a sold product. Verify the
association between the
active contracts and the sold
product.

Orlando

Note: Requires
Customer Service Install
Base Management.
AWA - Create New Service
Channel

Create a new service channel
in the Advanced Work
Assignment application.

Orlando

Note: Requires
Advanced Work
Assignment for CSM.
CSM-ITOM - Create Child
Cases for Proactive Major
Case

Create a child case for a
proactive major case using
recipient list.

Orlando

Note: Requires
Proactive Customer
Service Operations with
Event Management.
CSM - Create Outage from
Case

Validate if newly created
outage is linked to a case.

Paris

CSM: Create Sold Product on
Household

Create a sold product on a
household and its member.

Quebec

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

Note: Requires
Customer Service Install
Base Management
and Customer Service
Household with Load
demo data enabled.
CSM: View Health Status of
Validates the functionality
Install Base Item from Account of the Refresh Install Base
and Case pages
Health button on the Account
and Case record pages.

Quebec

CSM: Report a knowledge
gap from a case in Agent
Workspace

Verify that a knowledge gap
Rome
related to a case was reported
in Agent Workspace

CSM-Create a case using
'Create a case (POST)' API

Create a case using 'Create a
case (POST)' API.

Rome

Note: Requires a user
authentication record
assigned to the Basic
authentication field in
step 1 of the ATF.
CSM-Query a case using
'Query a case (GET)' API

Query a case using 'Query a
case (GET)' API.

Rome

Note: Requires a user
authentication record
assigned to the Basic
authentication field in
step 1 of the ATF.
CSM: OCS Manager creating
New OSP

Verify that a new Outsourced
Service Provider (OSP) is
created by the OCS internal
manager.

Rome

Note: Requires
Outsourced Customer
Service.
CSM: Case Creation by OCS
Agent

Verify that an Outsourced
Customer Service agent is
able to create a case.

Rome

Note: Requires
Outsourced Customer
Service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
CSM: Case Management test suite (continued)
Test

Description

Release version

CSM: Manage Consumer
Profile Locations

Create and manage consumer Washington DC
locations, and map them to
consumer profiles.

CSM: Address sharing across
Accounts

Implement reusable
addresses for accounts to
support complex customer
operations and business
models.

Washington DC

CSM: Create Case as Location As a location
Contributor from BLSP Portal
contributor,create a case from
the BLSP portal.

Yokohama

CSM: Create a Business
Location And Onboard a
Member To It

Verifies the creation of
a business location and
onboarding a member to it.

Yokohama

CSM: Escalate or de-escalate
account workflow

Escalate or de-escalate
account workflow

Zurich

CSM Configurable Workspace test suite
Test

Description

Release version

CSM Workspace: Case
creation Workflow

Tests the creation of a case
record by a customer service
manager in CSM/FSM
Configurable Workspace.

Xanadu

CSM Workspace: Case follow
up workflow

Tests the requesting of
information from a customer
by a customer service
manager in CSM/FSM
Configurable Workspace.

Xanadu

CSM Workspace: Report
knowledge gap workflow

Tests the creation of a
knowledge feedback task for
a case record by a customer
service manager in CSM/FSM
Configurable Workspace.

Xanadu

CSM Workspace: Case
resolution workflow

Tests the resolution of a
case record by a customer
service manager in CSM/FSM
Configurable Workspace.

Xanadu

CSM Workspace: Create
Incident from Case

Tests the creation of an
incident record from a
case record by a customer
service agent in CSM/FSM
Configurable Workspace.

Xanadu

CSM Workspace: Create
Problem from Case

Tests the creation of a
problem record from a
case record by a customer

Xanadu

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
CSM Configurable Workspace test suite (continued)
Test

Description

Release version

service agent in CSM/FSM
Configurable Workspace.
CSM Workspace: Create
Normal Change from Case

Tests the creation of a change Xanadu
record from a case record
by a customer service agent
in CSM/FSM Configurable
Workspace.

CSM Workspace: Case
creation from All Cases list

Tests the creation of a case
Yokohama
from the All cases list by a
customer service manager
(sn_customerservice_manager)
in CSM/FSM Configurable
Workspace.

CSM Workspace: Case
Creation from My Cases list

Tests the creation of a case
Yokohama
from the My Cases list by a
customer service manager
(sn_customerservice_manager)
in CSM/FSM Configurable
Workspace.

CSM Workspace: Case
Creation from My Open cases
list

Tests the creation of a case
Yokohama
from the My Open list by a
customer service manager
(sn_customerservice_manager)
in CSM/FSM Configurable
Workspace.

CSM Workspace: Interaction
creation from My Interaction
list

Tests the creation of an
Yokohama
interaction record from the
My Interactions list by a
customer service manager
(sn_customerservice_manager)
in CSM/FSM Configurable
Workspace.

CSM: Case Types - Complaint
Test

Description

Release version

Create a Complaint Case

Tests that a user can create a
case that is of type complaint
in the sn_complaint_case
table.

Paris

Escalate a Complaint Case

Tests that a user can
escalate a case that is
of type complaint in the
sn_complaint_case table.

Paris

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
CSM: Case Types - Onboarding
Test

Description

Release version

Create an Onboarding Case

Tests that a user can
create a case that is of
type onboarding in the
sn_onboarding_case table.

Paris

Escalate an Onboarding Case

Tests that a user can
escalate a case that is of
type onboarding in the
sn_onboarding_case table.

Paris

CSM: Operations Dashboard test suite
Test

Description

Release version

awa_admin_operations_dashboard
Verify whether user with role
awa_admin is able to view the
Advanced Work Assignment
menu under Operations
Dashboard and unassigned
interactions and unassigned
task work items modules.

Orlando

awa_manager_operations_dashboard
Verify whether user with
role awa_manager is able
to view the Advanced Work
Assignment menu under
Operations Dashboard and
unassigned interactions and
unassigned task work items
modules.

Orlando

CSM Portal test suite
Test

Description

CSM - Create Product Case as Create a product case as a
Customer from CSM Portal
customer from the Customer
Service Portal.

Release version

Madrid

Note: Requires
Customer Service Portal.
Also requires that the
test be run as admin.
CSM - Create Product Case as Create a product case as a
Partner from CSM Portal
partner from the Customer
Service Portal.

Madrid

Note: Requires
Customer Service Portal.
Also requires that the
test be run as admin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1329


<!-- page 1330 -->
CSM Portal test suite (continued)
Test

Description

Release version

CSM - Search on Homepage

Search for information from
the Customer Service Portal.
The search includes cases,
Knowledge articles, and
Community threads.

New York

CSM - Update Support Profile

Update a contact's profile from New York
the Customer Service Portal.

CSM - Provide requested info
on case

From the Customer Service
New York
Portal, the contact can provide
information for a case that was
requested by the agent.

CSM - Accept Proposed
Solution On Case

Accept a proposed solution
for a case from the Customer
Service Portal.

New York

CSM - Provide Feedback on
Survey

Provide feedback on a survey
after a case is closed from the
Customer Service Portal.

New York

CSM - View All Desktop
Notifications

View all Customer Service
Orlando
Management specific desktop
notifications.

CSM - View Publications on
CSM Portal

View publications on
the Customer Service
Management portal.

Orlando

CSM - Create Contact on CSM Create contacts on
Portal
the Customer Service
Management portal.

Orlando

CSM: Validate Outage widgets Validates various types
Quebec
in CSM Portal
of outages and the
corresponding widgets shown
on the Customer Service
Portal home page and the
Install Base page.
CSM - Create case from Portal Creates a customer
Rome
as Consumer Contributor
case from the portal by a
user with the consumer
contributor user role
(sn_customerservice.consumer_contributor).

Note: Requires
Business Location,
Customer Service
Household, and CSM
Contributor User.
CSM - Create case from Portal Creates a customer case from
as Account Contributor
the portal by a user with the

Rome

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
CSM Portal test suite (continued)
Test

Description

Release version

account contributor user role
(sn_customerservice.account_contributor).

Note: Requires
Business Location,
Customer Service
Household, and CSM
Contributor User.
CSM - Add Related parties on
Case and perform action on
case as Related party

Verify the ability to add related Rome
parties to the case and
perform actions on the case
as related parties through the
CSM Portal.

CSP Portal test suite
Test

Description

Release version

CSP - Create Product Case as
Consumer from CSP Portal

Create a product case as a
consumer from the Consumer
Service Portal.

Madrid

Note: Requires the
Consumer Service
Portal. Also requires that
the test be run as admin.
CSP - Search on Homepage

Search for information from
the Consumer Service Portal.
The search includes cases,
knowledge articles, and
Community threads.

New York

CSP - Update Support Profile

Update a consumer's profile
from the Consumer Service
Portal.

New York

CSP - Register Your Product

Register a product from the
Consumer Service Portal.

New York

CSP - Provide requested info
on case

From the Consumer Service
Portal, the consumer can
provide information for a case
that was requested by the
agent.

New York

CSP - Accept Proposed
Solution On Case

Accept a proposed solution
for a case from the Consumer
Service Portal.

New York

CSP - Provide Feedback on
Survey

Provide feedback on a survey
after a case is closed from the
Consumer Service Portal.

New York

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
CSP Portal test suite (continued)
Test

Description

Release version

CSP - View Publications on
CSP Portal

View publications on
Customer Service portal.

Orlando

CSP - Create Product Case as
an internal unified consumer
from CSP Portal

This test verifies the
functionality of creating a
product case as an internal
unified consumer from the
CSP portal in conjunction
with the Customer Service
and Consumer Service Portal
plugins, using the Customer
Service Management (CSM)
demo data plugin.

Yokohama

CSP - Create Product Case as
an external unified consumer
from CSP Portal

This test verifies the
functionality of creating a
product case as an external
unified consumer from the
CSP portal in conjunction
with the Customer Service
and Consumer Service Portal
plugins, using the Customer
Service Management (CSM)
demo data plugin.

Yokohama

Guided Decision - Next Best Action ATF test suite
Test

Description

Release version

Validate Next Best Action ListGuided Decisions

Validates the list of next best
actions recommended based
on the configured rules.

San Diego

Validate Next Best Action
Ranking- Guided Decisions

Validates the list of next best
actions recommended based
on the configured rules.

San Diego

TC: Targeted Communications test suite
Test

Description

Release version

TC - Create Recipient List

Create a recipient list with the
required parameters. Verify
the new recipient list in the
related list "Recipients".

Orlando

TC - Create Publication

Create a publication. The
publication is published
based on the publication
date and verify if an user in
the recipient list gets the
publication.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


