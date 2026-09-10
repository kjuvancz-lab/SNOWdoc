# Australia Sales Customer Relationship Management — Lead and opportunity management apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 755–796 of 1645

Sections: Lead and opportunity management apps (p755)

---

<!-- page 755 -->
)
},
security

= [{"bearer": []}]

)

Field reference
A2A AgentCard field reference
Field

Type

Description

name

string

Human-readable display
name shown in AI Agent
Studio.

url

string (URL)

Base URL of the running
middleware. Must be
reachable from ServiceNow.

version

semver

Agent implementation version.
Increment on breaking
changes.

protocol_version

string

A2A protocol version this
agent complies with. Currently
0.3.0.

preferred_transport

enum

Set to jsonrpc. Orchestrators
should default to JSON-RPC
when contacting this agent.

default_input_modes

list[string]

MIME types accepted
as input. Populated from
ConfigConverseAgent.SUPPORTED_CONTENT_

default_output_modes

list[string]

MIME types returned as
output. Matches input modes.

capabilities

object

Structured capability flags
declared by the agent to the
orchestrator.

skills

list[skill]

One or more skill descriptors
defining what tasks this agent
can perform.

security_schemes

object

Declares the bearer scheme.
Key must match the entry in
the security list.

security

list[object]

Enforces bearer auth on all
agent interactions.

Configuring the lead and opportunity management applications
Learn how to install and configure the lead and opportunity management applications to support
pre-sales workflows.
Installing and configuring the following applications involve installing the application from the
ServiceNow Store store, assigning appropriate roles to users and groups, and then configuring
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
app-specific features such as lead assignment rules, opportunity stages, forecasting settings,
and so on.
1. Install and configure Lead Management
Install the Lead Management application, which enables sales agents and sales development
representatives to create leads and provide pre-sales product recommendations based on
customer needs. You then assign the user roles and configure related features, such as needs
analysis and kanban view used in Lead Management.
2. Configuring Customer Engagement Sequences
Install and configure Customer Engagement Sequences so that the sales representatives can
receive predefined sequence steps for interacting with prospects and customers.
3. Configuring Buying Group
Learn how to configure Buying Group to organize multiple contacts within Sales CRM by
account and product offering family, and link them to opportunities.
4. Install and configure Opportunity Management
Install the Opportunity Management application to enable your sales agents and account
executives to create and manage opportunities that identify and track potential sales based on
identified customer needs.
5. Configure Sales Forecasting
Activate and configure the Sales Forecasting plugin help your sales teams project future sales
volumes and revenue based data from opportunities and pipeline analysis.
6. Configuring Sales Territory Management​
Install the Sales Territory Management​ application from the ServiceNow Store store.
Configure the features and components that help distribute accounts, consumers, leads, and
opportunities to manage sales territories.
7. Configuring Activity Management
Install and configure the necessary plugins for enabling Activity Management features.
Related topics
Using lead and opportunity management applications
Lead and opportunity management

Install and configure Lead Management
Install the Lead Management application, which enables sales agents and sales development
representatives to create leads and provide pre-sales product recommendations based on
customer needs. You then assign the user roles and configure related features, such as needs
analysis and kanban view used in Lead Management.
Admins and users with various roles, such as application admins and sales operation specialists,
complete the following configuration tasks to set up Lead Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
Configuration tasks for Lead Management
Task

Description

Role

Install Lead Management

Install Lead Management from Admin
®
the ServiceNow Store Store.
Assign the user roles for Lead Admin
Management, Product Catalog
Management, and Pricing
Management.

Configuring product offerings
and catalogs

Create the product offerings
and catalogs, unless they've
been previously defined.

Product catalog admin

Configuring needs analysis

Create the needs templates
for questionnaires that sales
agents complete to get
product recommendations for
leads.

Product catalog admin

Related topics
Using Lead Management
Lead Management
Install Lead Management
If you have the admin role, you can install the Lead Management application. The application
®
includes the demo data and installations that are related to ServiceNow Store applications and
plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you may have to install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Lead Management:
• Plugins
• Store applications
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Lead Management application (sn_quote_mgmt) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you can't find the application, request it
from the ServiceNow Store.
Visit the ServiceNow Store
to view all the available apps, and for information about submitting
requests to the store. For cumulative release notes information for all released apps, see the
ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Lead Management.
4. If you want to install demo data, do one of the following depending on your entitlements.
Demo data install task

Description

a. Select the Load Demo Data option.
If demo data is available and you want to in­
stall it

b. Select Install.

Important: If you don't load the demo
data during installation, it's unavailable
to load later.
Load the demo data after installing Opportuni­
ty Management.
a. Install Lead Management.
b. Navigate to the All and in the Filter, type v_­
plugin.list.

If the Load Demo Data option isn’t available
c. In the System Plugin list, search for Lead
but you want demo data
Management data model (sn_l2c_lead_­
mgmt_data_model) plugin.

d. In the System Plugin Lead Management da­
ta model window, under Related Links, se­
lect Install Demo Data Only.
Related topics
Using Lead Management
Lead Management

Configuring Customer Engagement Sequences
Plan and configure your implementation of Customer Engagement Sequences.

Configuration overview
Create multi-trigger, multi-step sequences using the Customer Engagement Sequences
application so that sales representatives can engage with prospective leads or customers on
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
outreach-related activities in an organized format. Build telesales workflows using schedule
call activity and decision nodes. Integrate with platforms such as Amazon Connect to enable
outbound calling from the sequence task.
1. Install Customer Engagement Sequences
You can install the Customer Engagement Sequences application (com.sn_crm_sequence) if
®
you have the admin role. The application installs related ServiceNow Store applications and
plugins if they are not already installed.
2. Grant delegated developer permissions for managing sequences
Assign delegated developer roles to designated Customer Engagement Sequences users so
they can create and manage sequences without needing a system admin role.
3. View feature availability and compatibility information
Which features are supported in Customer Engagement Sequences is determined by
combinations of the ServiceNow AI Platform, Playbooks in Workflow Studio, and the Customer
Engagement Sequences app version. Review the feature availability and compatibility
information to make informed decisions during upgrades or deployments and take advantage
of optimal functionality.

What to do next
Create a customer engagement sequence
Drive personalized outreach by creating customer engagement sequences that automate
timely, relevant interactions, ideal for nurturing leads, onboarding clients, or reengaging inactive
customers.
Related topics
Using Customer Engagement Sequences
Components installed with Customer Engagement Sequences
Install Customer Engagement Sequences
You can install the Customer Engagement Sequences application (com.sn_crm_sequence) if you
®
have the admin role. The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Customer Engagement Sequences
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Customer Engagement Sequences:
• Roles
• Tables
For more information, see Components installed with Customer Engagement Sequences.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Customer Engagement Sequences application (com.sn_crm_sequence) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Related topics
Using Customer Engagement Sequences
Customer Engagement Sequences
Grant delegated developer permissions for managing sequences
Assign delegated developer roles to designated Customer Engagement Sequences users so
they can create and manage sequences without needing a system admin role.

Before you begin

Role required: admin

Procedure
Assign the Manage Update Set delegate developer permission to the following users:
• sn_crm_sequence.admin
• sn_crm_sequence.writer
• pd_author or playbook.admin (for version 1.0.0.)
For more information, see Delegated development and deployment
deployment permissions .

and Developer and

Related topics
Using Customer Engagement Sequences
Customer Engagement Sequences
Compatibility information for Customer Engagement Sequences
The features that are supported in Customer Engagement Sequences are determined by
combinations of ServiceNow AI Platform, Playbooks in Workflow Studio, and the Customer
Engagement Sequences app version.
The following versions of the Customer Engagement Sequences application are compatible with
®
the ServiceNow Xanadu, Yokohama, Zurich, and Australia releases:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
• Customer Engagement Sequences 1.0.0
• Customer Engagement Sequences 2.0.1
• Customer Engagement Sequences 2.1.0
The following table provides a comparison of features available with two Customer Engagement
Sequences version 1.0.0 and 2.0.1.

Feature

Customer Engagement
Sequences 1.0.0

Customer Engagement Sequences
starting with version 2.0.1

Roles

• Sequence viewer

• Sequence admin (granular
admin role)

For more information, see
Components installed with
Customer Engagement
Sequences.

• Sequence task read
granular

• Sequence executor (renamed
from Sequence viewer)
• Sequence writer
• Sequence reader
Provides the ability to view
the sequences in Playbooks
starting with the Zurich
release.
• Sequence task read granular

Schedule call activity

Unavailable

Available starting with the
Xanadu release.

Multi-trigger capability

Available starting with
the Zurich release and
Playbooks version 28.1.

Available starting with the Zurich
release and Playbooks version
28.1.

Available starting with
the Zurich release and
Playbooks versions 28.3.

Available starting with the Zurich
release and Playbooks version
28.3.

Available starting with
the Zurich release and
Playbooks version 28.1.

Available starting with the Zurich
release and Playbooks version
28.1.

Decision branches for stages
Demo data
Runtime permissions

Note: The click-to-call capability and activity picker options for the Schedule call activity
in Workflow Studio vary by release.
• In Xanadu and Yokohama, only the Schedule call activity is available in the activity picker
and does not include the click-to-call capability.
• Starting with Zurich and Customer Engagement Sequences 2.1.0, both Schedule call and
Schedule call - Deprecated appear in the activity picker. Use the Schedule call activity to
enable the click-to-call capability.
Related topics
Using Customer Engagement Sequences
Customer Engagement Sequences
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
Configuring Buying Group
Learn how to configure Buying Group to organize multiple contacts within Sales CRM by account
and product offering family, and link them to opportunities.

Activate Buying Group
As an admin, activate the plugin (sn_buying_group) to enable users to access Buying Group. For
more information, see Activate a plugin .
Buying Group plugin
Plugin

sn_buying_groups

Description

Dependency

• Represent collections
of contacts involved in a
purchasing decision.

• Product Catalog
Management Core (com.sn_prd_pm)​

• Organize stakeholders
by role or context and
support associating multiple
contacts with accounts,
product families, and sales
opportunities.

• Sales common (com.sn_l2c_sales_common)
• Customer service (com.sn_customer_service)

What to do next
View buying group engagement metrics
View a buying group engagement metrics to track how individual members and the group
as a whole interact across marketing and sales activities, providing a consolidated view of
participation, engagement levels, and buying readiness throughout the buying group lifecycle.
Related topics
Using Buying Group
Install and configure Opportunity Management
Install and configure Lead Management
Create new buying groups
Create buying groups for an account and product family to capture the set of decision‑makers,
influencers, and evaluators involved in a purchase decision.

Before you begin

Role required: bg_admin; bg_writer

Procedure
1. Navigate to All > Buying Group > All Buying Groups.
2. Select New.
3. On the form, fill in the fields:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
Create New Buying Groups form
Fields

Description

Buying Groups
Number

A systemʼassigned, humanʼreadable
identifier for the Buying Group record.

Name

The name of the Buying Group. It identifies
the buying decision being tracked, typically
for a specific account and product family.

Account

The customer account to which the Buying
Group belongs. The Buying Group is always
associated with a single account.

Product Family

The product family associated with the
Buying Group. Each Buying Group is created
for a specific product family within an
account.

Owner

The sales or marketing user responsible
for managing the Buying Group, including
maintaining its members, roles, and lifecycle
status.

Stage

Represents the current lifecycle state
of the Buying Group. Stages reflect the
progress of the buying decision itself (for
example, Identified, Qualified, Inʼsales
motion, Successful, or Disqualified) and are
independent of opportunity stages.

Description

Optional text that provides additional
context about the Buying Group, such as the
purpose of the buying decision or relevant
background information.

Active

Indicates whether the Buying Group is
currently active. Inactive Buying Groups
represent completed or discontinued.

System Information
Created

The date and time when the Buying Group
record is created.

Created by

The user who created the Buying Group
record.

Notes
WorkNote

An internal notes field used to record
observations, updates, and important
context related to a Buying Group. It captures
ongoing activities, signals, or decisions
associated with the purchase and supports
internal collaboration and tracking.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
4. Select Save.
The new buying group is created.
Related topics
Using Buying Group
Buying Group
Add buying group member
Add buying group member to a buying group to represent decision participants, assign roles
within the decision process, track active participation, enable opportunity synchronization, and
support accurate assessment of decision structure.

Before you begin

Role required: bg_admin; bg_writer

Procedure
1. Navigate to All > Buying Group > All Buying Groups.
2. Select the Buying Group record where you want to add members.
3. Go to Buying Group Members tab.
4. Select New to create a new Buying Group Member.
5. On the form, fill in the fields:
Buying Group Member form
Fields

Description

Buying Group

Buying Group to which the member belongs.

Role

Defines the role or responsibility of the
contact within the Buying Group, such as
Business user, Decision maker, Economic
buyer, Evaluator, Executive sponsor, or
Influencer. The role indicates how the
individual participates in the purchase
decision.

Contact

References the qualified customer contact
added as a member of the Buying Group.

Active

Indicates whether the member is currently
participating in the buying decision. Inactive
members remain associated for historical
context but are not considered part of the
active decision structure.

6. Select Save.
The new buying group member is added.
Related topics
Using Buying Group
Buying Group

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
Associate buying group to an opportunity​
Associate a buying group with an opportunity to connect the opportunity to the set of
decision‑makers, influencers, and evaluators involved in the purchase.

Before you begin

Role required: Opportunity Writer

Procedure
1. Navigate to All > Buying Group > All Buying Groups.
2. Select the Buying Group record where you want to associate an opportunity.
3. Go to Opportunity - Buying Groups tab.
4. Select New to create a new opportunity - buying groups association.
5. On the form, fill in the fields:
Opportunity - Buying Groups form
Fields

Description

Buying Group

Buying Group being associated with the
Opportunity. The selected Buying Group
represents the set of stakeholders involved in
the purchase decision for a specific product
family and account.

Opportunity

Opportunity to which the Buying Group is
associated. This field links the Buying Group
to a specific sales opportunity and provides
the context for the buying decision.

6. Select Save.
The opportunity associates to the buying group.
Related topics
Using Buying Group
Buying Group

Install and configure Opportunity Management
Install the Opportunity Management application, which enables sales agents and account
executives to get pre-sales product recommendations based on customer needs. You
then assign the user roles and configure related features, such as needs analysis, used in
Opportunity Management.
Admins and users with various roles, such as application admins and sales operation specialists,
complete the following configuration tasks to set up Opportunity Management.
Configuration tasks for Opportunity Management
Task

Description

Role

Install Opportunity
Management

Install Opportunity
Management from the
®
ServiceNow Store Store.

Admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
Configuration tasks for Opportunity Management (continued)
Task

Description

Role

Assign the user roles for
Admin
Opportunity Management,
Product Catalog Management,
and Pricing Management.
Configuring product offerings
and catalogs

Create the product offerings
and catalogs, unless they've
been previously defined.

Product catalog admin

Configuring product pricing

Define the price lists, pricing
strategies, and other pricing
features that you want to
use, unless they've been
previously defined.

Pricing admin

Configure needs analysis

Create the needs templates
for questionnaires that sales
agents complete to get
product recommendations for
sales opportunities.

Product catalog admin

Configure location-based
transactions

Activate the system
property for location-based
transactions and set up
the rule entity and product
eligibility decision rules.

Admin and product catalog
admin

Create opportunity stages

Create sales cycle stages for
an opportunity.

Create a sales cycle for an
opportunity

Create a sales cycle type for
an opportunity.

Opportunity setup writer

Associate a sales cycle with
the opportunity stage

Link one or multiple
opportunity stages with a
sales cycle.

Opportunity setup writer

Configure guided selling
activities in a playbook

Define mandatory exit
Opportunity setup writer
criteria per opportunity
stage to enforce process
compliance and prevent stage
advancement until required
actions are complete.

Opportunity setup writer

Related topics
Using Opportunity Management
Opportunity Management
Install Opportunity Management
You can install the Opportunity Management application (sn_opty_mgmt) if you have the admin
®
role. The application includes demo data and installs related ServiceNow Store applications
and plugins if they are not already installed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Opportunity Management
application listing in the ServiceNow Store for
information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Opportunity Management:
• Roles
• Tables
For more information, see Components installed with Opportunity Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Opportunity Management application (sn_opty_mgmt) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
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
Related topics
Using Opportunity Management
Opportunity Management
Create opportunity stages
Create sales cycle stages for an opportunity.

Before you begin

Role required: sn_opty_mgmt_core.opportunity_setup_writer

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
Procedure
1. Navigate to All > Opportunity Management > Opportunity Stages.
2. Select New to create an opportunity stage or select an existing opportunity stage to make
changes.
3. Fill in the fields in the Opportunity Stage form.
Opportunity Stage form
Fields

Descriptions

Name

Name of the opportunity stage. For example,
Qualify or Develop or Propose or Negotiate.

Order

Number of orders that is in the opportunity
stage.

Type

Type of the opportunity stages. For example,
Open or Closed.

Active

When the checkbox is selected, the
opportunity stage is active.

4. Select Submit.
The sales cycle stage has now been created for the opportunity.
Related topics
Using Opportunity Management
Opportunity Management
Create a sales cycle for an opportunity
Create a sales cycle type for an opportunity.

Before you begin

Role required: sn_opty_mgmt_core.opportunity_setup_writer

Procedure
1. Navigate to All > Opportunity Management > Sales Cycle Types.
2. Select New to start a new sales cycle type or select an existing sales cycle type to make
changes.
3. Fill in the fields in the Sales Cycle Type form.
Sales Cycle Type form
Fields

Descriptions

Code

Type of sales cycle. For example, NEW
RENEW or NEWCUST or UPSELL.

Short Description

More information about the new opportunity
sales cycle.

Active

When the checkbox is selected, the sales
cycle is active.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
4. Select Submit.
The sales cycle type has been created for the opportunity.

What to do next

Add sales cycle stages to your opportunity. To learn more, see Create opportunity stages.
Related topics
Using Opportunity Management
Opportunity Management
Associate a sales cycle with the opportunity stage
Link one or multiple opportunity stages with a sales cycle.

Before you begin

Role required: sn_opty_mgmt_core.opportunity_setup_writer

Procedure
1. Navigate to All > Opportunity Management > Sales Cycle Types.
2. Select an existing sales cycle type to make changes.
3. On the Sales Cycle Stages related list, select Edit.
4. Select and move one or multiple opportunity stages from Collection on the left to Sales Cycle
Stages List on the right.
5. Select Save.
The sales cycle and opportunity stages have been associated.
Related topics
Using Opportunity Management
Opportunity Management
Configure allocation types
Create and activate allocation types to control how sales credits are split among multiple sales
users when they work on the opportunity together.

Before you begin

Role required: sn_opty_mgmt_core.opportunity_setup_writer

Procedure
1. Navigate to All > Opportunity Management > Opportunity Allocation Types.
2. Select New.
3. On the form, fill in the fields.

Field

Description

Name

Unique business identifier for the allocation
type:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
Field

Description

◦ Revenue: Distributes the total opportunity
amount across eligible participants for
ownership, forecasting, and credit.
◦ Overlay: Distributes product or line-level
opportunity value for shared credit and
forecasting.

Note: By default, Revenue and
Overlay allocation types are available.
Order

Determines order of display on UI and related
lists wherever applicable.

Description

(Optional) Details about the opportunity
allocation type.

Note: Provides business context for
administrators.
Allocation Table

The table or entity the allocation type applies
to (Opportunity or Opportunity Line).

Allocation Field

The metric used for allocation (for example,
Amount, Cumulative TCV).

Active

Determines if this allocations type is active
and available for allocation processing.

Requires Full Allocation

Specifies whether all allocations under this
type must sum to 100%.

Filter by

Allows to configure conditions on the
Allocation object. Only records satisfying
these conditions will be used for generating
the final numbers.

Note:
You can only modify inactive allocation types.
You can't delete allocation types if it is in use in Opportunity allocations.
4. Select Submit.

Result

The opportunity allocation type is created and listed on the Opportunity Allocation Types page.
Related topics
Using Opportunity Management
Opportunity Management
Associate allocation dimensions with allocation types
Associating allocation dimensions to allocation types enables consistent, transparent,
multi‑dimensional roll‑ups for reporting and forecasting.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
Before you begin

Role required: sn_opty_mgmt_core.opportunity_setup_writer

About this task

An allocation dimension defines the attributes (for example, Territory, Product Offering Family)
used to group records for allocation. Use this task to create a dimension that determines how an
Opportunity Allocation Type groups records and allocates amounts during allocation processing.

Procedure
1. Navigate to All > System Definition > Tables.
2. Select the Opportunity Allocation Dimension table.
3. On the Opportunity Allocation Dimension table related links, select Show List.
4. Select New to create an opportunity allocation dimension record.
5. On the form, fill in the fields.

Field

Description

Allocation Type

Specifies the type of opportunity allocation.

Name

Unique display name of the allocation
dimension.

Allocation Table

The table or entity the allocation type applies
to (Opportunity or Opportunity Line).

Allocation Table Field

The field from the source entity that is used
as the basis for the allocation (e.g., product
family, territory).

Opportunity Allocation Table

The table used to store allocation records for
opportunities.

Opportunity Allocation Field

The field in the allocation table that
references the allocation basis from the
source record.

Active

Indicates whether the allocation dimension is
available for use.

6. Select Submit.

Result

The opportunity allocation dimension is created and listed on the Opportunity Allocation
Dimensions page.

What to do next
• Manage allocations
• Add or edit opportunity allocations
• Split opportunity allocation
Related topics
Using Opportunity Management
Opportunity Management
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
Configure guided selling activities in a playbook
Define the mandatory activities that sales agents must complete at each opportunity stage
by configuring a playbook. Agents cannot advance an opportunity to the next stage until all
activities for the current stage are complete.

Before you begin

The opportunity stages for your sales cycle must be defined before you configure guided selling
activities. For more information, see Create opportunity stages.
Role required: sn_opty_mgmt_core.opportunity_admin

About this task

Guided selling uses a playbook to define the activities that sales agents must complete at each
opportunity stage. When an agent tries to advance an opportunity to the next stage, the system
checks whether all activities for the current stage are complete. If any activities are incomplete,
the system prevents the stage change and displays the outstanding actions.
The default playbook is configured for opportunities with a sales cycle type of New Business.
You can configure additional playbooks for other sales cycle types. Each stage in a playbook
requires a stage entry automation activity at the start and a stage exit automation activity at the
end. Between these two automation activities, you can add any combination of activities based
on your business requirements.
The system records activity completion state in the Sales CRM Progression Checkpoint table.
When an agent tries to advance an opportunity, the system checks this table to determine
whether all activities for the current and preceding stages are complete.

Procedure
1. Navigate to All > Playbooks Designer.
2. Open the Sales essentials playbook.
The default playbook is triggered when an opportunity is created or updated with a sales cycle
type of New Business. Configure the trigger condition to match the sales cycle type you want
to support.
3. Add and configure a stage in your playbook, for more information, see Add and configure a
stage in a playbook .
4. Select the stage for which you want to configure activities, for more information see Add and
configure an activity in a playbook .
The playbook displays each opportunity stage as a lane. Each lane must contain a stage entry
automation activity as the first activity in the stage lane and a stage exit automation activity as
the last activity in the stage lane.
This activity creates a record in the Sales CRM Progression Checkpoint table to track activity
completion for the stage.
5. Add the mandatory and optional activities between the stage entry and stage exit automation
activities.
You can use the following default activity definitions to build activities for common use cases.
Activity definitions
Activity definition

Description

Required
Fields
Activity
Definition

Fields specified on the opportunity record must not be empty. Use
when agents must complete required fields, such as owner or short
description, before advancing.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
Activity definition

Description

Related
Records
Activity
Definition

One or more related records must exist on the opportunity. Use when
agents must add a related record, such as a contact or team member,
before advancing.

For standard playbook activity types such as questionnaires and instructions, add the
Playbook Activity Event Create subflow immediately before the activity and the
Playbook Activity Event Update subflow immediately after it. These subflows track
completion state in the Sales CRM Progression Checkpoint table.
6. Save and activate the playbook.

Result

The playbook is active. When an opportunity with the configured sales cycle type is created or
updated, the playbook triggers and displays the configured activities to the sales agent in the
guided selling panel. Agents must complete all activities for a stage before the system allows
them to advance the opportunity.
Related topics
Guided selling on opportunities
Create opportunity stages
Install and configure Opportunity Management
Revise existing opportunities after an upgrade
Run a scheduled job to modify older opportunities so they can support parent-child opportunity
line items.

Before you begin

Role required: admin

About this task

The scheduled job helps update opportunity lines on the opportunities created on or before
the Yokohama Q1 release. From Yokohama Q2 release onward, the opportunity lines follow
a hierarchical parent-child structure. The hierarchy is achieved by adding new fields on an
opportunity line and affects the pricing functionality. For the existing lines to incorporate the
updated pricing functionality, the newly added fields must be populated and the hierarchical
structure must be in place.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. On the scheduled job menu, search for the Revise existing Opportunities on upgrade job.
3. Open the job and select Execute Now.
4. Navigate to All > System Logs > System Log > All.
5. Confirm that the job has been completed by checking for the Opportunity Upgrade
Job completed message.
The log lists the total number of records processed, along with their success and failure count.

Note: If the job is abruptly stopped, the log displays Opportunity Upgrade Job
encountered errors in addition to the error message.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
Result

The scheduled job updates the open opportunities (not in any of the closed stages). The job
works differently for opportunities that are synced to Quote than the ones that aren't.

Example:

For open, non-synced opportunities:
1. The scheduled job updates the newly added Top Opportunity Line Item and Product
Specification fields for all the opportunity lines.
2. If a complex product offering has a child offering, the job creates child opportunity lines under
the parent line. Newly created child lines contain correct values populated for the newly added
fields.
3. A subsequent pricing call is made to populate pricing fields for all the lines in the hierarchy.
For open, synced opportunities:
1. A scheduled job updates the newly added Top Opportunity Line Item field for all the
opportunity lines.
2. The Product Specification field, new hierarchy, and pricing fields for this line are updated only
if any change is done on the corresponding synced quote line.

Note: After upgrading to the Yokohama Q2 release, run the scheduled job before working
with Opportunity. Failure to do so results in inconsistent behavior in Opportunity and the
related tables.
Related topics
Using Opportunity Management
Opportunity Management

Configure Sales Forecasting
Use the Sales Forecasting application to project your future sales volumes and revenue based
data from opportunities and pipeline analysis.

Activate Sales Forecasting
As an admin, you can activate the following plugins to enable users to access Sales Forecasting.
For more information, see Activate a plugin .
Sales Forecasting plugins
Plugin

Description

com.snc_sales_forecasting

Project your future sales
volumes and revenue based
on data from opportunities
and pipeline analysis.

Dependency

• com.snc_app-l2c-core
• com.snc_app-prd-pm
• com.snc_app_l2c_oppty_mgmt
• com.snc_app-tmt-core

com.sn_sales_quota_applicationAssign the quota targets to the com.snc_app_l2c_oppty_mgmt
sales reps in the sales team
hierarchy.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
You need the Sales Quota Application plugin to assign the quota targets to each team and
sales agent. You can view and track the targets achieved for each agent and team on the sales
forecasting dashboard and the gap remaining to achieve the target.
Roles in Sales Forecasting
Role

ID

Functions

Forecast Administrator

sn_sales_forecast.forecast_admin
• Setup group hierarchy
and sales teams with
the managers and sales
agents’ information for the
organization.
• Set up Sales forecasting
settings and be able to
initiate calculate forecasts.
• Create/edit/view forecast
category choices and
forecast model details.

Forecast Analyst

sn_sales_forecast.forecast_analyst
View all forecasts item entries,
forecast category, forecast
model, and associated
opportunities.

Sales Quota Admin

sn_quota_core.quota_admin

Sales Quota Manager

sn_quota_core.quota_manager Edit the sales quota for the
groups.

Sales Quota Owner

sn_quota_core.quota_owner

Adjustment Viewer

sn_sales_forecast.adjustment_viewer
View forecast-adjusted
records assigned to them and
the people below them in the
hierarchy.

Adjustment Writer

sn_sales_forecast.adjustment_writer
Edit the forecast-adjusted
records that they own.

Forecast Viewer

sn_sales_forecast.forecast_viewer
View all the forecast data
that they own and the data
of people below them in the
hierarchy.

Submission Viewer

sn_sales_forecast.submission_viewer
View forecast-submitted
records that they own and
the records owned by people
below them in the hierarchy.

Submission Writer

sn_sales_forecast.submission_writer
Edit the forecast-submitted
records that they own.

Create/import/edit/delete
quota for different sales teams
and individuals.

View the Sales quota
assigned to the owner.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
Related topics
Using Sales Forecasting
Sales Forecasting
Set up a sales team for forecast hierarchy
The system administrator can create groups, sales teams, associating them with specific
managers. The sales hierarchy determines how the forecast rolls up within your company and
how it can be viewed.

Before you begin

Role required: admin

About this task

Once the users, teams, and opportunity data are added, along with selection of category, you
can view the sales forecast for any group or specific sales team on the Sales Forecast dashboard
on the CSM workspace.

Procedure
1. Navigate to All > System Security > Groups.
2. Select New.

3. On the form, fill in the fields.

Field

Description

Name

Name of the team that will be visible on the
Sales Forecast dashboard.

Group email

Email ID of the team.

Manager

Name of the manager of the group.

Parent

Parent group of the team for which you want
to forecast.

Description

Short description about the team and its
sales activities.

Type

Select Sales Team only.

4. Select Submit.
The new team is created and added on the Groups page.
Related topics
Using Sales Forecasting
Sales Forecasting
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
Configure Forecast Model
The forecast model is a framework used to predict future sales based on historical data, current
sales activities, and other relevant factors.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Sales Forecast > Forecast Model.
2. Select New.
3. On the form, fill in the fields.

Fields

Description

Name

Name of the forecast model that you want to
create.

Description

Short description of the forecast model.

Forecast Source

Entity from which forecast data is generated.
For example, Opportunity and Opportunity
Allocation.

Filter By

Conditions that limit that records from the
forecast source are included in the forecast.

Rollup Type

Select how forecast values roll up the
hierarchy. For example, cumulative and
single.

Measure Type

Data type of the forecast value.

Active

Option to activate the forecast model.

Measure

Parameter to calculate the forecast value.

Order

Display order of the forecast model.

Primary Hierarchy Type

Select Sales Team or Territory to select the
hierarchy used to roll up the forecast values.

Sales Team Hierarchy

Conditions that restrict which sales teams are
included in the rollup.

Territory Hierarchy

Territories that are included in the rollup.

Note: This field is displayed when

you select Territory from the Primary
Hierarchy Type list.
Secondary Hierarchy Type

Select the secondary hierarchy that will be
displayed within a territory or sales team, for
example, Product Offering Family.

Base

Option to submit and adjust forecasts at base
forecast source.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
Fields

Description

Note: If you select this option, Single
is the default option for Rollup Type
field.

4. Enter the configurations for forecast generation.
a. Select Forecast Configuration Overrides related list.
b. From the Forecast Date Field list, select the date from the forecast source to generate the
forecast.
c. From the Forecast Category Field list, select the category to generate the forecast.
d. From the Forecast Territory Field list, select the field from the Forecast Source that contains
the territory information.
e. From the Product Offering Family Field list, select the field from the Forecast Source table
that contains product offering family information.
5. Select the conditions to configure the forecast periods and submissions.
a. Select Period and Submissions related list.
b. From the Primary Forecast Period list, select the period for which you want to generate the
forecast.
c. From the Additional Forecast Period list, you can select more granular periods from the
Primary Forecast Period to generate forecasts.
d. Select the Submission Required check box to activate the submission period.
e. From the Submission Frequency list, select the frequency to submit forecasts.
6. Configure the owner of the forecast.

Note: This field is displayed only when you select Territory from Forecast Hierarchy
Type list.

a. Select Forecast Owner Configuration related list.
b. From the Forecast Owner Field list, select the field that determines the owner of that
forecast.
7. Define the rolledʼup forecast at each level of the selected forecast hierarchy.

Note: This field is displayed only when you select Territory from Forecast Hierarchy
Type list.

a. Select Rollup Owner Configuration related list.
b. From Rollup Owner Source list, select the table that determines the rollup owner.
c. From the Rollup Owner Field list, select the table field that identifies the rollup owner on the
selected rollup owner source.
d. In the Rollup Owner Criteria field, use Add Filter Condition or Add OR Clause to refine the
rollup owner selection.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
e. From the Rollup Owner to Forecast Association field, define
how the rollup owner record is associated to the forecast

record.
f. From the Forecast to Rollup Owner Association field, define how the forecast record is
associated back to the rollup owner.

Note: The values in the Rollup Owner to Forecast Association and Forecast to
Rollup Owner Association fields should be identical.
8. Select Submit.

Result

The new forecast model is created. You can view it on the Forecast Models page.
Related topics
Using Sales Forecasting
Sales Forecasting
Configure Forecast Categories
Configure the forecast categories in CSM configurable workspace.

Before you begin

For current opportunities in the system, the default value of the field Forecast Category is
Pipeline. Every sales agent working on that opportunity, updates this field once the sales process
starts. When the agents update the category, the dashboard reflects more accurate analysis
and sales forecast prediction. These categories classify the sales based on the level of certainty
regarding their closure. By default, six forecast categories are available. For more info, refer
Forecast terminologies topic.
Role required: admin

Procedure
1. Navigate to All > Sales Forecast > Forecast Categories.
2. Select New.
3. On the form, fill in the fields:

Fields

Description

Name

Name of the forecast category that you want
to create.

Description

Short description of the category.

Active

Select the Active check box to activate the
forecast category.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
Fields

Description

Order

Select the order number in the current
category cycle.

Type

From the list, select the type of category this
new forecast category belongs to.

4. Select Submit.
The new category is created.

Result

If required, users can either delete or make a forecast category inactive. When a category
becomes inactive, the forecast items in that category will be deleted automatically.
Related topics
Using Sales Forecasting
Sales Forecasting
Set up forecast schedule
Forecast schedule automatically fetches all the opportunities in the system and generates
forecast data.

Before you begin

Create a scheduled job to update or create the forecast data at a specific time or recurring
schedule. A default sales forecast scheduler is available with the Sales Forecasting application.
You can edit that scheduler according to your requirements.
Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Job.
2. Enter Sales forecast schedule in the Search field.
3. Select Sales forecast schedule from the schedule list.
4. From the Run list, select the option to customize the timing of the scheduler according to your
requirements.

5. Select Update to save the settings of your scheduler.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
6. Select Execute Now to run the scheduler.

Note:
You can copy the script provided in the Run this script field to create your own scheduler.
Related topics
Using Sales Forecasting
Sales Forecasting
Set up sales quota
Assign quota targets to sales representatives and managers based on their hierarchy, role, and
forecast period.

Before you begin

Sales agents and managers can set the quotas/targets for a specific period and distribute. The
quota can be assigned to a sales group as well. Quotas can be imported from external sources or
entered manually in the system. Bulk import can be done by system administrator only.
Role required: sn_quota_core.quota_admin

Procedure
1. Navigate to All > Sales Quota Management > Sales Quota.
2. Select New.
3. On the form, fill in the fields.

Fields

Description

Owner

Name of the owner of the team the quota has
been assigned to.

External ID

ID of the owner of external source from which
the quota is imported from.​

Sales team

Reference field to User Group in which the
quota is assigned for.

Territory

Reference field to the Territory in which the
quota is assigned for.

External Source

Name of the external source in which the
quota is imported from.​

Period

Select a specific time period to assign this
quota.

Amount

Select the currency and the amount of money
to assign as quota to a team or an individual.

Type

Indicates if the quota is owned by an
individual or at the roll up level.​

Forecast Model

Select the forecast model.

Note: By default, Opportunity Amount
Forecast is available to the users.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Fields

Description

Active

Select the Active check box to activate this
quota.

4. Select Submit.
The sales quota has been assigned to sales team.
Related topics
Using Sales Forecasting
Sales Forecasting

Configuring Sales Territory Management​
Learn how to configure the features and components that help distribute accounts, consumers,
leads, and opportunities to manage sales territories.

Activate Sales Territory Management​
As an admin, activate the plugin (com.sn_sales_territory) to enable users to access Sales
Territory Management​. For more information, see Activate a plugin .
Sales Territory Management​ plugin
Plugin

com.sn_sales_territory

Description

Dependency

• Provides the core territory
tables and APIs that extend
base Territory Planning.

• CRM Territory Extensions com.sn_tp_crm_extn

• Provides the roles for
granting access to CRM
entities via Responsibility
Framework.

• Sales Common com.sn_l2c_sales_common
• Lead to Cash Core com.snc.l2c_core

• Provides Sales CRM
Tracker to help to run
assignment rules algorithm
asynchronously.

Related information
Using Sales Territory Management​
Components installed with Sales Territory Management​
Configuring Territory Level
Create territory levels to categorize territories such as regional, district, area, and global for better
organization of territories.​

Before you begin

Role required: sales territory admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
Procedure
1. Navigate to All > Sales Territory Management > Territory Level.
2. Select New.
3. On the form, fill in the fields:
Territory Level form
Fields

Description

Name

Name of the territory level that you want to
create, for example: Global, Industry, Area,
Region, District, and Territory.

Description

Short description of the level.

Order

Integer to define order of records for sorting
purpose.

4. Select Submit.
The new territory level is created.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Configuring the Territory Model
Territory model contains the territory hierarchies mapped to it and maintains the organizational
structure for a territory hierarchy. Create a Territory Model to add territories that can be assigned
to accounts, consumers, leads, and opportunities.

Before you begin

Role required: admin
Set the Application scope to Sales Territory Management.

Note:
The Sales Territory Model is shipped by default with the necessary configurations that can
be used.

Procedure
1. Navigate to All > Sales Territory Management > Territory Model.
2. Select New.
3. On the form, fill in the fields:
Territory Model form
Fields

Description

Name

Name of the territory model that you want to
create.

Description

Short description of the model.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
Fields

Description

Territory Role

Roles that can access the sales territory
model and its related territories must include
Sales Territory Basic.

Application

Read-only field, the set value is Sales
Territory Management

Active

Select the Active check box to use the
territory model.

4. Select Submit.
The new territory model is created. You can update the new territory model with the associated
Territory Model Sources and Territory Model Level Mappings.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Configuring the Territory
Create territories to optimize the assignment of a territory to CRM data. Map these territories
to the territory model and levels to maintain the hierarchy. Provide conditions for automated
assignments, and onboard members with role-based access in a territory for restricted
permissions.

Before you begin

Role required: sales territory admin, sales territory manager

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. Select New.
3. On the form, fill in the fields:
Territory form
Fields

Description

Name

Name of the territory.

Description

Short description of the territory.

Model

Name of the territory model to which to map
this territory.

Level

The associated Territory Level.

Parent

Name of the parent territory to create the
territory hierarchy.
If no parent territory is specified, this territory
will serve as the highest-level (parent)
territory.

Rank

Rank of the territories. Helps in the
automated assignment algorithm where the

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Fields

Description

territory with the lowest rank becomes the
primary territory.
Territory Code

A unique identifier assigned to each territory.

Active

Select the Active check box to indicate the
territory is available for assignments.

Cascade condition

Used during assignment rules, this flag
indicates whether the parent territory
conditions must be evaluated for all the child
territories (under its hierarchy).

4. Select Submit.
The new territory is created.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Configuring resources for territories
Territory managers and members to the territory are added with their appropriate responsibility.
Managers of the territory get access to manage the members in their hierarchy. Members get
access via the roles and the linked responsibility to the CRM entities that belong to the hierarchy.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Add managers to a territory
Managers get access to a territory to manage members of the assigned territory and its child
territories.

Before you begin

Role required: sales territory admin

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. From the territories list, open the territory where you want to add managers.
3. In the related list for the Territory Managers, select New.
4. On the form, fill in the fields.
Territory Manager form
Fields

Description

Territory

Name of the territory.

Manager

Name of the manager.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
Fields

Description

Note: The added user must have
Sales Territory Manager role to access
the territory hierarchy.
From

Manage territory from the selected date.

Manager Type

Select the type either Territory manager or
Resource manager.

Primary

Option to indicate whether the manager is
primarily dedicated for all activities in the
territory.

To

Manage territory until the selected date.

5. Select Submit.
The territory manager is added to the territory and can manage the territory members of the
territory and child territories.

Result

The manager appears in the Territory Managers related list when you open the territory.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Add members to a territory
Add territory members with their appropriate responsibility to get access to the CRM entities
belonging to the territory.

Before you begin

Role required: sales territory admin, sales territory manager

About this task
• A territory comprises a team, where different members play different roles.​
• A member can belong to one or more territories, where they can play different/same roles.​
• A member can have different roles in the same territory. Their membership and role grant
them access and permission to the CRM entities. The access is driven by the responsibility
framework, for additional information see Create a responsibility definition .
• Only active members during their membership period get access to the CRM entities.

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. From the territories list, open the territory where you want to add members and member roles.
3. On the Territory Members tab, select New.
4. On the form, fill in the fields.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
Territory Membership Override form
Fields

Description

Territory

Name of the territory.
This field is automatically set to the territory
for which the member is added.

User

Name of the member.

From

Date from which the member is available to
work in the territory.

Membership type

Type of membership for the member, either
primary or secondary.

Active

Option to indicate whether the member is
available to work in the territory.

To

Date until which the member is available to
work in the territory.

The member appears in the Territory Members related list.
5. On the Territory Members tab, select
Territory Member Roles.

and Open Record of the territory member to add

6. On Territory Membership Responsibilities, select New.
7. On the form, fill in the fields.
Territory Membership Responsibility form
Fields

Description

Territory Membership

Name of the member.

Member Role

Role of the team member. Following member
roles (related party types) and responsibility
are shipped by default:
◦ Account Executive
◦ Solution Sales Executive
◦ Price Band Approver
However, more roles can be configured. For
more information, see Create related party
configurations .

The member with the defined role appears in the Territory Member roles related list.
Related topics
Using Sales Territory Management​
Sales Territory Management​

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
Configure Properties
To put a sales territory model into use at the CRM entities, enter the sys_id of an active sales
territory model. By default, this model and its territories will be utilized for sales territory
assignments.

Before you begin

Role required: sales territory admin

Procedure
1. Navigate to All > Sales Territory Management > Properties.
2. On the Sales Territory Management Properties form, enter the sys_id of an active sales territory
model.

Note: By default, this model and its territories are used for sales territory assignments.
3. Select Save.
Related topics
Using Sales Territory Management​
Sales Territory Management​
Run Assignments
Run sales territory assignments to assign CRM entities to the most eligible territory. Each territory
is checked against its own or cascaded territory conditions related to the CRM entity.​

Before you begin

Role required: sales territory admin
• Complete all prerequisite configuration steps, such as activating the sales territory model,
configuring territory levels, and defining territory conditions.

Procedure
1. Navigate to All > Sales Territory Management > Run Assignments.
2. Select an active sales territory model or territory to run assignment rules:
◦ If active sales territory model is selected, all selected sources and their data are evaluated
against the complete territory hierarchy. Existing assigned territory will be replaced with the
newly evaluated one.
◦ If active territory is selected, only those entities with no assigned territory will be evaluated
against the territory condition.
3. Select one or more source tables to run assignment rules on:
◦ Opportunity (sn_opty_mgmt_core_opportunity)
◦ Lead (sn_lead_mgmt_core_lead)
◦ Consumer (csm_consumer)
◦ Account (customer_account)
4. Select Run Assignment Rules.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
Result

Sales Territory Management is assigned in the CRM entities. All the Sales Territory admins
will receive an email notification when the job is completed. The selected sources entities are
assigned to a territory if they fulfill the territory conditions.
Related topics
Using Sales Territory Management​
Sales Territory Management​

Configuring Activity Management
Install and configure the necessary plugins for enabling Activity Management features.

Important:
To use personal email mailbox in Activity Management, you must install the User Mailbox
Integration plugin (com.glide.email.user_mailbox.integration) on your ServiceNow instance.
For setup instructions, see Personal corporate mailbox .
The Omnichannel Callback for Customer Service Management (com.sn_omnichannel_callback)
application must be installed with CRM Touchpoints to enable the click-to-call feature so agents
can call customers from the touchpoint record.

Configuring CRM Touchpoints
Install and configure the CRM Touchpoints application. It provides a unified system for capturing
and tracking customer engagements for your sales and service teams while providing leadership
with visibility into representative activity and engagement effectiveness.
1. Install CRM Touchpoints
You can install the CRM Touchpoints application (com.sn_crm_touchpoint) if you have the
admin role.
2. Create custom touchpoint types
Create touchpoint types tailored to your sales organization's workflow to capture activities
beyond the standard Discovery, Demo, and CBR types.

Configuring CRM Outlook Add-in
Install and configure the CRM Outlook Add-in application to make the ServiceNow CRM for
Outlook add-in available to your users.
1. Install CRM Outlook Add-in
You can install the CRM Outlook Add-in application (com.sn_crm_outlook) if you have the
admin role.
2. Configure CRM access from Microsoft Outlook
Download and install the ServiceNow CRM for Outlook add-in to access and manage CRM
records directly from your Outlook inbox, eliminating the need to switch between applications.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
3. Configure email promotion rules for Activity Management
Configure email promotion rules to automatically process staged emails for manual association
through the ServiceNow CRM for Outlook add-in or to trigger AI-powered auto-association with
existing sales entities.

Configuring AI sales activity association
Install and configure the AI sales activity association application to automatically link salesrelated emails to existing CRM entities such as Lead, Opportunity, Account, or Contact.

Note: Installing AI sales activity association also installs CRM Outlook Add-in as a
dependency. This is useful when a sales representative wants to manually associate an
email to a CRM entity which the agentic workflow missed or ignored for reasons such as
missing CRM entity or lower confidence score.
1. Install AI sales activity association
You can install the AI sales activity association application (com.sn_act_assoc_agent) if you
have the admin role.
2. Personal corporate mailbox
Install and configure the User Mailbox Integration plugin
(com.glide.email.user_mailbox.integration) so that emails from sales representative's personal
mailbox can be imported into the Staged Email [sys_email_staging] table.
3. Configure email promotion rules for Activity Management
Configure email promotion rules to automatically process staged emails for manual association
through the ServiceNow CRM for Outlook add-in or to trigger AI-powered auto-association with
existing sales entities.
Related topics
Using Activity Management
Activity Management
Activity Management reference
Install CRM Touchpoints
You can install the CRM Touchpoints application (com.sn_crm_touchpoint) if you have the admin
®
role. The application installs related ServiceNow Store applications and plugins if they are not
already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the CRM Touchpoint
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with CRM Touchpoints:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
• Roles
• Tables
For more information, see Components installed with CRM Touchpoints.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the CRM Touchpoints application (sn_crm_touchpoint) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
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

What to do next

Create custom touchpoint types
Related topics
Using Activity Management
Activity Management
Create custom touchpoint types
Create touchpoint types in Activity Management tailored to your sales organization's workflow to
capture activities beyond the standard Discovery, Demo, and CBR types.

Before you begin

Role required: sn_crm_touchpoint.admin

About this task

Several touchpoint types are available by default. To view the available options, see Create new
CRM touchpoint form.

Procedure
1. Navigate to All > System Definition > Tables.
2. In the Label search field, enter CRM Touchpoint and select the CRM Touchpoint
[sn_crm_touchpoint_touchpoint] table.
3. In the Column label search field, enter Subcategory and select the record.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
4. If a message appears about the application scope, select here to be able to edit the record.
5. Navigate to the Choices tab under Related Links.
6. Select New.
7. On the form, fill in the fields.
Choice New record form
Field

Description

Label Userʼvisible name for the type shown in the Type drop-down menu on the CRM
Touchpoints form. For example, Business Value Assessment (BVA).
Value Internal value stored in the database when a choice is selected.
8. Select Submit.
Related topics
Using Activity Management
Activity Management
Install CRM Outlook Add-in
You can install the CRM Outlook Add-in application (com.sn_crm_outlook) if you have the admin
®
role. The application installs related ServiceNow Store applications and plugins if they are not
already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the CRM Outlook Add-in
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

User roles are installed with CRM Outlook Add-in. For more information, see Components
installed with the CRM Outlook Add-in.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the CRM Outlook Add-in application (sn_crm_outlook) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

What to do next
• Configure CRM access from Microsoft Outlook
• Configure email promotion rules for Activity Management
Related topics
Using Activity Management
Activity Management
Configure CRM access from Microsoft Outlook
Download and install the ServiceNow CRM for Outlook add-in to access and manage CRM
records directly from your Microsoft Outlook inbox, eliminating the need to switch between
applications.

Before you begin

The CRM Outlook Add-in must be installed on your ServiceNow instance. For more information,
see Install CRM Outlook Add-in.
Role required: sn_crm_outlook.crm_outlook_admin

About this task

This procedure describes how to install the ServiceNow CRM for Outlook add-in on your
Microsoft Outlook client. For information about how to deploy and centrally manage the add-in
across your organization, refer to the Microsoft Outlook product documentation on deploying
and publishing Office add-ins.

Procedure
1. Log in to your ServiceNow instance.
2. Download the manifest file.
a. Navigate to All > ServiceNow Add-Ins for Office > Office Add-in Manifests.
b. Select ServiceNow CRM for Outlook from the list.
c. Download the file on your computer by selecting Download Manifest.
You can also provide the manifest.xml file to your agents so they can install the add-in
to their Microsoft Outlook clients.
3. Install the ServiceNow CRM for Outlook add-in on your Microsoft Outlook client.
a. Open your Microsoft Outlook client.
b. On the Microsoft Outlook client, select the See more items icon

and select Get Add-ins.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
c. Navigate to My add-ins > Custom Addins.
d. From the Add a custom add-in drop-down menu, select Add from File.
e. Browse to and select the manifest file.
f. Review the warning and select Install.
The ServiceNow CRM for Outlook add-in is installed and available in your Microsoft Outlook
client.

What to do next

Log in to the ServiceNow CRM for Outlook add-in to start using it.
Related topics
Using Activity Management
Activity Management
Install AI sales activity association
You can install the AI sales activity association application (com.sn_act_assoc_agent) if you have
®
the admin role. The application installs related ServiceNow Store applications and plugins if
they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the AI sales activity association
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following store applications and plugins are installed as a dependency with AI sales activity
association:
• Opportunity Management [com.sn_l2c_oppty_mgmt]​
• Now Assist for Platform [com.sn.now.platform]
• User Mailbox Integration [com.glide.email.user_mailbox.integration]
• CRM Outlook Add-in [com.sn_crm_outlook_addin]
• Notifications Email Agents [com.sn_notif_agents]
For associating emails to Lead records, install Lead Management separately.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the AI sales activity association application (com.sn_act_assoc_agent) using the filter
criteria and search bar.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you is displayed.
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

What to do next
• Index the Lead [sn_lead_mgmt_core_lead] and Opportunity [sn_opty_mgmt_core_opportunity]
tables, so that the records from these tables are searchable by the agentic AI workflow. For
more information, see Perform a full table index or reindex for a single AI Search indexed
source .
• Configure email promotion rules for Activity Management
Related topics
Indexing content from AI Search indexed sources
Install Lead Management
Configure email promotion rules for Activity Management
Configure email promotion rules to automatically process staged emails for manual association
through the ServiceNow CRM for Outlook add-in or to trigger AI-powered auto-association with
existing sales entities.

Before you begin

Note: Configuring email promotion is required if you're on CRM Outlook Add-in
application version 1.0.1.

Role required: admin

About this task

Email promotion rules enable the following workflows for managing staged emails:
• Manual email association: Agents use the ServiceNow CRM for Outlook add-in to associate
emails with CRM records, triggering promotion from the Staged Email [sys_email_staging] table
to the Email [sys_email] table.
• AI auto-association: When an agent receives an email with no existing CRM record
association, the promotion rule triggers the AI sales activity association workflow to
automatically match the email to a relevant sales entity (Lead, Opportunity, Contact, or
Account) using semantic analysis and intent detection.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Procedure
1. Log in to your ServiceNow instance.
2. Add a promotion rule.
a. Set the application scope to Global.
b. Navigate to All > User Mailboxes > Promotion Rules.
c. Select New.
d. On the form, fill in the fields.
Email Promotion Rule form
Field

Value

Name

<promotion rule name>

Condition

(current.target_table == "<table_name>") && !
gs.nil(current.instance)
For example, (current.target_table ==
"sn_lead_mgmt_core_lead") && !gs.nil(current.instance)

Promotion strategy

Promote and run Triggers

e. Select Submit.
3. Create a business rule on the Staged Email [sys_email_staging] table.
a. Set the application scope to Global.
b. Navigate to All > System Definition > Business Rules.
c. Select New.
d. On the form, fill in the fields.
Business Rule form
Field

Value

Name

<business rule name>
For example, Trigger promotion rules on CRM emails.

Table

Staged Email [sys_email_staging]

Active

Selected

Advanced

Selected

e. In the When to run tab, enter the following values.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


