# Zurich Strategic Portfolio Management — SPW Jira Integrations

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 639–681 of 2289

Sections: SPW Jira Integrations (p639); Dashboards (p660)

---

<!-- page 639 -->
Work item reorder errors in EAP Backlog
Review the scenarios when the reordering of work items can fail in the Backlog of Enterprise
Agile Planning workspace.
While reordering work items in different sections of the EAP Backlog, the reorder can fail due to
an error in the ranking configuration. Following are the scenarios where reordering of work items
can fail:
Scenario 1: Global ranking plugin is not active
Check if the Global Ranking Application plugin (com.snc.sdlc.ranking) is active in
your ServiceNow instance. If not, contact your admin to activate it.
Scenario 2: Work item doesn't have a rank configuration
Check if all the work items that you are reordering have a rank configuration. If not,
contact your admin to update rank configuration for these work item types.
Scenario 3: Target row doesn't have a global rank
Check if the work item before or after your target position to reorder has a global
rank. If not, contact your system admin to generate a global rank for them.

SPW Jira Integrations
Improve visibility from strategy to execution with Jira Integration. This integration enables bidirectional syncing of Epics, Features, Capabilities, and Stories. While sprints are created in
Enterprise Agile Planning (EAP) and synced to Jira, sprint status updates flow back from Jira to
EAP.

Get started

Explore

Configure

Learn about SPW
Jira Integrations
and its workflow.

Set up the integration
between SPW and Jira.

Reference
More information on roles,
tables, and forms used
in SPW Jira integration.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 640 -->

<!-- page 641 -->
• One-to-One Mapping: Each Jira Project is directly mapped to an EAP Team.
• Bidirectional Sync of Work Items:
◦ Epics, Features, Capabilities, and Stories are synced both ways between SPW and Jira.
◦ Sync applies to creation and updates.
Example: A product owner creates an Epic in EAP and it appears in Jira. Team members
update the Epic in Jira and the changes sync back to EAP.
• Sprint Management:
◦ Sprints can only be created in EAP, then synced to Jira.
◦ Updates to sprints can be made in either application and are synced bidirectionally.

What to explore next
To learn more about configuring and using SPW Jira Integrations, see:
• Configuring SPW Jira Integrations
• SPW Jira Integrations reference

Configuring SPW Jira Integrations
Configure the set up and implementation of SPW Jira Integrations. You can either follow the tasks
listed in the configuration or use Guided Setup.

Configuration overview
1. Install SPW Jira Integrations.
2. Assign the Jira integration admin role. See Components installed with SPW Jira Integrations.
3. Set up a Jira instance.
4. Connect SPW to Jira.
5. Import Jira projects to SPW.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
6. Configure Jira Project settings.
a. Associate Jira projects with EAP teams.
b. Review default mapping configuration for Jira projects in SPW.
c. (Optional) Create custom mapping configuration.
d. Enable bidirectional sync between SPW and Jira.
7. Import issues from Jira to SPW.
8. Repeat steps 6 and 7 for all imported Jira projects.
9. Activate Jira configuration in Enterprise Agile Planning.
10. Define team structure in Enterprise Agile Planning.

Using guided setup to implement SPW Jira Integrations
Guided setup provides a sequence of tasks that help you configure SPW Jira Integrations on
your ServiceNow instance. To open guided setup for SPW Jira Integrations, navigate to All >
Strategic Planning > Jira integration > Guided Setup.
Install SPW Jira Integrations
You can install the SPW Jira Integrations application (sn_spw_jira_int) if you have the admin
®
role.The application installs related ServiceNow Store applications and plugins if they are not
already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the SPW Jira Integrations application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with SPW Jira Integrations:
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with SPW Jira Integrations.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the SPW Jira Integrations application (sn_spw_jira_int) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

642


<!-- page 643 -->
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Setting up a Jira instance for SPW Jira Integrations
Establish a connection between Strategic Planning Workspace (SPW) and Jira using a Jira
instance record.
Before connecting SPW and Jira, you need a Jira instance record and Jira connection alias in
your ServiceNow instance.
Based on the type of your Jira instance, perform the following steps:
• For Jira Cloud:
1. Create a child alias for the Jira Spoke alias.
2. Integrate your ServiceNow instance with your Jira account using OAuth. See Option 3: Using
OAuth authentication

Note: To create credential record and connection record in this task, use the child
alias that you created earlier and not the parent Jira Spoke.
3.
4.
5. Create a Jira instance record in ServiceNow AI Platform.
• For Jira Server or Data center:
1. Create a child alias for the Jira Spoke alias.
2. Set up a MID server. See Tips to set up your MID Server

.

3. Create Personal Access Token (PAT) in Jira.
4. Using the PAT, set up connection & credentials for the child alias.
5. Create a Jira instance record in ServiceNow AI Platform.
After successfully setting up the Jira instance record, proceed to connect Strategic Planning
Workspace and Jira. For more information, see Connect SPW to Jira.
Create a child alias for Jira Spoke alias for SPW Jira Integrations
Create a child connection & credential alias that will be used to connect to Jira later, to enable
integration between Strategic Planning and Jira.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
Procedure
1. Navigate to All > Connection & Credentials > Connection & Credential Aliases.
2. From the list of aliases, open the alias based on your Jira instance type.
◦ For Jira Cloud, open sn_jira_spoke.Jira.
◦ For Jira Server/Data Center, open sn_jira_int.Jira.
3. Create a child alias.
a. From the Child Aliases related list, select New.
b. Enter a name.
For example, Jira instance – GenAI team.
c. Select Submit.

What to do next
• For Jira Cloud: .
• For For Jira Server/Data Center: Create PAT for Jira Server.
Create Personal Access Token in Jira Server/Data Center for SPW Jira Integrations
Create a Personal Access Token (PAT) for your Jira Server/Data Center instance, which is later
used to create a connection between Strategic Planning and Jira.

Before you begin
• Create a child alias for Jira Spoke alias for SPW Jira Integrations.
• Set up a MID server. See Tips to set up your MID Server

.

Role required: NA

About this task

This task is performed outside the ServiceNow instance.

Important: A Jira Server account is used to create the PAT. After establishing the
integration, any updates that are made in Strategic Planning Workspace will show up in
Jira as done by this logged-in user. So, it is recommended that this account that is used to
generate the PAT is either an admin or a placeholder user profile that is not used to make
any updates in Jira once the integration is complete. If this user makes any updates in Jira,
it may result in cyclic changes.

Procedure
1. Log into your Jira Server instance.
2. Navigate to your profile.
3. From your profile details, select Personal Access Tokens from the left navigation menu.
4. Select Create token.
5. Enter the details of name and expiry period.
6. Select Create.
7. Copy the created token and store it securely to retrieve it for later steps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
What to do next

Use this PAT as password while creating connection and credential for your Jira alias. See Create
connection and credentials for SPW Jira Integrations.
Create connection and credentials for SPW Jira Integrations
Using your Jira instance details, create a connection and credential for the child alias, which is
used to enable the two-way sync of work item updates between Strategic Planning Workspace
and Jira.

Before you begin
1. Create a child alias for Jira Spoke alias for SPW Jira Integrations.
2. or Create Personal Access Token in Jira Server/Data Center for SPW Jira Integrations.
Role required: admin or sn_jira_int.admin

About this task

This task is performed for Jira Server/Data Center type instances only. For Jira Cloud, follow the
steps of OAuth authentication. For more information, see Option 3: Using OAuth authentication

.

Procedure
1. Navigate to All > Connection & Credentials > Connection & Credential Aliases.
2. From the list of aliases, open sn_jira_int.Jira
3. From the Child Aliases related list, open the child alias record that you created earlier.
4. From the Connection & Credential Aliases form, select Create New Connection & Credential
related link.
5. On the form, fill in the fields.
For field information, see Create Connection & Credential form.
6. Select Create.

What to do next

Create Jira instance for SPW Jira Integrations.
Create Jira instance for SPW Jira Integrations
Create a Jira instance record which is later used to connect Strategic Planning Workspace and
Jira.

Before you begin

Create connection and credentials for SPW Jira Integrations.
Role required: sn_jira_int.admin

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Instances.
2. Select New.
3. On the form, fill in the fields.
For field information, see Jira Instance form.
4. Select Submit.

What to do next

Connect SPW to Jira.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
Connect SPW to Jira
Connect Strategic Planning Workspace to Jira to enable the integration between the
applications.

Before you begin

Role required: sn_jira_int.user

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Instances.
2. Select your Jira instance.
3. Click Get Webhook Callback URL.
4. Set up a webhook using this URL in Jira Administration.
This action is done outside your ServiceNow instance.
Registering a webhook via the Jira administration console
5. On the Jira instance form, select Connect.

Result

If the connection is successful, the State field on your Jira instance record shows Connected. A
webhook is now registered in Jira to receive update events.

What to do next

Import Jira projects to SPW.
Import Jira projects to SPW
Discover and import all available Jira projects and boards into Strategic Planning Workspace to
start using the integration between the two applications.

Before you begin

Connect SPW to Jira.
Role required: sn_jira_int.user

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. Select Discover Projects.
This action creates requests to import Jira projects and boards, and to create mapping
configuration for all these projects. You can view all the import requests in the Jira Import
Requests related list and the initial state of all the requests would be Requested

Result

Once the status of each import request changes to Complete, you can see that the related lists
of this Jira instance are populated as follows:
• Jira Projects: All available projects from Jira
• Jira Boards: All available boards from Jira
• Project Style Mappings: Mapping configuration for all the imported Jira projects.

What to do next

Configure integration settings for a Jira project.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
Configuring Jira project settings in SPW
Configure integration settings for each Jira project before importing issues to ensure accurate
and consistent visibility of work in both Strategic Planning Workspace and Jira. These settings
such as team association and data mappings define how work items sync between both
applications.
For each Jira project, perform the following tasks:
1. Associate the Jira project with an EAP team.
Each Jira project must be associated with an EAP team so that work items brought in from Jira
map to the right team in SPW.
2. Review default data mapping configurations.
Predefined data mapping configurations for Epics, Sprints, and Stories between the two
applications are available but if these default mappings don't fit your team's requirements, you
can edit them or create new ones. See Create custom mapping configurations.
3. Enable bidirectional data sync.
This step ensures updates done in either application are reflected in the other so that data is
consistent across.
These steps must be completed for every Jira project that you plan to integrate. Doing so ensures
that imported issues sync correctly and enables portfolio managers with real-time visibility into
execution.
Associate Jira projects with EAP teams
Ensure work items from Jira are mapped to the right teams in Enterprise Agile Planning (EAP) by
associating Jira projects with EAP teams.

Before you begin

Import Jira projects to SPW
Role required: sn_jira_int.user

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. From the Team Integration Settings related list, select New.
4. On the Team Integration Settings form, fill in the fields,
For field information, see Team Integration Settings form.
5. Select Submit.

What to do next

Review default mapping configuration for Jira projects in SPW.
Review default mapping configuration for Jira projects in SPW
Verify that the default mapping configuration between work items in Strategic Planning
Workspace (SPW) and Jira aligns with your team's processes.

Before you begin

Import Jira projects to SPW
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
Role required: sn_jira_int.user

About this task

Review the predefined table, field, and choice mapping configuration for a Jira Project. For more
information on the default configuration for Epics, Stories, and Sprints, see Default mapping
configuration for SPW Jira Integrations.

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. From the Table Maps related list, review the list of mappings available between tables of Jira
and SPW for this project.
4. Review the field mapping for each table map.
a. Select a table mapping record to open it.
b. From the Field Maps related list, review the mapping configuration of the fields between the
tables.
5. Review the choice mapping for a field such as the State field.
a. Select a field mapping record to open it.
b. From the Choice Maps related list, review the mapping configuration of choices of the fields.
6. Repeat steps 3, 4, and 5 for all table maps of the Project.

What to do next

If the available mapping configuration doesn't fit your team's requirements or processes, you can
create custom mappings between entities of Jira and SPW. For more information, see Custom
mapping configuration for SPW Jira Integrations.
Custom mapping configuration for SPW Jira Integrations
Learn about creating custom mapping configurations to map Jira issue types, fields, and choices
with SPW entities, to match your team's processes.
Custom mapping configurations allow you to control how Jira issue types, fields, and values align
with SPW planning items. While default mappings cover common use cases, they may not fit your
team's processes or reporting needs. By creating custom mappings, you can:
• Ensure accurate synchronization of work items between Jira and SPW.
• Align data mapping to reflect your team’s terminology and workflows.
• Support consistent reporting and visibility across strategy and execution.
This flexibility helps provides a tailored integration experience, so that portfolio managers and
delivery teams work with information that matches their context.
Create custom table mapping for SPW Jira integrations
Create a custom mapping configuration between tables of Strategic Planning Workspace (SPW)
and Jira.

Before you begin

Review default mapping configuration for Jira projects in SPW.
Role required: sn_jira_int.user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
About this task

Choose one table from Jira and one from SPW to create a mapping between them.
For example, if your team uses an issue type like Feature that isn’t mapped by default,
you can create a new mapping between the Feature issue type in Jira and the Feature
[sn_align_core_feature] table in SPW.

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. From the Table Maps related list, select New.
4. On the Table Map form, fill in the fields.
For field information, see Table Map form.
5. Select Submit.

What to do next
1. Validate your new table map configuration by clicking Validate and fix mapping from the Jira
project form.
2. For this table map, create field mappings. See Create custom field mapping for SPW Jira
integrations.
Create custom field mapping for SPW Jira integrations
Create a custom mapping configuration between fields of Strategic Planning Workspace (SPW)
and Jira.

Before you begin

Role required: sn_jira_int.user

About this task

Select a Jira field and map it to a corresponding SPW field in the Table Map record.
For example, a table mapping between the Story entity in Jira and the Story [rm_story] table in
SPW is available by default. If you need to map additional fields, such as story points, create a
custom Field Map record using the steps below.

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. From the Table Maps related list, open a table map record for which you want to create field
maps.
4. From the Field Map related list, select New.
5. On the form, fill in the fields.
For field information, see Field Map form.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
What to do next
1. Validate your new mapping configuration by clicking Validate and fix mapping from the Jira
project form.
2. (Optional) If your new field is of the type Choice, create custom choice mapping for it. See
Create custom choice mapping for SPW Jira integrations.
Create custom choice mapping for SPW Jira integrations
Create a custom mapping configuration for field choices between Strategic Planning Workspace
(SPW) and Jira.

Before you begin

Role required: sn_jira_int.user

About this task

Select a choice value from a Jira entity and map it to a corresponding choice value in an SPW
table.
For example, Jira Stories include default states such as To Do, In Progress, and Done. If your
team adds a custom state like Testing, you can create a choice mapping to link Testing in Jira to
the Ready for Testing state in the Story [rm_story] table in SPW.

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. From the Table Maps related list, open your table map record.
4. From the Field Maps related list, open a field map record for which you want to create choice
maps.
5. From the Choice Map related list, select New.
6. On the form, fill in the fields.
For field information, see Choice Map form.
7. Select Submit.

What to do next
1. Validate your new mapping configuration by clicking Validate and fix mapping from the Jira
project form.
2. Enable bidirectional sync of work items between Jira projects and SPW.
3. Import issues from Jira to SPW.
Enable bidirectional sync between SPW and Jira
Enable import and export for a Jira project to ensure data is consistent across for all stakeholders
using Strategic Planning Workspace and Jira.

Before you begin

Role required: sn_jira_int.user

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
3. Select both the Enable Import and Enable Export options.
4. Select Update.

What to do next

Import issues from Jira to SPW.
Import issues from Jira to SPW
Import work items such as epics, features, capabilities, and stories from Jira to Strategic Planning
Workspace (SPW) to enable end-to-end visibility in SPW.

Before you begin

Enable bidirectional sync between SPW and Jira
Role required: sn_jira_int.user

Procedure
1. Navigate to All > Strategic Planning > Jira Integration > Jira Projects.
2. Open your Jira project record.
3. Select Import issues.
4. Select a date range to import issues from your Jira project.
5. On the Import Request form, select Submit.
An Import request is created and is shown in the Jira Import Requests related list of the Jira
project.

Result

After the State of the import request changes to Complete, all the work items from Jira would
have been imported into Strategic Planning Workspace tables, based on the mapping
configuration defined for the project.

What to do next
1. Activate Jira configuration in Enterprise Agile Planning.
2. Define Agile structure in EAP for Jira Configuration
Activate Jira configuration in Enterprise Agile Planning
Activate the Jira configuration so that EAP teams integrated with Jira projects can be shown in
the Enterprise Agile Planning workspace.

Before you begin

Ensure that Application Scope of your ServiceNow instance is set to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
3. On the Jira configuration card, select Edit.
4. On the configuration form, set the State field to Active.
5. Select Save.

What to do next

Define Agile structure in EAP for Jira Configuration.
Define Agile structure in EAP for Jira Configuration
Set up Agile team structures in Enterprise Agile Planning (EAP) for teams associated with Jira
projects so that imported work items and updates from Jira display correctly in EAP.

Before you begin

Activate Jira configuration in Enterprise Agile Planning.
Ensure that Application Scope of your ServiceNow instance is set to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Agile structure.
3. Add an Agile Release Train (ART) by selecting the + icon (

) next to Jira Configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
a. On the Agile Release Train form, fill in details such as name and description.
b. Select Submit.
c. Repeat the action to add as many ARTs as you need.
4. For each ART, add Agile Teams by selecting the + icon (
If you cannot find your teams, contact your admin.

) next to the ART's name.

Result

An Agile structure is defined for Jira Configuration in EAP.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
What to do next

Start using SPW and EAP with Jira integration.

Using EAP with SPW Jira Integrations
After configuration is complete for SPW Jira Integrations, use Enterprise Agile Planning (EAP) to
bridge strategy and execution. Plan and schedule work in EAP, let teams deliver in Jira, and see
progress and performance flow back to EAP for accurate, real‑time visibility.
Strategic planners such as portfolio managers and product owners can use EAP to define
planning intervals and sprints, create and prioritize epics and stories, and assign them to teams.
These plans sync to Jira, where delivery teams execute and update work.
Changes made in Jira such as sprint updates, status changes, or newly scheduled work flow
back into EAP, maintaining end‑to‑end visibility without switching tools.
From the EAP team's Home tab, you can view reports to track current‑sprint status, overall
execution health, and team performance.
This workflow enables you to plan in EAP, execute in Jira, and monitor outcomes in one place.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
For more information on managing backlog and sprints using EAP, see Manage team backlog in
EAP and Perform PI planning in EAP.

SPW Jira Integrations reference
Reference topics provide additional information about the lists and forms that you use to
configure SPW Jira Integrations.
Components installed with SPW Jira Integrations
Learn about the roles and tables installed with the SPW Jira Integrations application.

Roles installed
Role title [name]

Description

Contains roles

Jira integration
admin

Has complete access to the SPW Jira
Integrations application

• sn_int_common.admin

[sn_jira_int.admin]
Jira integration
user
[sn_jira_int.user]

• Sets up integration between Jira and Strategic
Planning
• Can create new or update the existing map
configurations between Jira and Strategic
Planning

• sn_jira_int.user

• connection_admin
• sn_int_common.user
• credential_admin

Tables installed
Table

Description

Choice Map

Stores the list of workflow state mapping for Jira
projects.

[sn_int_common_choice_map]
Event Type
[sn_int_common_input_event_type]
External Identifiers
[sn_int_common_external_identifiers]
External Project
[sn_int_common_project]
External system
[sn_int_common_external_system]
External System Version
[sn_int_common_external_system_version]

Stores information of the type of webhook events
such as create, update, or delete of a work item.
Stores the list of all Jira reference identifiers such
as External ID, External Key, External Project,
External URL, and so on.
Stores information of the Jira project such as
project ID, the Jira instance of this project, project
name, and so on.
Stores information of Jira application used for the
integration.
Stores version information of Jira application used
for the integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Table

Description

Field Map

Stores the list of field mapping of different issue
types for Jira projects.

[sn_int_common_field_map]
Jira Board

Stores the list of imported boards from Jira.

[sn_jira_int_board]
Jira Import Request
[sn_jira_int_import_request]

Stores the list of all import requests created
to import projects, boards, and project style
mappings from Jira.

Jira Instance

Stores the list of all Jira instances.

[sn_jira_int_instance]
Jira Project

Stores the list of all imported projects from Jira.

[sn_jira_int_project]
Team Integration Settings
[sn_agile_jira_int_import_settings]
Project Style Mapping
[sn_jira_int_prj_style_mapping]
Table Map

Stores the list of one-to-one relation between a
Jira project, board, and an EAP Team.
Store the list of map configuration templates per
Jira project style.
Stores the list of table maps for Jira projects.

[sn_int_common_table_map]
Default mapping configuration for SPW Jira Integrations
Learn about the default mapping configuration of Epic, Story, and Sprint work types between
Strategic Planning and Jira.

Epic mapping configuration
Epic [sn_align_core_scrum_epic] in Strategic Planning is mapped to Epic in Jira. The field
mapping between these two tables is as follows.
Epic Table Map
Field in Strategic Planning

Field in Jira

approved_start_date

Start date

state

Status

short_description

Summary

approved_end_date

Due date

Story mapping configuration
Story [rm_story] in Strategic Planning is mapped to Story in Jira. The field mapping between
these two tables is as follows.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
Story Table Map
Field in Strategic Planning

Field in Jira

assigned_to

Assignee

description

Description

iteration

Sprint

parent_work_item

Parent

priority

Priority

short_description

Summary

state

Status

Sprint mapping configuration
Enterprise agile iteration [sn_apw_advanced_eap_iteration] in Strategic Planning is mapped to
Sprint in Jira. The field mapping between these two tables is as follows.
Sprint Table Map
Field in Strategic Planning

Field in Jira

state

state

start_date

startDate

name

name

end_date

endDate

Related topics
Review default mapping configuration for Jira projects in SPW
Team Integration Settings form
Learn about the fields of Team Integration Settings form that is used to create an association
between Jira projects and EAP teams.
Team Integration Settings form
Field

Description

Jira Project

This field is auto-populated from your
selection.

EAP Team

The EAP team that you want to associate your
Jira Project to.
All work items from the selected Jira project
will be synced to this EAP team.

Jira Board

Jira board for the selected Jira project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
Team Integration Settings form (continued)
Field

Description

• For team-managed projects, enter the Jira
board associated with the project.
• For company-managed projects, even if
multiple boards exist for a single Jira project,
you can map only one board to an EAP team
in the Team Integration Settings form.
• The selected board determines which work
items sync bidirectionally between the Jira
Project and the EAP team.
• Real-time import and export will apply only
to the mapped board for company-managed
projects.
Related topics
Associate Jira projects with EAP teams
Table Map form
Learn about the fields of the Table Map form, which are used while creating a custom table
mapping configuration for SPW Jira Integrations.
Table Map form
Field

Description

Internal Table

Table name in Strategic Planning.
Internal Table must be set to Planning Item
[sn_align_core_planning_item] or one of its
child tables.

Map configuration

Map configuration for this project.
This field is auto-populated based on the
project.

External Table

Table ID in Jira.

External Table Name

Table Name in Jira.

Integration Type

Select Strategic Planning Workspace.

Related topics
Create custom table mapping for SPW Jira integrations
Field Map form
Learn about the fields of the Field Map form, which are used while creating a custom field
mapping configuration for SPW Jira Integrations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
Field Map form
Field

Description

Internal Field

Field name in Strategic Planning.

External Field

Field ID in Jira.

External Field Name

Field Name in Jira.

Table Map

Table Map record for which this field mapping
is created.
This field is auto-populated.

Internal Table

Table in Strategic Planning.
This field is auto-populated based on the
Table Map selection.

Related topics
Create custom field mapping for SPW Jira integrations
Choice Map form
Learn about the fields of the Choice Map form, which are used while creating a custom choice
mapping configuration for SPW Jira Integrations.
Choice Map form
Field

Description

Internal Choice

Value of the choice in SPW. This value is an
integer.

External Choice

Name of the choice in Jira.

External Choice Name

Display name of the choice in Jira.

Field Map

Field Map record for which this choice
mapping is created.
This field is auto-populated.

Related topics
Create custom choice mapping for SPW Jira integrations
Create Connection & Credential form
Learn about the fields of the Create Connection & Credential form, which is used while setting up
SPW Jira Integrations.
Create Connection & Credential form
Field

Description

Connection URL

Jira instance URL.

Server type

Type of your Jira instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
Create Connection & Credential form (continued)
Field

Description

• For Jira Cloud, enter cloud.
• For Jira Server/Data Center, enter server.
User Name
API key

Username for your Jira instance account.
• For Jira Cloud, enter the API token that you
generated. For more information, see .
• For Jira Server/Data Center, enter the PAT
that you generated. For more information,
see Create Personal Access Token in
Jira Server/Data Center for SPW Jira
Integrations.

Related topics
Create connection and credentials for SPW Jira Integrations
Jira Instance form
Learn about the fields of the Jira Instance form, used to connect Strategic Planning to Jira.
Jira Instance form
Field

Description

Name

Name of your choice for the Jira instance
record.

Connection Alias

Select the connection alias that you created.
For more information, see Create connection
and credentials for SPW Jira Integrations.

URL

URL of your Jira instance, Cloud or Server.

State

Connection status of the Jira Instance.

Version

Version of your Jira instance.

Integration Type

Select Strategic Planning Workspace.

Related topics
Create Jira instance for SPW Jira Integrations

Dashboards in Strategic Planning Workspace
Dashboards in Strategic Planning Workspace help product and portfolio managers monitor
performance, track progress, and make informed decisions related to ideas, feedback, strategy,
planning, and execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
Explore

Use

Integrate

Learn the key benefits
of using dashboards
in Strategic Planning

Learn how to use
dashboards and monitor
performance, track
progress, and make
informed decisions

Add existing
Platform Analytics
dashboards to Strategic
Planning Workspace

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Dashboards in Strategic Planning Workspace
As a product and portfolio manager, use dashboards in Strategic Planning Workspace to monitor
performance, track progress, and make informed decisions related to ideas, feedback, strategy,
planning, and execution. These dashboards leverage Platform Analytics to provide a trend of
historical data and regular reports.
The following are four out-of-the-box dashboards available in the Strategic Planning Workspace:
• Product Idea Dashboard
• Feedback Dashboard
• Strategy Execution Dashboard
• Execution Dashboard
You can use the default dashboards or create your own dashboards to monitor performance and
take informed decisions.

Benefits of dashboards
• Create data visualizations and add them to the dashboards using the Platform Analytics
experience.
• Monitor performance, track progress, and make informed decisions related to ideas, feedback,
strategy, planning, and execution.
• Duplicate existing dashboards and customize them as needed, without modifying the out-ofthe-box dashboards.
• Use the out-of-the-box dashboards or configure your own dashboards as needed.
• Share dashboards with stakeholders to enable collaboration.
• View relevant data by applying filters directly within a dashboard.
• Any filters applied are saved as part of user personalization and are available the next time you
log in.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
For guidance on using and managing dashboards in the Strategic Planning Workspace, see
Using Dashboards in Strategic Planning Workspace.
Feedback Dashboard in Strategic Planning Workspace
The Feedback Dashboard helps product managers track feedback volume and stakeholder
trends to surface recurring pain points, inform prioritization decisions, and demonstrate
responsiveness.

Feedback Dashboard
Widget/Visualization

Description

Importance High - Awaiting review

Count of feedback items with high importance
(1-High) and a state of either Submitted or
Need More Information.

Importance High - Not linked to ideas

Count of feedback items with high importance
(1-High) that aren’t linked to any ideas.

Importance High - Unassigned

Count of feedback items with high importance
(1-High) that aren’t assigned to anyone.

Importance High - Unlikely to implement

Count of feedback items with high importance
(1-High) and a state of Unlikely to Implement.

Feedback Created in Last 30 Days

Count of feedback items created within the
last 30 days.

List of Feedback Created in Last 30 Days

List of feedback items created within the last
30 days, including details such as Name,
Importance, Source, Customer, Assigned to,
and Product idea count.

Total Feedback

Total number of feedback items received to
date.

Feedback Distribution

Visualization of feedback items with grouped
by Importance and stacked by Customer.

Overall Feedback Distribution

Visualization of feedback items with grouped
by Importance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
Feedback Dashboard (continued)
Widget/Visualization

Description

Feedback Linked to Ideas in the Last 30 Days

Visualization of feedback items linked to
ideas within the last 30 days and grouped by
Importance.

Feedback Count by Location

Count of feedback items by location.

Product Idea Dashboard in Strategic Planning Workspace
The Product Idea Dashboard helps product managers understand the health, flow, and maturity
of submitted ideas, helping innovations progress and helping prevent backlog bottlenecks.

Product Idea Dashboard
Widget/Visualization

Description

Ideas Not Linked to Feedback

Count of ideas that aren’t linked to any
feedback.

Planning State: Prioritized – No Owner

Count of ideas whose planning state is
Prioritized but that have no assigned owner.

Priority: Critical (Customer) – Not Yet
Prioritized

Count of ideas whose:
• Planning state isn’t Prioritized or Done
• Priority is 1-Critical, and
• Customers field is populated

Priority: Critical – Not Yet Prioritized

Count of ideas whose:
• Planning state isn’t Prioritized or Done, and
• Priority is 1-Critical

Ideas Created in Last 30 Days

Count of ideas created within the last 30 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
Product Idea Dashboard (continued)
Widget/Visualization

Description

List of Ideas Created in Last 30 Days

List of ideas created within the last 30 days,
including details such as Name, Planning
state, Status, Owner, Product, and Customers.

Total Ideas

Total number of ideas received to date.

Breakdown of All Ideas

Visualization of all ideas with grouped by
Planning state.

Breakdown: Ideas Not Linked to Feedback

Visualization of ideas not linked to feedback
within the last 30 days and grouped by
Planning state.

Idea Analyzer

Visualization of ideas with grouped by Impact
and stacked by Priority.

Execution Dashboard in Strategic Planning Workspace
The Execution Dashboard helps portfolio and product managers gain real-time visibility into
delivery progress across work items, enabling portfolio leads to detect delays, course-correct
early, and keep the strategy on track.
The Execution Dashboard provides various analytics across different tabs, including Overview,
Financial, Milestones & Dependency, Capacity, RIDAC, Data Quality, and Geo.

Overview tab in the Execution Dashboard

Widget/Visualization

Description

Delayed Planning Items

Planning items that were prioritized but
haven’t started yet (no recorded actual start
date), despite having an approved start date in
the past.

Overdue Items

Prioritized planning items that remain
incomplete (no recorded actual end date),

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
Widget/Visualization

Description

despite having an approved end date in the
past.
Dependencies whose provider planning item
is in Red status

Dependencies that have a provider planning
item in red status, affecting all dependent
planning items.

Planning Items
New and In-Review Items

Visualization of new and in-review planning
items grouped by Priority. You can also group
the items using other available options.

Prioritized Items

Visualization of prioritized planning items
grouped by Status. You can also group the
items using other available options.

Completed Items

Visualization of planning items whose state
is Done. You can also group the items using
other available options.

Execution Items
Projects

Visualization of projects count grouped by
State. You can also group the items using
other available options.

Demands

Visualization of demands count grouped by
State. You can also group the items using
other available options.

Financial tab in the Execution Dashboard

Widget/Visualization

Description

Select a fiscal period to view relevant data

Option to select date range as This year
or Last year to filter and display the data
accordingly. Clearing the date range displays
the data considering from the start date of the
portfolio plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
Widget/Visualization

Description

Planned Costs

Estimated cost for executing the plan.

Budget

Estimated budget for executing the plan.

Actual Costs

Actual cost incurred during plan execution.

Planned vs Budget vs Actual by Cost Type

Visualization of Planned vs Budget vs Actuals
by Cost Type.

Planned vs Budget vs Actual

Visualization of cost by Planned vs Budget vs
Actual.

Budget by Investment Type

Visualization of budget by Investment type.

Benefits
Planned Monetary Benefits

Monetary benefits that have been planned.

Actual Monetary Benefits.

Monetary benefits that have been achieved.

Pending Monetary Benefits.

Monetary benefits that are in pending state.

Benefits by Category

Benefits by category such as Revenue, Cost
savings, and Customer satisfaction score.

Monetary Benefits

Visualization of monetary benefits with respect
to planned and actual benefits.

Milestones & Dependency tab in the Execution Dashboard

Widget/Visualization

Description

Dependencies whose provider planning item
is in Red status

Count of dependencies that have a provider
planning item in red status, affecting all
dependent planning items.

Missed Key Milestones in Last 30 Days

Count of planning items whose key milestones
were missed within the last 30 days.

Upcoming Milestones Likely to Be Missed

List of planning items whose key milestones
about to be missed soon with details including

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
Widget/Visualization

Description

Name, Type, Due date, Assigned to, Source
item.
Missed Milestones in Last 30 Days

List of planning items whose key milestones
were missed within the last 30 days with
details including details, Name, Type, Due
date, Assigned to, and Source item.

Achieved Milestones in Last 30 Days

List of planning items whose key milestones
were achieved within the last 30 days with
details including details, Name, Type, Due
date, Assigned to, and Source item.

Milestones Analyzer

Visualization of key milestones grouped by
state and stacked by Type. You can also group
and stack the items using other available
options.

Capacity tab in the Execution Dashboard

Widget/Visualization

Description

Resource Assignments Status

Visualization of resource assignments status.

Resource Assignments Ready for Review

Visualization of resource assignments count
that is ready for review.

Upcoming Items with Resource Assignments
List of upcoming planning items whose
That Are Unassigned, Unapproved, or Pending resource assignments status is Unassigned,
Unapproved, or Pending.
Resource Assignments by Group, Role & Skill

Visualization of resource assignments count
by their group, role, and skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
RIDAC tab in the Execution Dashboard

Data Quality tab in the Execution Dashboard

Widget/Visualization

Description

Alignment
Not Aligned to Goal

Count of work items that aren’t associated with
any goal.

Financials
No Planned Cost

Count of work items for which cost estimation
is done yet for execution.

No Planned Benefit

Count of work items for which benefit
estimation is done yet.

No ROI

Count of work items for which ROI isn’t
estimated yet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
Widget/Visualization

Description

Projects and Demands Without an Investment
Type

Count of projects and demands for which
Investment type isn’t defined yet.

Monetary Benefit Plans Without a Planned
Benefit

Count of monetary benefit plans for which
benefit isn’t defined yet.

Monetary Benefit Plans Without a Sponsor

Count of monetary benefit plans for which a
sponsor hasn’t been assigned yet.

Planning Items with Other Attributes
No Resource Assignments

Count of planning items without resource
assignments.

Unscheduled Items

Count of planning items not scheduled yet.

No Portfolio

Count of planning items with no portfolio
defined.

No Program

Count of planning items with no program
defined.

No Department

Count of planning items with no department
populated.

No Business Unit

Count of planning items with no business unit
populated.

No Owner

Count of planning items with no owner
assigned.

Geo tab in the Execution Dashboard
Widget/Visualization

Description

Planned cost by location

Estimated cost by location for executing the
plan.

Strategy Execution Dashboard in Strategic Planning Workspace
The Strategy Execution Dashboard helps portfolio managers monitor the alignment between
strategy and business outcomes, and quickly assess goal progress to ensure high-impact
delivery.
The Strategy Execution Dashboard provides various analytics through the tabs and Execution
Hub.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
Strategic Overview tab in the Strategy Execution Dashboard

Strategic Overview tab of Strategy Execution Dashboard
Widget/Visualization

Description

Goal Status

Goals that are In Progress or Approved, or
have a status of Green, Yellow, or Red.

Goal Analyzer

Visualization of goals with grouped by Owner
and stacked by Strategic priority.

Target Status

Visualization of targets count with their status
as Red, Green, Yellow, and None.

Targets by Goal

Visualization of targets count with their goals.

Goals and Targets

List of goals and targets, including details such
as Name, Status, and Progress.

Execution tab in the Strategy Execution Dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
Widget/Visualization

Description

Select a fiscal period to view relevant data

Option to select date range as This year
or Last year to filter and display the data
accordingly. Clearing the date range displays
the data considering from the start date of the
portfolio plan.

Planned Costs

Estimated cost for executing the plan.

Budget Costs

Estimated budget for executing the plan.

Actual Costs

Actual cost incurred during plan execution.

Planned Monetary Benefits

Monetary benefits that have been planned.

Actual Monetary Benefits

Monetary benefits that have been achieved.

Planned vs Budget vs Actual by Cost Type

Visualization of Planned vs Budget vs Actuals
by Cost Type.

Budget by Investment type

Visualization of budget by Investment type.

Supplementary Data
New and In-Review Items

Visualization of new and in-review planning
items with grouped by Priority.

Prioritized Items

Visualization of prioritized planning items with
grouped by Status.

Completed Items

Visualization of planning items whose state is
Done.

Delayed Planning Items

Planning items that were prioritized but
haven’t started yet (no recorded actual start
date), despite having an approved start date in
the past.

Items Overdue

Prioritized planning items that remain
incomplete (no recorded actual end date),
despite having an approved end date in the
past.

Dependencies whose provider planning item
is in Red status

Dependencies that have a provider planning
item in red status, affecting all dependent
planning items.

Missed Key Milestones in Last 30 Days

Count of planning items whose key milestones
were missed within the last 30 days.

Upcoming Milestones Likely to Be Missed

List of planning items whose key milestones
about to be missed soon with details including
Name, Type, Due date, Assigned to, Source
item.

Resource Assignments Status

Visualization of resource assignments status.

Resource Assignments Ready for Review

Visualization of resource assignments count
that is ready for review.

Upcoming Items with Resource Assignments
List of upcoming planning items whose
That Are Unassigned, Unapproved, or Pending resource assignments status is Unassigned,
Unapproved, or Pending.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
Using Dashboards in Strategic Planning Workspace
Using the Platform Analytics dashboards in Strategic Planning Workspace, you can monitor
performance, track progress, and make informed decisions related to ideas, feedback, strategy,
planning, and execution.

Roles required for managing dashboards
Required roles to access out-of-the-box dashboards
Access level

Required roles

Read, duplicate, or share the Strategy
Execution Dashboard and Execution
Dashboard

sn_align_core.ap_read_only

Note: To view data in financial-related and
capacity-planning-related widgets, users must
have the appropriate roles.

Read, duplicate, or share the Product
Idea Dashboard and Product
Feedback Dashboard

pf_read

Edit the Strategy Execution Dashboard
and Execution Dashboard

admin

Edit the Product Idea Dashboard and
Product Feedback Dashboard

admin

Required roles to create or edit dashboards (excluding out-of-the-box dashboards)
Access level

Required roles

Create
dashboards

sn_align_core.apw_user

Edit
dashboards

sn_align_core.apw_user

Note: You can edit dashboards that you own or those you’ve been
granted permission to edit.

Note: You can create widgets in dashboards by configuring any available data source
table in the ServiceNow AI Platform. However, you must have read access to the source
tables to view key data, metrics, or visualizations.
For example, if you create a widget in a dashboard configuring the Cost Plan Breakdown
table to display budget data, the budget summary is visible on the dashboard only if
you have read access to the Cost Plan Breakdown table. Similarly, when you share this
dashboard with a stakeholder, the stakeholder must also have read access to the Cost Plan
Breakdown table to view the budget summary.
For more information on the required roles to manage Platform Analytics dashboards, see
Platform Analytics dashboard roles .
View a dashboard
View key data and metrics on a dashboard to monitor performance, track progress, and make
informed decisions related to ideas, feedback, strategy, planning, and execution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

672


<!-- page 673 -->
Before you begin

Role required: sn_align_core.ap_read_only

About this task

Dashboards consolidate data from multiple sources into a single, easily digestible format. Each
widget within a dashboard displays key data and metrics and may include visualizations.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard you want to view.

The selected dashboard appears.
3. Optional: Select a required tab that you want to view the key data and metrics for.
Each widget within a dashboard displays key data and metrics and may include visualizations.
4. Optional: Select a widget to see more details of the data in list view.
If you have edit access, you can update the details of an individual record directly from the list
view when necessary.
Related topics
Create a dashboard
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard
Create a dashboard
In the Platform Analytics experience, you can create shareable dashboards with data
visualizations, filters, and other elements. You can use the available elements in the inline editor
to create different types of widgets as needed.

Before you begin

Role required: sn_align_core.apw_user

About this task

Dashboards consolidate data from multiple sources into a single, easily digestible format. Each
widget within a dashboard displays key data and metrics and may include visualizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the dashboard header, select the More actions icon ( ) and then select Create new.
3. On the New dashboard window, fill the details.
a. Enter a name for the dashboard in the Name field.
b. Optional: Enter a brief description for the dashboard in the Description field.
c. Select Create new dashboard.

Result

The dashboard has been created.

What to do next

Edit a dashboard as needed by adding sections, filters, images, lists, process mining maps, and
rich text. For more information, see Edit a dashboard.
Related topics
View a dashboard
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard
Edit a dashboard
Customize or edit a dashboard as needed by adding sections, filters, images, lists, process
mining maps, and rich text. If the dashboard has been shared, any changes you make are
applied globally.

Before you begin

Role required: sn_align_core.apw_user

About this task

Note:
• You can edit dashboards that you own or those you’ve been granted permission to edit.
• Only an administrator can edit the out-of-the-box dashboards, including the Product
Idea Dashboard, Feedback Dashboard, Strategy Execution Dashboard, and Execution
Dashboard. However, you can duplicate an out-of-the-box dashboard and customize it as
needed.
You can use the following elements to create or edit your dashboard.
Dashboard elements in Strategic Planning
Element

Description

Data visualization

Enables you to present a visual representation
of current instance data or temporary data that
you’ve imported. Data visualizations include
visualizations that you create in the dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
Dashboard elements in Strategic Planning (continued)
Element

Description

designer and data visualizations from the
library.
Filter

Enables you to filter the visualizations on a
dashboard based on specified criteria. You
can put filters either on the individual tabs
or above the tabs so that the filter applies to
elements every tab. Filters include both data
filters and domain filters. You can create filters
in the dashboard designer or select them from
the library.

Heading

Provides a place for text at the top of a
dashboard or section of a dashboard.
Formatting for headings is limited to six
heading levels.

Image

Holds static or animated images on the
dashboard.

List - Simple

Shows table data that you can customize for
the dashboard audience.

Process Mining - Map

Maps the different states that are part of your
process and the transitions between those
states. See which states the objects of the
process are in and the speed with which they
change state. Requires an existing Process
Mining project.

Rich text

Holds text that you can format either as text
or as html, including font selection, text size,
highlighting, and hyperlinks. To edit HTML
markup, open the HTML editor from the
Configuration panel and select the Code tags
< > icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard you want to edit.

The selected dashboard appears.
3. From the dashboard header, select Edit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
For this

Perform these steps

a. From the dashboard header, select Add a
tab.
A new tab appears with the default name
New Tab.

Add a tab

b. Select the Edit tab label icon and enter a
name for the tab.
c. Press Enter to update the name of the tab.
a. From the dashboard header, select Add
new element.
A list of available elements appear in the
drop-down.
b. (For example) Select Data visualization to
present a visual representation.
The Add Visualization window appears.

Add a dashboard element

i. (For a new visualization) Select New Visu­
alization.
ii. (For an existing visualization) Select
Saved Visualization and then select a
saved visualization from the library.
The visualization element appears in the
tab and the Configuration side panel ap­
pears.
iii. In the Configuration side panel, fill the re­
quired details in the Visualization type,
Header and border, and Data and other
relevant fields.

4. Drag to move the widget or resize it as required.
5. From the dashboard header, select Save.
6. From the dashboard header, select Exit editing mode.

Result

The dashboard is updated with the latest changes.

What to do next
• Add more elements and customize your dashboard as required.
• For detailed instructions on editing a dashboard using the Platform Analytics experience in
Strategic Planning, see Edit Platform Analytics dashboards .
Related topics
View a dashboard
Create a dashboard
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard
Duplicate a dashboard
If the dashboard you want to create is similar to an existing one, duplicating the existing
dashboard saves your time. After duplicating the dashboard, you can customize the tabs and
widgets as required.

Before you begin
• Users or groups that you want to share the dashboard with must have the
sn_align_core.ap_read_only or sn_align_core.apw_user role to get the read or edit access to
the portfolio plan respectively.
• When you duplicate a dashboard, you copy all settings and details of the original. Content that
exists locally on the original dashboard is duplicated onto the new dashboard. If the original
dashboard contains references to content in a library, such as a shared visualization, the
references are duplicated. The role requirements for editing an element in a library apply to the
latter.
Role required: sn_align_core.ap_read_only

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard that you want to duplicate.

The selected dashboard appears.
3. From the dashboard header, select the More actions icon ( ) and then select Duplicate.
4. On the Duplicating dashboard window, fill the details.
a. Enter a name for the portfolio plan in the New name field.
By default, the name is ABC (Copy) where ABC is the name of the dashboard you
duplicated from.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
b. Optional: Enter a brief description of the goal in the Description field.
c. Select Duplicate.
Duplicating the dashboard may take some time. Select Continue in background to keep using
the application in the meantime.

Result

The dashboard is copied with the new name. The appearance of the dashboard is identical to
the original.

What to do next

Edit a dashboard as needed by adding sections, filters, images, lists, process mining maps, and
rich text. For more information, see Edit a dashboard.
Related topics
View a dashboard
Create a dashboard
Share a dashboard
Add a Platform Analytics dashboard
Share a dashboard
Share a dashboard with stakeholders, planning managers, portfolio managers, or product
managers to provide visibility into work progress and foster collaboration. You can grant either
view-only rights or both view and edit rights to a shared dashboard.

Before you begin

Role required: sn_align_core.ap_read_only

About this task

Users or groups you want to share the dashboard with must have the appropriate roles assigned
to access shared dashboards:
Required roles to access dashboards
Dashboard

• Strategy Execution Dashboard
• Execution Dashboard

Role required

sn_align_core.ap_read_only

Note: To view data in financial-related
and capacity-planning-related widgets,
users must have the appropriate roles.

• Product Idea Dashboard

pf_read

• Product Feedback Dashboard

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard you want to share.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


<!-- page 680 -->
The selected dashboard appears.
3. From the dashboard header, select the More actions icon ( ) and then select Share.
4. On the Share Dashboard window, fill the details.
a. Enter a user name or group name in the Grant access to field to provide access to individual
users or user groups, respectively.
You can also select a role to grant dashboard access to all users assigned that role.
b. Optional: Select Allow recipients to add, edit, or delete sharing permissions associated
with this dashboard to enable users to grant access to new users and modify or remove
existing permissions.
c. Select Add as viewer or Add as editor as required.

Note: You can select Add as editor only if you have the sn_align_core.apw_user role
assigned to you.
The selected users, groups, and roles appear under Manage Access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
You can also manage sharing permissions by selecting a user, group, or role and enabling
the Can share option.
d. Select Confirm.

Result

The roles, groups, and users you have shared the dashboard with appear when you reopen the
dialog, along with the rights you have given them.

What to do next

You can change the rights of whom you have shared the dashboard with in the Share Dashboard
dialog, under the Can view/Can share list for each user, group, or role.
Related topics
View a dashboard
Create a dashboard
Duplicate a dashboard
Add a Platform Analytics dashboard
Add a Platform Analytics dashboard
If you have existing dashboards created using Platform Analytics, you can add them to the
Strategic Planning Workspace to access them directly from a single location.

Before you begin

Role required: sn_align_core.apw_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


