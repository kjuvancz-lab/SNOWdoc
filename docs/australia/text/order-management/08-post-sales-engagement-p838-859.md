# Australia Sales Customer Relationship Management — Post-sales engagement / Partner Relationship Management

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 838–859 of 1645

Sections: Post-sales engagement (p838); Partner Relationship Management (p838)

---

<!-- page 838 -->
10. In the Resolve issues window, edit the proposed resolution and state of the case and select
Save and continue.

Note: The resolution code for all case lines must be in either the Resolved - Accepted,
Resolved - Denied, or the Canceled state.

11. In the Propose case solution window, add the resolution code and the resolution notes.
12. Select Save and continue.
Related topics
RMA case line form

Post-sales engagement
Learn how to configure the Customer Life Cycle Management Workflows application to manage
post-sale workflows on sold products.
Installing and configuring the Customer Life Cycle Management Workflows
application helps
manage ongoing customer relationships and product life cycle activities after an order is
completed or fulfilled.

Partner Relationship Management
®

Install the PRM (com.snc.partner_relationship_management) application from ServiceNow
Store to enable enterprises to hire partners and improve their sales cycles.

Admins and users with various roles, such as Enterprise partner
admin (sn_prm.enterprise_partner_admin), Enterprise partner agent
(sn_prm.enterprise_partner_agent), and more must complete the following configuration tasks to
set up the Partner Relationship Management application.
Set up PRM

This table describes the configuration tasks required for Partner Relationship
Management and their descriptions.
Task

Description

Role

Install Partner Relationship
Management

Install the Partner
Relationship Management
application from ServiceNow
Store.

admin

Roles and components
of Partner Relationship
Management

Assign functional roles to
different PRM entities.

admin

Data model for Partner
Relationship Management

Configure and add data to
the different tables that are
installed with PRM.

• admin
• Enterprise Partner admin
(sn_prm.enterprise_partner_admin)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
Related topics
Partner Relationship Management
Using Partner Relationship Management

Install Partner Relationship Management
Install the Partner Relationship Management plugin
(com.snc.partner_relationship_management), along with the demo data and installations that are
related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Partner Relationship Management:
• Plugins
• Store applications
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Partner Relationship Management application
(com.snc.partner_relationship_management) using the filter criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Partner Relationship Management.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
Demo data install task

Description

Load the demo data after installing Partner Re­
lationship Management.
a. Install Partner Relationship Management
(com.snc.partner_relationship_manage­
ment).
If the Load Demo Data option isn’t available
but you want demo data

b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for Partner
Relationship Management plugin.
d. In the System Plugin Partner Relationship
Management data model window, under
Related Links, select Install Demo Data On­
ly.

Result

You have successfully installed the Partner Relationship Management application.
Related topics
Roles and components of Partner Relationship Management
Data model for Partner Relationship Management

Data model for Partner Relationship Management
The Partner Relationship Management data model provides a framework to map the relationship
between channel partners and programs.
Add data in the Channel Partner [sn_prm_channel_partner] and Partner Program
[sn_prm_partner_program] tables and create a relationship between the two tables in the
Partner Program relationship [sn_prm_partner_program sn_prm_partner_program_relationship]
table.
Configuration tasks for PRM data model

List of tasks and descriptions for the Partner Relationship Management tables.
Task

Role

Description

Configure Channel Partner
table

Manage information related to
• Enterprise admin
channel partners.
(sn_prm.enterprise_partner_admin)
• Channel partner writer
(sn_prm.channel_partner_writer)

Configure Partner Program
table

Enable channel partners
• Enterprise admin
to participate in structured
(sn_prm.enterprise_partner_admin)
programs to build customer
• Partner program writer
relationships.
(sn_prm.partner_program_writer)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
Configuration tasks for PRM data model

List of tasks and descriptions for the Partner Relationship Management tables.
(continued)
Task

Role

Description

Configure Partner Program
Relationship table

Establish a relationship
• Enterprise admin
between channel partners
(sn_prm.enterprise_partner_admin)
and partner programs.
• Partner program
relationship writer
(sn_prm.partner_program_rel_writer)

Related topics
Install Partner Relationship Management
Roles and components of Partner Relationship Management
Configure Channel Partner table
With the Partner Relationship Management application, you can use the channel partner
[sn_prm_channel_partner] table to manage and store information related to channel partners.

Before you begin

Role required: sn_prm.enterprise_partner_admin or sn_prm.channel_partner_writer

About this task

The channel partner [sn_prm_channel_partner] table is an extension of External Business
Location.

Procedure
1. Navigate to All > Partner Relationship Management > Channel Partner.
2. Select New to open the Channel Partner Registration details form.
3. On the form, fill in the fields.
To learn more about the fields on the channel partner table and their descriptions, see
Channel partner table fields.
4. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Partner Program table
With the Partner Relationship Management application, enable channel partners to participate
in structured initiatives designed to drive revenue, enhance market reach, and build customer
relationships by using the Partner Program [sn_prm_partner_program] table.

Before you begin

Role required: sn_prm.partner_program_writer or sn_prm.enterprise_partner_admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
About this task

Partner programs define the roles, responsibilities, and benefits for different participants. Some
examples of partner programs can be Reseller Program, Managed service provider (MSP)
Program, Authorized Training Partner (ATP) Program and so on.

Procedure
1. Navigate to All > Partner Relationship Management > Partner Programs.
2. Select New to open the partner program record.
3. On the form, fill in the fields.
To learn more about the fields on the Partner program table and their descriptions, see Partner
program table fields.
4. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Partner Program Relationship table
With the Partner Relationship Management application, you can establish a relationship
between channel partners and partner programs.

Before you begin

Role required: sn_prm.enterprise_partner_admin or sn_prm.partner_program_rel_writer

About this task

Associate channel partners to different structured initiatives or programs using the Partner
Program Relationship [sn_prm_partner_program_relationship] table.

Procedure
1. Navigate to All > Partner Relationship Management > Partnerships.
2. Select New to open the partnership record.
3. On the form, fill in the fields.
To learn more about the fields on the Partner Program Relationship table and their
descriptions, see Partner program relationship table fields.
4. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Program Segment Mapping
Establish a mapping between a program and a segment on the program segment mapping
(sn_prm_program_segment_mapping) table to determine which segment belongs to which
partner program.

Before you begin

Role required: sn_prm.partner_ui

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
Procedure
1. Navigate to All > Partner Relationship Management > Program Segments.
2. Select New.
3. On the form, fill in the fields.
To learn about the fields on the program segment mapping
(sn_prm_program_segment_mapping) table, see Program segment mapping table fields.
4. Select Submit.
Related topics
Configure Program Segment Criteria
Configure Program Criteria
Configure Program Segment Criteria
Create records in the program segment criteria (sn_prm_program_segment_criteria) table
based on different records on the entity criteria (sn_req_criteria_customer_condition) table and
segments.

Before you begin

Role required: sn_prm.partner_ui

Procedure
1. Navigate to All > Partner Relationship Management > Program Segments.
2. Open a program from the list.
3. From the Program Segment Criteria related list, select New.
4. On the form, fill in the fields.
To learn more about the fields and descriptions, see Program segment criteria table fields.
5. Select Submit.
Related topics
Configure Program Segment Mapping
Configure Program Criteria
Configure Program Criteria
Establish a mapping between the partner program (sn_prm_partner_program_relationship) table
and the entity criteria (sn_req_criteria_customer_condition) table.

Before you begin

Role required: sn_prm.partner_program_writer or sn_prm.enterprise_partner_admin

Procedure
1. Navigate to All > Partner Relationship Management > Partner Program.
2. Open a partner program from the list.
3. Navigate to the Program Criteria related list on the partner program form.
4. Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
5. On the form, fill in the fields.
To learn about the fields on the program criteria table, see Program criteria table fields.
6. Select Submit.
Related topics
Configure Program Segment Mapping
Configure Program Segment Criteria

Add responsibilities to PRM roles
A responsibility describes a role or function that supports a user. Use responsibility definitions to
create relationships between any two partner entities.

Before you begin

Role required: sn_prm.enterprise_rel_manager, sn_prm.external_partner_associate, or
sn_prm.external_partner_manager

About this task

Related party configurations define the title of a relationship between an entity and an
organization or a user. These configurations also enable linking related party types with
responsibility definitions to grant access as needed.
Related parties and their default responsibilities

List of role types and their associated default responsibility.
Type

Default Responsibility

Enterprise Partner Relationship Manager
[sn_prm.enterprise_partner_rel_manager]

Location Relationship Manager
[sn_bus_loc.location_relationship_manager]

External Partner Associate
[sn_prm.external_partner_associate]

Location Contributor
[sn_customerservice.service_organization_contributor]

External Partner Manager
[sn_prm.external_partner_manager]

Location Manager Contributor
[sn_customerservice.svc_location_manager_contributor]

Note: The default responsibilities are automatically installed with the Business Location
plugin (com.snc.business_location).

Procedure
1. Navigate to All > Partner Relationship Management > Channel Partner.
2. Open a channel partner record and add an external staff member or an enterprise partner
relationship manager based on your requirement.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
Task

Description

a. Select Register External Partner Staff from
the channel partner record.

Register External staff member

b. Select the Role Type you want to associate
with your user, whether external partner
manager or external partner associate.
c. Select Submit.
To learn more about the role type and the
member registration fields, see Member regis­
tration form.
a. Select Edit from the Members related list
on the channel partner record to add an en­
terprise member as a channel partner.

Register Enterprise Partner Relationship
Manager

b. Open the record associated with the user
and select New from the Service Organiza­
tion Member Responsibilities related list.
c. Enter the role name in the Type field to as­
sign a responsibility to the role.
d. Select Submit.

Result

An external staff member or an enterprise partner relationship manager is registered.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Install Deal Registration
Install the plugin (com.snc.deal_registration_management), along with the demo data and
®
installations that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Deal Registration:
• Plugins
• Store applications

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Deal Registration Management application (com.snc.deal_registration_management)
using the filter criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Partner Relationship Management.
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
Load the demo data after installing Deal Regis­
tration Management.
a. Install Deal Registration Management
(com.snc.deal_registration_management).

If the Load Demo Data option isn’t available
but you want demo data

b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for Partner
Relationship Management plugin.
d. In the System Plugin Deal Registration
Management Data Model window, under
Related Links, select Install Demo Data On­
ly.

Result

You have successfully installed the Deal Registration Management
(com.snc.deal_registration_management) application.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Data model for Deal Registration Management
The deal registration management data model provides a framework for channel partners to
establish a consistent and organized engagement model with channel partners.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
Add data in the deal registration tables to maintain and track partner submitted deals and the
line items linked to a deal registration.
Configuration tasks for Deal Registration Management

Perform the following tasks to use the deal registration data model.
Task

Role

Description

Configure Deal Registration
table

Experience
(sn_prm_dr.deal_reg_ui)

Configure the deal registration
(sn_prm_dr_deal_registration)
table to track a deal's life cycle
through states and workflow
stages.

Configure Deal Registration
Line table

Experience
(sn_prm_dr.deal_reg_ui)

Configure the Deal
registration line
(sn_prm_dr_deal_registration_line)
table to manage product level
details for a single deal.

Configure Deal Registration
Type table

Deal registration admin
(sn_prm_dr.deal_reg_admin)

Configure the deal registration
(sn_prm_dr_deal_registration_type)
type table to specify the role
or involvement of a channel
partner in a deal.

Configure Partner Program
Deal Type Relationship table

Deal registration admin
(sn_prm_dr.deal_reg_admin)

Configure the Partner program
deal type relationship
(sn_prm_dr_pp_deal_type)
table to ensure that deal types
are associated to appropriate
partner programs.

Related topics
Roles and components of Deal Registration Management
Configure Deal Registration table
Configure the deal registration (sn_prm_dr_deal_registration) table to track a deal registration's
life cycle through states and workflow stages.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

About this task

The deal registration table stores the details of a deal submitted by a partner, including account
details, deal size, and related opportunity.

Procedure
1. Navigate to All > Deal Registration > All.
2. Select New.
3. On the form, fill in the fields.
To learn more about the fields on the form, see Deal registration table fields.
4. Select Submit.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Deal Registration Line table
Configure the Deal registration line (sn_prm_dr_deal_registration_line) table to manage product
level details for a single deal registration.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

About this task

The deal registration line table contains line items linked to a deal registration, each referencing
a specific product offering.

Procedure
1. Navigate to All > Deal Registration > All.
2. Select New to create a deal registration.
To learn how to create a deal registration, see Configure Deal Registration table.
3. Select Deal Registration Lines from the related list to create a deal registration line item.
4. Select New.

Note: You can create a deal registration line item only if the deal is in the Draft,
Submitted, or Under Review states.

5. On the form, fill in the fields.
To learn about the fields on the form, see Deal registration line table fields.
6. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Deal Registration Type table
Configure the deal registration type (sn_prm_dr_deal_registration_type) table to specify the role
or involvement of a channel partner in a deal registration.

Before you begin

Role required: sn_prm_dr.deal_reg_admin

About this task

Configure the deal registration type table to define how a channel partner can be associated with
a deal registration or can contribute to the deal registration.

Procedure
1. Navigate to All > Deal registration > Administration > Deal Registration Types.
2. Select New to create a deal registration type.
3. On the form, fill in the fields.
To learn more about the fields, see Deal registration type table fields.
4. Select Submit.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
Related topics
Partner Relationship Management
Using Partner Relationship Management
Configure Partner Program Deal Type Relationship table
Configure the Partner program deal type relationship (sn_prm_dr_pp_deal_type) table to ensure
that the appropriate deal registration types are associated to the accurate partner programs.

Before you begin

Role required: sn_prm_dr.deal_reg_admin

Procedure
1. Navigate to All > Deal registration > Administration > Deal Registration Types.
2. Create a deal registration type.
To learn how to create a deal registration type, see Configure Deal Registration Type table.
3. Select Program Deal Type Relationships from the related list.
4. On the form, fill in the fields.
To learn more about the fields, see Partner program deal type relationship table fields.
5. Select Submit.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Partner Relationship Management in CSM Configurable Workspace
Partner admins, agents, and managers can manage partner programs and partnerships on the
partner workspace to triage cases and requests from customers.

Overview of the workspace
Use the CSM Configurable Workspace to enable Enterprise Partner admin
(sn_prm.enterprise_partner_admin) and Enterprise Partner Manager
(sn_prm.enterprise_partner_rel_manager) to access tools required to address customer
questions and resolve customer queries.
You can perform the following actions using the workspace.
Tasks on the partner workspace
Task

Description

Create Channel Partner record

Create and track channel partner records on
workspace to manage and store all information
related to the channel partners.

View Channel Partner information on partner
workspace

View all the details, cases, and other entities
associated with a channel partner.

Create Partner Programs on the CSM
Configurable Workspace

Enable channel partners to create Partner
Programs on the workspace.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
Tasks on the partner workspace (continued)
Task

Description

Create Partnerships on the CSM Configurable
Workspace

Establish a relationship between channel
partners and partner programs on the
workspace.

Related topics
Partner Relationship Management
Using Partner Relationship Management
Create Partner Programs on the CSM Configurable Workspace
Enable channel partners to participate in structured initiatives designed to drive revenue,
enhance market reach, and build customer relationships by creating partner programs on the
workspace.

Before you begin

Role required: sn_prm.enterprise_partner_admin

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Partner Program from the Partner Relationship Management module.
3. Open a partner program from the list and select New.
4. On the form, fill in the fields.
To learn more about the fields on the Partner Program form, see Partner program table fields.
5. Select Save.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Create Partnerships on the CSM Configurable Workspace
With the Partner Relationship Management application, you can establish a relationship
between channel partners and partner programs on the workspace.

Before you begin

Role required: sn_prm.enterprise_partner_admin

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Partnerships from Partner Relationship Management.
3. Select New.
4. On the form, fill in the fields.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
To learn more about the fields on the Partnership form, see Partner program relationship table
fields.
5. Select Save.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Configure Segment Management
®

Install the Segment Management application (com.snc.segment_mgmt) from the ServiceNow
Store to manage and group entities into various segments to promote progression.

The Segment Management plugin (com.snc.segment_mgmt) provides a general framework to
create and manage segments and segmentation across various domains. Admins and users with
various roles must perform the following configuration tasks to set up the segment management
application.
Set up tasks for Segment Management

Configuration tasks to use Segment Management
Task

Description

Role

Install Segment Management

Install the Segment
Management application
(com.snc.segment_mgmt)
®
from ServiceNow Store.

admin

Data model for Segment
Management

Add records in the segment
(sn_seg_segment) table to
create segments for specific
customers.

sn_seg.segment_mgmt_admin

Roles and components of
Segment Management

Set of functional roles to
maintain and configure
segment data.

admin

Related topics
Configure Segment Management
Install Segment Management
Install Segment Management
Install the Segment Management plugin (com.snc.segment_mgmt), along with the demo data
®
and installations that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
Role required: admin

About this task

The following items are installed with the Segment Management application
(com.snc.segment_mgmt):
• Plugins
• Store applications
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Segment Management application (com.snc.segment_mgmt) using the filter criteria
and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Segment Management.
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
Load the demo data after installing Segment
Management.
a. Install Segment Management (com.snc.seg­
ment_mgmt).

If the Load Demo Data option isn’t available
but you want demo data

b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for Seg­
ment Management plugin.
d. In the System Plugin Segment Manage­
ment data model window, under Related
Links, select Install Demo Data Only.

Result

You have successfully installed the Segment Management (com.snc.segment_mgmt)
application. You can now set up the data model and configure different roles.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
Related topics
Configure Segment Management
Data model for Segment Management
Data model for Segment Management
The Segment Management data model provides a framework to map customers to specific
segments to track partner progression toward the next tier.
With the segment admin (sn_seg.segment_mgmt_admin) role, you can add data in the segment
(sn_seg_segment) table to create and manage multiple segments.
Segment table

Fields, types, and their description of the segment table
Field

Type

Description

Number

String

Auto-generated number
associated with the segment.

Name

Translated text

Name of the segment.

Description

Translated text

Description of the segment.

Active

True/False

Current state of the segment,
whether active or not.

Order

Number

Order of the segment.

Status

Choice

Status to manage the life cycle
of the segment.

• Draft
• Approved
• Rejected
• Retired
Work notes

Journal input

Important information
associated with the segment.

Domain

Domain ID

Domain to which the segment
belongs.

Configuration tasks for Segment Management
Perform the following configuration tasks to set up the data model tables to establish an
association between segment management and Partner Relationship Management.
• Configure Program Segment Mapping
• Configure Program Segment Criteria
• Configure Program Criteria
Related topics
Install Segment Management
Roles and components of Segment Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
Install Sales Common for Partner Relationship Management
Install the Sales Common for Channel Partners plugin
(com.snc.partner_relationship_management_sales_common), along with the demo data and
®
installations that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The Sales Common for Channel Partners plugin acts a parent plugin for all the Lead to Cash Core
workflows.
The following items are installed with the Sales Common for Channel Partners
(com.snc.partner_relationship_management_sales_common) plugin:
• Plugins
• Store applications
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Sales Common for Channel Partners application
(com.snc.partner_relationship_management_sales_common) using the filter criteria and
search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install the Sales Common for Channel Partners application.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
Demo data install task

Description

Load the demo data after installing the Sales
Common plugin.
a. Install Sales Common for Channel Partners
(com.snc.partner_relationship_manage­
ment_sales_common) application.
If the Load Demo Data option isn’t available
but you want demo data

b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for the
Sales Common plugin.
d. In the System Plugin Sales Common for
Channel Partners data model window, un­
der Related Links, select Install Demo Data
Only.

Result

You have successfully installed the Sales Common for Channel Partners
(com.snc.partner_relationship_management_sales_common) application.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Install Order Management for Channel Partners
Install the Order Management for Channel Partners plugin
(com.snc.partner_relationship_management_orm), along with the demo data and installations
®
that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The Order Management for Channel Partners (com.snc.partner_relationship_management_orm)
plugin facilitates management of the entire order life cycle, specifically for indirect sales.
The following items are installed with the Order Management for Channel Partners plugin
(com.snc.partner_relationship_management_orm) plugin:
• Plugins
• Store applications
• Role like the sn_prm_orm.order_partner_ui
• Tables

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Order Management for Channel Partners
(com.snc.partner_relationship_management_orm) using the filter criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently
installed, or must be installed. If any plugins or applications require installation, you
must install them before you can install the Order Management for Channel Partners
(com.snc.partner_relationship_management_orm) application.
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
Load the demo data after installing the Sales
Common plugin.
a. Install Order Management for Channel Part­
ners (com.snc.partner_relationship_man­
agement_orm) application.

If the Load Demo Data option isn’t available
but you want demo data

b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for the Or­
der Management for Channel Partners plug­
in.
d. In the System Plugin Order Management
for Channel Partners data model window,
under Related Links, select Install Demo
Data Only.

Result

You have successfully installed the Order Management for Channel Partners
(com.snc.partner_relationship_management_orm) application.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Install Opportunity Management for Channel Partners
Install the Opportunity Management for Channel Partners plugin
(com.snc.partner_relationship_management_oppty) and installations that are related to
®
ServiceNow Store applications and plugins.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The Opportunity Management for Channel Partners plugin
(com.snc.partner_relationship_management_oppty) plugin facilitates management of the
opportunities for channel partner sales.
The following items are installed with the Opportunity Management for Channel Partners plugin
(com.snc.partner_relationship_management_oppty) plugin:
• Plugins
• Store applications
• Role like the sn_prm_opptym.oppty.parnter_ui
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Opportunity Management for Channel Partners
(com.snc.partner_relationship_management_oppty) using the filter criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed,
or must be installed. If any plugins or applications require installation, you must
install them before you can install the Opportunity Management for Channel Partners
(com.snc.partner_relationship_management_oppty) application.
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
Load the demo data after installing the Sales
Common plugin.

If the Load Demo Data option isn’t available
but you want demo data

a. Install Opportunity Management for Chan­
nel Partners (com.snc.partner_relation­
ship_management_oppty) application.
b. Navigate to the All and in the Filter, type v_­
plugin.list.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
Demo data install task

Description

c. In the System Plugin list, search for the Op­
portunity Management for Channel Part­
ners plugin.
d. In the System Plugin Opportunity Manage­
ment for Channel Partners data model win­
dow, under Related Links, select Install De­
mo Data Only.

Result

You have successfully installed the Opportunity Management for Channel Partners
(com.snc.partner_relationship_management_oppty) application.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Install Quote Management for Channel Partners
Install the Quote Management for Channel Partners plugin
(com.snc.partner_relationship_management_qm), along with the demo data and installations
®
that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.

Note: The Quote Self-Service application is installed along with Quote Management for
Channel Partners. For more information on Quote Self-Service, see Quote creation via SelfService for Channel Partners
Role required: admin

About this task

The Quote Management for Channel Partners (com.snc.partner_relationship_management_qm)
plugin facilitates management of the entire quote life cycle, for indirect sales.
The following items are installed with the Quote Management for Channel Partners plugin
(com.snc.partner_relationship_management_qm) plugin:
• Plugins
• Store applications
• Role such as the sn_prm_qm.quote_partner_ui
For more information on viewing components that are installed with an application, see Find
components installed with an application .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Quote Management for Channel Partners
(com.snc.partner_relationship_management_qm) using the filter criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently
installed, or must be installed. If any plugins or applications require installation, you
must install them before you can install the Quote Management for Channel Partners
(com.snc.partner_relationship_management_qm) application.
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
Load the demo data after installing the Sales
Common plugin.

a. Install Quote Management for Channel Part­
ners (com.snc.partner_relationship_man­
agement_qm) application.
If the Load Demo Data option isn’t available
but you want demo data
b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the System Plugin list, search for the
Quote Management for Channel Partners
plugin.

Result

You have successfully installed the Quote Management for Channel Partners
(com.snc.partner_relationship_management_qm) application.
Related topics
Partner Relationship Management
Using Partner Relationship Management
Quote creation via Self-Service for Channel Partners
Quote Self-Service (com.sn_quote_self_service) enables channel partners to create and manage
quotes directly in the Partner portal through a guided playbook experience.

About Quote Self-Service for PRM
Quote Self-Service enables channel partners to create and manage quotes directly in the
Partner portalthrough a guided quote creation playbook, catalog browsing, and line item
management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


