# Australia Sales Customer Relationship Management — Sales CRM APIs / Lead and opportunity management

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1398–1492 of 1645

Sections: Sales CRM APIs (p1398); Lead and opportunity management (p1399); Configure, price, quote (p1429)

---

<!-- page 1398 -->
◦ Additional Path: {_endpoint}/services/data/v61.0/query/? q=SELECT
+Id,Status,TargetObjectId+FROM+ProcessInstance+WHERE
+TargetObjectId={{sfRecordId}}+ORDER+BY+CreatedDate+DESC
◦ SOQL Query
SELECT Id, Status, TargetObjectId
FROM ProcessInstance
WHERE TargetObjectId-'006bm000002IUI4AAO' -- This is the sf
oppy/transaction object id
ORDER BY CreatedDate DESC

Sales Customer Relationship Management reference
Reference topics provide additional information about the Sales Customer Relationship
Management applications.

Sales Customer Relationship Management REST APIs
Sales Customer Relationship Management (Sales CRM) APIs provide endpoints to create and
manage Sales CRM entities such as pricing, leads, quotes, and orders from external systems.
Sales CRM APIs
REST API

Description

Entitlement
API

The Entitlement API provides endpoints to create and retrieve entitlement
records from an instance.

lead API

The lead API provides endpoints that enable you to create, update, and
query/retrieve marketing leads and their associated lead line items from an
instance.

Order API

The Order API provides endpoints for retrieving and creating orders with
order line items for the Customer Service Management application.
The Product Catalog Search API provides endpoints to search the
product catalog and retrieve products that match supplied search parameters.

Product
Inventory
Open API

The Product Inventory Open API provides endpoints to create and
retrieve product inventories.

Sales
Agreement
API

The Sales Agreement API provides methods for creating a new sales
agreement and retrieving an existing sales agreement of a given sys_id.

Sales CRM
Pricing API

The Sales CRM Pricing API provides endpoints to create, update, and
retrieve pricing records.

Work Order
Management
API

The Work Order Management API provides endpoints to create, update,
and retrieve work orders.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
Related topics
TMF APIs for TMT
Browse APIs by product
API implementation and reference

Lead and opportunity management reference
Reference for lead and opportunity management applications.

Lead Management reference
Reference topics provide additional information about the Lead Management application.
Components installed with Lead Management
Several types of components are installed with activation of the Lead Management plugin,
including tables and user roles.

Roles installed
Role title [name]

Description

Contains roles

Lead writer
A granular role created to give sn_lead_mgmt_core.lead_viewer
[sn_lead_mgmt_core.lead_writer]
write access to Lead and Lead
Line Item.
Lead integrator
Lead integrator have access to
[sn_lead_mgmt_core.lead_integrator]
call the REST APIs of lead.

• sn_crm_touchpoint.touchpoint_writer
• sn_lead_mgmt_core.lead_writer
• sn_meeting_mgmt.meeting_creator

Lead responsibility
Provides granular access
write granular
to lead and related entities
[sn_lead_mgmt_core.lead_responsibility_write_granular]
through the responsibility
framework.

sn_lead_mgmt_core.lead_responsibility_read_g

Lead responsibility
Provides granular readread granular
only access to lead and its
[sn_lead_mgmt_core.lead_responsibility_read_granular]
related entities through the
responsibility framework.

None

Lead agent
Lead agent can perform
[sn_lead_mgmt_core.lead_agent]
CRUD operations on Lead and
related tables.

• sn_customerservice.csm_workspace_user
• sn_lead_mgmt_core.lead_writer
• sn_meeting_mgmt.meeting_creator
• sn_crm_touchpoint.touchpoint_writer

Lead admin
An admin role created to give
[sn_lead_mgmt_core.lead_admin]
create, update, read, and
delete access on lead tables.

• sn_crm_touchpoint.admin
• sn_lead_mgmt_core.lead_agent
• sn_lead_mgmt_core.lead_integrator

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Role title [name]

Description

Contains roles

Lead viewer
A granular role created to give
[sn_lead_mgmt_core.lead_viewer]
read access to Lead and Lead
Line Item.

• sn_csm_ctxrul_mgt.context_variable_viewer
• sn_prd_pm.product_catalog_viewer
• canvas_user
• sn_csm_ctxrul_mgt.rule_matrix_viewer

Tables installed
Table

Description

Lead Needs

Specific requirements or expectations of a
customer.

sn_lead_mgmt_lead_needs
Lead Line Item

Individual product entry within a lead.

sn_lead_mgmt_core_lead_line_item
Lead Task
sn_lead_mgmt_core_lead_task
Lead
sn_lead_mgmt_core_lead

A specific action or activity assigned to
manage or progress a lead, such as followup calls, sending proposals, or scheduling
meetings.
Prospective customers who have expressed
their interest through various channels, such
as website forms, social media, or events.

Lead details form
Field descriptions for editing or reviewing details on the Lead form for Lead Management.
Details fields
Field

Description

Number

Unique, auto-generated identifier for the lead
record. This field is automatically set to the
next available LEAD number.

Lead Group

Group or campaign segment associated with
the lead.

First Name

First name of the lead contact.

Middle Name

Middle name of the lead contact.

Last Name

Last name of the lead contact.

Title

Job title of the lead contact.

Email

Email address of the lead contact.

Business Phone

Primary business phone number of the lead
contact.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Details fields (continued)
Field

Description

Mobile Phone

Mobile phone number of the lead contact.

Owner

Name of the user responsible for managing
the lead.

Company

Name of the company or organization the lead
represents.

Industry

Industry vertical of the lead's organization. The
available options are:
• Manufacturing
• Healthcare
• Technology Services
• Banking
• Bio-Technology
• Telecommunications

Website

Website URL of the lead's organization.

Short Description

Brief summary of the lead's inquiry or intent.

Stage

Current stage of the lead in the sales lifecycle.
The available options are:
• New
• Contacted
• Nurturing
• Qualified
• Disqualified

Lead Type

Category of the lead. The available options
are:
• New Business
• Existing Business

Additional Information fields
Field

Description

Lead Source

Channel or origin through which the lead was acquired. The
available options are:
• Inbound Phone
• Inbound Web
• Partner Referral
• 3rd Party Referral

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
Additional Information fields (continued)
Field

Description

• Employee Referral
• List
• Trade Show
• Pr
• Display Ad
• Billboard
• AI-Suggested
• Other
Lead Score

Numerical score indicating the lead's likelihood to convert.

Lead Rating

Rating that indicates the quality or priority of the lead. The
available options are:
• Cold
• Warm
• Hot
• Super Hot

Closed Date

Date on which the lead was closed.

Account

Account record associated with the lead.

Contact

Contact record associated with the lead.

Consumer

Consumer record associated with the lead.

Address fields
Field

Description

Street

Street address of the lead contact.

City

City of the lead contact's address.

State

State or province of the lead contact's address.

Zip/Postal Code

ZIP or postal code of the lead contact's address.

Country

Country of the lead contact's address.

Customer Preferences fields
Field

Description

Do Not Call

Option to exclude the lead contact from phone outreach.

Do Not Email

Option to exclude the lead contact from email outreach.

Do Not Share

Option to prevent the lead contact's information from being
shared.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
System Information fields
Field

Description

Created By

Name of the user who created the lead record.

Updated By

Name of the user who last updated the lead record.

Created

Date and time when the lead record was created.

Updated

Date and time when the lead record was last updated.

Notes

General notes related to the lead.

Work Notes

Internal notes related to the lead, visible only to agents and
administrators.

Create new lead task form
Field descriptions for editing or reviewing details on the Create New Lead Task form in the Lead
Management and CRM Touchpoints modules.

Field

Description

Number

Systemʼgenerated unique identifier assigned
to each lead task record with the prefix
LDTASK.

Short description

Brief description of the work to be completed
for the lead.

Due date

Date and time by which the lead task has to
complete.

Assigned to

Name of the sales agent to whom this lead
task is assigned.

State

Current status of the lead task. The available
options are:
• Draft
• In Progress
• Completed
• Cancelled
• Closed

Touchpoint

CRM touchpoint associated with the lead
record. This field is automatically populated
when the task is created from a touchpoint
record.

Work notes

Internal notes visible only to team members
with appropriate access.

Related topics
Add lead tasks

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
Create new appointment form
Field descriptions for editing or reviewing details on the Create New Appointment form in the
Lead Management and CRM Touchpoints modules.

Field

Description

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

Related topics
Create appointments for lead tasks

Opportunity Management reference
Reference topics provide additional information about the Opportunity Management application.
Components installed with Opportunity Management
Several types of components are installed with activation of the Opportunity Management
plugin, including user roles and tables.

Roles installed
Role name

Description

sn_opty_mgmt_core.opportunity_viewer
A granular role created to give
read access to Opportunity
and Opportunity Line Item.

Contains roles

• sn_csm_pricing.pricelist_viewer
• sn_prd_pm.product_catalog_viewer
• sn_customerservice.customer_data_viewer

• sn_opty_mgmt_core.opportunity_setup_viewe
sn_opty_mgmt_core.opportunity_responsibility_read_granular
Provides granular read
access to opportunity and its
related entities through the
responsibility framework.
sn_opty_mgmt_core.opportunity_admin
A granular role created to give
CRUD access to Opportunity
tables.

None

• sn_meeting_mgmt.meeting_creator
• sn_nowassist_admin.nsa_admin

• sn_opty_mgmt_core.opportunity_setup_writer
• sn_opty_mgmt_core.opportunity_writer
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Role name

Description

Contains roles

• sn_opty_mgmt_core.opportunity_allocation_w
• sn_crm_touchpoint.admin
sn_opty_mgmt_core.opportunity_integrator
Provides integrationlevel write access to the
opportunity entity.

• sn_meeting_mgmt.meeting_creator
• sn_crm_touchpoint.touchpoint_writer
• sn_opty_mgmt_core.opportunity_writer

sn_opty_mgmt_core.opportunity_responsibility_write_granular
Provides granular access
to opportunity and related
entities through the
responsibility framework.

sn_opty_mgmt_core.opportunity_responsibility_

sn_opty_mgmt_core.opportunity_setup_viewer
Provides read-only access
to the Sales cycle and
Opportunity stage tables.

None

sn_opty_mgmt_core.opportunity_writer
A granular role created to give
write access to Opportunity
and Opportunity Line Item.
sn_opty_mgmt_core.opportunity_contributor
Provides limited permissions
to FSM/CSM agents to
generate opportunities and
view their progress across the
sales life cycle.

• sn_opty_mgmt_core.opportunity_viewer
• sn_quote_mgmt_core.quote_writer

• sn_prd_pm.product_catalog_viewer

• sn_opty_mgmt_core.opportunity_setup_viewe
• sn_csm_pricing.pricelist_viewer
• sn_customerservice.customer_data_viewer

sn_opty_mgmt_core.opportunity_setup_writer
Provides access to read,
create, and write the Sales
cycle and Opportunity stage
tables.

sn_opty_mgmt_core.opportunity_setup_viewer

sn_opty_mgmt_core.opportunity_allocation_viewer
Provides granular access to
view opportunity allocations.

None

sn_opty_mgmt_core.opportunity_allocation_writer
Provides granular access
to manage opportunity
allocations.

sn_opty_mgmt_core.opportunity_allocation_vie

sn_opty_mgmt_core.opportunity_allocation_responsibility_read_granular
Provides granular read access None
to opportunity allocations
through the responsibility
framework.

sn_opty_mgmt_core.opportunity_allocation_responsibility_write_granular
Provides granular write access sn_opty_mgmt_core.opportunity_allocation_res
to opportunity allocations
through the responsibility
framework.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Tables installed
Table

Description

Opportunity

Potential sales deal with a customer account.

sn_opty_mgmt_core_opportunity
Opportunity Task
sn_opty_mgmt_core_opportunity_task
Opportunity Line Item
sn_opty_mgmt_core_opportunity_line_item

Tasks associated with an opportunity, such as
followʼups, reviews, or sales actions required
to progress the opportunity through its stages.
Individual products or services included in an
opportunity.

Opportunity Line Characteristic

Additional attributes or characteristics
associated with an opportunity line item, such
sn_opty_mgmt_core_opportunity_line_characteristic
as productʼspecific options, classifications, or
dimensions required for pricing, reporting, or
allocation logic.
Opportunity Needs
sn_opty_mgmt_opportunity_needs
Opportunity Competitor
sn_opty_mgmt_core_opportunity_competitor

Customerʼexpressed business needs or
requirements linked to an opportunity.
Competitors associated with an opportunity,
enabling sales teams to record competitive
presence, assess deal risk, and analyze win/
loss patterns across opportunities.

Opportunity Team Member

Users involved in working on an opportunity,
along with their roles and responsibilities.
sn_opty_mgmt_core_opportunity_team_member
Opportunity Associated Contact

Contacts related to an opportunity, such as
decisionʼmakers, influencers, or stakeholders
sn_opty_mgmt_core_opportunity_associated_contact
at the customer account.
Opportunity Stage
sn_opty_mgmt_core_opportunity_stage
Sales Cycle Type
sn_opty_mgmt_core_sales_cycle_type
Sales Cycle Stage
sn_opty_mgmt_core_sales_cycle_stage

The current phase of an opportunity within a
sales cycle, such as Qualify, Develop, Propose,
or Close.
A category of sales motion for opportunities,
such as New Customer, Renewal, or Upsell.
A stage configuration within a specific sales
cycle type.

Opportunity Related Party

Nonʼuser entities related to an opportunity,
such as partners, resellers, or external
sn_opty_mgmt_core_opportunity_related_party organizations.
Opportunity Related Channel Partner

Channel partners associated with an
opportunity, such as distributors or resellers.
sn_bus_org_opptym_related_business_organization

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Table

Description

Opportunity Allocation

Transactional allocation records that represent
how opportunity value is distributed across
participants, such as team members,
territories, or product groupings.

sn_opty_mgmt_core_opportunity_allocation
Opportunity Allocation Type

Allocation configuration metadata, such
as what entity is allocated (opportunity or
sn_opty_mgmt_core_opportunity_allocation_typeline item), which numeric field is used, and
whether allocations must total 100%.
Opportunity Allocation Dimension

Allocation values that are grouped or
categorized, such as by territory or product
sn_opty_mgmt_core_opportunity_allocation_dimension
family.
Related topics
Install Opportunity Management
Opportunity details form
Field descriptions for editing or reviewing details on the Opportunity form for Opportunity
Management.
Details
Field

Description

Number

The system-generated number of the
opportunity starting with the prefix OPTY.

Primary Quote

A Primary Quote within an opportunity.

Account

Company name of the customer account.

Industry

Name of the industry. For example,
Telecommunications or Manufacturing or
Healthcare or Banking.

Contact

Name of the individual in the company that
you interact with.

Estimated Deal Size

Amount of potential opportunity.

Deal type

Indicates the type of deal associated with the
opportunity:
• Direct: The seller engages directly with
the customer, with no intermediary partner
involved.
• Indirect: The seller engages the customer
through an intermediary, such as a reseller,
service provider, or distributor.

Probability %

Estimated percentage of the sales
opportunity's success.

Route to market

Identifies the exact sales channel used to
execute the deal:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
Details (continued)
Field

Description

• Direct
• Reseller
• Service Provider
• Distributor
Amount

Total opportunity amount.

Note: If an opportunity doesn’t have
any line items, then the amount picks up
the same value as the Estimated Deal
Size. When opportunity line items are
added, the amount value changes as the
value is picked up from Total TCV.
Sales Cycle Type

Type of sales, for example NEWCUST, RENEW,
or UPSELL.

Weighted Amount

Total revenue adjusted by the probability
percentage.
The Weighted Amount for an opportunity
is calculated by multiplying the Probability
% with the Amount. For example, if the
probability percentage for an opportunity is 10
(0.1%) and the amount is 100$, the weighted
amount is 0.1 X 100 = 10.00.

Stage

Phases of the opportunity. For example,
Qualify, Develop Propose, Negotiate, ClosedWon, or Closed-Lost.

Opportunity Group

Logical grouping of related opportunities.

Forecast Category

Forecast classification of the opportunity.

Territory

Sales territory associated with the opportunity.
Used to assign responsibility, control access,
and support reporting and forecasting.

Owner

Sales agent or sales representative assigned
to this opportunity.

Channel partner

An external organization involved in selling,
influencing, or supporting an opportunity as
part of an indirect sales.

Short Description

Brief description of the opportunity.

Description

Description of the opportunity.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
Pricing
Field

Description

Currency

Currency of the price list, for example USD for
US dollars.

Price List

Default price list for the opportunity.

Term (months)

Subscription period of the opportunity line
item.
The default term is 12 months.

Total one-Time Price

Total price of all one-time products or services
in the opportunity.

Total MRR

Total monthly recurring revenue (MRR) amount
for all recurring products and services.

Total ARR

Total annual recurring revenue (ARR) amount
for all recurring products and services each
year.

Total ACV

Total annual contract value (ACV), which is the
yearly amount revenue for all products and
services from a customer contract.

Totals
Field

Description

Total Renewal Amount

The sum of all renewal amounts associated
with the opportunity. Represents revenue from
renewing existing contracts.

Total Upsell/Downsell Amount

The net sum of all upsell and downsell
amounts on the opportunity. Represents
incremental increase or decrease in contract
value compared to the existing contract.

Total TCV

Total contract value (TCV), which is the total
amount of revenue from a customer contract
expected over the lifetime of the contract.

Total Net New Amount

The cumulative net new price associated with
the opportunity, excluding renewal portions of
existing contracts

Total OneʼTime Price

The total price of all oneʼtime (nonʼrecurring)
products or services included in the
opportunity.

Win/Loss Outcome
Field

Description

Win reason

A predefined choice that captures the
primary reason an opportunity was won. Used
to record why the customer selected the

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
Win/Loss Outcome (continued)
Field

Description

solution and to support win/loss analysis and
reporting. The choices are:
• Brand and reputation
• GenAI capabilities
• Ease of implementation
• Security, Risk and compliance
• Ability to customize
• Product features and functionality
• Upsell/cross sell merged opportunity
• Partner support
• Executive relationships
• Others - please specify
• I don't know
• Consolidation
Loss reason

A predefined choice that captures the primary
reason an opportunity was lost or resulted in
no decision. Used to analyze deal losses and
identify patterns across competitors, products,
or pricing. The choices are:
• Customer not ready
• Lack of GenAI capabilities
• Security, Risk and compliance did not fit
customer's needs
• Inability to customize
• Product features and functionality did not fit
customer's needs
• No longer funded
• Price too high for value gained
• Product has too many issues
• Lack of partner support
• Account went silent
• Contract consolidated
• Others - please specifyI don't know

Lost to

Identifies the competitor to whom the
opportunity was lost. The list is populated
from competitors already associated with the
opportunity. Used for competitive analysis and
reporting.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
Win/Loss Outcome (continued)
Field

Description

Outcome notes

Freeʼtext notes used to capture additional
context or supporting details for the win or
loss outcome, beyond the selected reason.
Remains visible for both won and lost
opportunities.

Additional Information
Field

Description

Source

Identifies the source from where the
opportunity originated. The options are:
• Lead: Indicates that the opportunity
originated from a lead record.
• Direct: Indicates that the opportunity was
created directly by a sales user without an
originating lead, for example through direct
customer engagement or outbound sales
activity.
• Partner: Indicates that the opportunity
originated from a partner, such as a reseller,
distributor, or alliance partner who identified
or referred the deal.
• Other: Indicates that the opportunity
originated from a source that does not fall
into the standard Lead, Direct, or Partner
categories. Used when the source cannot be
clearly classified.

Lead

The lead record associated with the
opportunity, indicating the originating lead
from which the opportunity was created.

Score

A systemʼderived or userʼassigned value
used to indicate the relative quality or priority
of the opportunity.

Rating

A qualitative assessment of the opportunity,
typically used to classify opportunity
attractiveness or health. The classifications
are:
• Cold: Indicates low engagement or low
likelihood of progression. The opportunity
shows limited momentum, minimal customer
activity, or weak buying signals.
• Warm: Indicates moderate engagement
and emerging buying interest. The
opportunity is progressing, but key signals
or commitments are still developing.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
Additional Information (continued)
Field

Description

• Hot: Indicates strong engagement and a
high level of buying intent. The opportunity
shows clear momentum with positive signals
toward closure.
• Super Hot: Indicates very strong
engagement and an imminent likelihood
of closure. The opportunity demonstrates
sustained momentum, high confidence, and
near‑term action.
Contract start date

The date on which the customer contract
associated with the opportunity begins.

Estimated Closed Date

The expected date on which the opportunity is
projected to close. Used for pipeline planning
and forecasting.

Actual Closed Date

The date on which the opportunity was
actually closed, either as won or lost.

Consolidated opportunity

Indicates that the opportunity is part of an
account or contract consolidation, where
multiple source opportunities are merged into
a single target opportunity for execution and
reporting.

Contract end date

The date on which the customer contract
associated with the opportunity ends.

Customer Preferences

The customer's preferred mode of
communication:
• Do Not Call
• Do Not Email
• Do not Share

System Information
Field

Description

Opened By

Identifies the user who initially opened or
created the opportunity record in the system.

Created

Displays the date and time when the
opportunity record was created in the system.
This value is systemʼgenerated and cannot
be edited.

Work Notes

Internal notes used to capture additional
information, updates, or context related to
the opportunity. Work notes are intended for
internal use and are not visible to customers.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Create new appointment form
Field descriptions for editing or reviewing details on the Create New Appointment form in the
CRM Touchpoints and Opportunity Management modules.
Create New Appointment form fields
Field

Description

From

Email ID of the user sending or organizing the appointment. This field is
automatically set to the logged-in user.

To

Email ID of the recipient or attendee of the appointment.

Activity state

Read-only field displaying the current state of the appointment activity.
Available options are:
• Ready (default)
• Sent
• New
• Completed
• Cancelled
• Pending

Start time

The date and time the appointment begins.

End time

The date and time the appointment ends.

Reminder
(minutes)

How many minutes before the appointment start time a reminder notification is
sent. The available options are:
• None
• 15 (default)
• 30
• 60
• 120

Subject

A brief description of the purpose of the appointment.

Location

Optional physical locations or conference rooms where the appointment takes
place.

Message

Additional details or notes about the appointment. This field supports rich text
formatting.

Related topics
Create an appointment from Opportunity Management
Schedule an appointment from a touchpoint
Create new opportunity task form
Field descriptions for editing or reviewing details on the Create New Opportunity Task form in
CRM Touchpoints and Opportunity Management modules.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
Field

Description

Number

System-generated unique identifier for the opportunity task record starting with
the prefix OPTASK.

Opportunity Opportunity record associated with the task.
Due date

Date and time by which the task should be completed.

State

Current state of the opportunity task. The available options are:
• Draft (default)
• In Progress
• Completed
• Cancelled
• Closed

Assigned to User responsible for completing the task.
Touchpoint

CRM touchpoint associated with the opportunity record. This field is
automatically populated when the task is created from a touchpoint record.

Short
description

Brief summary of the task.

Work notes
(Private)

Internal notes visible only to team members with appropriate access.

Related topics
Create a related task from a touchpoint

Customer Engagement Sequences reference
Reference topics provide additional information about the Customer Engagement Sequences
application.
Components installed with Customer Engagement Sequences
Several types of components are installed with activation of the Customer Engagement
Sequences plugin, including tables and user roles.

Roles installed
The following roles are installed if you're using Customer Engagement Sequences version 1.0.0.

Role title [name]

Description Contains roles

Sequence viewer

Views
sn_crm_sequence.sn_crm_sequence_
sequencerelated
records.

[sn_crm_sequence.viewer]

Sequence task read granular

Granular
None
role to
[sn_crm_sequence.sn_crm_sequence_task_read_granular] grant read
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
Role title [name]

Description Contains roles

access
to the
sequence
task
records.
The following roles are installed if you're using Customer Engagement Sequences version 2.0.0:

Role title [name]

Sequence admin
[sn_crm_sequence.admin]

Sequence writer
[sn_crm_sequence.writer]

Sequence executor
[sn_crm_sequence.executor]

Sequence reader
[sn_crm_sequence.reader]
Sequence task read granular

Description

Granular
admin role
grants full
administrative
access to all
sequence
records and
their related
data.
Creates
sequence
records, and
views related
records such
as sequence
tasks and
sequence
steps.
Views
sequence
and
sequence
task
records, and
completes
activities
related to the
sequence
steps.
Views
sequence
records.

Granular role
to grant read
[sn_crm_sequence.sn_crm_sequence_task_read_granular] access to the
sequence
task records.

Contains roles

• pd_cancel
• pd_content_author
• sn_crm_sequence.writer

• playbook.write
• sn_crm_sequence.executor

• sn_crm_sequence.reader

• sn_crm_sequence.sn_crm_seque

playbook.designer_access

None

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


<!-- page 1416 -->
Tables installed
Table

Description

Customer Engagement
Sequence Task

Stores the sequence task records that are generated when a
sequence is triggered.

[sn_crm_sequence_task]
The Customer Engagement Sequence Task [sn_crm_sequence_task] table extends the Task
[task] table.
Related topics
Install Customer Engagement Sequences
Using Customer Engagement Sequences
My sequence task list view
Description of the details displayed on the My sequence task list view.
My Sequence Task list view
Column

Description

Number

ID of the sequence task record.

Sequence entity record

Sales entity record that triggered the sequence. For example, lead.

Sequence

Sequence that created the sequence task record.

Description

Description of the sequence.

State

Current state of the sequence task. The available options are:
• Work in progress
• Completed

Priority

Priority of the sequence task.

Due date

Date by which the sequence task must be completed.

Added at

Timestamp when the sequence task was created.

Automation form fields
The Automation form enables you to configure properties and pull data from referenced tables
for an automated call attempt.
Dot-walking enables you to access columns from referenced tables so you can pull data beyond
the current record into your configuration. For more information, see Dot-walking examples .

Field

Description

Short
description

The parent table field containing a value that you want to use as a short
description on the call task.

Description

Optional description about the schedule call activity.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
Field

Description

Phone
number

The parent table field containing the phone number.

Sequence
task

Sequence task associated with the call task. This value should be 1.1 - Start
sequence > Sequence task record.

Assigned to

Agent assigned to the sequence task.

Priority

Priority of the call task.

Reason for
call

Purpose of calling the prospective customer.

State

The state of the call task. The available options include:
• Open
• Work in Progress
• Closed Complete
• Closed Abandoned
• Cancelled

Components installed with Buying Group
Several types of components are installed with activation of the Buying Group[var.buying-group]
plugin, including user roles and tables.

Roles installed
Role name

Description

Contains roles

sn_buying_group.bg_viewer

Provides read access to
buying groups and buying
group members.

None

sn_buying_group.bg_writer

Provides write access to
buying groups and buying
group members, including the
ability to create, update, and
delete records.

sn_buying_group.bg_viewer

Tables installed
Table

Description

Buying Group

A stakeholder committee associated with a customer
account and product offering family, representing all
individuals involved in a purchase decision.

[sn_buying_group_buying_group]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
Table

Description

Buying Group Member

A contact or lead associated with a buying group,
along with their role and engagement details within the
purchasing committee.

[sn_buying_group_member]

Buying Group Stage
[sn_buying_group_stage]

Configuration records that define the lifecycle stages of
a buying group, such as Identified, Targeted, Qualified,
In-Sales Motion, and Closed.

Opportunity Buying Group

Association records that link buying groups to
opportunities, enabling sellers to connect a purchasing
[sn_buying_group_opportunity_buying_group]
committee to one or more active deals.

Components installed with Sales Territory Management​
Several types of components are installed with activation of the Sales Territory Management​
plugin, including user roles.

Roles installed
Role title [name]

Description

Role for
overriding
territory
[sn_sales_territory.sales_territory_override_user]
associated
on Lead,
Opportunity,
Account, or
Consumer.
Sales Territory Override

Role for viewing
sales territory
levels, territory
[sn_sales_territory.sales_territory_viewer]
models,
territories, and
sales data.
Sales Territory Viewer

Role for creating
and managing
sales territory
[sn_sales_territory.sales_territory_admin]
levels, territory
models, and
territories.
Sales Territory admin

Contains roles

None

• sn_tp.territory_read
• sn_sales_territory.sales_territory_basic

• sn_lead_mgmt_core.lead_viewer
• sn_quote_mgmt_core.quote_viewer
• sn_tp.territory_admin
• sn_opty_mgmt_core.opportunity_viewer
• sn_tmt_core.inbound_queue_read
• sn_customerservice.customer_data_viewer
• sn_sales_territory.sales_territory_basic
• sn_sales_territory.sales_territory_override_user

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
Role title [name]

Description

Role for
managing
resources of the
[sn_sales_territory.sales_territory_manager]
assigned territory
and its child
territories.
Sales Territory Manager

Granular role
to access sales
territory data.
[sn_sales_territory.sales_territory_basic]
Sales Territory Basic

Role for viewing
the sales territory
associated
[sn_sales_territory.sales_territory_member]
on the CRM
entities like Lead,
Opportunity,
Account, or
Consumer.
Sales Territory Member

Contains roles

• sn_sales_territory.sales_territory_basic
• sn_tp.territory_resource_manager

None

• sn_tp.territory_member
• sn_crm_customer_access_management_user
• sn_sales_territory.sales_territory_basic

Activity Management reference
Reference topics provide additional information about the Activity Management application.
Components installed with CRM Touchpoints
Several types of components are installed with activation of the CRM Touchpoints plugin,
including tables and user roles.

Roles installed
Role title [name]

CRM touchpoint admin
[sn_crm_touchpoint.admin]

CRM touchpoint writer
[sn_crm_touchpoint.touchpoint_writer]

Description

Allows users
with write
permission
on the
associated
entity to
create, read,
update, and
delete CRM
touchpoint
records.
Allows users
with write
permission
on the
associated
entity to
create and
update CRM
touchpoint
records.

Contains roles

sn_crm_touchpoint.touchpoint_writer

sn_crm_touchpoint.touchpoint_reader

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
Role title [name]

Description

CRM touchpoint reader

Allows users
with read
[sn_crm_touchpoint.touchpoint_reader] permission
on the
associated
entity to
view CRM
touchpoint
records.

Contains roles

None

Tables installed
Table

Description

CRM Touchpoint

Stores touchpoint records that track customer engagement
activities across the sales and service life cycle.

[sn_crm_touchpoint_touchpoint]

The CRM Touchpoint [sn_crm_touchpoint_touchpoint] table extends the Case [case] table.
Create new CRM touchpoint form
Field descriptions for the Create New CRM Touchpoint form.

Field

Description

Number

System-generated unique identifier for the touchpoint record starting with the
prefix CRMTPT.

Title

Descriptive name for the touchpoint. For example, Product demo session.

Type

Type of interaction the touchpoint represents. The available options are:
• None (default)
• Discovery
• Demo
• Customer business review
• Qualification
• Solution review
• Proposal review
• Commercials
• Technical win
• Account check-in
• Buying group check-in
• Executive alignment
• Renewal discussion
• Adoption review

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
Field

Description

• Business value assessment
• Partner enablement
• Sequence outreach
• Other
Category

Category that classifies the type of touchpoint. The available options are:
• None (default)
• Pre-Sales
• Sales
• Post-Sales
• Partner

Associated The table name of the CRM entity linked to the touchpoint, such as Opportunity
entity
[sn_opty_mgmt_core_opportunity].
Associated Record from the selected associated entity that is linked to the touchpoint, such
record
as an opportunity record. The available options are based on the value set in the
Associated entity field.
Primary
channel

Primary communication channel used for the touchpoint. The available options
are:
• None (default)
• Email
• Call
• Meeting
• In-Person
• Social

State

Current state of the touchpoint. The available options are:
• Open (default)
• In Progress
• Complete
• Canceled

Priority

Priority level of the touchpoint. The available options are:
• Low
• Medium (default)
• High

Account

This field is automatically set to the account of the Associated entity.

Contact

This field is automatically set to the contact associated with the Account. You can
select a contact from the drop-down list if the Associated entity is set to Account.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
Field

Description

Due date

Date and time by which the touchpoint activity should be completed.

Owner

User responsible for the touchpoint. This field is automatically set to the logged-in
user.

Description Optional additional details about the touchpoint.
Notes
(Private)

Internal notes visible only to the touchpoint owner and team members with
appropriate access.

Note: The Account and Contact fields become read-only after you save the CRM
Touchpoints.
Related topics
Create a CRM touchpoint
Create new meeting form
Field descriptions for editing or reviewing details on the Create New Meeting form for CRM
Touchpoints.
Field availability depends on the selected State and whether the Virtual meeting option is
selected.
• When State is set to Scheduled, the following fields become available: Invitees, Video
software, Cadence, Location, Virtual meeting, and Meeting link.
• When State is set to Completed or Canceled, the following fields become read-only: Meeting
type, Video software, Cadence, Location, Virtual meeting, and Meeting link.
• When State is set to Scheduled and Virtual meeting is unselected, Video software and Meeting
link are unavailable.

Field

Description

Number

System-generated unique identifier for the meeting record, starting with the prefix
CCMTG.

Source

This field is automatically set to the CRM touchpoint from which the meeting was
created.

State

Current state of the meeting record. The available options are:
• Draft
• Scheduled
• Completed
• Canceled

Meeting
type

Type of meeting. The available options are:
• Ad-hoc
• Weekly Status
• QBR
• Renewal

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
Field

Description

Video
software

Video conferencing application used for the meeting.

Cadence Frequency of the meeting. The available options are:
• Daily
• Weekly
• Biweekly
• Monthly
• Quarterly
Locations Optional physical locations or conference rooms where the meeting takes place.
Virtual
meeting

Option to indicate that the meeting is virtual rather than occurring in a physical
location.

Meeting
subject

Title or topic of the meeting.

Start date Date and time the meeting is scheduled to begin.
& time
End date
& time

Date and time the meeting is scheduled to end.

Duration

Length of the meeting expressed in days, hours, minutes, and seconds.
Automatically calculated based on the start and end date and time values when you
save the meeting.

Invitees

People invited to the meeting.

Repeat
until

End date for the recurring meeting series. This field is available only when a value is
set in the Cadence field.

Meeting
link

URL that enables participants to join a virtual video or audio meeting.

Agenda

Meeting agenda shared with the participants when the invite is sent. This field
supports rich text formatting.

Customer Notes or updates to share with the participants in an email. This field supports rich
notes
text formatting.
Internal
notes

Post-meeting observations and follow-up actions for internal teams. This field
supports rich text formatting.

Related topics
Schedule a meeting from a touchpoint
Create new callback form
Field descriptions for the Create New Callback form for CRM Touchpoints.

Field

Description

Number

System-generated unique identifier for the callback record starting with prefix
CAL.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Field

Description

Short
description

Brief summary of the purpose of the call.

Reason for the
call

Reason or context for the callback. The available options are:
• None (default)
• Product Issue
• Order Issue
• Billing Issue
• Customer Survey
• Other issue
• Sales Discovery
• Product Feedback
• Customer Relationship Building

Callback
context

This field is automatically set to the CRM touchpoint from which the callback
was created.

Priority

Priority level of the callback. The available options are:
• None (default)
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Assigned to

Agent responsible for making the call.

Due date

Date and time by which the call should be completed.

Callback
number

Phone number to call.

Outcome

Result of the call, recorded after the callback is completed. The available
options are:
• None (default)
• Resolved
• Timeout
• Max attempts exceeded
• No show
• Cancelled by agent
• Technical issue
• Picked up
• Interested
• Left Voicemail

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
Field

Description

• Rescheduled
• Other
State

Current state of the callback record. The available options are:
• Open
• Work in Progress
• Closed Complete
• Closed Abandoned
• Cancelled

Description

Optional additional details about the callback.

Work notes

Internal notes about the callback, visible only to team members.

Related topics
Schedule a call from a touchpoint
Components installed with the CRM Outlook Add-in
User roles are installed with activation of the CRM Outlook Add-in plugin.

Roles installed
Role title [name]

Description

Granular
administrative
permission
[sn_crm_outlook.crm_outlook_admin]
for
configuring
and
managing
data related
to the CRM
Outlook Addin.
CRM Outlook Add-in admin

CRM Outlook Add-in user
[sn_crm_outlook.crm_outlook_user]

Associates
emails to
existing or
new CRM
entities
using the
ServiceNow
CRM for
Outlook addin.

Contains roles

• ais_admin
• sn_crm_outlook.crm_outlook_user
• sn_nb_action.next_best_action_author
• sn_outlook_addin.outlook_addin_setup

• workspace_user
• sn_nb_action.next_best_action_user

Lead form in the ServiceNow CRM for Outlook add-in
Field descriptions for creating or viewing a lead record from the ServiceNow CRM for Outlook
add-in.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


<!-- page 1426 -->
Field

Description

Number

System-generated unique identifier for the lead record starting with the prefix
LEAD.

First Name

First name of the lead.

Last Name

Last name of the lead.

Email

Email address of the lead pre-populated from the From field of the email header.

Mobile
Phone

Mobile phone number of the lead.

Business
Phone

Business phone number of the lead.

Account

Account associated with the lead.

Title

Job title of the lead.

Company

Company name of the lead.

Lead Score

Numeric score indicating the lead's potential value or likelihood of being
converted into an opportunity.

Stage

Current stage of the lead in the sales process. The available options are:
• New (default)
• Contacted
• Nurturing
• Qualified
• Disqualified

Related topics
Associate an email with an existing CRM record
Account form in the ServiceNow CRM for Outlook add-in
Field descriptions for viewing or editing an account record from the ServiceNow CRM for Outlook
add-in.

Field

Description

Name

Name of the account or company.

Website

Company website URL.

Number

System-generated unique identifier for the account record starting with the
prefix ACCT.

Phone

Primary phone number for the account.

Primary
Contact

Main contact person for the account.

Street

Street address of the account.

Parent
Account

Parent account if this account is a subsidiary.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
Field

Description

City

City where the account is located.

State /
Province

State or province where the account is located.

Zip / Postal
code

Postal or ZIP code for the account address.

Country

Country where the account is located.

Related topics
Associate an email with an existing CRM record
Contact form in the ServiceNow CRM for Outlook add-in
Field descriptions for creating a contact record from the ServiceNow CRM for Outlook add-in.

Field

Description

First name

First name of the contact.

Last name

Last name of the contact.

Email

Email address of the contact pre-populated from the From field of the email
header.

Business
phone

Business phone number of the contact.

Mobile phone

Mobile phone number of the contact.

Account

Account associated with the contact.

Title

Job title of the contact.

Time zone

Time zone of the contact. This field is set to the system setting by default.

Language

Preferred language of the contact. This field is set to the system setting by
default.

Notification

Option to enable notifications for this contact.

Related topics
Associate an email with an existing CRM record
Opportunity form in the ServiceNow CRM for Outlook add-in
Field descriptions for viewing or editing an opportunity record from the ServiceNow CRM for
Outlook add-in.

Field

Description

Number

System-generated unique identifier for the opportunity record starting with
the prefix OPTY.

Short
Description

Brief summary of the opportunity.

Sales Cycle
Type

Type of sales cycle for this opportunity. The available options are:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
Field

Description

• NEWCUST
• RENEW
• UPSELL
Industry

Industry associated with the opportunity. The available options are:
• Manufacturing
• Healthcare
• Technology Services
• Banking
• Bio-Technology
• Telecommunications

Account

Account associated with the opportunity. You can use the search icon to find
an existing account.

Stage

Current stage of the opportunity in the sales pipeline. The available options
are:
• Qualify
• Develop
• Propose
• Negotiate
• Closed - Won
• Closed - Lost

Estimated Deal Estimated monetary value of the opportunity. Includes currency selection.
Size
Owner

Sales representative responsible for the opportunity.

Opportunity
Group

Group or team associated with managing the opportunity.

Probability %

Likelihood of closing the opportunity, expressed as a percentage.

Description

Optional description of the opportunity.

Related topics
Associate an email with an existing CRM record
Staged Email table
Field descriptions for viewing email records linked to CRM entities in the Staged Email
[sys_email_staging] table.

Field

Description

Receive
type

Processing status of the email, such as New.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
Field

Description

Target

CRM record the email is linked to, displayed as record type and number. For
example, Lead: LEAD0000001.

User

Email address of the user who sent the email.

User ID

User ID of the user associated with the email, if one exists.

UID

Unique identifier for the email message.

Importance Priority level of the email if specified by the sender.
Deleted

Indicates whether the email has been marked as deleted.

Target
table

Database table of the linked CRM record, such as Lead
[sn_lead_mgmt_core_lead].

Reply to

Email address specified for replies if different from the sender.

Recipients

Email addresses of all recipients, including the To and CC fields.

Subject

Subject line of the email.

Headers

Any headers embedded in the email, such as routing details, authentication
results, and server timestamps.

Content
type

The MIME (Multipurpose Internet Mail Extension) media type of the email
content stored in this record. This value indicates how the email body should
be interpreted and rendered by email clients, including the content format and
character encoding. For example, text/html; charset=utf-8.

Body

HTML-formatted content of the email.

Body text

Plain text version of the email content.

Related topics
Track emails linked from Microsoft Outlook

Configure, price, quote reference
Reference for configure, price, and quote applications.

Advanced Approval Management reference
Reference topics provide additional information about Advanced Approval Management.
Components installed with Advanced Approval Management
Several types of components are installed with activation of the Advanced Approval
Management plugin, including tables, scheduled jobs, and user roles.

Roles installed
Role title [name]

Description

Contains roles

Approval rule admin

Manages
all aspects
of approval
workflows.
Creates,
updates,

sn_adv_appr_mgmt.approval_rule_writer

[sn_adv_appr_mgmt.approval_rule_admin]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
Role title [name]

Description

Contains roles

and deletes
approval
configurations,
chains,
approval
trigger
conditions,
approval rules,
and approval
users and
groups.
Approval rule writer
[sn_adv_appr_mgmt.approval_rule_writer]

Approval rule viewer
[sn_adv_appr_mgmt.approval_rule_viewer]

Creates,
sn_adv_appr_mgmt.approval_rule_viewer
updates,
and views
approval
configurations,
approval
chains,
approval
trigger
conditions,
approval
rules, and
approval users
and groups.
An approval
rule writer
can't delete
approvalrelated items.
Views
None
approval
configurations,
approval
chains,
approval
trigger
conditions,
approval rules,
and approval
users and
groups.

Approval request approver

Views
approval steps
[sn_adv_appr_mgmt.approval_request_approver] and approves
approval
requests for
which they are
an approver.
Approval request writer
[sn_adv_appr_mgmt.approval_request_writer]

Creates
and views
approval
requests.

• sn_adv_appr_mgmt.approval_request_vie
• approver_user (if using My Approvals)

[sn_adv_appr_mgmt.approval_request_view

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Role title [name]

Description

Approval request submitter

Contains roles

Submit only
requests for
[sn_adv_appr_mgmt.approval_request_submitter] approval.
Requesters
with this role
can submit
approval
requests but
can't change
or recall the
request, nor
view the
approval
workflow
interface.

[sn_adv_appr_mgmt.approval_rule_viewer]

Approval request viewer

sn_adv_appr_mgmt.approval_rule_viewer

[sn_adv_appr_mgmt.approval_request_viewer]

Views
approval
requests.

Scheduled jobs installed
Scheduled job

Approval Reminder Daily
Processor

Description

Sends reminders to approvers to accept or reject an approval
request.

Tables installed
Table

Description

Approval Configurations

Details of an approval workflow entity, for
example quotes that need approvals.

[sn_adv_appr_mgmt_approval_configuration]
Approval Trigger Conditions

Conditions that trigger one or more approval
requests. Conditions map to one or more
[sn_adv_appr_mgmt_approval_trigger_condition] approval rules.
Approval Rules
[sn_adv_appr_mgmt_approval_rule]

One or more approval rules associated to
an approval trigger condition. Rules define
steps in an approval process. A rule can
have:
• Multiple users or groups
• Dynamic approvers: Approvers
determined at runtime from the approval
request, based on approval rules that
reference fields in the approval record or
custom logic.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
Table

Description

Approval Chains
[sn_adv_appr_mgmt_approval_chain]

A group of approval rules that run in a
specified order sequentially. A chain can run
one or more rules in sequence. Chains can
run in parallel or sequentially.

Approval Users

A list of users who can approve requests.

[sn_adv_appr_mgmt_approval_user]
Approval Groups

A list of groups that can approve requests.

[sn_adv_appr_mgmt_approval_group]
Approval Reminders
[sn_adv_appr_mgmt_approval_reminder]
Approval Rule Reminders
[sn_adv_appr_mgmt_approval_rule_reminder]
Approval Requests
[sn_adv_appr_mgmt_approval_request]
Approval Steps
[sn_adv_appr_mgmt_approval_step]

A list of reminder durations for an approval
workflow entity.
A list of reminder durations for approval
rules.
The approval request records created when
an approval request is submitted.
The approval step records created for an
approval request. The records contain
the relevant approval rules, conditions,
and chain details defined for an approval
configuration.
The Approval Steps table is extended from
the Task [task] table.

Approval Configuration form
Field descriptions for the Approval Configuration form in Advanced Approval Management.
Approval Configuration form
Field

Description

Name

Name of the configuration for a Sales
Customer Relationship Management entity, for
example Quote.

Entity table

Sales Customer Relationship Management
Entity for the approval configuration.
For example, if you're creating an approval
configuration for Quote Management, select
the Quote [sn_quote_mgmt_core_quote] table.

Allow escalations

Option that turns on escalations for approvals.
If you select this option, you must also
define escalation details in the appropriate
approval rules, including the escalation
assignee, length of time allowed for approval

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
Approval Configuration form (continued)
Field

Description

completion, and associated Service Level
Agreement (SLA).
For information on the escalation details
defined in an approval rule, see Create
Approval Rule form.
Allow email consolidation

Option that turns on the consolidation of
multiple approval email requests for an
approver or approval group into a single email.

Send auto reminders

Option that enables notification approval
reminders to be sent automatically to
approvers.

Reminder schedule

Option displayed when Send auto reminders
is enabled. Enter the time (days, hours,
minutes, seconds) at which approval reminder
notifications are sent.

Related topics
Create an approval configuration
Create Approval Rule form
Field descriptions for the Create Approval Rule form in Advanced Approval Management.
Create Approval Rule form
Field

Description

Name

Functional name of the approver associated
with this approval rule, for example, Contract
Manager or VP Finance.

Approval trigger condition

Approval condition that triggers this approval
rule.

Approval chain

Sequence of approval steps that an approval
request must meet before the request is fully
approved.

Order

Sequence in which the approval rule is
triggered within a set of steps.

Advanced rule

Option, when selected, for entering a script
that identifies the functional approver. Only
admins can enter an approver using a script.

Description

Brief explanation of the rule. For example the
description of the Contract Manager approval
rule could be Reviews contracts and
terms.

Active

Option indicating that the approval rule is in
use. To deactivate the approval rule, deselect
this option.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
Create Approval Rule form (continued)
Field

Description

Approver type

Type of approver:
• User: Specific approval user who can
approve a request, such as Contract
Manager.
• Group: A group that can approve a request,
such as the Contracts group.
• Dynamic: An approver determined by
the advanced approval engine when an
approval request is submitted, based on
relationships, roles, or rules provided in the
Dynamic approver field.

Dynamic approver

Rule logic that determines the approver
dynamically when an approval request is
submitted.

Approval criteria

Option that determines how approval requests
are handled:
• All: Indicates all designated approvers must
approve the request.
• Anyone: Indicates that only one approver
from multiple approvers must approve the
request.

Auto escalate

Option that turns on escalations for the
approval rule. Escalation is a mechanism for
reassigning an approval request to another
approver when the original approver hasn't
acted on the request within the defined time
set in the Expected days to complete field.

Expected days to complete

The number of days, hours, minutes, and
seconds that defines the total time allotted to
approve or reject the request.

Escalation schedule

The escalation schedule to be applied. The
default schedule is the Approval Escalation
SLA.

Escalation type

Type of approver for the escalation:
• User: Specific approval user who can
approve a request, such as Contract
Manager.
• Group: A group that can approve a request,
such as the Contracts group.
• Dynamic: An approver determined by
the advanced approval engine when an

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
Create Approval Rule form (continued)
Field

Description

approval request is submitted, based on
relationships, roles, or rules provided in the
Dynamic escalated assignee field.
Escalated assignee

The approver designated to act on the
approval request instead of the original
approver.

Dynamic escalated assignee

Rule logic that determines the escalated
assignee dynamically when an approval
request is submitted.

Related topics
Create approval rules

Components installed with Advanced Approval Management AI
MCP tools are installed with activation of the Advanced Approval Management AI plugin.

Tools installed
Tool name [ID]

Description

Approval Actions
(sn_qut_sum_skill.approval_actions)

Submits a quote for approvals and routes
them to assigned approvers.

Approval Details
(sn_adv_apr_mgt_ai.approval_details)

Retrieves the complete approval cycle
history for a quote, including every approval
request, step, approval actions, any recalls or
rejections.

Get Approval Preview
(sn_qut_sum_skill.get_approval_preview )

Previews the approval routing for a quote
before a requester submits the quote for
approval.

Get pending approval list
Retrieves all approval requests pending for
(sn_adv_apr_mgt_ai.get_pending_approval_list) an approver.
Get Quote Details
(sn_qut_sum_skill.get_quote_details)

Retrieves quote header and line item details.

Update approval request
(sn_adv_apr_mgt_ai.update_approval_request)

Executes approve or reject actions on
pending approval steps assigned to an
approver.

Components installed with Pricing Management
Several types of components are installed with activation of the Pricing Management plugin,
including tables and user roles.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
Roles installed
Role title [name]

Description

Price list administrator

Create and
update
pricing
entities,
set up or
edit pricingrelated
system
properties,
and view
transaction
logs.

[sn_csm_pricing_pricelist_administrator]

Price list manager
[sn_csm_pricing_pricelist_manager]

Price list writer
[sn_csm_pricing.pricelist_writer]

sn_csm_pricing.pricing_integrator

Contains roles

• sn_csm_pricing.pricelist_manager
• sn_export_entities.export_user
• import_admin

Create and
sn_csm_pricing.pricelist_writer
update
pricing
entities such
as price lists
and price
list lines,
set up or
edit pricingrelated
system
properties,
and view
transaction
logs.
Granular
role that has
read, write,
and delete
access
to pricing
entities.
To delete
a pricing
entity such
as a price
list or cost
book, the
pricing
entity must
be in Draft
state.
Role
required
to access
pricing
features
through the

• decision_table_crud_api
• decision_rule_author
• n_csm_ctxrul_mgt.rule_matrix_writer
• sn_csm_pricing.pricelist_viewer
• personalize_decision_table_input

None

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
Role title [name]

Description

Contains roles

Pricing REST
API when
using the
advanced
configurator.
sn_csm_pricing.pricing_integrator_internal Role
None
required
to access
pricing
features
through
the Pricing
REST API
when using
the CPQ
Configurator.
Exempt from
API rate
limits.
Sales Agreement price list writer
[sales_agreement_pricelist_writer]

Price list viewer
[sn_csm_pricing.pricelist_viewer]

Granular
role that has
read, write,
and delete
access
to pricing
entities.
Write access
only for
Sales
Agreement
price lists.

None

Granular
None
role that has
read access
to pricing
entities such
as price
lists, price
list lines,
cost books,
and cost
book lines.

Tables installed
Table

Description

Pricing Plan

Stores the pricing steps used by the pricing engine to retrieve
and calculate product pricing.

[sn_csm_pricing_pricing_plan]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
Quote Management reference
Reference topics provide additional information about the Quote Management application.
Components Installed with Quote Management
Several types of components are installed with activation of the Quote Management plugin,
including user roles.

Roles installed
Role title [name]

Description

Contains roles

Quote responsibility
Provides granular read access None
read granular
to quote and related entities
[sn_quote_mgmt_core.quote_responsibility_read_granular]
through the responsibility
framework.

Quote responsibility
Provides granular write access sn_quote_mgmt_core.quote_responsibility_read
write granular
to quote and related entities
[sn_quote_mgmt_core.quote_responsibility_write_granular]
through the responsibility
framework.
Quote integrator
Role required to access quote
[sn_quote_mgmt_core.quote_integrator]
features when using the CPQ
Configurator.

sn_quote_mgmt_core.quote_writer

Quote admin
A granular role created to give sn_quote_mgmt_core.quote_writer
[sn_quote_mgmt_core.quote_admin]
create, update, read, or delete
access on quote tables.
Quote writer
A granular role created to give
[sn_quote_mgmt_core.quote_writer]
write access to quote tables.

• sn_quote_mgmt_core.quote_viewer
• sn_nb_action.next_best_action_user
• sn_doc.reader

Quote viewer
A granular role created to give
[sn_quote_mgmt_core.quote_viewer]
read access to quote tables.

• sn_bus_loc.ibl_viewer
• sn_service_org.customer_criteria_read
• sn_bus_loc.ebl_viewer
• sn_csm_pricing.pricelist_viewer
• sn_tmt_core.inbound_queue_read
• sn_prd_invt.product_inventory_viewer
• sn_customerservice.customer_data_viewer

Quote details forms
Use Quote details forms to capture, view, and manage all key information about a quote.
Quote
Field

Description

Number

Systemʼgenerated unique identifier for the quote.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
Quote (continued)
Field

Description

Active

Option indicating that the current quote is the active quote. When there
are multiple versions of a quote, selecting this option indicates this is the
active quote.

State

Options that reflect the quote status.
• Draft - The default state of a quote that indicates the quote is still in
development.
• In review - Use this state to indicate that the quote is in a review state.
• Pending customer acceptance - Set to this state when the quote is
created and in review with a customer.
• Accepted - Use this state to indicate that the quote was accepted by
the customer.
• Revised - Revised indicates that changes have been made to the
quote that other working on the quote can take note.
• Expired - Shows that the quote is beyond its expiration date. Reset the
expiration date to make the quote active again.
• Canceled - Use this state to show that the quote is canceled.
• Closed - Shows that the quote is closed.
• Completed - Shows that the quote is completed. When a quote is set
to Completed, the quote can be used to create an order. For more info,
see Convert quotes into orders.

Synced

Indicates whether the quote is synchronized with a downstream or
external process.

Created by

Identifies the user who created the quote.

Source Opportunity References the opportunity from which the quote was created, if
applicable.
Account

The customer account for which the quote is created.

Enable sales
agreement quote

Option to enable a quote to be governed by a sales agreement.

Contact

Primary customer contact associated with the quote.

Sales agreement

A sales agreement that defines the scope, pricing, and conditions under
which the quote is created.

Partner account

Specifies the partner organization associated with the quote, such as a
reseller or distributor, if applicable.

Existing contract

References an existing contract associated with the quote.

Partner contract

Specifies the contact person from the partner organization.

Assignment group

The group responsible for owning and processing the quote.

Channel partner

Specifies the channel partner involved in the quote.

Assigned to

The individual user responsible for the quote.

Deal type

Indicates the type of deal associated with the quote:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
Quote (continued)
Field

Description

• Direct: The seller engages directly with the customer, with no
intermediary partner involved.
• Indirect: The seller engages the customer through an intermediary,
such as a reseller, service provider, or distributor.
Route to market

Identifies the exact sales channel used to execute the deal:
• Direct
• Reseller
• Distributor

Short description

A brief description that summarizes the quote.

Consolidated quote Indicates the quote is generated after consolidating multiple contracts,
contract lines, or source opportunities into a single unified commercial
offer.
Pricing
Field

Description

Currency

The currency for the price matches the
currency stated in the account information.

Renewal adjustment basis

Specifies the price reference used to calculate
renewal pricing adjustments, such as
contracted price or price list.

Price list

The Standard Price List field is the default
price list for the product catalogs referenced in
the quote.

Renewal adjustment type

Specifies the method used to adjust the
renewal price, such as applying a markup
percentage to the selected renewal
adjustment basis. The adjustment type is
applied after the renewal adjustment basis is
determined.

Cost book

The Standard Cost Book is the default cost
book for the product catalogs referenced in
the quote.

Renewal adjustment value

Specifies the numeric value used to adjust the
renewal price, such as a percentage increase
or decrease applied during renewal pricing.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


<!-- page 1441 -->
Totals
Field

Description

Total annual price

Sum of the cumulative annual recurring
price of all root parent quote lines. This value
represents the total recurring revenue for the
quote over one year.

Total cost

Rollʼup of the cumulative net cost of all root
parent quote lines. This includes oneʼtime
costs and recurring costs calculated over the
quote term.

Total amount

Rollʼup of the cumulative net price of all
root parent quote lines. This represents the
total quoted amount, including recurring and
oneʼtime charges.

Total margin%

Percentage representing the overall
profitability of the quote. Calculated as:
(Total amount − Total cost) ÷ Total amount ×
100

Total net new amount

Sum of the cumulative net price for all root
quote lines with Line Type = Net New. This
value represents incremental revenue
generated from new products or services only.

Dates
Field

Description

Quote date

Date from which the quote is considered valid.
This date is used as the reference point for
quote lifecycle and pricing calculations.

Contract start date

Date on which the contract associated with
the quote becomes effective. This date is used
to calculate subscription pricing, term, and
contract end date.

Expiration date

Date after which the quote is no longer valid.
This date defines the offer validity period
and is used on generated quote and order
documents.

Contract end date

Date on which the contract term ends. This
date is derived from the contract start date
and term, and is used to determine renewal
eligibility and renewal quote generation.

Payment Terms

Specifies the payment conditions agreed for
the quote, such as when payment is due after
invoicing. Payment terms are applied to the
quote document and downstream orders.

Term (months)

Duration of the contract or subscription
in months. When a start and end date are

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
Dates (continued)
Field

Description

provided, the system automatically calculates
the term value.
Quote Document Details

Contains information used when generating
the quote document, such as dates, pricing,
and validity details displayed on the document
sent to the customer.

Auto-renew contract

Indicates whether the contract is enabled for
automatic renewal. When selected, the system
automatically generates renewal opportunities
and renewal quotes based on configurable
rules before the contract end date.

Addresses
Field

Description

Billing address same as shipping

Indicates whether the billing address is the
same as the shipping address. When enabled,
billing address fields are automatically
populated from the shipping address.

Shipping location

Reference to the shipping location associated
with the quote. This location identifies where
products or services are delivered.

Shipping street

Street address of the shipping location.

Shipping city

City of the shipping address.

Shipping state/Province

State or province of the shipping address.

Shipping country

Country of the shipping address.

Shipping Zip/Postal code

ZIP or postal code of the shipping address.

Billing location

Reference to the billing location associated
with the quote. This location is used for
invoicing and billing purposes.

Billing street

Street address of the billing location.

Billing city

City of the billing address.

Billing state/Province

State or province of the billing address.

Billing country

Country of the billing address.

Billing Zip/Postal code

ZIP or postal code of the billing address.

Notes
Field

Description

Work notes

Internal notes used to record
behindʼtheʼscenes information related to
the quote, such as negotiation details, pricing

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
Notes (continued)
Field

Description

decisions, or internal followʼups. Work notes
are intended for internal users only and are
included in the quote activity history.
Additional comments

Freeʼform comments used to capture
customerʼfacing or general information
related to the quote. Additional comments
can be used to communicate updates or
clarifications and are visible to a broader
audience, depending on access permissions.

ServiceNow CPQ Quote header fields
Descriptions of the fields available in the quote header in ServiceNow CPQ.
The following table describes the fields available in the quote header. The fields visible on your
quote depend on the layout configured by your administrator. Fields marked as reference fields
look up values from ServiceNow tables.
Quote header fields
Field

Description

Account

The customer account associated with the quote. Reference
field — looks up records from the Account table.

Contact
Created By
Opportunity

The opportunity from which the quote was created. Reference
field — looks up records from the Opportunity table.

Short description
Name

Display name for the quote.

Created date
Last Modified by
Initial Quote
Previous Quote
Active

Quote creation via Self-Service fields
Store the main details related to a quote submitted and track the life cycle of the quote through
its stages on the self-service quote (sn_quote_mgmt_core_quote) table. Use the fields to manage
and store information related to quote creation.

Note:
The fields displayed on this form are pre-defined. You can configure the form to add or
remove fields, and update the table to show or hide columns.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
Quote details
Field

Description

Account

The customer account for which the quote is
created.

Consumer

Reference to consumer (csm_consumer).

Contact

Primary customer contact associated with the
quote.

Short description

A brief description that summarizes the quote.

Additional details
Field

Description

Source opportunity

The opportunity record associated with this
quote.

Currency

The currency for the price matches the
currency stated in the account information.

Renewal adjustment basis

Specifies the price reference used to calculate
renewal pricing adjustments, such as
contracted price or price list.

Price list

The Standard Price List field is the default
price list for the product catalogs referenced in
the quote.

Renewal adjustment type

Specifies the method used to adjust the
renewal price, such as applying a markup
percentage to the selected renewal
adjustment basis. The adjustment type is
applied after the renewal adjustment basis is
determined.

Quote date

Date from which the quote is considered valid.
This date is used as the reference point for
quote lifecycle and pricing calculations.

Contract start date

Date on which the contract associated with
the quote becomes effective. This date is used
to calculate subscription pricing, term, and
contract end date.

Expiration date

Date after which the quote is no longer valid.
This date defines the offer validity period
and is used on generated quote and order
documents.

Contract end date

Date on which the contract term ends. This
date is derived from the contract start date
and term, and is used to determine renewal
eligibility and renewal quote generation.

Payment Terms

Specifies the payment conditions agreed for
the quote, such as when payment is due after

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
Additional details (continued)
Field

Description

invoicing. Payment terms are applied to the
quote document and downstream orders.
Term (months)

Duration of the contract or subscription
in months. When a start and end date are
provided, the system automatically calculates
the term value.

Auto-renew contract

Indicates whether the contract is enabled for
automatic renewal. When selected, the system
automatically generates renewal opportunities
and renewal quotes based on configurable
rules before the contract end date.

Shipping/Billing location

Reference to the shipping/billing location
associated with the quote. This location
identifies where products or services are
delivered.

Shipping/Billing street

Street address of the shipping location.

Shipping/Billing city

The city of the shipping address.

Shipping/Billing state / Province

The state or province of the shipping address.

Shipping/Billing country

The country of the shipping address.

Shipping/Billing Zip / Postal code

The postal code or ZIP of the shipping
address.

Product offerings catalog
Enter the products that the customer is interested in the Select a catalog field.

Line items
Apply a header discount across all line items, or delete line items in the Apply header discount.

Customer Contracts and Entitlements reference
Reference topics provide additional information on service contract life cycle and forms available
within the Customer Contracts and Entitlements application.

What to explore next
To learn more about configuring and using Customer Contracts and Entitlements, see:
• Configure Customer Contracts and Entitlements
• Using Customer Contracts and Entitlements
Customer contract life cycle
A customer contract goes through the various states in each phase of its life cycle.
In each state, a customer contract is enabled to perform certain actions as mentioned in the
following table.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
customer contract life cycle, related states, and actions that it can perform
Life-cycle

State

A customer contract is
generated.

Draft

Action

• The start and end dates of the customer contract can
be modified such that the child records' dates are within
the date range.
• The related contract lines and entitlements can be
added, removed, or modified.
• The sold product/install base item covered can be
added or removed.

Customer contract gets Active
activated on the date of
activation.

• Modifications to the customer contract can be done
manually, via integration and via Sales Customer
Relationship Management workflow.
• The start date can't be modified.
• The end date can be extended and should be greater
than the current date.
• customer contract line items can be added.
• The sold product/install base item covered can be
modified.

Customer contract is
Expired
deactivated on the date
of expiration.
Customer contract is
canceled.

No action.

Canceled No action.

The customer contract line items and entitlements also perform similar actions in the respective
states.
When a parent entity moves to the Expired state, the child entities inherit the same state. For
example, when a customer contract expires, the related contract lines and entitlements also
expire.
However, the state change of a child entity doesn't affect it parent entity.
The sold product or install base item referenced either in the contract line or an entitlement must
be in the same state as the entity where it's referenced.

Suspended state
When a sold product is suspended, the related customer contract lines and entitlements, in the
Draft or Active states, move to the Suspended state as well.
A suspended customer contract line or entitlement is paused for any activity, except the
following:
• Editing the field values.
• Creating records in the corresponding related lists.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
On resuming the sold product, the related customer contract line item or entitlement acquires
the state depending on its start and end dates. For example, a resumed entitlement that has its
start date in the past and its end date in the future, acquires the Active state.
Exceptionally, when a contract line or entitlement in the Suspended state has reached its end
date, it moves to the Expired state automatically.

Date validations
A customer contract line associated with a customer contract must be created within the
customer contract's start and end dates. Any modification to the dates of customer contract lines
must comply with the date range of the parent service contract.
Customer contract form
The Customer Contracts and Entitlements application uses the Customer contract form to create
customer contracts.
customer Contract form
Field

Description

Name

The name of the customer contract.

Number

The internal unique identification number that is generated when the customer
contract is created. This number isn’t editable.

Contract
The externally assigned identification number assigned to the customer contract.
Reference
Account

The name of the account associated with the customer contract.

Note:
• A customer contract can be associated with either an account or a
consumer.
• An account can be created if no account is found by selecting New on the
Account form. For more information on the fields in the Account form, see
Account form .
Consumer The name of the consumer associated with the contract.

Note: If no consumer record is found, you can create a consumer and add
it to the customer contract. For more information, see Create a consumer
record .
State

The current state of the customer contract:
• Draft
• Active
• Expired
• Canceled
• Suspended

Start date

The activation date of the customer contract.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
customer Contract form (continued)
Field

Description

End date

The date when the customer contract ends.

Renewal
root

A customer contract can be renewed multiple times. Renewal root refers the
customer contract reference of the first or base customer contract.

Renewed
from

A customer contract can be renewed multiple times. Renewed from field refers to
the previous customer contract that was renewed.

Customer contract line form
You can create customer contract lines in the Customer Contracts and Entitlements application
by using the Customer Contract Line form.
Customer Contract Line form
Field

Description

Name

The name of the customer contract line.

Contract

The internal unique identification number that is generated when the customer
contract is created. This number isn’t editable.

Parent
The internal unique identification number of the parent customer contract line
contract line that is associated with the child customer contract line.
Account

The name of the account associated with this customer contract.

Note:
• A customer contract can be associated with either an account or a
consumer.
• An account can be created if no account is found by selecting New on
the Accounts form. For more information on the fields in the Account
form, see Account form .
Location

The customer or installation location.

Product
The product specification that is mapped to the sold product.
specification
Number

The internal unique identification number of the customer contract line that is
generated when it is created. This number isn’t editable.

Consumer

The name of the consumer associated with this contract.

Note: If no consumer record is found, you can create a consumer and add
it to the customer contract. For more information, see Create a consumer
record .
State

The current state of the contract line:
• Draft
• Active
• Expired

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
Customer Contract Line form (continued)
Field

Description

• Canceled
• Suspended

Note:
• The state of the customer contract line is inherited from its parent
customer contract.
• Suspended state is only applicable when the contract line item is created
via the Sales Customer Relationship Management workflow.
Start date

The date of activation of the customer contract line.

End date

The date when the customer contract line expires.

Product

The product model that is mapped to the product offering for the sold product.

Product
offer

The product offering that is mapped to the sold product.

Sold
product

The name of the sold product that is added to the contract line.

Note:
• When the customer contract line item is created via the Sales Customer
Relationship Management workflow, this field displays the sold product
name from which the contract line is generated.
• When customer contract lines are created via integration, the field
becomes invalid.

Renewal
root

A customer contract line can be renewed multiple times. Renewal root refers the
customer contract line reference of the first or base customer contract line.

Renewed
from

A customer contract line can be renewed multiple times. Renewed from field
refers to the previous customer contract line that was renewed.

You can see the pricing information on a contract line for subscription contracts that helps you in
reviewing your contract information.
Subscription & Pricing
Term (Months)

Validity period of having access to the service
or product.

Subscription Start Date

Start date of the contract subscription.

Subscription End Date

End date of the contract subscription.

Price List

Price list associated for servicing the product.

Unit net price

The price for each unit within the product
offering. The net price of a single unit of the
sold product.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


<!-- page 1450 -->
Subscription & Pricing (continued)
Pricing method

The pricing method for the selected sold
product. It can be one-time or recurring. Onetime pricing charges one fee for the product
offering. Recurring pricing lets you set the
pricing periodicity.

Periodicity

The frequency of the pricing method. It can be
monthly, quarterly, semiannually, or annually.
This field becomes valid only when the
method in the Pricing method field is a
recurring payment.

One Time Price

Represents one-time charges to be paid for
the product or service.

Monthly Recurring Price

Represents the price that the customer is
supposed to pay monthly during usage of the
product.

Annual Recurring Price

Represents the price to pay annually during
usage of the product.

Cumulative one-time price

Represents one-time charges to be paid for
the parent line and all the child line items.

Cumulative monthly recurring price

Represents monthly price for the parent line
and all the child line items

Cumulative annual recurring price

Represents annual price for the parent line
and all the child line items.

Cumulative net price

Represents the total price of the contract line
by calculating the roll-up amount of all root
lines.

Note: When a customer contract line item is created manually, the Pricing method, Unit

net price, and Periodicity fields are invalid. They’re only applicable when the contract line
is created by the Sales Customer Relationship Management workflow or by integration. In
that case, these fields are auto-populated with the details from the related sold product.
The start and end dates of a child customer contract line must be in between the start and
end date of the associated parent customer contract line.
Entitlement form
The Entitlement form can be used to create entitlements in Customer Contracts and
Entitlements.
Entitlement form
Field

Description

Name

The name of the entitlement.

Product

The product associated with the entitlement.

Contract

The internal unique identification number that is generated when the customer
contract is created. This number isn’t editable.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
Entitlement form (continued)
Field

Description

Account

The name of the account associated with this contract.

Note:
• A customer contract can be associated with either an account or a
consumer.
• An account can be created if no account is found by selecting New on
the Accounts form. For more information on the fields in the Account
form, see Account form .
Location

The service or installation location.

Product
The product specification that is mapped to the sold product.
specification
Note: Configure this field manually on the entitlement form using form
layout.
Consumer

The name of the consumer associated with this contract.

Note: If no consumer record is found, you can create a consumer and add
it to the customer contract. For more information, see Create a consumer
record .
Customer
The name of the related customer contract line.
contract line
State

The current state of the entitlement:
• Draft
• Active
• Expired
• Canceled
• Suspended

Note: The state of the entitlement is inherited from its parent contract line.
Start date

The entitlement activation date.

End date

The date when the entitlement ends.

Sold
entitlement

The name of the sold product that is added to the entitlement.

Note:
• If the entitlement is created manually, this field remains read-only.
• The field must have the same state as its related entitlement.
• The field becomes invalid when entitlements are created via integration.

Product
offer

The product offering that is mapped to the order line item.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Entitlement form (continued)
Field

Description

Renewal
root

An entitlement can be renewed multiple times. Renewal root refers the
entitlement reference of the first or base service entitlement.

Renewed
from

An entitlement can be renewed multiple times. Renewed from field refers to the
previous entitlement that was renewed.

You can see the pricing information on an entitlement for subscription contracts that helps you in
reviewing your contract information.
Subscription & Pricing
Term (Months)

Validity period of having access to the service
or product.

Subscription Start Date

Start date of the contract subscription.

Subscription End Date

End date of the contract subscription.

Price List

Price list associated for servicing the product.

Unit net price

The price for each unit within the product
offering. The net price of a single unit of the
sold product.

Pricing method

The pricing method for the selected sold
product. It can be one-time or recurring. Onetime pricing charges one fee for the product
offering. Recurring pricing lets you set the
pricing periodicity.

Periodicity

The frequency of the pricing method. It can be
monthly, quarterly, semiannually, or annually.
This field becomes valid only when the
method in the Pricing method field is a
recurring payment.

One Time Price

Represents one-time charges to be paid for
the product or service.

Monthly Recurring Price

Represents the price that the customer is
supposed to pay monthly during usage of the
product.

Annual Recurring Price

Represents the price to pay annually during
usage of the product.

Cumulative one-time price

Represents one-time charges to be paid for
the parent line and all the child line items.

Cumulative monthly recurring price

Represents monthly price for the parent line
and all the child line items

Cumulative annual recurring price

Represents annual price for the parent line
and all the child line items.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
Subscription & Pricing (continued)
Cumulative net price

Represents the total price of the contract line
by calculating the roll-up amount of all root
lines.

Sold Product Covered form
The Customer Contracts and Entitlements application uses the Sold Product Covered form
to add sold products or install base items that are covered to the Customer Contracts and
Entitlements entities.
For information about adding sold products or install base items that are covered, see Add a sold
product or install base item to a customer contract.
Sold Product Covered form
Field

Description

Contract

The reference number of the associated customer contract.

Sold
Product

The products that are sold to a customer.

Note:
• The list of sold products is filtered based on the account related to the
contract or entitlement.
• If a product is added, the Install Base Items field is automatically
removed.
• If a product isn't listed, you can add it. Select New in the Sold Products
window. For more information, see Create a sold product .

Install Base The related install base item.
Item

Note:

• The list of sold products is filtered based on the account related to the
contract or entitlement.
• If an install base item is added, the Sold Product field is automatically
removed.
• If an install base item isn't listed, you can add it. Select New in the Install
Base Item window. For more information, see Create an install base item
Customer
contract
line

.

The associated customer contract line reference.

Entitlement The associated entitlement reference.
Date
added

The date that the product is added to the entity.

Date
removed

The date until which the product is active on the entity.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
Note: The activation time period for the sold product or install base item covered must
comply with the related entity's activation period.

Components installed with Sales Agreement Management
Several types of components are installed with activation of the Sales Agreement Management
plugins, including tables and user roles.

Roles installed
Sales Agreement roles details
Role

Description

sn_sales_agmt_core.sales_agreement_viewer This role
enables
users to
perform read
operations
on sales
agreements,
sales
agreement
lines, and
related data
such as
characteristics,
price lists, and
other tables.
sn_sales_agmt_core.sales_agreement_writer

This role
enables users
to perform,
create, read,
and update
operations
on sales
agreements
and sales
agreement
lines.

Contains roles

R

• sn_prd_pm.product_catalog_viewer
(contains
sn_prd_pm.characteristics_viewer)
• sn_quote_mgmt_core.quote_viewer
(contains sn_csm_pricing.pricelist_viewer)

sn_sales_agmt_core.sales_agreement_viewer

Tables installed
Sales Agreement Management tables
Table

Description

sn_sales_agmt_core_sales_agreement

Stores all the sales agreements.

sn_sales_agmt_core_sales_agreement_line Stores the lines of a sales agreement indicating
the products and services agreed for sale.
sn_sales_agmt_core_line_characteristic

Stores the attributes of products and services to
be sold.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
Sales Agreement Management tables (continued)
Table

Description

sn_sales_agmt_core_line_adjustment

Stores the adjustments applied during
negotiation.

ServiceNow CPQ reference
Reference topics provide additional information about ServiceNow CPQ.
Boundaries and limits
View a list of boundaries and limits in ServiceNow CPQ.

Blueprints
No limits are imposed on the number of fields, rules, or layouts associated with a Blueprint.

Fields
Text fields: 2000 characters.
Picklist extensions: ProductOrderNumber accepts an integer up to 88 characters.

Fields
Simple message actions: 256 characters.
Picklist fields will only display 100 options in a drop-down list. Options not included in the list are
still searchable by typing into the field.
Subfields that product picker can contain: 50.

Sets
Each set can contain up to 2000 records. An error will be thrown if the set.size field is greater
than 2000.
No hard limit exists on the number of fields that can be associated with a set. However, a
practical threshold exists, beyond which runtime performance will suffer. This threshold has
several dependencies, including the number and complexity of rules running between fields
on set index, the number of set records defined during configuration, the total number of fields
shown in the UI, and so on. Unfortunately, no simple rule of thumb exists to determine this
threshold for your implementation.
Set repeater indices that display on a layout: 50.

Rules
Custom grouping: 2000 characters.

Tables
Rows in a table: no practical limit.
Columns in a table: no practical limit.
Length of value stored in text-type column cell: 2000 characters.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
Length of value stored in number-type column cell: For practical purposes, no limit.

ProductList object
ProductList.orderNumber: 28 digits.

Scripting and enrichments
Lookup: returns a maximum of 10,000 rows from a managed table.
Advanced rules and enrichments are limited to 50,000 characters.

Matrix Loader
ZIP files over 75 MB cannot be imported.

Layout Wizard
500 fields can be automatically loaded when the Layout Wizard is initialized. Additional fields
must be added manually via the Add Field menu.
Session and configuration timeouts
Learn how timeouts for inactive or abandoned configurations improve system efficiency and
prevent resource waste.
Because ServiceNow CPQ is a web-based application, we regulate our software usage by
implementing certain timeouts on sessions, so as to not waste processing power on abandoned
configurations.
Timeouts for the ServiceNow CPQ platform have two key mechanisms:
• Session timeout: Set at 30 minutes of user inactivity.
This applies to any end user or Admin interaction. When configuring a product or editing a rule,
if nothing has been updated on any tab in this time, the session times out.
• Configuration cache timeout: 15 minutes if abandoned (browser closed or navigated away)
This cache can stay active for up to 2 hours. As long as the configuration UI remains open and
is being updated, or the user has multiple browser tabs that they are configuring in, the cache
will be maintained.
Here are a few example scenarios.
• Scenario 1: If an end user is configuring, or if an Admin is creating a rule and stays on that tab,
but does not update the site, the session will time out after 30 minutes.
• Scenario 2: If a user calls a runtime API to configure a product, the 15-minute configuration
cache timeout applies to make PATCH updates to the configuration, as there is no automatic
heartbeat for this method.
• Scenario 3: If an end user is actively configuring a product, that configuration session can
remain active for up to 2 hours.
• Scenario 4: If a user navigates to a different tab while in the middle of configuring, that
configuration can still remain active for up to 2 hours as long as the user is still actively working
with another configuration in ServiceNow CPQ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
Note: While this behavior works well in ServiceNow CPQ, we cannot guarantee the
same functionality in Salesforce iframe tabs. SFDC may not allow JavaScript to run on
inactive tabs, potentially affecting the 2-hour timeout in that environment.
• Scenario 5: If the ServiceNow CPQ configurator is in an SFDC iframe and the user navigates to
a different tab, the 15-minute cache expiry for inactive sessions may occur.
The most effective approach to avoid a timeout is to manually save your configurations,
especially when working across multiple tabs. This way, progress is not lost when completing
other work.
Troubleshooting
Steps to take if you encounter problems using ServiceNow CPQ.

Error messages
• An error occurred. Please contact your administrator.

This generic error message appears for every error logged when configuring. This usually
points to an edge case that was not previously considered when building the Blueprint and
can be rectified by looking into the results of the Logs
tab in ServiceNow CPQ Admin when
this error occurs. A more detailed response will usually be present that should point your
administrator to the location of the error, such as a rule, enrichment, or an external connection.

If there is no further detail located in the Admin log, or if you are still confused by the
messaging of the error, please log a support ticket.

Note: To log a support ticket, use the ServiceNow Support portal

. For step-by-step
instructions, see Create a case on Now Support for CPQ Customers .
• Cannot get Configurable Product. Product <Salesforce Product2 Id> is not available in cache.
The ServiceNow CPQ user that was added when your environment was being set up in your
Salesforce org may have been deactivated, causing an issue with the Refresh Token Username
and Refresh Token.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
Admin
The Products tab is not visible in Admin view.
The Products Admin page is only shown when ServiceNow CPQ is set up to support a headless
use case. In this scenario, ServiceNow CPQ provides its own product master.
In a Salesforce-integrated use case, the ServiceNow CPQ environment is integrated with a
Salesforce [SFDC] environment. In a headless or eCommerce use case, ServiceNow CPQ is
accessed from a resource other than SFDC, such as an eCommerce platform, partner portal, or
a non-SFDC CPQ application. In this scenario, the ServiceNow CPQ environment is frequently
accessed via APIs only, with the calling resource digesting the results and displaying them in its
own user interface.
When a ServiceNow CPQ environment is not integrated with Salesforce, this is commonly called
a 'headless' or 'ecommerce' use case. The Products Admin page only displays to ServiceNow
CPQ administrators when the environment is set up for this headless mode.
As a point of contrast, when the ServiceNow CPQ environment is integrated with SFDC, the
SFDC product2 object is the part master. ServiceNow CPQ administration intentionally does not
show a Products administration page when integrated with SFDC.

APIs
• The Salesforce Authentication call is returning a Status: 400 Bad Request
Inspect the permissions of this OAuth App, as defined in Salesforce, by navigating to App
Manager in Salesforce Setup. For your connected app, select "Manage" from the drop-down
menu on the right, and then click Review OAuth Policies. The IP Relaxation setting may be set
to Enforce IP restrictions. Set this to Relax IP restrictions.
• When using the JWT to authenticate the administration API call, you get a 302 Found error with
no body.
Make sure that you insert the string, "Bearer" before the JWT access_token text in the
Authorization value.

Configuration
For some user profiles, configuring results in a white screen or reconfiguring does not
load any of the previously chosen options. In order to properly configure or reconfigure,
users need access to certain objects and fields in Salesforce. These can be assigned

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
using permission sets or by going to Setup > Profiles > Select Desired Profile > Object

Settings.
Users will need read/edit access in the Field Permissions section to the following objects:
Configuration Attributes:
• Id
• Name
• Target Field
• Product
• Raw Order
• Column Order
• Position
Product features:
• Id
• Name
• Option Selection Method
• Configured SKU
• Number
• Min Options
For products (Product2):
• Configuration Type
• Has Configuration Attributes
• Externally Configurable
For quote lines:
• Configuration Id
• BOM Data
• Product
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
• Incomplete
• Dynamic Option ID
• Quantity
• List Unit Price
• Option Level
For product options:
• Read/Edit access in Object Permissions
• Configuration Id
• BOM Data
And if using Amendments, users also need the following:
Quote lines:
• Committed Configuration Id
• Action context
• Upgraded subscription
• Source
Subscriptions (SBQQ__Subscription__c):
• Configuration Id
• BOM Data
See Granting user access in ServiceNow CPQ.

Salesforce integration
• Products in ServiceNow CPQ do not create quote lines in Salesforce CPQ
When using ServiceNow CPQ with Salesforce CPQ, certain configuration requirements must
be met in order for your products to get added to CPQ as quote lines. Here are the most
common causes for products not creating quote lines in CPQ.
◦ The Product Id in ServiceNow CPQ is not equal to the Product Code field on the product
record in Salesforce.
This is contingent upon the “Product Id Field” tenant setting in the Admin. You can use
either Product Code (Product2.ProductCode), Partner Id (Product2.Id), or External Id
(Product2.ExternalId).
◦ The product record is not active in Salesforce.
◦ No pricebook entry has been assigned to the product record.
◦ The pricebook entry for the pricebook is different from the pricebook on the quote. The
pricebook entry for the product is inactive.
If you have confirmed none of these are true and a quote line is still not being created, then it is
probable that the product sync that takes place between ServiceNow CPQ and Salesforce via
the refresh token user has not occurred yet. This sync occurs via API every 30 minutes for test

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
and demo environments and every 15 minutes for production. To determine when this sync last
occurred, enter Salesforce and navigate to Setup → Bulk Data Load Jobs.
•
Solution configuration limits
Structural limits that apply to solution configurations, including hierarchy depth, total
configuration count, and field mapping constraints.
Solution configuration limits
Limit

Value and notes

Maximum
hierarchy depth

4 levels, including the solution root. The BOM hierarchy can have an
arbitrary depth.

Maximum
configurations
per session

20 total — the solution root plus up to 19 active child configurations across
all depths.

Circular
references

Not permitted. A blueprint cannot appear more than once in any path from a
child configuration back to the solution root.

Configurable
products per
action

One configurable product per configurable product action. To add multiple
child configurations from a single rule, add multiple configurable product
actions to that rule.

Field mapping
direction

Parent to child only, one level at a time. To continue a mapping across
multiple levels, define the mapping on each blueprint in the chain.

Field types
supported for
mapping

Number, Text, Boolean, and Picklist only. For the full list, see Define field
mappings for a solution configuration .

Sets and Product Mapping of an entire Set or an entire Product Picker is not supported. Fields
Pickers in
inside a Set can be mapped. Product Picker subfields cannot be mapped.
mapping
Reverting a
configurable
product action

Once a product action is marked as configurable, it cannot be changed back
to a standard product action.

Related topics
Solution configurations
Create a configurable product action
Define field mappings for a solution configuration
Field mapping supported field types
Field types that are supported as source and target fields in solution configuration field
mappings.

Note: Source and target fields must be the same type. For example, a Picklist field cannot
be mapped to a Text field.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
Supported field types for mapping
Field type

Supported

Notes

Number

Yes

Can be used as a source or target field. Maps to a Number field
on the child blueprint.

Text

Yes

Can be used as a source or target field. Maps to a Text field on
the child blueprint.

Boolean

Yes

Can be used as a source or target field. Maps to a Boolean field
on the child blueprint.

Picklist

Yes

Can be used as a source or target field. Maps to a Picklist field on
the child blueprint.

Set (entire)

No

Mapping of an entire Set is not supported. Individual fields inside
a Set can be used as source fields.

Fields inside a
Set

Yes
(source
only)

Can be used as a source field. Maps to a compatible field on the
child blueprint.

Product Picker
(entire)

No

Mapping of an entire Product Picker is not supported.

Product Picker
subfields

No

Product Picker subfields cannot be used as source or target
fields in any mapping.

System fields —
as source

Yes

System fields can be used as source fields.

System fields —
as target

No

System fields cannot be set as target fields.

Related topics
Define field mappings for a solution configuration
Solution configuration limits
ServiceNow Quote Experience: Use cases
View a list of example use cases for ServiceNow CPQ ServiceNow Quote Experience.
ServiceNow Quote Experience use case: Apply parent line discounts to child lines
ServiceNow Quote Experience can help manage transactions whose configurable products have
many child and grandchild transaction line items.
A single transaction may include multiple configurable products, and each configurable product
may have more than 100 child, grandchild, or other descendant transaction line items.
Discounting at the transaction header level could apply a uniform discount across all products
and transaction line items. Conversely, applying discounts at the transaction line-level lets
you discount individual products and lines at different rates. However, for a product with many
descendant line items, this may become burdensome.
Using the .parent system field enables the look up of a parent line-item field, which can then
be applied to only the child lines of that product. For example, a picklist can be used at the
header level to designate the discounting method to apply.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
When Parent Line Discounting is selected, a rule sets the descendant line’s discount field equal
to that of its parent line.

ServiceNow Quote Experience use case: Calculate prices for line-level fields
ServiceNow Quote Experience can apply rules to line-level fields that dynamically calculate
prices according to changes to the field, such as when products are added or removed.
In the ServiceNow Quote Experience, we can apply rules on line-level fields to cover various
price calculations relevant to selected products. These calculations adapt dynamically to
changes, such as the addition or removal of products. This article outlines a use case involving
three types of price calculations and the steps required to configure them.
The use case involves three types of price calculations:
• Annual List Price: This is the list price multiplied by the number of months chosen in the
subscription period.
• Unit Net: The price of a product after the discount amount has been deducted.
• Extended Net: The unit net of the product multiplied by the quantity of the product.

Step 1: Create Custom Fields
• Navigate to ServiceNow CPQ Admin > Transaction > Associated Fields.
• Create all the custom fields required for your use case. For the detailed steps on how to create
fields, see Quote transaction fields.
In this example, we intend to use the following fields:
Start Date
Custom header (dateTime type) field that stores the subscription start date.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
End Date
Custom header field (dateTime type) that stores the subscription end date.
Subscription Term (Months)
Custom header (Number type) field that calculates the difference between the start
date and end date, displaying the subscription term. For the detailed steps on how
to do DateTime field calculations, see Date and time field fields.
Target Line Item Discount
Custom header (Number type) field where users select the discount rate.
Quantity
Line-level system field specifying the quantity of the product chosen.
List Price
Line-level system field specifying the product’s price.
Discount Percent
Line-level system field storing the discount rate. This field is automatically populated
with the value selected in the Target Line Item Discount field using a rule.
Annual List Price
Custom field used to store results of price calculations for annual list price. This is a
transaction line level custom field (Number Type)
Unit Net
System field labeled as “Net Price” in the system but renamed “Unit Net” by layout
definition. This field stores results of price calculations.
Extended Net
System field that stores the total unit net price for the product in the line entry.

Step 2: Add fields to layout
Map the configured fields into the appropriate layout for visibility. For the detailed steps, see Set
up layouts.

Step 3: Create the rules
Three rules are to be created:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
• Calculate Annual List Price
• Calculate Unit Net Price
• Calculate Extended Net Price
Follow these steps:
1. In Related Rules, click New Rule.
2. Enter the name of the rule and select Transaction Line as the rule type.
3. Click Save.

Step 4: Create and configure rule actions
1. Select Determination as the action type for the rule.
2. Define the rule’s conditions and action items.
3. Add the advanced script to perform the calculation for Use Case 1 (Annual List Price). Refer to
the snapshot below.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
4. Click Save.
5. Repeat steps 1 through 4 to configure rules for Use Case 2 (Unit Net) and Use Case 3
(Extended Net). Refer to the snapshots below.
Use Case 2 (Unit Net) - Edit Net pricing calculation:

Use Case 3 (Extended Net) - Edit Calculate annual extended net price:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
Step 5: Associate rules to rule groupings
1. On the Admin page, click Rule Groupings, and then click Add Rule Grouping. Enter the
variable name as the stage in which rule should run (Draftstage), and then click Save.

2. Associate the newly created rules:
a. Click Associate.
b. Select the name of the rule you created.
c. Click Done.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
3. To link the newly created rule grouping with the stage (Draft in the sample use case) where
your rules should run, click Stages on the transaction page. Click Draft, and then click Rule
groupings. Search the new rule grouping, select, and then click Save.

Step 6: Deploy and test
Deploy the configured blueprint to make the rules active, and then test the implementation in the
UI to confirm the scripts are working as expected.
Below is an example of the final implementation:
• Use Case 1: Entering the start date and end date header fields auto-populates Annual list price
(List Price * Subscription Term i.e. $2,500.00 * 4 Months 11 Days = $10,885.00)
• Use Case 2: Setting the target line item discount as 5 %, auto-populates the unit net price [List
price - Discount/100 * List price i.e. $2,500.00 - (0.05 * $2,500.00) = $2,375.00]
• Use Case 3: Setting the quantity of each entry auto-changes the Extended Net price (Unit net
price * Quantity i.e. $2,375.00 * 10 = $23,750.00)
Final output
ServiceNow Quote Experience use case: Calculate the total of line-level prices
ServiceNow Quote Experience can include a determination rule that calculates the sum of linelevel net prices so that it can be stored in a header-level field.
In ServiceNow CPQ ServiceNow Quote Experience, you can use a determination rule to calculate
the sum of line-level total net prices and store the result in a header-level field. This is particularly
useful when multiple fields need to be aggregated from line items to the transaction header.

Example Rule Configuration
• Rule Action Type: Determination Rule
• Trigger Point: After line-level updates (that is, when line items are added, removed, or updated)
• Scope: Transaction Header

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
Steps to create and use the rule
1. Ensure that there is a header-level field.
Alternatively, you can create a custom field (for example, txn.custom.totalList) in the Associated
Field section where the sum is to be stored.
2. Create a header level rule with the appropriate condition for which the rule will be executed.
3. Set the action type to determination.
4. In Use this value, set Advanced to true, and write an advanced script to calculate the fields.
For example, calculate the sum aggregate of the list price of every line item. To calculate the
total list price, we use the sumField function to calculate all the line-level list prices into a
single field.

5. Save and activate the rule so it applies in real time during the transaction life cycle.
6. To test the rule, create a transaction and add line items with varying net prices.
Verify that the sum of the line-level net prices is correctly calculated and displayed in the
header-level field.

More examples
Here are two more examples of line-level calculations stored in a header-level field.
• Overall Discount Amount
Advanced Script:
return
txn.line.functions.sumField(txn.line.custom.listUnitPrice) txn.line.functions.sumField(txn.line.pricing.extendedNet);

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


<!-- page 1470 -->
• Total Net
Advanced Script:
return
txn.line.functions.sumField(txn.line.pricing.extendedNet);

ServiceNow Quote Experience use case: Display LIG line number on line detail
How to display the line item group line number in the line detail.
This document outlines the implementation approach for displaying the line item group (LIG) line
number in the line detail layout. This enhancement lets users easily reference and correlate the
line detail with the appropriate line in the LIG.
To display the line number in the line detail view, follow the steps below. This requires using a line
detail layout (for example, default_layout_linedetail).
1. Create a custom read-only line-level field to store the row number.
◦ Variable name: txn.line.custom.rowNumber
◦ Default value: {{txn#rowNumber}}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
2. Add the new field to your line detail layout to make it visible when viewing line items.
Ensure that the field has the setting "enableMarkdown": true. Additionally, to display
the row number on the LIG line, add the "showLineNumbers": true property to the
lineGrid layout object in the non-line detail layout (or layouts).
3. Save and deploy the updated blueprint with the modified layouts.
4. In the Transaction UI, create a new transaction or open an existing one.
The line number appears in the line detail view, as in the following example:

ServiceNow Quote Experience use case: Document generation with Google Docs
Generate documents from ServiceNow Quote Experience by using Google Docs and Google
Apps Script.
To generate a document from ServiceNow Quote Experience, Google Docs combined with
Google Apps Script provides an efficient and straightforward solution. By creating custom
APIs using Apps Script, you can easily receive GET and POST requests from a direct URL. This
eliminates the need for middleware, streamlining integration with services like ServiceNow CPQ
or ServiceNow Quote Experience.
You can trigger document generation by either of these methods:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
• ServiceNow CPQ Webhook: Automatically send POST requests to initiate document creation.
• ServiceNow Quote Experience: Use this for managing and automating processes.

Setting up a Google doc to pull ServiceNow CPQ data
To access the developer window, open the Google doc where you want to integrate the script. In
the menu bar, go to Extensions > Apps Script to open the development environment.
You can write custom JavaScript to process data and interact with Google Docs by using the
Apps Script editor.

Coding
Google Apps Script includes GET and POST requests.
• GET requests (doGet) respond with a simple text output, useful for verifying that the web app
is running.
• POST requests (doPost) handle incoming data (usually JSON), generates the document
based on the template, and returns a link to the newly created document.
This video

explains how the doGet and doPost work in a Google Doc app script.

When using ServiceNow Quote Experience, you need to transform the JSON to send over to
Google Docs. Below is an example template. If you are using a webhook, see Webhooks for how
the data will be sent over to Google Docs.
The following code block shows an example Transform Template, sent as a POST to the doPost
function.
{
"transaction": {
"uuid": "{{txn.uuid}}",
"term": {{txn.term}},
"stage": "{{txn.stage}}",
"status": "{{txn.status}}",
"account": "{{txn.account}}",
"endDate": "{{txn.endDate}}",
"netTotal": {{txn.netTotal}},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
"termUnit": "{{txn.termUnit}}",
"createdBy": "{{txn.createdBy}}",
"quoteName": "{{txn.quoteName}}",
"startDate": "{{txn.startDate}}",
"accountName": "{{txn.accountName}}",
"createdDate": "{{txn.createdDate}}",
"opportunity": "{{txn.opportunity}}",
"paymentTerm": "{{txn.paymentTerm}}",
"quoteNumber": "{{txn.quoteNumber}}",
"contractTerm": {{txn.contractTerm}},
"contractType": "{{txn.contractType}}",
"currencyCode": "{{txn.currencyCode}}",
"estTaxAmount": {{txn.estTaxAmount}},
"modifiedDate": "{{txn.modifiedDate}}",
"billToAddress": "{{txn.billToAddress}}",
"hardwareTotal": {{txn.hardwareTotal}},
"servicesTotal": {{txn.servicesTotal}},
"shipToAddress": "{{txn.shipToAddress}}",
"softwareTotal": {{txn.softwareTotal}},
"discountAmount": {{txn.discountAmount}},
"expirationDate": "{{txn.expirationDate}}",
"lastModifiedBy": "{{txn.lastModifiedBy}}",
"primaryContact": "{{txn.primaryContact}}",
"customerSegment": "{{txn.customerSegment}}",
"discountPercent": {{txn.discountPercent}},
"transactionType": "{{txn.transactionType}}",
"estTaxPercentage": {{txn.estTaxPercentage}},
"agreementDiscount": {{txn.agreementDiscount}},
"taxEntityLocation": "{{txn.taxEntityLocation}}",
"transactionNumber": {{txn.transactionNumber}},
"totalPriceEstimate": {{txn.totalPriceEstimate}},
"overallDealDiscount": {{txn.overallDealDiscount}},
"annualTransactionBands": "{{txn.annualTransactionBands}}",
"annualTransactionCount": {{txn.annualTransactionCount}},
"accountSpecificDiscount": {{txn.accountSpecificDiscount}}
},
"lines": [
{{#each lines}}
{
"uuid": "{{txn.line.uuid}}",
"productInfo": {
"productId": "{{txn.line.productId}}",
"productSku": "{{txn.line.productSku}}",
"productCode": "{{txn.line.productCode}}",
"productName": "{{txn.line.productName}}",
"productType": "{{txn.line.productType}}",
"productDescription": "{{txn.line.productDescription}}"
},
"pricing": {
"netPrice": {{txn.line.netPrice}},
"listPrice": {{txn.line.listPrice}},
"discountAmount": {{txn.line.discountAmount}},
"discountPercent": {{txn.line.discountPercent}},
"netTotal": {{txn.line.netTotal}},
"customerLineDiscount":
{{txn.line.customerLineDiscount}},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
"agreementLineDiscount":
{{txn.line.agreementLineDiscount}}
},
"dates": {
"startDate": "{{txn.line.startDate}}",
"endDate": "{{txn.line.endDate}}",
"createdDate": "{{txn.line.createdDate}}",
"modifiedDate": "{{txn.line.modifiedDate}}"
},
"quantity": {{txn.line.quantity}},
"currencyCode": "{{txn.line.currencyCode}}",
"configUUID": "{{txn.line.configUUID}}",
"orderDetails": {
"globalOrder": {{txn.line.globalOrder}},
"orderNumber": {{txn.line.orderNumber}},
"transactionLineNumber":
{{txn.line.transactionLineNumber}}
},
"termDetails": {
"term": {{txn.line.term}},
"termUnit": "{{txn.line.termUnit}}",
"termMultiplier": {{txn.line.termMultiplier}}
},
"approvals": "{{txn.line.approvals3}}",
"lastModifiedBy": "{{txn.line.lastModifiedBy}}"
}
{{#unless @last}},{{/unless}}
{{/each}}
]
}
If you do not set the doGet function and try to access the URL you will receive an error. If not
using the doGet for other purposes, it is best to always set it to the following and just modify the
text.
function doGet(e) {
return ContentService.createTextOutput('Document Generation
Web App is running.');
}
When you access the live URL, you receive this message:

The doPost is important, because it will probably handle the Webhook or Integration payloads
being sent from ServiceNow CPQ via POST requests.
Next, we create a function to generate a Google Doc using the doPost function.
In your Google Apps script, the doPost function will receive a POST request containing data
(in JSON format) that you want to populate into a Google Doc template. The main logic for
interacting with the Google Doc (i.e., replacing placeholders like {{EXAMPLE}} with actual
values) will be placed in a separate function that is called from doPost.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
To set up the doPost function, define the doPost function to handle incoming POST requests
and call your custom document generation function. Below is an example of how to structure it.
function doPost(e) {
// Parse the JSON data from the POST request
const postData = JSON.parse(e.postData.contents);
// Call the function to create and populate the Google Doc
const docLink = createGoogleDocFromTemplate(postData);
// Return the public link to the generated document in the
response
return ContentService.createTextOutput(docLink);
}
In this code:
• The postData object contains the parsed data sent in the POST request.
• createGoogleDocFromTemplate(postData) is the function you will define to handle
the Google Docs generation.
• The docLink is the public link to the generated Google Doc, returned to the caller.
Next, create the document generation function. The createGoogleDocFromTemplate
function will:
1. make a copy of a Google Doc template.
2. replace placeholders (e.g., {{EXAMPLE}}) in the document with the corresponding data.
3. return a public link to the generated document.
The following code block shows an example createGoogleDocFromTemplate function:
function createGoogleDocFromTemplate(data) {
// Specify the ID of the Google Doc template
var templateId = 'YOUR_TEMPLATE_DOC_ID_HERE';
// Make a copy of the template
var templateDoc = DriveApp.getFileById(templateId).makeCopy();
var doc = DocumentApp.openById(templateDoc.getId());
var body = doc.getBody();
// Replace placeholders with actual data from the POST request
body.replaceText('{{ACCOUNT_NAME}}',
data.transaction.accountName);
body.replaceText('{{QUOTE_NUMBER}}',
data.transaction.quoteNumber);
body.replaceText('{{USER}}', data.transaction.createdBy);
// Continue to replace all other placeholders...
// Save and close the document
doc.saveAndClose();
// Make the document public (optional, based on your needs)
templateDoc.setSharing(DriveApp.Access.ANYONE,
DriveApp.Permission.VIEW);
// Return the public link to the newly created document
return templateDoc.getUrl();
}
In this function:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
• The templateId variable stores the Google Doc template’s ID. You should replace
'YOUR_TEMPLATE_DOC_ID_HERE' with the actual ID of your template.
• makeCopy() creates a copy of the template.
• replaceText('{{EXAMPLE}}', data.key) replaces each placeholder
in the document with actual data from the incoming POST request. For example,
{{ACCOUNT_NAME}} is replaced by data.transaction.accountName.
• The document is made public with setSharing(), but you can adjust the sharing settings
as needed.

Logging
Google Apps Script offers built-in logging via Logger.log() for debugging, but better logging is
available in Google Cloud Logs. To access logs:
Go to > View > Executions to check outputs from your script. Then, connect your project to the
Google Cloud Platform to view the logs.
In the Google Cloud Logs Explorer, apply the filter
resource.type="app_script_function" to view logs related to your app.

Deploying
• Click the “Deploy” button in the top right corner of the Apps Script editor.
• Select “Deploy as web app.”
• Set the project version (you can create a new one).
• Define who can access the app:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
◦ Execute as: This should be set to Me, so the script runs with your permissions.
◦ Who has access: Choose “Anyone” (public).

Once deployed, you’ll get a URL ending in /exec for live usage and /dev for testing. This is
the URL that users will target to trigger the doGet function or send POST requests to trigger
doPost.
In the following examples, the ellipsis (...) represents the unique App Script number for your
script.
• Live: https://script.google.com/macros/s/.../exec
• Dev: https://script.google.com/macros/s/.../dev
If you want to test your changes before pushing them live, use the Dev URL to test your script with
real data.
Every time you redeploy, you need to create a new version of your script. Follow these steps:
1. In the Google Apps Script editor, click the Deploy button in the top right.
2. Select Manage deployments from the menu.
3. In the Deployments window, click Edit on the existing deployment, or create a new
deployment.
4. Click Select Version, and then click New version.
In the pop-up window, you can give your version a name or description. This is optional, but
helpful for tracking changes. Click Save to create the new version.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
To view or manage your current deployments:
1. In the Google Apps Script editor, click the Deploy.
2. Select Manage deployments. Here you’ll see all active versions of your script.
3. You can edit, delete, or redeploy any version by clicking the three-dot menu next to the
version.
• Edit: Update an existing deployment to point to a new version.
• Delete: Remove the deployment entirely (Note: the live link will stop working if the deployment
is deleted).
If needed, you can roll back to an older version of your web app:
1. Go to Deploy > Manage deployments.
2. Find the previous version you want to return to and click Edit.
3. Select the earlier version from the Select Version menu.
4. Click Deploy to activate the previous version.
This provides an easy way to revert any issues that may arise with newer versions.
Solution configuration terminology
Terms used in solution configurations and their definitions.
Solution configuration terminology
Term

Definition

Solution

The collection of blueprints and configurations linked together in a single
configuration session. A configuration becomes a solution when at least one
child configuration is added.

Solution root The top-level configurable product in a solution. This is the product a buyer
launches to start the session. All other configurations in the session are children
of the solution root.
Solution
hierarchy

The parent-child relationship between configurable products in a given solution.
The solution hierarchy is independent of the BOM hierarchy.

Parent
blueprint

A blueprint that contains a rule with a configurable product action targeting
another blueprint. A parent blueprint can also be a child of another blueprint.

Child
blueprint

A blueprint used to create a child configuration. A child blueprint must have a
valid configurable product associated with it. A child blueprint can also be a
parent of another blueprint.

Configurable An extension of the product action that defines the child blueprint, the
product
configurable product, and optional field mappings.
action
Field
mapping

A definition of which fields pass data between blueprints. Data flows from the
source field on the parent blueprint to the target field on the child blueprint.

Source field

The field on the parent blueprint whose value is passed through a field mapping.

Target field

The field on the child blueprint that receives the value from the source field
through a field mapping. Target fields are read-only during a configuration
session.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
Solution configuration terminology (continued)
Term

Definition

Solution
BOM

The consolidated bill of materials that aggregates all products added across
every configuration in the session, including children and grandchildren. The
solution BOM is returned when a solution is saved.

Related topics
Solution configurations
Field mapping in solution configuration
Bill of Materials in solution configuration
Common browser issues while using ServiceNow CPQ
When cookies are blocked by the browser or by browser extensions, it can interfere with the use
of ServiceNow CPQ.
If attempting to configure in ServiceNow CPQ results in an error (configurator not loading, a 403
error is returned, or similar) and using another browser resolves the issue, then the issue must be
with the settings of the original browser.
ServiceNow CPQ uses authentication cookies
to track active sessions across browser tabs.
These cookies do not track the user and are deleted when the user closes their web browser.
Their only purpose is to validate the user and their organization for the use of the software.
If cookies are not enabled in the browser, ServiceNow CPQ cannot configure products. The
browser itself or the extensions used by the end user in this browser could be inhibiting this
active cookie.
Here are some reasons this issue might occur.

Cookie blocking by the browser
By default, Safari and Firefox block all cross-site cookies. This behavior interferes with the
authentication cookie that jumps across ServiceNow CPQ and Salesforce. If either of these
browsers is your (or your end userʼs) default browser, cookies must be allowed to use the
configurator.
If you have no control over what browsers end users use to access the ServiceNow CPQ
Configurator, and you use easyXDM, submit a support case requesting a “runtimeAPI” parameter.
Once the runtime clients are updated to include this parameter, the browsers should work with
their default settings.

Note: Submit a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

Consult your browser's documentation to find the settings that affect whether cookies are
blocked. These settings are often found in the privacy options sections of the browser settings.

Cookie-blocking extensions
Cookies can also be blocked by browser extensions that are installed by the user. Some thirdparty cookie-blocking browser extensions include:
• uBlock Origin
• Privacy Badger
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


<!-- page 1480 -->
• Ghostery
• Disconnect
• Cookie AutoDelete
Other extensions such as email templates or crypto wallets can also cause issues with cross-site
third-party cookies. These extensions include:
• Briskine
• BNB Chain Wallet MetaMask
• WalkMe
Review your browser's plugins to check whether any other extensions could be interfering while
using ServiceNow CPQ. If the end user can configure after all browser extensions are disabled,
one of the extensions must be causing the issue. If you identify an extension that causes the
issue and is not in the list above, please let us know.
ServiceNow CPQ Support Team access to customer Salesforce sites
Learn how ServiceNow CPQ support team members can securely access customer Salesforce
and ServiceNow CPQ Admin environments for troubleshooting. This article outlines
recommended access methods, user-management practices, and considerations for customers
with stricter security policies.
This document outlines the standard processes for ServiceNow CPQ support team members to
gain access to customer environments. These procedures ensure secure, efficient support while
maintaining appropriate access controls.

Note: Some enterprise customers have stricter security policies that prohibit direct
access to their environments, requiring support methods other than those described here.

Salesforce user access
When support requires access to a customer's Salesforce environment, customers can create
a Salesforce user with an email address of provisioning@ServiceNow CPQ.io and system
administrator permissions. This ensures that every member of our support team has access, not
just the one currently working on your case.
For assistance with this process, see Salesforce's official documentation: Adding New Users in
Salesforce

ServiceNow CPQ Admin access
Support team members may need access to ServiceNow CPQ Admin in customer environments.
To learn how to grant access, see User Access .

User management
There is no standard timeline for access removal. Customers can modify access levels by
changing ServiceNow CPQ support users to End User or by deactivating the SFDC user.
In test environments, many customers let our provisioning user stay active indefinitely. Some
utilize our user as the integration user for product/pricebook synchronization, which lets us
troubleshoot more quickly because we can directly investigate the issue.
During a support case, disabled user accounts can be reactivated upon request.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
Common error messages and causes
Look here for information and troubleshooting steps when you receive an error message.

Unable to roll back to previous state
This error is often related to a table lookup. Check to ensure that any tables in a lookup exist in
your ServiceNow CPQ environment. Check the syntax of your lookup to ensure that the table
column headers exactly match your query script. Capitalization or spelling could be off, causing a
table lookup to fail, resulting in this error.
This could also involve circular logic being triggered by a field change, such as the condition
and action of a rule both including the same field. If this error is seen right after selecting a field
option, check the rules related to the field (by last modified date) to help isolate the cause.

Error: Your rules are running beyond the stipulated time. Please contact your
system administrator
Typically, this means that some rules are running in an infinite loop.
A rule may have the same field as part of conditions and actions. For example, a determination
rule sets a field value based on a value already in that field.
Diagnose this by getting the click path to fire error and then inactivating recently modified rules
one at a time to see if the error continues to be encountered.

“...Index '0' is out of bounds…”
This almost always means that something is trying to reference an empty list or an empty array. In
a literal sense, the error message is trying to reference the first index (0) of the list or array and is
finding that 0 is beyond the bounds of the list or array.
Some possible causes:
• Something is misspelled in a table query.
• The query references a cfg value that hasnʼt yet been set, due to the rule conditions.
• The lookup query returned no results.
Null checks on arrays are always a good idea.

Cannot read properties of undefined (reading 'map')
This error occurs on the buyside when the user opens ServiceNow CPQ config.
Review the layout file. Make sure that references to set the variable names are accurate.
ServiceNow CPQ Upgrade Schedule
ServiceNow CPQ updates customer environments on a predictable bi-weekly schedule to deliver
new features, enhancements, and fixes. Test environments are upgraded first, with production
updates following after at least 14 days to ensure stability. You can identify your environment’s
sector from its URL and refer to the Upgrade Calendar to see which version your instance is
currently running.
ServiceNow CPQ Development iterates the application quickly, releasing new software to
customers about every two weeks. Each release delivers new features, enhances existing
features, and fixes bugs. The benefits of each release are outlined in the corresponding Build
Notes publication. Build Notes are sent to account holders of the ServiceNow CPQ Support
Center; they are also posted in the Support Center.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
Customer environments are upgraded according to the following table:
Upgrade windows
Sector

Upgrade Window

test

Biweekly, Thursday 8:00p CT

prod

Biweekly, Friday 8:00p CT

Notes

A build is pushed to
production no less than 14
days after it was introduced
to test environments. To
reduce the risk of upgrading
prod environments as fiscal
periods are ending, the
schedule avoids upgrading
prod environments at the
ends of calendar months.

To determine which version of ServiceNow CPQ your environment is on, first determine the
sector of your environment by inspecting its URL. The sector precedes "ServiceNow CPQ.io" in
the URL. For example, in the URL https://customName.prod.cpq, the sector is prod. Then, find the
current day in the Upgrade Calendar . Review the corresponding test or prod entry for this day.
Glossary
A list of terms used in ServiceNow CPQ
Associated Picklist (AP)
ServiceNow CPQ functionality that allows a set to be generated with predetermined
rows based on the selection of a picklist field.
API (Application Programming Interface)
A way for two or more computer programs to communicate with each other. In
the context of ServiceNow CPQ, APIs are categorized into runtime APIs (create,
update and save configurations) and admin APIs (works with blueprints, fields,
rules, configurable products, managed tables, and various automation tasks).
Bill of materials (BOM)
A list of parts and components needed to manufacture a product.
Blueprint
A collection of associated ServiceNow CPQ rules and fields utilizing a layout that
defines a configuration experience. Identifying a product as a configurable product
for a blueprint means it will launch the related configuration experience when
selected.
BOM type
A category in which products in the BOM will be organized under (such as sales or
manufacturing).
Buyside
Refers to the ServiceNow CPQ experience that the end user sees.
Configurable product
A product that is associated with a blueprint that kicks off the ServiceNow CPQ
configuration experience. The relationship to the blueprint differs whether
ServiceNow CPQ is being used as a headless application or in Salesforce.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
Configuration Line Item (CLI)
Records that are generated from a configuration and associated with the
Configuration Line Item object. A configuration ID lets related configuration line
items be grouped together.
CPQ (Configure, Price, Quote)
A category of sales software that lets users configure products and services, apply
pricing, and generate price quotes.
CRM (Customer Relationship Management)
Software that manages all your companyʼs relationships and interactions with
customers and prospects. Some examples are Salesforce and Microsoft Dynamics,
but there are many more.
Enrichments
Scripts that run outside of the rules engine that affects configurations in ServiceNow
CPQ. Enrichments can run on configure, on reconfigure, on BOM response, or via
picklist extension pricing.
Expert Services (ES)
Consulting hours purchased from the ServiceNow CPQ Expert Services team to
receive design or implementation guidance, request build work to be done, etc.
External Connections
Allows for data for a ServiceNow CPQ configuration to be retrieved from outside of
ServiceNow CPQ. Called from in an enrichment.
Field
Allows input to be gathered from the end user and stores data. There are several
types of Fields that can be used to meet various needs, including: text, date,
Boolean, number, and picklist.
Field grid
A series of fields displayed as a matrixed layout.
Flightpath
ServiceNow CPQ feature that allows administrators to record a configuration
session tracks end-user inputs and how the ServiceNow CPQ rules engine
responds.
Go-Live
When your ServiceNow CPQ implementation is moved to a production environment
and begins to be used by end users in some capacity.
Headless application
An application where the backend (data, logic, and functionality) is decoupled
from the frontend (user interface). ServiceNow CPQ is headless in the sense that
customers can leverage its powerful functionality via APIs in their desired techstack.
Layout
The visual experience that an end user sees when configuring a product in
ServiceNow CPQ. Every blueprint in ServiceNow CPQ has a layout that can be
customized by the Admin. Beginning at the lowest level, layouts contain fields,
which are housed in columnsets. Finally, columnsets are situated in containers
called tiers, which can be nested if desired.
Matrix Loader

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
A feature in ServiceNow CPQ that enables the bulk upload of multiple types of
data into ServiceNow CPQ, such as data in CSV files or entire ServiceNow CPQ
blueprints.
Migration
The act of moving your ServiceNow CPQ work from one environment to another.
This could be from one test environment to another, or from a test environment to a
production environment.
Picklist extension (PLE)
ServiceNow CPQ feature for picklist field options that allows product info or
additional info to be displayed, as well as filtering options.
Price Book Entry (PBE)
Price books associate products with their prices in Salesforce.
Product
A product can refer to many things, such as the companyʼs product itself, a
configurable product (e.g “Computer”) or product part (e.g. “Motherboard”)
in ServiceNow CPQ, and even an entry of the company product in a CRM like
Salesforce.
Product action
ServiceNow CPQ functionality used in tandem with a rule. The rule would specify
the conditions that need to be met, and a product action can be defined to add a
product to the BOM accordingly.
Product ID
A unique identifier for a product, commonly used to refer to the unique IDs for
products in Salesforce. An example of a Product ID is 01tHn00000VB38mIAD.
Product picker (PP)
This functionality allows you to display a number of options that represent products.
When options are selected, the product will be added to the BOM. Additional
columns of new or existing fields can also be appended to surface more metadata
along with the ability to aggregate.
Production environment
A ServiceNow CPQ Production environment represents your live and active
environment currently being utilized, and is the most sensitive. Best practices are to
do any implementation work in your test/sandbox ServiceNow CPQ environment,
test it, and then migrate the work to your production environment along with some
final testing.
Quote Calculator Plugin (QCP)
A plugin for Salesforce CPQ that provides extra functionality in the quote line editor
by means of custom JavaScript code.
Quote Line Editor (QLE)
When using Salesforce CPQ, this interface allows you to add/remove products,
apply discounts and markups, and calculate prices for the quote.
Rule
Comprising conditions and actions, and associated with a blueprint, rules
are the powerhouse that provides the ability to hide/show content, deliver
recommendations and messages, add products to a BOM, and more.
Rule action

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
Defined in a rule, rule actions are what will fire when a ruleʼs conditions are met.
Action types consist of hiding/showing, excluding/including, Messages, adding
products, Determination (populating fields with metadata), and more.
Sandbox environment
A type of environment that should be used to build-out new implementations or
features of ServiceNow CPQ according to best practices. Once built and tested, the
work can be moved into a Production environment and tested again before use in
an active workflow. Also known as a test environment.
Service level agreement (SLA)
The level of service expected from a vendor. An example of a ServiceNow CPQ SLA
could be how quickly customers can expect a support case to be acknowledged
after being created.
Set
A feature that groups fields so they can be multiply replicated in the end-userʼs
UI in a matrix format. Sets reduce the number of fields and rules that need to be
defined in scenarios where the same fields are being repeated. Analogous to
Configuration Arrays in Oracle.
Set repeater
Functionality that allows you to easily create new indices in a set.
System Integration Testing (SIT)
A QA process to ensure the compatibility of two or more systems.
Table
ServiceNow CPQ has tables (relational databases) that allow data to be stored,
which can then be retrieved using able lookups.
Table lookup
Utilizing a programming language called SQL (Structured Query Language), tables in
ServiceNow CPQ can be queried using scripts to retrieve specific information.
Test environment
See Sandbox environment.
Twinning
The ability to automatically pull data from a Salesforce quote field into a ServiceNow
CPQ field by creating a CPQ quote custom field using the format “<fieldName>LGK”
in Salesforce, and a matching “<fieldName>” in ServiceNow CPQ.
User acceptance testing (UAT)
Also known as end-user testing, this is a phase near the end of implementation and
before going live. A small group of the end-users will run through various scenarios
to validate the desired end-user experience and address any issues or bugs before
the full launch.
The ServiceNow CPQ Technology and Product Training Portal
The ServiceNow CPQ Training Portal includes self-paced video training content.
ServiceNow CPQ is excited to introduce the ServiceNow CPQ Product & Technology Training
Portal. This new training portal is your one-stop shop for all things training for ServiceNow CPQ.
On the site you will find a library of self-paced video training content that covers all current
products and features available at ServiceNow CPQ. This is training the way you want it, on your
schedule, at your pace.
You can go to the homepage of the Training Portal at ServiceNow University

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
The portal is a subscription-based site where you can purchase 12 months of access to all
current and future ServiceNow CPQ training content for one price.
On the portal you will find the following Learning Tracks:
Introduction to ServiceNow CPQ:
These modules are free to view by any individual without the need to create an account on the
portal. These modules provide the student with a high level overview of the ServiceNow CPQ
Commerce Logic Engine, its purpose, its main features and advantages, as well as a review of its
major components. There is also a video demonstration of the end-user interface that a sales rep
or customer would use to configure products for purchase, as well as a video demonstration of
the ServiceNow CPQ Administration user interface that system administrators use to create and
maintain ServiceNow CPQ configurations.
Using ServiceNow CPQ with Salesforce:
ServiceNow CPQ Essentials: The student is presented with learning modules that cover the
core, central features of the Commerce Logic Engine as they are used in a Salesforce application
environment. These 18 modules provide you with practical knowledge of how to perform various
processes in the software that an administrator will perform on a daily basis. The student is
provided video-based lectures on each topic, a video-based demonstration of how to complete
any practice exercise for that topic, a PDF student guide document that has all the slides, and
student notes,. Also, a lab exercise is provided that will allow the student to perform the practical
procedures described for the topic.
ServiceNow CPQ Advanced Administration: The student is presented with learning modules
that cover the more, advanced features of the Commerce Logic Engine as they are used in a
Salesforce application environment. These 12 modules provide you with practical knowledge
of how to perform various processes in the software that an administrator will perform when
implementing various advanced features. The student is provided video-based lectures on each
topic, a video-based demonstration of how to complete any practice exercise for that topic, a
PDF student guide document that has all the slides, and student notes,. Also, a lab exercise is
provided that will allow the student to perform the practical procedures described for the topic.
Using ServiceNow CPQ in an eCommerce Implementation:
ServiceNow CPQ Essentials: The student is presented with learning modules that cover the core,
central features of the Commerce Logic Engine as they are used in an eCommerce application
environment. These 18 modules provide you with practical knowledge of how to perform various
processes in the software that an administrator will perform on a daily basis. The student is
provided video-based lectures on each topic, a video-based demonstration of how to complete
any practice exercise for that topic, a PDF student guide document that has all the slides, and
student notes,. Also, a lab exercise is provided that will allow the student to perform the practical
procedures described for the topic.
ServiceNow CPQ Advanced Administration: The student is presented with learning modules
that cover the more, advanced features of the Commerce Logic Engine as they are used in an
eCommerce application environment. These 12 modules provide you with practical knowledge
of how to perform various processes in the software that an administrator will perform when
implementing various advanced features. The student is provided video- based lectures on each
topic, a video-based demonstration of how to complete any practice exercise for that topic, a
PDF student guide document that has all the slides, and student notes,. Also, a lab exercise is
provided that will allow the student to perform the practical procedures described for the topic.
ServiceNow CPQ APIs:
ServiceNow CPQ admin APIs: These 25 learning modules provide the student with an overview
of all of the available admin APIs for ServiceNow CPQ. Each module reviews a specific subset
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
of the admin APIs, and gives the student the syntax of each API call, the required parameters
for each call, a description of each parameter, and real world examples of what an actual call
might look like in use. Also, a demonstration of the use of every API call is performed so that the
student can see what the complete API request would look like, including the request payload,
if needed. The response to each API call is then reviewed to allow the students to see what they
should expect to get back once the call is executed.
ServiceNow CPQ Run Time APIs: This set of 3 learning modules provides content that cover the
various Run Time APIs for ServiceNow CPQ. Each module reviews a specific subset of the Run
Time APIs, and gives the student the syntax of each API call, the required parameters for each
call, a description of each parameter, and real world examples of what an actual call might look
like in use. Also, a demonstration of the use of every API call is performed so that the student can
see what the complete API request would look like, including the request payload, if needed. The
response to each API call is then reviewed to allow the students to see what they should expect
to get back once the call is executed.
Use Cases:
These modules cover specific use cases for ServiceNow CPQ and provide the student with an
explanation of the use case and why you might need it, as well as a demonstration of how the
use case can be implemented in ServiceNow CPQ, including the components that need to be
set up in order to implement the use case.
New Feature Training:
These free modules are produced monthly and provide the student with an overview of the latest
new features that have been added to the Commerce Logic Engine.
In the top right corner of the home page you will find the Course Catalog link. The Course Catalog
provides you with course descriptions of all training modules contained on the portal. You can
use the Categories checkboxes to sort the course descriptions to help you find the information
that is most important to you.
In the Student Home page you can view the Course Catalog and select courses, monitor your
progress, join a Group, participate in Discussions, and view Calendar events such as live, virtual
Office Hours events where you can talk with a ServiceNow CPQ training professional to help you
better understand the learning content, or help you with any issues you might with the content or
the lab exercises.
ServiceNow University

Training Portal Demo

For more information about the Training Portal and how to purchase a subscription to the Portal,
contact ServiceNow CPQ Training or your ServiceNow CPQ Sales Representative.
UI display components
View examples of picklist, text, and number fields as they appear to end users in the ServiceNow
CPQ UI.

Picklist fields
Picklist fields
Name

RadioButtons

Options

Appearance

Notes

Single-select

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


<!-- page 1488 -->
Picklist fields (continued)
Name

Options

Appearance

Notes

VerticalRadio

Single-select

Radio

Single-select

Checkbox

Multi-select

VerticalCheckbox

Multi-select

Picklist

Single-select;
includes combo box
for filtering

BasicPicklist

Single-select;
selection only; no
combo box for filtering

MultiSelectPicklist

Multi-select; includes
combo box for filtering

VisualPicker

Single-select using
images

MultiSelectVisualPicker

Multi-select using
images

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
Picklist fields (continued)
Name

Options

Appearance

Notes

ExtendedPicklist

Single-select using
images; picklist
extension; includes
combo box for filtering

MultiSelectExtendedPicklist

Multi-select using
images; picklist
extension; includes
combo box for filtering

ExtendedPicklistDisplayOnly

Single-select using
images; picklist
extension; includes
combo box for filtering

• Hide field label
• Hide option label
• Center content
• Arrange horizontally
or vertically
• Control image size

MultiSelectExtendedPicklistDisplayOnly
• Hide field label

• Hide option label
• Center content

Multi-select using
images; picklist
extension; includes
combo box for filtering

• Arrange horizontally
or vertically
• Control image size

SingleSelectPicklistGrid

• Set column headers
• Set column
alignment

Single-select using
images; picklist
extension

• Control image size
Price display
(currency code or
symbol) follows layout
settings
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
Picklist fields (continued)
Name

Options

MultiSelectPicklistGrid

• Set column headers
• Set column
alignment

Appearance

Notes

Multi-select using
images; picklist
extension

• Control image size
Price display
(currency code or
symbol) follows layout
settings

SingleSelectProductPickerGrid

• Set column headers
• Set column
alignment

Single-select using
images; product
picker

• Control image size
Automatically creates
product rules
Price display
(currency code or
symbol) follows layout
settings
User can edit custom
subfields - includes
quantity by default
Bulk actions:
• Set values
• Include or exclude
options
• Specify minimum
and maximum
quantity

MultiSelectProductPickerGrid

• Set column headers
• Set column
alignment

Multi-select using
images; product
picker

• Control image size
Automatically creates
product rules
Price display
(currency code or
symbol) follows layout
settings
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
Picklist fields (continued)
Name

Options

Appearance

Notes

User can edit custom
subfields - includes
quantity by default
Bulk actions:
• Set values
• Include or exclude
options
• Specify minimum
and maximum
quantity

VisualProductPicker

Single-select using
images; product
picker

• Wide or tall
rectangle
• Image, label, price,
description, and
quantity fields

MultiSelectVisualProductPicker

Multi-select using
images; product
picker

• Wide or tall
rectangle

• Image, label, price,
description, and
quantity fields

Text fields
Text fields
Name

Options

Appearance

Notes

Text
TextArea
ReadOnlyText

Supports markdown
formatting, including
links and inserting

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
Text fields (continued)
Name

Options

Appearance

Notes

content from other
fields

Date

FormattedNumber

Supports units before
or after number,
displayed within the
input

LocationLookup

Accesses Google API
and returns location
data, which can be
inserted into specified
fields

Number fields
Number fields
Name

Number

Options

Appearance

Notes

Minimum and
maximum values; step
size
Layout value example:
{"step":1,"min":0,"max":100}

Slider

Minimum and
maximum values; step
size
Layout value example:
{"step":1,"min":0,"max":100}

NumberWithSubmit Button label

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


