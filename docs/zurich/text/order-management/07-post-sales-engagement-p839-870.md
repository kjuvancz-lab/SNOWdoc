# Zurich Sales and Order Management — Post-sales engagement / Partner Relationship Management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 839–870 of 1408

Sections: Post-sales engagement (p839); Partner Relationship Management (p840)

---

<!-- page 839 -->
List of plugins to be installed before the RMA Case Management plugin (continued)
Plugin

Description

Case lines and workflows (com.sn_case_line)

Enables a case to hold many line items. The
line items are product instances and can be
extended for various order to case operations
entities.

Entitlements Verification (com.sn_ent_verify)

Provides API to verify entitlement and
characteristics.

Customer Service Install Base Characteristics
(com.snc.install_base_characteristics)

Enable customers to capture characteristics
for their install bases.

Role required: admin

About this task

The following items are installed with RMA Case Management:
• Plugin
• Tables
• Roles
For more information, see Return Merchandise Authorization Case Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the RMA Case Management plugin (sn_csm_rma_case) using the filter criteria and search
bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

Post-sales engagement
Learn how to configure the Customer Life Cycle Management Workflows application to manage
post-sale workflows on sold products.
Installing and configuring the Customer Life Cycle Management Workflows
application helps
manage ongoing customer relationships and product life cycle activities after an order is
completed or fulfilled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
Configure Partner Relationship Management
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
Admin
Relationship Management
®
application from ServiceNow
Store.
Installing the Partner
Relationship Management
plugin will automatically
also install the Segment
Management application.

Partner Workspace

Partner admins, agents,
Admin
and managers can manage
partner programs and
partnerships on the partner
workspace to triage cases and
requests from customers.

Partner Portal

Use the self-service Partner
portal to add and manage
staff, submit an inquiry to the
enterprise and more.

Admin

Install Deal Registration

Install the Deal Registration
Management plugin from
®
ServiceNow Store.

Admin

Configure Segment
Management

Install the Segment
Admin
Management application from
®
ServiceNow Store.

Install Sales Common
for Partner Relationship
Management

Install the Sales Common
for Partner Relationship
Management from
®
ServiceNow Store.

Install Order Management for
Channel Partners

Install the Order Management Admin
for Channel Partners from
®
ServiceNow Store.

Admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
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

If the Load Demo Data option isn’t available Load the demo data after installing Partner Re­
lationship Management.
but you want demo data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
Demo data install task

Description

a. Install Partner Relationship Management
(com.snc.partner_relationship_manage­
ment).
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

Roles and components of Partner Relationship Management
The Partner Relationship Management application uses roles to provide access to information,
identify internal and external users, maintain data security, and establish different types of
relationships between enterprises and channel partners.
The PRM plugin (com.snc.partner_relationship_management) comes with a set of functional and
granular roles, each with varying levels of access to raise and address queries.
The PRM application provides access and permissions to users part of both the enterprise and
the channel partner ecosystem.

Functional and granular roles
Functional roles help provide authorized related parties access to enterprise and channel
partner members. A granular model helps to protect data by granting the required level of
access to the relevant enterprise or channel partner entities. With this functionality, each role
is associated with a set of privileges or responsibilities that determine users’ access to certain
information.
You can set granular policies that authorize individuals to do their jobs efficiently and effectively,
which helps to improve the customer experience.

Roles and descriptions
Functional roles are a set of granular roles that are required to perform a function that requires
access to multiple entities. The following table lists the functional roles for Partner Relationship
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
Functional roles

List of functional roles and their descriptions.
Role

Description

Enterprise Partner admin
A user who is an admin for the
(sn_prm.enterprise_partner_admin)
partner enterprise.

Contains roles

• sn_service_org.writer
• sn_prm.channel_partner_writer
• sn_prm.partner_program_writer
• sn_prm.partner_program_rel_writer
• sn_customerservice.csm_workspace_user
• sn_seg.segment_mgmt_admin

Enterprise Partner
Contributor who belongs
Relationship Manager
to an enterprise and is
(sn_prm.enterprise_partner_rel_manager)
responsible for managing
cases associated with the
partner hierarchy.
Enterprise Partner Agent
Fulfiller who belongs to an
(sn_prm.enterprise_partner_agent)
enterprise and is responsible
for fulfilling partner cases.
Partner Manager
Contributor who belongs
(sn_prm.external_partner_manager)
to a partner entity and is
responsible for reporting
cases associated with their
partner hierarchy on the
portal.
Partner Associate
Contributor who belongs
(sn_prm.external_partner_associate)
to a partner entity and is
responsible for reporting
cases associated with their
partners on the portal.

• sn_bus_loc.location_relationship_manager
• sn_prm.partner_data_viewer
• sn_customerservice.csm_workspace_user

• sn_customerservice_agent
• sn_prm.partner_data_viewer

• sn_customerservice.svc_location_manager_c
• sn_prm.partner_data_viewer
• sn_prm_dr.partner_deal_reg_manager

• sn_customerservice.service_organization_con
• sn_prm.partner_data_viewer

The following table lists the granular roles installed with Partner Relationship Management.
Granular roles

List of granular roles and their descriptions.
Role

Description

Inherited roles

Channel partner writer
This role provides granular
(sn_prm.channel_partner_writer)edit access to the channel
partner table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

Partner Program Writer
This role provides granular
(sn_prm.partner_program_writer)edit access to the partner
program table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
Granular roles

List of granular roles and their descriptions.
(continued)
Role

Description

Inherited roles

Partner Program
This role provides granular
Relationship Writer
edit access to the partner
(sn_prm.partner_program_rel_writer)
program relationship table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

Partner Data Viewer
(sn_prm.partner_data_viewer)

This role provides granular
read access to the channel
partner, partner program, and
partner program relationship
tables.

NA

Experience
(sn_prm.partner_ui)

This role provides granular
access to organization
staff to ensure a consistent
experience across all user
interfaces.

NA

Note: The Experience
role needs to be
manually inherited into
other roles to view the
Partner Relationship
Management modules
on ServiceNow platform,
CSM Configurable
Workspace, and the
Partner portal.
Program Segment Writer
(sn_prm.program_segment
writer)

This role provides users
• Partner Data Viewer
with the create, read, and
(sn_prm.partner_data_viewer)
update access to the
• Segment Data Viewer
Program segment mapping
(sn_Seg.segment_mgmt_data_viewer)
(sn_prm_program_segment_mapping)
table.

System properties
Navigate to All > Partner Relationship Management > Properties. The Enterprise Partner admin
(sn_prm.enterprise_partner_admin) has the read and write access to the following properties.
• glide.ui.sn_prm_partner_program_activity.fields
• glide.service_portal.resize_text.partner.enable_rem_conversion
• glide.ui.sn_prm_partner_program_relationship_activity.fields
• glide.ui.sn_prm_channel_partner_activity.fields
Related topics
Install Partner Relationship Management
Data model for Partner Relationship Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Task

Description

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

Configure Program Segment
Mapping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
Configuration tasks for PRM data model

List of tasks and descriptions for the Partner Relationship Management tables.
(continued)
Task

Role

Description

Configure Program Segment
Criteria
Configure Program Criteria
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
Configure Partner Program table
With the Partner Relationship Management application, enable channel partners to participate
in structured initiatives designed to drive revenue, enhance market reach, and build customer
relationships by using the Partner Program [sn_prm_partner_program] table.

Before you begin

Role required: sn_prm.partner_program_writer or sn_prm.enterprise_partner_admin

About this task

Partner programs define the roles, responsibilities, and benefits for different participants. Some
examples of partner programs can be Reseller Program, Managed service provider (MSP)
Program, Authorized Training Partner (ATP) Program and so on.

Procedure
1. Navigate to All > Partner Relationship Management > Partner Programs.
2. Select New to open the partner program record.
3. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
To learn more about the fields on the Partner program table and their descriptions, see Partner
program table fields.
4. Select Submit.
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
Configure Program Segment Mapping
Establish a mapping between a program and a segment on the program segment mapping
(sn_prm_program_segment_mapping) table to determine which segment belongs to which
partner program.

Before you begin

Role required: sn_prm.partner_ui

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
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
5. On the form, fill in the fields.
To learn about the fields on the program criteria table, see Program criteria table fields.
6. Select Submit.
Related topics
Configure Program Segment Mapping
Configure Program Segment Criteria

Partner Workspace
Partner admins, agents, and managers can manage partner programs and partnerships on the
partner workspace to triage cases and requests from customers.

Overview of the workspace
Use the CSM Configurable Workspace to enable Enterprise Partner admin
(sn_prm.enterprise_partner_admin) and Enterprise Partner Manager
(sn_prm.enterprise_partner_rel_manager) to access tools required to address customer
questions and resolve customer queries.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
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

Create Partnerships on the CSM Configurable
Workspace

Establish a relationship between channel
partners and partner programs on the
workspace.

Update deal registration record

Create a deal registration record on
workspace to enable agents on the enterprise
side to manage the life cycle of a deal.

Create Channel Partner record
Create and track channel partner records on the partner workspace to manage and store all
information related to the channel partners.

Before you begin

Role required: sn_prm.enterprise_partner_admin

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Channel Partners from the Partner Relationship Management.
3. Select New.
4. On the form, fill in the fields.
To learn more about the fields in the channel partner details section, see Channel partner
table fields.
Business Profile section
Field

Description

Revenue per year

Revenue per year for the channel partner
entity.

Number of employees

Number of employees in the channel partner
entity.

Supported Industries

Industries that the channel partner supports.

5. In the Channel Partner Company Info section of the form, fill in the contact details including
the Website, Email, and Phone of the channel partner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
6. In the Company Address section of the form, fill in the address of the physical location of the
channel partner, such as Street, State, and more.
7. Select Save.
View Channel Partner information on partner workspace
View consolidated channel partner information through the multiple tabs on workspace.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager or sn_prm.enterprise_partner_agent

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list view.
To learn more about the CSM/FSM Configurable Workspace, see CSM Configurable
Workspace overview .
2. Select Channel Partners from the Partner Relationship Management module.
3. Open a channel partner record from the list.
You can view all the information related to cases, child channel partners, sold products, or
install base items associated with the channel partner.
To learn more about the components on the channel partner record, see Channel Partner
components on workspace.
Register Partner Staff on workspace
Register a new partner member or transfer existing staff in a partner organization.

Before you begin

Role required: sn_prm.enterprise_partner_admin

About this task

The Enterprise Partner Relationship Manager [sn_prm.enterprise_partner_rel_manager] of the
channel partner can also register partner staff on the workspace.

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list view.
2. Select Channel Partners from the Partner Relationship Management module.
3. Open a channel partner record from the list and select Register Partner Staff.
4. On the form, fill in the fields.
To learn more about the fields on the Register member form, see Member registration form.
5. Upload a file or document in the Add attachments section.
This is an optional field.
6. Select Submit.
Create Partner Programs on the CSM Configurable Workspace
Enable channel partners to participate in structured initiatives designed to drive revenue,
enhance market reach, and build customer relationships by creating partner programs on the
workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
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
To learn more about the fields on the Partnership form, see Partner program relationship table
fields.
5. Select Save.
Create cases for channel partners
Create customer service cases for channel partners to manage customer queries and offer
resolution.

Before you begin

Role required: sn_prm.enterprise_partner_rel_manager or sn_prm.enterprise_partner_agent

About this task
Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Cases from the Partner Relationship Management module.
3. Select New.
4. On the form, fill in the fields.
To learn more about the fields on the case form, see Case form

.

5. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
Update deal registration record
Create a deal registration record or perform actions on an existing record on the CSM
Configurable Workspace.

Before you begin

Role required: sn_prm_dr.deal_reg_ui

About this task

After a deal is created on the Partner portal and is in the Submitted state, an agent on the
CSM/FSM Configurable Workspace can see the same deal. The information in the fields is
automatically populated from the Partner portal.

Procedure
1. Navigate to the CSM/FSM Configurable Workspace and select the list

view.

2. Select Deal Registration > Submitted to see a list of submitted deals.
To learn how to create a deal and submit it, see Register a deal on Partner portal. The details
in the deal registration form are auto-filled based on the selections made in the Partner
portal by the B2B deal registration initiator (sn_prm_dr.partner _b2b_deal_reg_initiator),
B2C deal registration initiator (sn_prm_dr.partner _b2c_deal_reg_initiator), deal
registration initiator (sn_prm_dr-partner_deal_reg_initiator), and deal registration manager
(sn_prm_dr.partner_deal_reg_manager).
3. Perform one of the following actions based to update the status of the deal.
◦ Select Assign to me to assign the deal to yourself. This option is available only to agent
personas.
This changes the state of the deal to Under Review. In this state, you can perform one of the
following actions on the deal.
▪ Reject the deal and fill in the Closure notes.
▪ Mark as Duplicate and fill in the Closure notes.
▪ Cancel Deal Registration to cancel the deal.
◦ Select Submit for approval to submit the deal.
The deal registration is moved to the Approvals related list. The state of the deal registration
changes to Pending Approval and an approval request is sent to the deal registration
relationship contributor (dn_prm_dr.enterprise_deal_reg_rel_contributor) and the deal
registration relationship manager (sn_prm_dr.enterprise_deal_reg_rel_manager) for the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
channel partner associated with the deal registration. After the deal registration is approved,
the state changes to Approved.

4. After a deal is approved, you can perform one of the following actions on the approved deal.
◦ Select Cancel Deal Registration
Enter the closure notes on the deal registration. This changes the closure code to Rejected.
◦ Select Close if there’s inactivity.
◦ Select Convert to Opportunity to associate the deal to an opportunity.
The state of the deal changes to Closed and the closure code is updated to Converted.
The deal registration is successfully converted to an opportunity.
All line items from the deal registration form are transferred to opportunity line items with the
help of Primitives. To learn more about Primitives, see LeadtoCashCore - Scoped .
Related topics
Register a deal on Partner portal

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

admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
Set up tasks for Segment Management

Configuration tasks to use Segment Management
(continued)
Task

Description

Role

(com.snc.segment_mgmt)
®
from ServiceNow Store.
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
Segment Management
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
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
Related topics
Configure Segment Management
Segment Management
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Segment table

Fields, types, and their description of the segment table
(continued)
Field

Type

Description

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
Roles and components of Segment Management
The Segment Management application uses roles to provide access to information, identify
internal and external users, maintain data security, and establish different types of relationships
between segments and partners.
The Segment Management plugin (com.snc.segment_mgmt) comes with a set of functional roles,
each with varying levels of access to segments and records.

Functional and granular roles
Functional roles help provide authorized partners to maintain data and records in the segment
table. A granular model helps to protect data by granting the required level of access to the
relevant enterprise or channel partner entities. With this functionality, each role is associated
with a set of privileges that determine users’ access to certain information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
You can assign granular policies that authorize individuals to do their jobs efficiently and
effectively, which helps to improve customer experience.

Roles and descriptions
Functional roles are a set of granular roles that are required to perform a function that requires
access to multiple entities. The segment management application uses the segment admin
(sn_seg.segment_mgmt_admin) role to configure and maintain segment data in the segment
(sn_seg_segment) table. The segment admin (sn_seg.segment_mgmt_admin) contains the
following roles.
• Segment writer (sn_Seg.segment_mgmt_writer)
• Segment data viewer (sn_seg.segment_mgmt_data_viewer)
The following table lists the granular roles installed with Segment management.
Granular roles and descriptions

Roles, descriptions, and inherited roles for segment granular roles
Role

Description

Inherited roles

Segment data viewer
This role provides granular
(sn_seg.segment_mgmt_data_viewer)
read access to segment data.

None

Segment writer
This role provides granular
(sn_seg.segment_mgmt_writer) read, edit, and write access to
segment data.

Segment data viewer
(sn_seg.segment_mgmt_data_viewer)

System properties
Navigate to All > Partner Relationship Management > Properties.
The Segment admin (sn_seg.segment_mgmt_admin) hasread and write access for the
[glide.ui.sn_seg_segment_activity.fields] property.
Related topics
Configure Segment Management
Data model for Segment Management

Deal Registration
Install the Deal Registration Management plugin (com.snc.deal_registration_management) to
enable channel partners to create a structured and organized process to identify and manage a
customer's interest in the enterprise's products.

Key benefits of Deal Registration
The Deal Registration Management application (com.snc.deal_registration_management) offers
the following benefits to channel partners.
• Configurable deal registration form to support multiple models, products, or partner programs.
• Reduces manual follow-up in tracking deal registrations, and all its related information, to
promote trust and transparency in the partner ecosystem.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
• Provides channel partners with flexibility to create deal registrations.
• Ensures that the life cycle of a deal registration is tracked accurately through the enterprise
CRM system, to convert a deal registration to an opportunity.

Set up Deal Registration
Deal registration provides channel partners exclusive rights to work on that particular deal
registration or customer for a period of time. To install the Deal Registration Management plugin
(com.snc.deal_registration_management), see Install Deal Registration.
Deal registrations and deal registration line items help to manage and track the products that
are associated with submitted deal registrations. The Deal Registration Management plugin can
promote trust and transparency between enterprises and partners.
Set up Deal Registration Management

Perform the following configuration tasks to set up and use deal registration
management.
Task

Description

Role

Install Deal Registration

Install the Deal Registration
admin
Management application from
®
ServiceNow Store.

Data model for Deal
Registration Management

Add data in the deal
Experience
registration tables to maintain (sn_prm_dr.deal_reg_ui)
and track partner submitted
deals and the line items linked
to a deal registration.

Roles and components
of Deal Registration
Management

The Deal Registration
admin
Management
(com.snc.deal_registration_management)
application uses roles to
provide access to information,
identify internal and external
users, maintain data security,
and establish different types
of relationships between
segments and partners.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
About this task

The following items are installed with Deal Registration:
• Plugins
• Store applications
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
Data model for Deal Registration Management
The deal registration management data model provides a framework for channel partners to
establish a consistent and organized engagement model with channel partners.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
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
Configure Partner Program Deal Type Relationship table
Configure the Partner program deal type relationship (sn_prm_dr_pp_deal_type) table to ensure
that the appropriate deal registration types are associated to the accurate partner programs.

Before you begin

Role required: sn_prm_dr.deal_reg_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
Procedure
1. Navigate to All > Deal registration > Administration > Deal Registration Types.
2. Create a deal registration type.
To learn how to create a deal registration type, see Configure Deal Registration Type table.
3. Select Program Deal Type Relationships from the related list.
4. On the form, fill in the fields.
To learn more about the fields, see Partner program deal type relationship table fields.
5. Select Submit.
Roles and components of Deal Registration Management
The Deal Registration Management application (com.snc.deal_registration_management) uses
roles to provide access to information, identify internal and external users, and maintain data
security.
The Deal Registration Management application (com.snc.deal_registration_management) comes
with a set of functional roles, each with varying levels of access to deals and their line items.

Functional and granular roles
Functional roles help provide authorized partners to maintain data and records in the deal
registration table. A granular model helps to protect data by granting the required level of
access to the relevant enterprise or channel partner entities. With this functionality, each role is
associated with a set of privileges that determine users’ access to certain information.
You can assign granular policies that authorize individuals to do their jobs efficiently and
effectively, which helps to improve customer experience.

Roles and descriptions
Functional roles are a set of granular roles that are required to perform a function that requires
access to multiple entities. The following table lists the functional roles for Deal Registration
Management.
Functional roles

List of functional roles, their descriptions, and contained roles for deal
registration management.
Role

Description

Deal registration admin
(sn_prm_dr.deal_reg_admin)

This user can configure the
deal registration data model
and can create and edit all
deal registrations across
multiple partner types.

Contains roles

• Deal registration type writer
(sn_prm_dr.deal_reg_type_writer)
• Deal registration writer
(sn_prm_dr.deal_reg_writer)

B2B deal registration initiator
This user can create, view,
Partner data viewer
(sn_prm_dr.partner_b2b_deal_reg_initiator)
and track deal registrations for (sn_prm.partner_data_viewer)
all B2B customers with their
associated channel partners.
B2C deal registration initiator This user can create, view,
Partner Data Viewer
(sn_prm_dr.partner_b2c_deal_reg_initiator)
and track deal registrations for (sn_prm.partner_data_viewer)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
Functional roles

List of functional roles, their descriptions, and contained roles for deal
registration management.
(continued)
Role

Description

Contains roles

all B2C customers with their
associated channel partners.
Deal registration initiator
This user can create and view
(sn_prm_dr.partner_deal_reg_initiator)
deal registrations for both B2B
and B2C customers for their
associated channel partners.

Deal registration manager
This user can create and
(sn_prm_dr.partner_deal_reg_manager)
view deal registrations for
all the partners across their
associated partner hierarchy.

• B2B deal
registration initiator
(sn_prm_dr.partner_b2b_deal_reg_initiator)
• B2C deal
registration initiator
(sn_prm_dr.partner_b2c_deal_reg_initiator)
Deal registration initiator
(sn_prm_dr.partner_deal_reg_initiator)

Enterprise deal registration
This user can create, edit, and Partner data viewer
relationship contributor
approve deal registrations for (sn_prm.partner_data_viewer)
(sn_prm_dr.enterprise_deal_reg_rel_contributor)
associated channel partners.

Enterprise deal registration
This user can create, edit, and Enterprise deal registration
relationship manager
approve deal registrations for relationship contributor
(sn_prm_dr.enterprise_deal_reg_rel_manager)
channel partners within their
(sn_prm_dr.enterprise_deal_reg_rel_contributo
assigned hierarchy.
B2B deal registration agent
This user can create, qualify,
(sn_prm_dr.enterprise_b2b_deal_reg_agent)
approve, and convert B2B
deals into opportunities.

Partner data viewer
(sn_prm.partner_data_viewer)

A B2B deal registration agent
can manage the full life cycle
for B2B deal registrations.
To learn more about
converting deals to
opportunities, see Update
deal registration record
B2C deal registration agent
This user can create, qualify,
(sn_prm_dr.enterprise_b2c_deal_reg_agent)
approve, and convert B2C
deals into opportunities.

Partner Data Viewer
(sn_prm.partner_data_viewer)

A B2C deal registration agent
can manage the full life cycle
for B2C deal registrations.
To learn more about
converting deals to
opportunities, see Update
deal registration record
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Functional roles

List of functional roles, their descriptions, and contained roles for deal
registration management.
(continued)
Role

Description

Deal registration agent
This user can create, qualify,
(sn_prm_dr.enterprise_deal_reg_agent)
approve, and convert any
deal registration into an
opportunity.
A deal registration agent can
manage the full life cycle of
submitted deal registrations,
both B2B and B2C.

Contains roles

• B2B deal registration agent
(sn_prm_dr.enterprise_b2b_deal_reg_agent)
• B2C deal registration agent
(sn_prm_dr.enterprise_b2c_deal_reg_agent)

To learn more about
converting deals to
opportunities, see Update
deal registration record
The following table lists the set of granular roles associated with deal registration.
Granular roles

List of granular roles, their descriptions, and contained roles for deal
registration management.
Role

Description

Contains roles

Deal registration data viewer
This granular role provides
(sn_prm_dr.deal_reg_data_viewer)
users read access to all deal
registrations.

Partner data viewer
(sn_prm.partner_data_viewer)

Deal registration type writer
This granular role provides
(sn_prm_dr.deal_reg_type_writer)
users to create, write, and edit
all deal registration types.

Deal registration data viewer
(sn_prm_dr.deal_reg_data_viewer)

With this granular role, users
can also create mapping
records in the partner program
and deal registration type
tables.
Deal registration writer
(sn_prm_dr.deal_reg_writer)

This granular role provides
users create, write, and
edit access to all deal
registrations.

Deal registration data viewer
(sn_prm_dr.deal_reg_data_viewer)

Experience
(sn_prm_dr.deal_reg_ui)

This role provides granular
access to organization staff
to provide a consistent
experience across all user
interfaces.

NA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
Granular roles

List of granular roles, their descriptions, and contained roles for deal
registration management.
(continued)
Role

Description

Contains roles

Approver
This granular role provides
Partner data viewer
(sn_prm_dr.deal_reg_approver) read access to users for the
(sn_prm.partner_data_viewer)
deal registration to which they
are added as an approver.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
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
Roles and components of Sales Common
The Sales Common for Channel Partners plugin
(com.snc.partner_relationship_management_sales_common) application uses roles to provide
access to information, identify internal and external users, and maintain data security.
The PRM plugin (com.snc.partner_relationship_management) comes with a set of functional and
granular roles, each with varying levels of access.
Functional roles

List of functional roles and their descriptions installed with the Sales Common
application.
Role

Description

Contains roles

sn_prm_sales_partner_b2b_sales_rep
This role is assigned to
external channel partner
organizational staff to manage
the entire sales lead to cash
life cycle for B2B customers.
sn_prm_sales_partner_b2c_sales_rep
This role is assigned to
external channel partner
organizational staff to manage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Functional roles

List of functional roles and their descriptions installed with the Sales Common
application.
(continued)
Role

Description

Contains roles

the entire sales lead to cash
life cycle for B2C customers.
sn_prm_sales_partner_sales_manager
This role is assigned to
external channel partner
organizational staff to manage
the entire sales lead to cash
life cycle for B2B and B2C
customers.
sn_prm_sales_partner_sales_relationship_manager
This role is assigned to
enterprise personnel to
manage the entire sales
lead to cash life cycle for the
hierarchy of their channel
partners.

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
For more information on viewing components that are installed with an application, see Find
components installed with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
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

Install Quote Management for Channel Partners
Install the Quote Management for Channel Partners plugin
(com.snc.partner_relationship_management_qm), along with the demo data and installations
®
that are related to ServiceNow Store applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Depending on your entitlements, you must install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The Quote Management for Channel Partners (com.snc.partner_relationship_management_qm)
plugin facilitates management of the entire order life cycle, specifically for indirect sales.
The following items are installed with the Quote Management for Channel Partners plugin
(com.snc.partner_relationship_management_qm) plugin:
• Plugins
• Store applications
• Role like the sn_prm_qm.quote_partner_ui
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


