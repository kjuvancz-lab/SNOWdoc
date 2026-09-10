# Zurich IT Service Management — Incident Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2556–2568 of 3857 | Part 2 of 2

Sections: Incident Management (p2406); Explore (p2408); Configure (p2410); Manage (p2444); Manage major incidents (p2483); Analytics and reporting (p2514); Use agentic AI (p2547); Reference (p2547)

---

<!-- page 2556 -->
To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.

Note: Activate the ITSM Roles plugin on a subproduction environment and test the
functionality before requesting activation in the production environment. For assistance,
contact the ServiceNow Professional Services team.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of Zurich plugins
Components installed with ITSM Roles — Incident Management
Several user roles are installed with activation of the ITSM Roles — Incident Management plugin
(com.snc.itsm.roles.incident_management).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2556


<!-- page 2557 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Contains roles

Incident read

Read access to the Incident Management
application and related records.

• dependency_views

[sn_incident_read]

Note: An ESS user (user with no role)
can view only those incidents that they
create or someone else creates on their
behalf. A user with the sn_incident_read
role can view all incidents as well as the
major incident workbench.
Incident write
[sn_incident_write]

Write access to the Incident Management
application and related records.

Service desk agent

Enables gathering, and verifying information,
as well as delivering quick resolutions for tier 1
[sn_service_desk_agent]service desk agents. This user role is available
when the ITSM Roles plugin (com.snc.itsm.roles)
is installed.

• agent_workspace_user
• view_changer
• cmdb_read
• cmdb_query_builder_read

• sn_incident_read
• template_editor

• sn_incident_write
• sn_problem_write
• sn_change_write
• sn_request_write
• tracked_file_reader
With the installation
of the ITSM Gen AI
(com.sn.itsm.gen.ai)
plugin, the following
roles are also
available:
• knowledge_user
• now_assist_panel_user

Activate Business Stakeholder
Activate the Business Stakeholder plugin (com.snc.business_stakeholder) if you have an admin
role. This plugin installs the Business Stakeholder role. Users with this role can view and approve
records at all ITSM product levels.

Before you begin

Role required: admin

Note: Ensure that ITSM Roles plugin (com.snc.itsm.roles) is activated before you activate
the Business Stakeholder plugin. For more information to activate ITSM Roles plugin, refer
Request ITSM Roles- Change Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2557


<!-- page 2558 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)
Installed with Business Stakeholder
The Business Stakeholder plugin (com.snc.business_stakeholder) installs the Business
Stakeholder role when activated.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Contains roles

Business
Stakeholder

Users with this role can view and approve
records within all products of ITSM.

• pa_viewer.business_stakeholder

[business_stakeholder]

Note: The business_stakeholder
role contains the following ITSM
roles: sn_request_comments_write,
sn_incident_comments_write roles.

• approver_user.business_stakeholder
• cmdb_read.business_stakeholder

Activate KCS Integration for Incident Management
Activate the KCS Integration for Incident Management plugin (com.snc.incident.knowledge)
if you have the admin role. This plugin provides integration of Incident Management with the
Advanced Knowledge Management features.

Before you begin

Role required: admin

About this task

The KCS Integration for Incident Management plugin (com.snc.incident.knowledge) activates the
Knowledge Management Advanced Installer plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2558


<!-- page 2559 -->
Plugin for KCS Integration for Incident Management
Plugin

Description

Knowledge Management Advanced
Installer

Use this plugin to install the Knowledge
Management Advanced plugin. Activating or
upgrading this plugin validates knowledge articles
[com.snc.knowledge_advanced.installer] and knowledge bases to ensure that the Knowledge
Management Advanced plugin can be successfully
installed.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of Zurich plugins
Component installed with KCS Integration for Incident Management plugin
The Incident KCS Article table is installed with the activation of the KCS Integration for Incident
Management plugin (com.snc.incident.knowledge).

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed
Table

Description

Incident KCS Article

The table is used to store knowledge
articles created from the Incident KCS
template.

[kb_template_incident_kcs_article]
Activate Incident Management Notification

You can activate the Incident Management Notification plugin (com.snc.incident_notification) if
you have the admin role. This plugin includes demo data and activates related plugins if they are
not already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2559


<!-- page 2560 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of Zurich plugins
Activate Incident Updates
You can activate the Incident Updates plugin (com.snc.incident.updates) to receive the incident
notification updates if you have the admin role. This plugin includes demo data and activates
related plugins if they are not already active.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of Zurich plugins

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2560


<!-- page 2561 -->
Activate Incident Management — ATF Tests
You can activate the Incident Management — ATF Tests plugin (com.snc.incident.atf) if you have
the admin role. The plugin delivers ATF tests for Incident Management. This plugin includes
demo data.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of Zurich plugins

Features of enhanced security model adoption for incident tables
Help prevent unauthorized access to incident-related tables using Deny-Unless ACLs. A DenyUnless authentication ACL restricts access for a non-authenticated user.
The enhanced security model implements Deny-Unless ACLs to restrict access for a nonauthenticated user, such as a public role user. Without access, the user can't perform any actions
on incident-related tables, including reading, writing, deleting, creating, or accessing the report
view. This ensures that only authorized or approved user roles can access the incident tables.
For more information on Deny-Unless ACLs, see Deny-Unless ACL .
This model is activated by default and applicable on the following incident-related tables:

Tables

Description

Incident KCS Article

The table is used to store knowledge articles
created from the Incident KCS template.

[kb_template_incident_kcs_article]
Incident KCS Template
[kb_template_incident_kcs_template]

The table is used to store knowledge
templates created from the Incident KCS
template.

This model is applicable on the following incident-related tables after installing the ITSM
Enhanced Security Features (com.snc.itsm.enhanced_security) plugin:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2561


<!-- page 2562 -->
Table

Description

Incident

The Incident table is extended from the Task
[task] table. It inherits all the fields, rules, and
policies from the Task table.

[incident]
Incident task
[incident_task]
Task CI
[task_ci]
Task outage
[task_outage]

The incident task [incident_task] table is a
child of the task [task] table and inherits all the
incident task details.
The Task CI [task_ci] table is extended from
the Task [task] table and contains all the
affected CI details.
The Task-Outage table [task_outage]
maintains the mapping between the Task
[task] table and the Outage [cmdb_ci_outage]
table.

Note: For new or zboot instances, the ITSM Enhanced Security Features
(com.snc.itsm.enhanced_security) plugin is auto installed.
The ITSM Enhanced Security Features (com.snc.itsm.enhanced_security) plugin can be installed
and activated by an admin via a support request. Existing or upgrade users must test and
evaluate the results in their non-production instance and then install the plugin and implement
the security change in their production instance. For more information, see Activate ITSM
Enhanced Security Features for Incident Management.
Activate ITSM Enhanced Security Features for Incident Management
Prevent unauthorized access to incident-related tables using deny unless authenticated ACLs by
activating the ITSM Enhanced Security Features (com.snc.itsm.enhanced_security) plugin.

Before you begin

Role required: admin

Note: An admin can install and activate this plugin via support request.
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2562


<!-- page 2563 -->
Incident Management integrations
Users of an incident management solution need to have access to a multitude of features so that
they can address specific challenges directly. Incident Management integrations aims to fully
integrate and automate your incident response system.
Universal Request integration - Incident Management
Incident Management integrates with Universal Request to provide incident-related service as
unified services to users. The integration helps users to have a single service desk.
Install and configure the Universal Request Integration for the Incident Management plugin
(com.snc.incident.universal_request). The integration provides the following configurations and
functionalities:

Features of the Incident Management integration with Universal Request
The integration of Incident Management with Universal Request provides the following features:
• The Universal Request form has the UI action to create an incident. The following fields are
copied by default from the universal request record to the incident record when a new incident
is created:
◦ universal_request
◦ short_description
◦ description
◦ caller_id
◦ opened_by
An incident manager can customize the fields using the system property

sn_inc_uni_req.incident.universal_request.copy_fields.
• The Universal Request field appears on the Incident form only when an incident is associated
with a universal request record.
• The Routing reason field appears on the incident form when an itil agent routes an incident
back to the universal request.
• On the record producer, if you select the Create Universal Request check box, a new incident
created from that record producer automatically creates a universal request record. This
universal request record is associated with the incident record.
• You can activate the Create Universal Request for Incident business rule and
create incidents using any channel, such as record producer, virtual agent support, email, and
so on. When you do this, a universal request record is automatically created. This universal
request record is associated with the incident record. The incident is added as a primary ticket
to the universal request record. By default, this business rule works as follows:
◦ The rule is inactive. To activate this business rule, navigate to System Defination > Business
Rules > Create Universal Request for Incident, and then select Active check box to activate
this business rule.
◦ The rule is not applicable to child incidents for which the parent incident is associated as a
primary ticket to the universal request record.
• When a universal request record is automatically created based on the incident, Incident
record information is copied from the incident record fields to the universal request record
fields. An incident manager with admin role can customize and configure the fields using the
Create UR Mappings and Create UR Information tabs in the Mapping Configuration form for
incidents in Universal Request. For more information, see Mapping configuration .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2563


<!-- page 2564 -->
Visibility of Incidents to a requester
The requesters cannot view the incidents that are associated with the Universal Request records.
Instead, the requesters can only view the Universal Request record using the following ways:
• On ServiceNow AI Platform, you can access the universal request records under Self-Service
> Universal Requests.
• On Service Portal, you can access the universal request records under Service Portal >
Requests.

Suppression of email notifications
If any incident is a part of Universal Request, then the notifications sent to the caller from an
Incident are suppressed. In all other incident email notifications, the universal request number is
displayed instead of the incident number.

Requester Actions on Service Portal
For an Universal Request record that has an incident-related as its primary task, an Actions
widget with the requester actions is displayed. The actions can be Resolve, Reopen, or Close
depending on the state of the incident.
Request Universal Request integration for Incident Management
To activate the integration between Incident Management and Universal Request,
request the Universal Request: Integration for Incident management plugin
(com.snc.incident.universal_request) through the Now Support Customer Service system. This
plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: none

About this task

The Universal Request Integration for Incident management plugin activates these related
plugins if they are not already active.
Plugins for Universal Request Integration for Incident management
Plugin

Description

Universal Request

Enables seamless service experience across different groups
and task types.

[com.snc.universal_request]

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2564


<!-- page 2565 -->
Field

Description

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of plugins (Zurich)
Create incident from Universal Request
Create an incident from a universal request record to restore service to a customer as soon as
possible. After creating the incident record, you can investigate potential solutions.

Before you begin

Role required: routing_agent and ITIL or admin
Activate the Universal Request (sn_uni_req) and the Universal Request Integration for Incident
Management (sn_inc_uni_req) plugins.

Procedure
1. Navigate to Universal Requests > All.
2. Open the universal request record from which you want to create an incident.
3. Click Create Incident.
An incident record is created and associated with universal request. The incident record is not
saved until you submit the record.
4. Fill in the fields on the incident form and click Submit.
The universal request number from which the incident is created appears in the Universal
Request field on the Incident form. The incident number appears in the Primary Ticket field
and also in the Associated Tickets related list of the Universal Request form.
Transfer incident
Transfer the back to the Universal Request queue, or to another department with or without
resolution. When you realise that the issue is not incident related, transfer the incident without
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2565


<!-- page 2566 -->
any resolution to the relevant department or service. If you resolve the issue, you can transfer the
incident with the resolution.

Before you begin

Role required: agent to whom the ticket is assigned to
Associate an incident with a Universal Request record.

Procedure
1. Open the incident that you want to transfer.
2. Click Transfer.

3. In the Transfer Ticket dialog box, provide the following details.

Note: Based on your transfer type configuration, the given fields are displayed. For
more information, see Universal Request properties

.

◦ Action: Select if the case should be transferred to another department or back to Universal
Request
◦ Department: Select the department from the list.
◦ Service: Select the specific service of the chosen department.

Note: This field does not appear if you have selected Transfer to Department in
Action

◦ Transfer reason: Select the reason from the list.
◦ Transfer notes: A brief description for routing the primary ticket that you want to pass to the
UR Routing agent.
◦ Copy additional comments and attachments: Deselect if you do not want to transfer the
ticket with additional comments and attachments. By default, all attachments and comments
are transferred.

Note: Work notes are not copied while transferring.
4. Click Transfer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2566


<!-- page 2567 -->
Create an associated ticket from an incident
Create an associated ticket for another relevant department from an incident (primary ticket)
when you realize that the issue can be resolved in that department.

Before you begin

Ensure that the incident has an associated Universal Request record.
Role required: Ensure you have one of the following roles.
• The agent to whom the incident is assigned.
• The agent who belongs to the assignment group to whom the incident is assigned

Procedure
1. Navigate to Incidents > All.
2. Open the incident record from which you want to create an associated ticket.
3. Click Create Associated Ticket.

4. In the Create Associated Ticket dialog box, fill in the fields.
Create Associated Ticket dialog box
Field

Description

Department

Department for which you want to create an
associated ticket.

Short description

A brief description of the issue for which the
associated ticket is created.

Description

A detailed description of the issue for which
the associated ticket is created.

Work notes

A brief description of the issue. You can
communicate this issue to the Universal
Request Routing agent or to the agent of the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2567


<!-- page 2568 -->
Field

Description

department for which the associated ticket is
created.
5. Click Create.

Result

The ticket is created for the relevant department and is associated with the universal request
record. You can view the associated tickets in the Associated Tickets related list of the Universal
Request form.

Note: When an associated ticket is created, the information is copied from the fields of
the universal request record to the fields of the associated ticket record. You can use the
Associated Ticket Information and Associated Ticket Mappings tabs of the Mapping
Configuration form for incidents. For more information, see Mapping configuration .
Resolve, reopen, or close incident associated with universal request
Resolve, reopen, or close are actions from the Incident Actions widget that is available on the
universal request record for the requester. The Incident Actions widget is available only when an
incident is the primary task of a Universal Request record.

Before you begin

Role required: none
Associate an incident with a Universal request.

Procedure
1. Navigate to your portal page.
2. Click Requests.
3. Open the universal request that is associated with the incident.
4. Perform any of the following actions from the Actions widget.
Option

Description

Resolve

Resolves the incident and updates the state
of Universal Request record.

Reopen

Reopens a closed incident and updates the
state of Universal Request record.

Close

Closes an incident and updates the state of
Universal Request record.

Note: The state of Universal Request record is updated based on the configuration
provided on the State Mapping [universal_request_state_mapping] table.
Customize fields copied from Universal Request to incident
Customize fields so that the values of some fields in the universal request automatically get
copied to an incident record when an incident is associated with a universal request record. It
saves your time from manually entering the information every time you create an incident.

Before you begin

Role required: incident_manager or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2568


