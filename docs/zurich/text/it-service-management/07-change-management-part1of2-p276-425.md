# Zurich IT Service Management — Change Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 276–425 of 3857 | Part 1 of 2

Sections: Change Management (p276); Explore (p276); Configure (p284); Use (p381); Use agentic AI (p450); Reference (p451)

---

<!-- page 276 -->
Related topics
Domain separation for service providers

Change Management
®

The ServiceNow Change Management application provides a systematic approach to control
the life cycle of all changes, facilitating beneficial changes to be made with minimum disruption
to IT services.
ServiceNow Change Management integrates with the Vulnerability response
introduce extra functionality within Change Management.

plugin to

Get started

Explore

Configure

Use

Learn about Change
Management
concepts and features.

Configure environment,
tools, and user access.

Learn how you can use
Change Management.

Reference

Use agentic AI

Get details about Change
Management components
such as roles and
dependent applications.

Use the ITSM Change
Management agentic
workflows to manage
and complete tasks
autonomously.

Exploring Change Management
The Change Management processes for a change request are controlled by workflows defined
for a specific change request type.

Change models
Change managers can use the Change models feature to conveniently tailor change activities
and flows for specific use cases.
This feature is an extension to the existing IT Infrastructure Library (ITIL) OOB Change types
®
and workflows. You can use it to transit to fit-for-purpose models and ServiceNow Workflow
Studio without compromising on existing capabilities.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
Change models enable you to define:
• Fit-for-purpose state models
• State transitions
• State transition conditions
By default, the following models are provided as examples for ITIL mode 1 and mode 2
processes. These models are available with the activation of the Change Management - Change
Model Foundation Data (com.snc.change_management.change_model.foundation) plugin.
• ITIL mode 1 - This is a traditional and sequential approach to process the Change Requests.
This mode goes through a sequential process defined to complete a change successfully.
• ITIL mode 2 - This is an adaptable approach to expedite the change request. This mode
supports the right process for a give change to ensure a Change isn't a blocker to another
change.
Change models
Change model

Description

Normal

Change model used for ITIL mode 1 Normal
changes.

Emergency

Change model used for ITIL mode 1
Emergency changes.

Standard

Change model used for ITIL mode 1 Standard
changes.

Change Registration

Change model used to capture change
requests in an external system. There are no
approvals associated with this model.

Cloud Infrastructure

Change model used for change requests
that commission and decommission Cloud
infrastructure services.

Site Reliability Ops

Change model used for site reliability
operations.

Unauthorized Change

Change model used for change requests that
are created from the unauthorized change
events.

DevOps

Change model used for DevOps change
requests. For more information, see DevOps
change models.

Change Models properties
Configure the Change Models properties to access the Change models capabilities when
creating a Change request.
The following properties enable you to access the Change Models features. For upgrade users,
these properties are set to true.
Enter sys_properties.list in the navigation filter and enter *change_model in the
Search panel to view and edit the properties.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
Change Models Properties
Property

Description

com.snc.change_management.change_model.hide
Hides the Change models feature when the

com.snc.change_management.change_model.type_
property is enabled. When creating a new
change, you do not have the option to choose
a model, and the Model field is not available
on the Change request form.
com.snc.change_management.change_model.manage_workflow
Enables Workflow management
support for ChangeRequest API if the

com.snc.change_management.state_model
plugin is installed. This will call the
'deleteDefaultWorkflowContext' method to be
called on specific state and type changes.
com.snc.change_management.change_model.type_compatibility
Enables Change Type Compatibility
for Change models if the

com.snc.change_management.state_model
plugin is installed. When true allows changes
to be created with both the type based
workflow and Change models.
Create a user criteria record for Change Management
Create a user criteria record to control user access to widgets.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Change > Administration > Change Models.
2. Select a change model.
3. Select Advanced Security.
4. In the related list at the bottom of the record, select Available For to manage access to the
widgets.
5. On the form, fill the fields.
User Criteria record
Field

Description

Name

Unique name for the user criteria record.

Active

Option to make the condition active.

Users

Users to be granted access.

Groups

Groups to be granted access.

Roles

Roles to be granted access.

Companies

Companies to be granted access.

Locations

Locations to be granted access.

Departments

Departments to be granted access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
Field

Description

Match All

Determines whether all elements from
each populated criteria field must match. If
selected, only users who match all criteria are
given access. If cleared, the user must meet
one or more of the set criteria to be given
access.
By default, this check box is cleared so that
any condition met provides a match.

Advanced

Displays or hides the Script field.

Script

Defines any additional criteria, and returns
true or false. This field is available only if
Advanced is selected.

6. Select Submit.

Change types
Change Management supports the three types of service changes ITIL describes — standard,
emergency, and normal. The change type determines which state model is invoked and the
change process that must be followed.
Standard change
A standard change is a pre-authorized change that is low risk, relatively common
and follows a specified procedure or work instruction.
A standard change is one that is frequently implemented, has repeatable
implementation steps, and has a proven history of success. As Standard changes
are pre-approved, they follow a stream lined process in which group level or peer
approval and CAB authorization steps are not required.
Approved standard change requests can be predefined in a catalog of templates to
make accessing and requesting a standard change more efficient. This ability also
enables the Change Management team to control the changes that are authorized
as standard.
Emergency change
A change that must be implemented as soon as possible, for example to resolve a
major incident or implement a security patch. This change is of such a high priority
that it bypasses group and peer review and approval and goes straight to the
Authorization state for approval by the CAB approval group.
Emergency changes cover the following types of emergencies:
• Fix on fail or retroactive situations where the impact to service has already been
experienced.
• Fail or fail situations where the impact to service is imminent if action is not taken.
These changes do not follow the complete life cycle of a normal change due to the
speed with which they must be authorized. Therefore, they progress directly to the
Authorize state for approval from the CAB Approval group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
During an emergency change, there are chances that an unplanned CI change
activity occurs. During such a case, an unauthorized change request is created and
sent for approvals. For more information, see Unauthorized change request.
Normal change
Any service change that is not a standard change or an emergency change.
Normal change requests follow a prescriptive process which requires two levels
of approval before being implemented, reviewed, and closed. These changes
require a full range of assessments and authorizations such as peer or technical
approval, change management, and Change Advisory Board (CAB) authorization, to
ensure completeness, accuracy, and the least possible disruption to service. These
changes are most often scheduled outside of defined change blackout windows
or during defined maintenance windows. The normal type is used to implement
beneficial change for any change to a service that is not a standard or emergency
change.
Related topics
Add a new change request type

State progression for normal, standard, and emergency changes
Each change request model progresses through a number of state values in a specific order.
To enable state transitions, you can attach a process with defined conditions to the change
model states. For more information, see Attach a process for Change model states.
Normal change state progression
State

Can be canceled?

1.

New

Yes

2.

Assess

Yes

3.

Authorize

Yes

4.

Scheduled

Yes

5.

Implement

Yes

6.

Review

No

7.

Closed

No

Diagram

Normal change state model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
Standard change state progression
State

Can be canceled?

1.

New

Yes

2.

Scheduled

Yes

3.

Implement

Yes

4.

Review

No

5.

Closed

No

Diagram

Standard change state model

Emergency change state progression
State

Can be canceled?

1.

New

Yes

2.

Authorize

Yes

3.

Scheduled

Yes

4.

Implement

Yes

5.

Review

No

6.

Closed

No

Diagram

Emergency change state model

Modify the email notification for change request state changes
There is a change request email notification, which, if active, sends a notification to the user
when the state progresses to Scheduled, Implement, Review, or Canceled. You can modify the
change request notification to specify when to send it, who receives it, and what it contains.

Before you begin

Role required: admin

About this task

By default, the notification is sent to the user who originally requested the change. Notifications
are not sent to the user who updated the state on the change request.

Procedure
1. Navigate to All > System Notification > Email > Notifications.
2. Locate and open Change request state change notification.
3. On the form, modify information in the following form sections: When to send, Who will
receive, What it will contain.
For more information about email notifications and the fields in the form, see Create an email
notification .
4. Click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Change approval policies
In Change approval policies, approval definitions are used to generate approvals according to
your business requirements.
A change approval policy is a course of action that can be applied to a change request. It uses
a set of variable inputs to evaluate the decisions that are associated with it. For each matching
decision, the associated approval definition is applied.
An approval policy can contain multiple decisions allowing a single policy to handle every
approval required for a change type. When a decision condition matches, the related approval
definition is evaluated. If one or more decisions match, all the related approval definitions are
evaluated.
Use the Change Approval Policy workflow activity instead of the User and Group Approval
workflow activities to manage the approvals at a particular stage of the workflow. For more
information, see Change Approval Policy workflow activity

Note: To use the change approval policies after you upgrade:
1. Configure the approval policies as needed.
2. Replace the User and Group Approval activities with the Change Approval Policy
activity in the workflow.
A change approval policy consists of three components:
• Policy inputs: The variable sources evaluated within the condition defined on a decision.
• Decisions: Based on the conditions, determines whether the associated Change approval
definition applies.
• Approval definitions: Defines the type of approval that can applied.

Change Advisory Board (CAB) workbench
The Change Advisory Board (CAB) workbench enables a CAB manager to schedule, plan, and
manage CAB meetings.
CAB meetings are typically intended to review and authorize change requests and review
recently implemented changes. A standard agenda with the relevant change request details
enables the CAB members to conduct risk and impact analysis prior to the CAB meeting.
https://player.vimeo.com/video/1146067183?
h=e304716a0a&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
The CAB workbench assists you in managing CAB meetings in the following ways:
Define a schedule for CAB meetings
Schedule a recurring series of CAB meetings for CAB members to assess the
impact and risk of change requests prior to the meetings.
Define CAB meeting attendees
Define members who attend this CAB meeting series for each occurrence. For
example, define the CAB board members or any delegates who can substitute if the
CAB manager cannot attend.
Define CAB meeting agenda
Define filter criteria that determines which change requests are included in any
occurrence of a CAB meeting. If a change request is included in an agenda, the
change requester is notified of the CAB meeting in which the change request
is discussed. The change requester can attend and present the reasons for the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
proposed change, and explain the intended outcomes and potential risks of the
change.
View change calendar
Schedule changes by displaying existing planned changes in a change calendar in
daily, weekly, and monthly view. The calendar view also lists maintenance windows
and blackout schedules, if any.
Approve or reject a change request
Approve or reject a change request based on the decision taken in the CAB
meeting.
View and record meeting notes
Record meeting notes from a specific CAB meeting and share these notes with
other meeting attendees.
The CAB Definition (cab_definition) table inherits the domain properties from the Schedule
(cmn_schedule) table which has the Domain and Domain path columns. As the CAB Definition
table makes use of the same Child Schedule and Schedule Entry tables as the Schedule table,
domain support is identical, where the domain_master attribute is used to derive Domain from a
parent record. For more information, refer Domain support for schedules
.

Upgrade Change Management
Follow these instructions to upgrade your Change Management system.

Before you begin

Prior to Geneva, Change Request installed the Conflict Detection, Best Practice Change Risk
Calculator, Change Risk Assessment, and Bulk CI Changes plugins by default.
For new instances from Geneva onwards, the Standard change catalog, State Model, and Mass
updates CI plugins are also installed by default.
Role required: admin

Procedure
Choose one of the following options.
• If you are upgrading from a release prior to Geneva, you can choose to activate Change
Management core, State Model, Standard change catalog, and Mass updates CI plugins.
The State Model, and Standard change catalog plugins are dependent on the Change
Management core plugin. Hence, activating either the State model or the Standard change
catalog plugins results in the activation of the Change Management core plugin.
Also consider the following consequences of activating Change Management core and the
subsequent changes you might need to make to best suit your organization's requirements:
◦ The previous change types are updated from routine, comprehensive, and emergency
to standard, normal, and emergency respectively. Analyze customizations that you may
have performed that reference old change type values since they are affected and require
updating.
◦ When Change management core is activated, the change types are updated.
• Perform the following tasks after you activate Change management core to ensure that change
types and customizations are updated if you already upgraded from a release prior to Geneva.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
◦ If you had created newer change types in addition to the default change types, then you
must customize them based on the new change types being introduced.
◦ Modify the customizations that are affected to use the new change type values.
◦ A new ACL, change_request.type, prevents users from updating the change type.
If you allow any roles to update the type of a change request, for example, from Normal to
Emergency, modify the ACL. Remove nobody from the Requires role list and add the roles
allowed to update the change type.
◦ If you had the Bulk CI plugin installed, then install the Mass updates CI plugin for enhanced
user experience and alignment with the new plugins.

Configuring Change Management
You can configure various aspects of Change Management based on the specific requirements
of your organization.
The ITSM guided setup provides a sequence of tasks that help you configure Change
Management on your ServiceNow instance. To open ITSM guided setup, navigate to Guided
Setup > ITSM Guided Setup. For more information about using the guided setup interface, see
Using guided setup .

Change Management plugins
You can activate one or more of the Change Management plugins if they are not already active.
Some plugins include demo data.
Many of the following Change Management plugins are activated in the base system. Others can
be activated when you are ready to use them. The Change Management plugins that are inactive
in the base system include the following.
• Change Management mass update CI (com.snc.change_management.mass_update_ci)
• Change Management risk assessment (com.snc.change_management.risk_assessment)
• Best practice - bulk CI changes (com.snc.bestpractice.bulkchange)
You can activate one or more of the following Change Management plugins.
Request ITSM Roles- Change Management
Request the ITSM Roles plugin (com.snc.itsm.roles) to activate the ITSM Roles — Change
Management plugin (com.snc.itsm.roles.change_management) to gain more control over the
access that different change agents, technicians, and managers have within your Change
Management process.

Before you begin

Role required: admin

About this task

The ITSM Roles plugin activates several related plugins such as Business
Stakeholder (com.snc_business_stakeholder), ITSM Roles — Incident Management
(com.snc.itsm.roles.incident_management), ITSM Roles — Problem Management
(com.snc.itsm.roles.problem_management), ITSM Roles — Change Management
(com.snc.itsm.roles.change_management), and ITSM Roles — Request Management
(com.snc.service_management.roles.request_management). The related plugins updates the
security model and introduces roles for respective products.
With the introduction of the new roles, ITSM provides more control over the access that users
have within the process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
By default, this feature is activated only in new instances created in New York or the above
releases. It is not automatically activated when upgrading to New York or newer releases from a
version prior to New York.

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
Components installed with ITSM Roles - Change Management
Several user roles are installed with the activation of the ITSM Roles — Change Management
plugin (com.snc.itsm.roles.change_management). Security ACLs to support the security model
for Change Management and related functionality are also installed.
When you install the ITSM Roles — Change Management plugin
(com.snc.itsm.roles.change_management), the plugin updates the Security Access Control
Lists (ACLs), integrating revised scripts, and other files to overhaul the security model for these
applications.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
Roles installed
Role title [name]

Description

Contains roles

Change read

Read access to the Change Management
application and related records.

• sn_cmdb_user

[sn_change_read]

Note: A user with the sn_change_read
role can view all change requests as well as
the CAB workbench.

• dependency_views
• view_changer
• cmdb_read
• app_service_user
• cmdb_query_builder_read

Change write
[sn_change_write]

Write access to the Change Management
application and related records.

• sn_change_read
• template_editor
• cmdb_query_builder

Incident read
[sn_incident_read]

Read access to the Incident Management
application and related records.

Note: An ESS user (user with no role)
can view only those incidents that they
create or someone else creates on their
behalf. A user with the sn_incident_read
role can view all incidents as well as the
major incident workbench.
Incident write
[sn_incident_write]
Problem read
[sn_problem_read]
Problem write
[sn_problem_write]
sn_request_read

Write access to the Incident Management
application and related records.

Read access to the Problem Management
application and related records.
Write access to the Problem Management
application and related records.

Read access to the Request (sc_request)
or Requested Item (sc_req_item) only for a
user who is also an approver of the request or
requested item.

• dependency_views
• agent_workspace_user
• view_changer
• cmdb_read
• cmdb_query_builder_read

• sn_incident_read
• template_editor
NA

• sn_problem_read
• template_editor
NA

Note: As there are future updates
expected for the sn_request_read role,
do not assign it to users without the
business_stakeholder role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
Role title [name]

Description

Contains roles

sn_request_write

Write access to the Request (sc_request) or
Requested Item (sc_req_item).

• task_editor
• dependency_views
• agent_workspace_user
• view_changer
• cmdb_read
• cmdb_query_builder_read
• sn_request_read

sn_request_comment_write
Write access to the comments for the Requested
Item (sc_req_item).

NA

Note: The sn_request_comment_write
role alone does not give access to
comments write, you will need write access
for the table.
[sn_service_desk_agent]Enables gathering, and verifying information,
as well as delivering quick resolutions for tier 1
service desk agents. This user role is available
when the ITSM Roles plugin (com.snc.itsm.roles)
is installed.

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

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
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

Activate Change Management - State Model
You can activate the Change Management - State Model plugin
(com.snc.change_management.state_model) if you have the admin role. This plugin includes
demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

State Model activates the following related plugin if it is not already active.

Plugin

Description

Change Management - Core

Change management is used to create and manage change
requests. Once this is activated, the values for the Type field
[com.snc.change_management] on the change request are updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
Note: If you install the Change Management - Core plugin
(com.snc.change_management), the Change Management - State Model
plugin (com.snc.change_management.state_model) doesn't function as
expected. You must not install Change Management - State Model plugin
(com.snc.change_management.state_model) plugin if you install Change Management Core plugin (com.snc.change_management).

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

What to do next

If you upgraded from a release prior to Geneva, you must update old state labels to new state
labels.
Related topics
List of plugins (Zurich)
Update change request states
If you upgraded from a release prior to Geneva, you must update old state labels to new state
labels after you activate the Change Management state model.

Before you begin

Role required: admin

About this task

State values for current change records are not modified when you activate the Change
Management state model. However, your current change records display the new state labels in
the state field.

State value

New state label

Old state label

-5

New

Pending

-4

Assess

(Not used)

-3

Authorize

(Not used)

-2

Scheduled

(Not used)

-1

Implement

(Not used)

0

Review

(Not used)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
State value

New state label

Old state label

1

(Not used)

Open

2

(Not used)

Work in Progress

3

Closed

Closed Complete

4

Canceled

Closed Incomplete

7

(Not used)

Closed Skipped

For example, records with a state value of -5 have the Pending state label before the Change
Management state model is activated. After the state model is activated, these records retain
the state value of -5 but have the New label. To use your organization's required change
management process with the state model, you must update state values to the new labels in
your existing change records as appropriate, either manually or by script.
You must also update any reports that run queries based on old state labels to reflect the new
state labels.

Procedure
1. To automatically update the state field values from old state labels to new state labels,
customize and then run the following sample script:
updateStates();
function updateStates() {
function hasApprovers(changeGr) {
var approverGr = new GlideRecord("sysapproval_approver");
approverGr.addQuery('sysapproval',
changeGr.getUniqueValue());
approverGr.query();
return approverGr.getRowCount() > 0;
}
function hasRunningWorkflows(changeGr) {
var workflow = new Workflow();
var workflowGr = workflow.getRunningFlows(changeGr);
var hasRunningFlows = workflowGr.getRowCount() > 0;
return hasRunningFlows;
}
// Old State Model
var PENDING = '-5';
var OPEN = '1';
var CLOSED_COMPLETE = '3';
var CLOSED_INCOMPLETE = '4';
var CLOSED_SKIPPED = '7';
// New State Model
var NEW = '-5';
var ASSESS = '-4';
var AUTHORIZE = '-3';
var SCHEDULED = '-2';
var IMPLEMENT = '-1';
var REVIEW = '0';
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
var CLOSED = '3';
var CANCELLED = '4';
// Find all change requests
var record = new GlideRecord('change_request');
record.query();
// Update state from old value to new value
while (record.next()) {
switch(record.getValue('state')) {
case OPEN:
if (!hasRunningWorkflows(record)
&& !hasApprovers(record))
record.state = NEW;
break;
case CLOSED_COMPLETE:
record.state = CLOSED;
record.close_code = "successful";
break;
case CLOSED_SKIPPED:
record.state = CANCELLED;
record.close_code = "unsuccessful";
break;
case CLOSED_INCOMPLETE:
record.state = CLOSED;
record.close_code = "successful_issues";
break;
}
record.autoSysFields(false);
record.setWorkflow(false);
record.update();
}
}
2. Verify that the state labels have changed in existing change request records.
Installed with Change Management - State Model
Several types of components are installed with the Change Management - State Model.
Table modified with Change Management - State Model
Change Management - State Model modifies the list view of the following table.

Table

Description

Change Request

Sets the column order in the list of change requests.

[change_request]
Activate Change Management - Collision Detector
You can activate the Change Management - Collision Detector plugin (com.snc.change.collision)
if you have the admin role. This plugin includes demo data and activates related plugins if they
are not already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
Before you begin

Role required: admin

About this task
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
Installed with Change Management - Collision Detector
Several types of components are installed with Change Management - Collision Detector.
Tables installed with Change Management - Collision Detector
Change Management - Collision Detector adds or modifies the following tables.

Table

Description

Change request
[change_request]

Specifies the background color of the Conflict status
message based on whether there is a conflict.

Blackout Schedule
[cmn_schedule_blackout]

Represents a blackout schedule

Condition Schedule
[cmn_schedule_condition]

Represents a schedule condition

Conflict [conflict]

Represents conflicts found during the detection process.

Maintenance Schedule
[cmn_schedule_maintenance]

Represents a maintenance schedule

Activate Best Practice - Change Risk Calculator
The Best Practice - Change Risk Calculator plugin (com.snc.bestpractice.change_risk) is active
by default in the base system. This plugin includes demo data and activates related plugins if
they are not already active.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
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

What to do next

You can define risk and impact conditions for your change records.
Related topics
List of plugins (Zurich)
Installed with Best Practice - Change Risk Calculator
Several types of components are installed with the Best Practice- Change Risk Calculator.
Tables installed with Best Practice - Change Risk Calculator
Best Practice- Change Risk Calculator adds the following table.

Table

Description

Risk Conditions

Represents the risk conditions, such as Insufficient lead time or Critical
service affected.

[risk_conditions]

Activate Change Management - Change Schedule
You can activate the Change Management - Change Schedule plugin
(com.snc.change_management.soc) if you have the admin role. This plugin includes demo data
and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

The Change Management - Change Schedule plugin (com.snc.change_management.soc)
activates these related plugins if they are not already active.
Plugins for Change Management - Change Schedule
Plugin

Description

Change Management - Change Schedule foundation This plugin contains six change
schedules to help users. Enabling this
[com.snc.change_management.soc.foundation]
plugin automatically enables Change
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
Plugins for Change Management - Change Schedule (continued)
Plugin

Description

Management – Change Schedules
Version 1.0.0.

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
Installed with Change Management - Change Schedule
Several types of components are installed with the Change Management - Change Schedule.
Plugins installed with Change Management - Change Schedule
Plugins are added with activation of Change Management - Change Schedule.

Plugin

ID

Change
com.snc.change_management.soc
Management
- Change
Schedule

Description

This plugin is the core Change
Schedules plugin which
includes the supporting Change
Schedules table structure,
landing page, and Change
Schedules user interface.

Change
com.snc.change_management.soc.foundation This plugin contains six
Management
change schedules to help
- Change
users. Enabling this plugin
Schedule
automatically enables Change
foundation
Management – Change
Schedules Version 1.0.0.
Roles installed with Change Management - Change Schedule
Roles are added with activation of Change Management - Change Schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Role title [name]

Description

[sn_chg_soc.change_soc_admin] This role has full administrative rights to Change Schedule
pages.
Tables installed with Change Management - Change Schedule
Tables are added with activation of Change Management - Change Schedule.
Change Management - Change Schedule adds the following tables.

Table

Description

Style Rule

Define a default style rule that is applied to all Change
Schedule definitions for each Change record displayed on the
page

[chg_soc_style_rule]
Style Rule
[chg_soc_definition_style_rule]
Style Rule
[chg_soc_def_child_style_rule]
Change Schedule Definition

Define a style rule for each Change record displayed on the
Change Schedule page
Define a style rule for each related record displayed on the
Change Schedule page
Define a Change Schedule page

[chg_soc_definition]
Change Schedule Definition
Core

Define related records for each Change record that is
presented on the Change Schedule page

[chg_soc_definition_child]
Properties installed with Change Management - Change Schedule
Properties are added with activation of Change Management - Change Schedule.
Change schedules are loaded on the timeline page on the client side in batches of 20. You can
load a maximum of 1000 records. These numbers can be modified using the following properties
from the System Properties [sys_properties] table. To open the System Property table, enter
sys_properties.list in the navigation filter.

Property

Usage

sn_chg_soc.change_soc_initial_limit

Define the number of change_request records
to display on load of the Change Schedule.
• Type: Integer
• Default value: 40
• Location: System Property [sys_properties]
table

sn_chg_soc.change_soc_scroll_load_limit

Define the number of change_request records
to display as the Change Schedule is scrolled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Property

Usage

• Type: Integer
• Default value: 20
• Location: System Property [sys_properties]
table
sn_chg_soc.change_soc_total_limit

Define the total number of change_request
records that can be displayed on a Change
Schedule.
• Type: Integer
• Default value: 1000
• Location: System Property [sys_properties]
table

sn_chg_soc.landing_page.pinned_notification Show a message when pin or unpin a change
schedule.
• Type: String
• Default value: true
• Location: System Property [sys_properties]
table
sn_chg_soc.schedule_window_days

Define the number of days to be factored
before and after the respective start/end of
a change_request record when displaying
blackout and maintenance window spans on
the Change Schedule page.
• Type: Integer
• Default value: 30
• Location: System Property [sys_properties]
table

Business rules installed with Change Management - Change Schedule
Business rules are added with activation of Change Management - Change Schedule.

Business rule

Table

Description

Create default
style rule

Related Definition

Defines a standard style rule with a high order
for the related records.

Different start and
end fields

Change Schedule
Definition

[chg_soc_definition_child]

[chg_soc_definition]

Ensures that the start and end fields are
different by aborting an insert or save when
this is the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Business rule

Table

Description

Flush share lists
Change Schedule
when ShareWith is Definition
none
[chg_soc_definition]

Empties shared with lists when share with
none is set.

Flush shareWith to Change Schedule
match empty lists Definition

Ensures shared with is updated to reflect the
selected share options such as groups, roles,
users.

[chg_soc_definition]
Update style field

Style Rule Core
[chg_soc_style_rule_core]

Updates the stylesheet defined in the style
field when one of the conditions is met:
• Label color changes
• Label weight changes
• Event color changes
Providing Advanced is not true.

UI policies installed with Change Management - Change Schedule
UI policies are added with activation of Change Management - Change Schedule.

UI Policy

Table

Show
Change Schedule
maintenance color Definition

Description

Only show the maintenance color field if Show
maintenance has been enabled.

[chg_soc_definition]
Switch between
Basic and
Advanced

Style Rule Core

Only show label and event options if the style
rule advanced option is false. When advanced
[chg_soc_style_rule_core] is specified only the style field is presented.

Hide share users,
groups and roles
if share with
everyone

Change Schedule
Definition

Show blackout
color

Change Schedule
Definition

If sharing with everyone then the other share
options are hidden.

[chg_soc_definition]
Only show the Blackout color field if Show
blackout has been enabled.

[chg_soc_definition]
Hide table name

Style Rule Core

Condition builder requires a table field to be
present on the form, but it is not necessary to
[chg_soc_style_rule_core] present this so it is hidden.

Hide table name

Change Schedule
Definition
[chg_soc_definition]

Condition builder requires a table field to be
present on the form, but it is not necessary to
present this so it is hidden.

Script includes installed with Change Management - Change Schedule
Script includes are added with activation of Change Management - Change Schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
Script include

Description

SoC

Base class that provides utilities and constants for Change
Schedules

SoCChangeRequest

Extends SoCChangeRequestSNC and can be used to
overwrite functionality defined therein

SoCChangeRequestSNC

Provides utilities for the change_request table

SoCDefinition

Extends SoCDefinitionSNC and can be used to overwrite
functionality defined therein

SoCDefinitionSNC

Provides utilities for the chg_soc_definition table

SoCDefinitionChild

Extends SoCDefinitionChildSNC and can be used to
overwrite functionality defined therein

SoCDefinitionChildSNC

Provides utilities for the chg_soc_child_def table

SoCDefinitionChildStyleRule

Extends SoCDefinitionChildStyleRuleSNC and can be used
to overwrite functionality defined therein

SoCDefinitionChildStyleRuleSNC Provides utilities for the chg_soc_def_child_style_rule table
SoCDefinitionStyleRule

Extends SoCDefinitionStyleRuleSNC and can be used to
overwrite functionality defined therein

SoCDefinitionStyleRuleSNC

Provides utilities for the chg_soc_definition_style_rule table

SoCLandingModelBuilder

Extends SoCLandingModelBuilderSNC and can be used to
overwrite functionality defined therein

SoCLandingModelBuilderSNC

Builds the change schedule definition model used by the
Change Schedule landing page

SoCModelBuilder

Extends SoCModelBuilderSNC and can be used to
overwrite functionality defined therein

SoCModelBuilderSNC

Builds the change schedule model used by the change
schedule page

SoCRefFieldsList

Field choice list processor. Return the fields on the current
table which reference the parent table

SoCRefTablesList

Field Choice List Processor. Return the tables referencing
the provided table name.

SoCStyleRule

Extends SoCStyleRuleSNC and can be used to overwrite
functionality defined therein

SoCStyleRuleSNC

Provides utilities for style rules

UI scripts installed with Change Management - Change Schedule
UI scripts are added with activation of Change Management - Change Schedule.

UI Scripts

Description

sn_chg_soc.change_soc

Angular module for the change schedule,
which includes all of the angular applications
dependencies

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
UI Scripts

Description

sn_chg_soc.change_soc_filter

Angular module for text filtering on the change
schedule page

sn_chg_soc.config

Angular module for the configuration panel on the
change schedule page

sn_chg_soc.context_menu

Angular module for the context menu on the
change schedule page

sn_chg_soc.data

Angular module for the data model on the change
schedule page

sn_chg_soc.duration

Angular module for a duration calculation utility

sn_chg_soc.filter_control

Angular module implementation of the filter widget

sn_chg_soc.filter_widget

Angular module that provides a filter control similar
to a condition builder

sn_chg_soc.gantt

Angular module that maintains instances of gantt
objects and handles the definition of the gantt
scale

sn_chg_soc.keyboard

Angular module for the keyboard panel on the
change schedule page

sn_chg_soc.landing.app

Angular module for the change schedule landing
page, which includes all of the angular applications
dependencies

sn_chg_soc.landing_accessibility

Angular module for acceissbility support on the
change schedule landing page

sn_chg_soc.landing_card

Angular module defines a directive for a change
schedule definition card

sn_chg_soc.landing_decoration

Angular module defines a directive that provides
styling

sn_chg_soc.landing_notifications

Angular module for displaying notifications

sn_chg_soc.landing_page_header

Angular module provides header for change
schedule landing page

sn_chg_soc.landing_sort

Angular module provides utility for sorting cards on
the change schedule landing page

sn_chg_soc.landing_splash_screens

Angular module provides splash screen when no
change schedule definitions are present in a tab
on the change schedule landing page

sn_chg_soc.landing_tabs

Angular module provides tabs for the change
schedule landing page

sn_chg_soc.landing_wizard

Angular module defines the creation of a new
change schedule definition from the landing page

sn_chg_soc.loading

Angular module defines when the change
schedule page is loading by listening to requests

sn_chg_soc.mousedown

Angular module that makes a button execute
multiple times when holding mouse down

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
UI Scripts

Description

sn_chg_soc.notification

Angular module used to display messages on the
change schedule page

sn_chg_soc.popover

Angular module used for accessibility support
for the popover that is displayed on the change
schedule page

sn_chg_soc.share

Angular module for the share panel on the change
schedule page

sn_chg_soc.sn.app_itsm.now.iscroll

Angular module that supports scrolling to load
more content on the change schedule landing
page

sn_chg_soc.snCreateNewInvite

Angular module for the share panel component
that adds elements to the shared with field for the
change schedule

sn_chg_soc.sn_soc_now.scheduleService Angular module for the change schedule landing
page that is used to retrieve change schedule
definitions from the server
sn_chg_soc.style

Angular module for the style panel on the change
schedule page

Activate Change Management - Risk Assessment
You can activate the Change Management - Risk Assessment plugin
(com.snc.change_management.risk_assessment) if you have the admin role. This plugin includes
demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Change Management - Risk Assessment activates these related plugins if they are not already
active.
Plugins for Change Management - Risk Assessment
Plugin

Description

Assessment Components

Provides the core components required for legacy
surveys.

[com.snc.assessment]
Best Practice - Change Risk
Calculator

Provides simple risk and impact calculations for change
management.

[com.snc.bestpractice.change_risk]
Assessment Designer
[com.glide.assessment_designer]

Provides an interface to create and edit the Change
Risk Assessment form that is required to collect user
information on risk of the change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
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

What to do next

You can define risk assessment conditions for change requests.
Related topics
Risk conditions and calculation
Change Management properties
List of Zurich plugins
Activate Change Management - Standard Change Catalog
You can activate the Change Management - Standard Change Catalog plugin
(com.snc.change_management.standard_change_catalog) if you have the admin role. This plugin
includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Standard Change Catalog activates the following related plugin if it is not already active.
Plugin for Standard Change Catalog
Plugin

Description

Change Management - Core

Change management is used to create and manage change
requests. Once this is activated, it updates the values for the
[com.snc.change_management] Type field on the change request.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Standard change catalog
Change Management properties
List of Zurich plugins
Installed with Change Management - Standard Change Catalog
Several types of components are installed with Change Management - Standard Change
Catalog.
Tables installed with Change Management - Standard Change Catalog
Change Management - Standard Change Catalog adds or modifies the following tables.

Table

Description

Change request

Adds the standard change template version to the table

[change_request]
Standard change producer
version

Contains the record producer and change proposal for the
standard change with the current version of the template. It
also includes the number and percentage of successful and
[std_change_producer_version] unsuccessful change requests created from the proposal.
Standard change properties

List of standard change catalog properties.

[std_change_properties]
Standard change proposal

List of standard change proposals.

[std_change_proposal]
Standard change record
producer

List of standard change record producers.

[std_change_record_producer]
Standard change template

List of standard change templates.

[std_change_template]
Activate Change Management - Change Success Score
You can activate the Change Management - Change Success Score
(com.snc.change_management.change_success_score) plugin if you have the admin role. This
plugin activates related plugins if they are not already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Before you begin

Role required: admin

About this task

The Change Management - Change Success Score
(com.snc.change_management.change_success_score) plugin activates these related plugins if
they are not already active.
Plugins for Change Management - Change Success Score
Plugin

Description

Change Management - Change Success Score Foundation

Adds the Change
Success Score icon to
[com.snc.change_management.change_success_score.foundation] the change form, loads
default rating records,
and installs the basic
configurations that
are needed to use the
change success score
feature.

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
Components installed with Change Management - Change Success Score
Several types of components are installed with activation of the Change Management - Change
Success Score (com.snc.change_management.change_success_score) plugin, including tables
and scheduled jobs.

Scheduled jobs installed
Scheduled
Description
job

Change
success

Collects individual metrics for changes completed and incidents raised the
previous day. This job runs on a daily basis at 02.00 UTC. When this job is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
Scheduled
Description
job

score
metrics
(Daily)

completed, the Daily change success score script action is executed. This action
triggers the calculation of the adjustment formula indicators, and store the new
score in the metric table.

Change
success
score for
today

Reads scores from metric table and calculates the daily averages for the past 30
days.

Change
success
score
metrics
(Historical
data)

Gathers individual metrics daily for the past 30 days. This result overrides what is
already stored in PA, that is not more than 30 days old. When this job is completed,
the Historical change success scores script action is executed. The functionality of
this script action is similar to that of the Daily change success score. Additionally,
creating a new historic metric record for each day of the past 30 days.

Change
Reads scores from the metric table and calculates the daily average for the past 30
success
days≥
score
(Historical
data)

Note:
Historical calculations are useful you decide to change the overall formula or multipliers for
individual metrics later on. You can run Change success score metrics (Historical data) to
recalculate metrics and score for the past 30 days creating a new history record.

Tables installed
Table

Description

Change Success Score
Rating

Defines the record that associates a rating choice and color with
a Change Success Score range, such as, 0 to 499.

[chg_success_score_rating]
Activate Change Management - Mass Update CI
You can activate the Change Management - Mass Update CI plugin
(com.snc.change_management.mass_update_ci) if you have the admin role. This plugin includes
demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task
Plugins for Change Management - Mass Update CI
Plugin

Description

Change Management - State model

State model is used to move and track change
requests through several states.

[com.snc.change_management.state_model]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


<!-- page 305 -->
Plugins for Change Management - Mass Update CI (continued)
Plugin

Description

Best Practice - Bulk CI Changes

Best Practice - Bulk CI Changes enables you to
record a single change proposal that are linked
to all affected CIs.

[com.snc.bestpractice.bulkchange]

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
Installed with Change Management - Mass Update CI
Several types of components are installed with the Change Management - Mass update CI.
Table modified with Change Management - Mass Update CI
Change Management - Mass Update CI updates the following table.

Table

Description

Change Request

Adds the Mass Update CI Class (is_bulk) field to the table to use when the
change performs a mass update of configuration items.

[change_request]

Activate Change Management -Approval policy
You can activate the Change Management -Approval policy plugin (com.sn_chg_pol_appr) if you
have the admin role. This plugin includes demo data and activates related plugins if they are not
already active.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
About this task
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
Components installed with Change Management -Approval policy
Several types of components are installed with activation of the Change Management -Approval
policy plugin, that includes tables.

Tables installed
Table

Description

Change Approval Policy

Extends the Change Policy table.

[chg_policy_approval]
Activate Change Management - CAB Workbench
You can activate the Change Management - CAB Workbench plugin
(com.snc.change_management.cab) if you have the admin role. This plugin includes demo data
and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task
Plugins for CAB workbench
Plugin

Description

Service Portal

Service Portal provides an alternative user experience
to the standard platform UI. It is easy to configure,
customize, and extend, similar to what users are used
to in other consumer products.

[com.glide.service-portal]

[com.snc.app_common.service_portal]

Common application components for Service Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
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
Installed with Change Management - CAB Workbench
Several types of components are installed with Change Management - CAB Workbench.
Tables installed with Change Management - CAB Workbench
Change Management - CAB Workbench adds the following tables.

Table

Description

Mtg Agenda Item

Parent table for CAB Agenda Item table.

[mtg_agenda_item]
CAB Agenda Item

Contains list of CAB agenda items.

[cab_agenda_item]
CAB Attendee

Contains list of CAB attendees.

[cab_attendee]
Mtg Definition

Parent table for CAB Definitions table.

[mtg_definition]
CAB Definition

Contains list of CAB definitions.

[cab_definition]
Mtg Meeting

Parent table for CAB Meeting table.

[mtg_meeting]
CAB Meeting

Contains list of CAB meetings without completion information.

[cab_meeting]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
Table

Description

Mtg Runtime State

Parent table for CAB Runtime State

[mtg_runtime_state]
CAB Runtime State

Contains list of CAB meeting runtime states.

[cab_runtime_state]
Activate Change Management ATF Tests
You can activate the Change Management - ATF Tests plugin (com.snc.change_management.atf)
if you have the admin role. This plugin includes demo data and activates related plugins if they
are not already active.

Before you begin

Role required: admin

About this task

Change Management - ATF Tests (com.snc.change_management.atf) loads ATF tests when the
Change Management - State Model plugin is active.

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
Activate Change Management - Core
You can activate the Change Management - Core plugin (com.snc.change_management) if you
have the admin role. This plugin includes demo data and activates related plugins if they are not
already active.

Before you begin

Role required: admin

About this task

This plugin will update the Type field on the Change Request to have the values as Normal,
Standard, or Emergency.
The Type value on existing the Change Requests will be updated as following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
Change type
Before installing the plugin

After installing the plugin

Routine

Standard

Comprehensive

Normal

Emergency

Emergency

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

What to do next

You can activate one or more of the following plugins:
• State model (com.snc.change_management.state_model)
• Change Management - Collision Detector (com.snc.change.collision)
• Best practice - change risk calculator (com.snc.bestpractice.change_risk)
• Change risk assessment (com.snc.change_management.risk_assessment)
• Standard change catalog (com.snc.change_management.standard_change_catalog)
• Best practice - bulk CI changes (com.snc.bestpractice.bulkchange)
• Mass update CI (com.snc.change_management.mass_update_ci)
• CAB workbench (com.snc.change_management.cab)
You can now configure Change Management.
Related topics
List of plugins (Zurich)
Installed with Change Management - Core
Several types of components are installed with the Change Management - Core.
Tables installed with Change Management core
Change Management - Core modifies the following table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
Table

Description

Task CI

Adds Manual Proposed Change (manual_proposed_change) field if the proposed
change has been made manually rather than through the Mass Update CI feature

[task_ci]

Request Change Management - Risk Assessment
To activate Change Management capability to predict change risk using Predictive
Intelligence, request the Change Management - Risk Intelligence plugin
(com.snc.change_management.ml.risk) through the Now Support Customer Service system.

Before you begin

Role required: maint

About this task

The Change Management - Risk Intelligence (com.snc.change_management.ml.risk) plugin
activates these related plugins if they are not already active.
Plugins for Change Management - Risk Intelligence plugin
Plugin

Description

Change Management - Predictive
Intelligence Core

Enables you to use Predictive Intelligence in Change
Management.

[com.snc.change_management.ml]

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of plugins (Zurich)
Components installed with Change Management - Risk Intelligence
Several types of components are installed with activation of the Change Management - Risk
Intelligence plugin, that includes tables.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed
Table

Description

Risk Categorization Solution

Categorization of the solution definitions configured
for the Risk Intelligence feature. Used when the feature
[chg_ml_prop_risk_solution_cat] is configured to employ a Categorization type Solution
Definition.
Risk Similarity Solution

Similarity solution definitions configured for the Risk
Intelligence feature. Used when the feature is configured to
[chg_ml_prop_risk_solution_sim] employ a Similarity type Solution Definition.
Risk Intelligence Properties

Properties used to configure the Risk Intelligence feature.

[chg_ml_prop_risk]
Request Change Management - Standard Change Template Intelligence
To activate Change Management capability that uses Predictive Intelligence to identify change
clusters and propose standard change templates, request the Change Management - Standard
Change Template Intelligence plugin (com.snc.change_management.ml.sctp) through the Now
Support Customer Service system.

Before you begin

Role required: maint

About this task

The Change Management - Standard Change Template Intelligence plugin
(com.snc.change_management.ml.sctp) plugin activates these related plugins if they are not
already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
Plugins for Change Management - Standard Change Template Intelligence plugin
Plugin

Description

Change Management - Predictive
Intelligence Core

Enables you to use Predictive Intelligence in Change
Management.

[com.snc.change_management.ml]

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
List of plugins (Zurich)
Components installed with Change Management - Standard Change Template Intelligence
Several types of components are installed with activation of the Change Management - Standard
Change Template Intelligence plugin that includes tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed
Table

Description

Standard Change Template
Proposal Properties

Properties used to configure the Standard Change
Template Proposal feature.

[chg_ml_prop_sctp]
Standard Change Template
Candidate

Standard Change Template Candidates identified by the
Predictive Intelligence feature.

[std_change_template_candidate]
Standard Change Template
Proposal Solution

Solution Definitions configured for the Standard Change
Template Proposal Solution feature.

[chg_ml_prop_sctp_solution]
Change Management - Predictive Intelligence Core
To activate Change Management predictive intelligent features, the Change Management
- Predictive Intelligence Core plugin (com.snc.change_management.ml) is required and is
automatically installed along with other through Change Management Predictive Intelligence
plugins that are requested using the Now Support Customer Service system.

Before you begin

Role required: maint

About this task

The Change Management - Predictive Intelligence Core plugin
(com.snc.change_management.ml) plugin activates these related plugins if they are not already
active.
Plugins for Change Management - Predictive Intelligence Core plugin
Plugin

Description

Predictive Intelligence

Using Predictive Intelligence you an create, train, and test solutions
so that you can quickly understand the basic functionality of how a
[com.glide.platform_ml] machine-learning solution works.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
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
List of plugins (Zurich)
Components installed with Change Management - Predictive Intelligence Core
Several types of components are installed with activation of the Change Management Predictive Intelligence Core plugin that includes tables. These tables can be utilized only after
the other Change Management Predictive Intelligence plugins are activated.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed
Table

Description

Change Predictive Intelligence
Properties

Base table for Change Management properties.

[chg_ml_prop]
Change Predictive Intelligence
Solution

Base table for Change Management Intelligent
solutions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
Table

Description

[chg_ml_prop_solution]
Change Similarity Boosters
[chg_ml_similarity_boosters]

Provides boosting capabilities for similarity based
solutions.

Activate Change Management - Change Flows
You can activate the Change Management - Change Model Foundation Data
(com.snc.change_management.change_model.foundation) plugin if you have the admin role.
This plugin includes demo data and activates related plugins if they are not already active.

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
Activate Change Management - Change Velocity dashboard
You can activate the Performance Analytics - Content Pack - Change Management
(com.snc.pa.change) and Process Optimization (com.sn_process_optimization) plugins if you
have the admin role. These plugins include demo data and activates related plugins if they are
not already active.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Activate Change Management - Change Models
You can activate the Change Management - Change Model Foundation Data plugin
(com.snc.change_management.change_model.foundation) if you have the admin role. This
plugin includes demo data and activates related plugins if they are not already active.

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
Activate Change Management Success Probability
You can activate the Change Management - Success Probability plugin
(com.snc.change_management.success_probability) if you have the admin role.

Before you begin

Role required: admin

About this task

Activate the Change Management Success Probability
(com.snc.change_management.success_probability) plugin to calculate the probability of
success of a change request.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Activate Change Management - Data Archiving
You can activate the Change Management - Data Archiving plugin (com.glide.auxdb) if you have
the admin role. This plugin includes demo data and activates related plugins if they are not
already active.

Before you begin

Role required: admin

About this task

The Change Management - Data Archiving plugin (com.glide.auxdb) enables to move a subset of
data from large tables into the data archive.

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

Standard change catalog
Standard changes are pre-approved, low risk changes with a proven history of success. The
standard change catalog contains the changes that have been approved by the Change
Management application as standard changes.
Users with the ITIL role can view the list of available standard changes and submit change
requests.
A property controls whether the selection of a standard change request from the catalog inserts
the change request record into the database. An administrator can select the Two step check
box in Standard Change Properties. This property requires the requester to click Submit to insert
the change request record.
Standard changes are logically grouped under specific categories. The Change Management
application uses a proposal process to control which changes become available in the standard
change catalog.
The standard change catalog enables you to perform the following activities:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


<!-- page 318 -->
• Request, review, and approve standard change templates.
• Request preapproved standard changes.
• Determine access to standard change templates at the user level.
You can propose, modify, and retire standard change templates based on the requirements of
your organization.

Pre-approved standard changes
Submitting a change request from a standard change template ensures that pre-approved
information is automatically populated in the necessary fields. Standard changes are submitted
more quickly and fulfillment can be expedited.

Note: You cannot mass-update a set of Configuration Items (CIs) in standard changes.
However, you can propose individual changes.

Determine access to standard change templates at the user level
Standard change templates are logically grouped under specific categories. These categories
are displayed to users based on user criteria such as user role, geographical location, and
department.

Note:
You must have read access to the standard change template. Please ensure you have the
correct roles to access the templates.
Configure standard change catalog properties
Configure the standard change catalog through the standard change properties.

Before you begin

The Change Management - Standard Change Catalog
[com.snc.change_management.standard_change_catalog] plugin must be activated.
Role required: admin

Procedure
1. Navigate to All > Change > Administration > Standard Change Properties.
2. On the form, fill in the fields.
Standard change properties form
Field

Description

Catalog

Select the service catalog to add the generated standard
change template to.

Category

Select the service catalog category to add the generated
standard change template to. You can also choose the
category or any child categories of the selected catalog.

Note: This value is not set automatically on the
Proposal form, but must be specified before it is
approved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
Field

Description

Two step

Check box to make the request of a standard change a twostep process. The process redirects the requester from a
standard change template to a change request that can be
reviewed before submitting.
This option is enabled by default on instances provisioned
on Jakarta. Customers upgrading from prior releases must
enable the Two step property.

Mandatory Change Request
values

Specify a list of mandatory fields that require values
when you propose a new standard change template or a
modification to a standard change template.
This configuration ensures that when a standard change
request is created from a standard change template, one
or more fields on the Change Request form contain preset
values.

Default Change Request
values

Specify default values for common fields on the Change
Request form.

Restricted Change Request
values

Specify the list of fields that end users are not allowed to
provide any value for when making a proposal.

Note: Ensure that internal columns, such as Updates,
Updated, Updated by, Domain, Created, Created by
are restricted.
Read-only fields

Specify the fields that end users are not allowed to provide
any value for in the created standard change request.

Note: This configuration ensures that for the
specified fields, the values approved in the standard
change template do not change when the standard
change request is submitted.
Fields to copy

Specify the fields whose values are copied to the Propose
a New Standard Change Template record producer from a
non-standard change request.

Note: If any fields not specified in this list have
default values specified, the default values are copied
to the record producer.
Change Task properties
Mandatory Change Task fields Specify a list of mandatory fields. Enter values for these
fields when proposing a new change task template or
modifying a change task template.
Default Change Task values

Specify default values for fields on the Change Task form
when creating a change task template.

Restricted Change Task fields

Specify the list of change request fields that end users are
not allowed to provide any value for when creating a change
task template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
Field

Description

Read-only Change Task fields

Specify the fields that end users are not allowed to alter any
value for in the change task.

Note: This configuration ensures that for the
specified fields, the values approved in the change
task template do not change when the change task is
created.
Change Task Fields to copy

Specify the fields whose values are copied to one or more
change task templates when proposing a new standard
change template from an existing change request.

3. Select Update.

What to do next

You can create a standard change catalog. By default, the basic Standard Change Proposal
workflow sends approval records to members of the Change Management group and the
members should verify and modify the records, as appropriate.
Create a standard change task template
You can create a change task template to add to a standard change proposal. If the standard
change proposal is approved, the related change tasks are created when the standard change
request is created.

Before you begin

Role required: itil, change_manager, or sn_change_write

Procedure
1. Navigate to All > Change > Standard Change > Open Proposals.

Note: You can add standard change tasks to a standard change proposal only when the
proposal is in the New state. Once you submit a standard change task for approval, you
cannot add additional tasks.
2. Click the Change Task Templates tab, and then click New.
3. On the form, fill in the fields.
Change task template form
Field

Description

Name

Unique name for the change task.

Std change proposal

Name of the standard change proposal for which you want to
create the change task template.

Order

Order in which change tasks are created in the change request.
The Order field determines the order in which you add the
change tasks to the change request when you select it from the
standard change catalog.

Short description

Brief description of the change task template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
Field

Description

Change Task values

Field values that are populated on the change task created as
part of the standard change.

4. Click Submit.

Note: Standard change catalog templates are not supported on Service Portal.
Propose a standard change template
Propose a new standard change template when you identify a need while creating a change
request.

Before you begin

Role required: itil, admin

About this task

As an IT technician, you can propose a new change template for a change request that you
frequently create. This new template is later sent for approval to the change management team,
which reviews the request and approves the template as part of the approval process.

Procedure
1. You can propose a standard change template by navigating to Change > Standard Change
> Standard Change Catalog > Template Management > Propose a new Standard Change
Template and filling in the fields on the form.
Standard Change Proposal form
Field

Description

Short description

Short description of the standard change
proposal template.

Category

Category under which the template is
published. For example, Server Standard
Changes.

Sample Change Requests

Change requests that are available as
samples for the change that you propose.
The Change Management team reviews the
requests as a part of the approval process.

Change Request values

Text which appears as default text in the
standard change proposal template.

2. Click Save.
The proposal is created with the status New.
3. Click Request Approval.
The proposal is created with the status In Progress.
4. Optional: Create a standard change template from a change that exists by completing the
following steps.
a. Navigate to Change > Open and click the change whose information you want to use in the
standard change template.
b. Open the form context menu and click Propose a Standard Change Template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
Note:
◦ Any change tasks that are included with the change also get copied to the new
standard change proposal. The fields copied from both the change and change tasks
are defined in the Standard Change Properties.
◦ By default, approval records are created for members of the Change Management
group.
Alternatively, as a change manager, create and submit a standard change proposal that can
be utilized as a template to draft a standard change request that occurs frequently and is of
low risk. By default, the basic standard change proposal workflow sends approval records
to members of the change management group where the members verify and modify the
records, as appropriate. Navigate to Change > Standard Change > My Proposals. Click New,
fill the form, and then click Submit.
To view standard change templates, users must have the appropriate roles. Users with the
following roles can view the standard change templates:
◦ admin
◦ change_manager
◦ sn_change_write
◦ itil

Result

A new template record is created for use.
Attach files to a standard change template
Attach files, such as documents, spreadsheet, and images to a standard change proposal.
Standard change templates copy any file attached to the template to a change request that the
template creates.

Before you begin

Role required: itil, admin

Procedure
1. Navigate to All > Change > Standard Change > My Proposals.
2. Open the proposal to which you want to add the attachment to.
3. Click the

icon to browse and select the file.

The attached file appears at the top of the proposal.

Note: You can add more than one file as an attachment.
4. Click Update and request approval for the proposal.

Result

Any attachment associated with a standard change proposal gets copied to the standard change
template that is created when the proposal is approved. When that template is used to create
a standard change, any attachment associated to it is also copied to those standard change
requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
Modify or retire a standard change template
You can modify and retire standard change templates based on your organization's
requirements.

Before you begin

Role required: admin, change_manager, sn_change_write or itil

Procedure
1. Navigate to All > Change > Standard Change > All Templates.
2. Select the template you want to modify or retire and perform one of the following steps.
Option

Description

a. Click Modify Template under Related
Links.
b. Enter your modifications in the Modify a
Standard Change Template form.
Modify a standard change template

Note: You can modify any field in the
standard change template, and send
for approval. After the modifications are
saved and approved, a new version of
the standard change template is creat­
ed. Change requests created from the
modified standard change template re­
flects the modifications made.
a. Click Retire Template under Related Links.

Retire a standard change template

b. Enter your business justification to retire
the specific template in the Retire a Stan­
dard Change Template form.

Note: The standard change template
is deactivated, and it is no longer be
available for creating new change re­
quests.

3. Perform one of the following actions:
◦ Click Save. The modifications are saved but not sent for approval.
◦ Click Request Approval. The template is sent for approval to the change management team.

Change schedules
The Change Schedules landing page provides a view of schedules that are categorized under
Pinned Schedules, Your Schedules, and All Schedules. The grouping of schedules provides
easy access to your most required schedules and saves your time from searching through all the
schedules in the system.
To access Change Schedules, navigate to Change > Schedule > Change Schedules.

Note: To view the Change Schedules page, you must activate Change Management Change Schedule plugin (com.snc.change_management.soc).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
Change schedule landing page

You can find schedules arranged under three categories as follows:
• Pinned Schedules: Includes all change schedules you have previously chosen to pin for quick
access.
• Your Schedules: Includes all change schedules you own or are a member of the group that
owns the schedule.
• All Schedules: Includes all change schedules you have access to.
To pin a schedule, hover over the schedule tile and click the pin icon (
). The schedule
appears under Pinned Schedules. To unpin a tile, click the pin icon again.

Note: The Show an information message when a change schedule is pinned property
in Change Properties controls whether you see an informational message confirming the
pinning or unpinning of the schedule.
Click a tab to view a Change Schedule. For more information, refer Change schedules view.
Change schedules view
The Change Schedules module provides a Gantt or timeline view of change requests based on
criteria defined within a Change Schedule Definition.
The change schedule provides detailed insight to change requests that are included based
on the change schedule definition. The change requests can include change timing, duration,
related change tasks, blackout periods, and maintenance windows for any given date, week or
month.
To view the Change Schedules page, you must activate Change Management - Change
Schedule plugin (com.snc.change_management.soc).
Change requests are represented by a span. The duration of the span is defined by the start and
end date fields defined in the Change Schedule definition. The Change Schedules page allows
conditions to be defined using the condition builder. The condition builder determines which
change requests are displayed and sorted in a change schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
Note: To show the blackout and maintenance windows of the change in the calendar view,
the Affected CI field for the change must be configured.
Change Schedule timeline page

SI

UI Component

Description

1

Context Menu

Option to do the following:
• Create new schedule: You can create a new schedule
from a simplified wizard.
• Edit a schedule: Allows the modification of change
schedules you own and any changes made are saved to
the related Change Schedule Definition record.
• Copy a schedule: If you are the owner of the change
schedule that you want to copy, then a copy of the
change schedule is created. If you want to copy a change
schedule that is owned by any other user, then you
become the owner of the copied schedule and the new
schedule is fully editable by you.
• View schedule definition: You can view the change
schedule definition and the related fields associated with
it.
• Delete: Allows users, who own a change schedule, to
delete the schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
SI

UI Component

Description

Note:
• A user who only possesses the ITIL role and is not
the owner of a change schedule can only create
a schedule, copy a schedule, or view an existing
schedule definition.
• You become the owner of any schedule that you
create. The new schedule that you create appears in
the Change Schedule page in a tile form under the
Your Schedules tab.
2

Span styles

Defined span color based on conditions you specify. You
can add new span styles by clicking Add Span Styles. You
can also edit an existing style rule, apply filters to a style
rule, or remove a style rule.

Note: By default, span styles are based on the Risk
value of a change.
• Risk = High – Span style is Red
• Risk = Moderate – Span style is Orange
• Risk = Low – Span style is green
3

Share

Schedules to be shared to other users by user name, group,
or role. The share pane also provides a check box to share
a change schedule with everybody. If change schedules are
not shared with anyone, then only the owner, owner group,
and administrator can see them. If a change schedule is
shared with other users, an option is available to send an
email notification to inform them of their access.

4

Configuration

Components of the change schedule including the
configuration item, duration, or any related tasks can be
hidden or exposed.

5

Keyboard shortcuts

List of available keyboard shortcuts to help you navigate
quickly and to provide accessibility to users. The list of
navigation shortcuts appears when you click

6

Zoom

Zoom levels to control change schedule zoom resolution.
The range can vary from hours to a yearly view of change
schedules.

7

Arrow keys

Option to navigate forward or back in time in the change
schedule based on the current zoom level. Click Today to
navigate back to the current day and time in a single click.

8

Change record

Summary of the change record when you click any span.
Use Open Record in the header of the summary to open the
change request in the form view. In the form, you can view
the entire change request record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
SI

UI Component

Description

Note: You can specify the fields that are displayed
in this window. On the Change Schedule Definition
form, under the Record Summary tab, specify required
fields on Left column fields and Right column fields.

Note: Change schedules are loaded on the timeline page on the client side in batches
of 20. You can load a maximum of 1000 records. These numbers can be modified by
system administrator. For more information, refer the properties at Installed with Change
Management - Change Schedule.
Create a change schedule from the Change Schedules page
You can create a change schedule to view all scheduled changes, change tasks, blackout
periods, maintenance windows for any given date, week, month, or year.

Before you begin
• You have activated Change Management - Change Schedule plugin
(com.snc.change_management.soc).
• Role required: itil, sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write roles,
sn_change_write, or admin

Note:
• A user with an ITIL role can create a Change Schedule definition and view the schedule
definition that they have created.
• An admin or a change schedule administrator can read or edit all Change Schedule
definitions.

Procedure
1. Navigate to All > Change > Schedules > Change Schedules and click New.
2. On the form, fill in the fields.
New Change Schedule form
Field

Description

Name

Name of the change schedule.

Start date field

Field from the change request form that indicates the start date
as an example planned start date.

End date field

Field from the change request form that indicates the end date
as an example planned end date.

Condition

Conditions that determine which change requests display in
the Change Schedule interface and the order in which those
change requests are sorted.

3. Click Submit.
The change schedule is displayed in the timeline view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
Create a change schedule from the change schedule definition
You can define a change schedule from a change schedule definition record. Change schedule
definitions help you to define the content that displays in the change summary popover, the
users, groups or roles with whom a schedule is to be shared, and related span style colors.

Before you begin
• You have activated Change Management - Change Schedule plugin
(com.snc.change_management.soc).
• Role required: itil, sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write roles,
sn_change_write, or admin

About this task

To create a new Change Schedule, specify the start and end date fields that you want to be
represented in the user interface and also specify the conditions to determine which change
requests to display.

Procedure
1. Navigate to All > Change > Schedules > Change Schedule Definitions and click New.
2. On the form, fill in the fields.
Change Schedule Definition form
Field

Description

Name

Name of the change schedule.

Active

Check box to select if a schedule is active.

Changes
Start date field

Field from the change request form that determines the
start date of the span.

End date field

Field from the change request form that determines the
end date of the span.

Condition

Conditions which determine which change requests
display in the Change Schedule interface and the order
those change requests are sorted.

Record Summary
Left column fields

List of fields which appear on the left column of the
record summary pop-up. The record summary popup appears when you click any span on the change
schedule timeline.

Right column fields

List of fields that appear on the right of the window when
you click any span on the change schedule timeline. The
record summary pop-up appears when you click any
span on the change schedule timeline.

Blackout and Maintenance
Show blackout window

Check box to select if blackout window associated to
a change request appears in the change schedule
timeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
Field

Description

Blackout window color

Color to represent blackout window in the change
schedule timeline.

Show maintenance window

Check box to select if maintenance window associated
to a change request appears in the change schedule.

Maintenance window color

Color to represent maintenance window in the change
schedule timeline.

Sharing
Share with

Option to share the schedule with everyone associated
with the change or with specific users and groups.

Owner

Owner of the change schedule.

Group Owner

Group that owns a change schedule and has
administrative rights to the change schedule.

Related Link
Show Schedule

Link to the change schedule that you have defined.

Related Lists
Related Definitions

Details of related child schedules

Style Rules

Options to define style conditions to determine the color
of a span using a condition builder. For example, if you
want all changes of type Emergency to show as a red
span, a span style can be defined for that condition.

3. Click Submit.
Add related tasks to a change schedule
Create related definitions to present related tasks for change requests in the change schedule.
For example, to view the change tasks associated with a change request, you need to define a
related definition.

Before you begin
• You have activated Change Management - Change Schedule plugin
(com.snc.change_management.soc).
• Parent change schedule is defined.
• Role required: itil, sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write roles,
sn_change_write, or admin

Procedure
1. Navigate to All > Schedules > Change Schedule Definitions.
2. Select a Change schedule definition.
3. Select New in Related Definition tab.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
Related Definition form
Field

Description

Name

Name of the related definition.

Change schedule definition

Reference for the parent change schedule.

Active

Check box to select whether the child
schedule is active.

Related Records
Table name

Choice list to select the table on which the
Related Definition is based.

Reference field

Reference the Related Definition is based on,
for example, change request.

Start date field

Start date field from the related record.

End date field

End date field from the related record.

Condition

Conditions included in the change
schedule and the associated ordering of
the conditions. For example, to display
only implementation tasks, you must
build a specific condition that displays
implementation tasks.

Record Summary

Note: The record summary pop-up appears when you click any span on the change
schedule timeline.
Left column fields

List of fields that appear on the left column
of the record summary pop-up. The record
summary pop-up appears when you click any
span on the change schedule timeline.

Right column fields

List of fields that appear on the right column
of the record summary pop-up. The record
summary pop-up appears when you click any
span on the change schedule timeline.

Note: You can also add style rules specific to a related task. You can configure the
change schedule page to show related tasks for the change, such as implementation
tasks.
5. Click Submit.
Style rules definition
You can create a style span to specify the color for different events in a change schedule. Style
spans in a schedule help to quickly identify characteristics of a change based on a field value
from the Change Request.
Change Schedules includes several base styles to ensure every schedule has span styles
to begin with. By default, Blackout Schedules are represented by a gray color, Maintenance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
schedules are represented by a light blue color and change requests are represented by either
red (risk = High), orange (risk = moderate), or green (risk = low).
To define style rules, you must activate Change Management - Change Schedule plugin
(com.snc.change_management.soc).
You can define styles in multiple ways, such as from the Default Style Rules, Change Schedule
definitions, or from the Span Style window in the Change Schedule timeline.

Note: All style rule tables extend the Style Rule Core table [chg_soc_style_rule_core].
Define default style rules
You can define style rules from the Default Style Rules module when you want the style rules to
be used by change schedules globally and not for any specific application.

Before you begin

Role required: itil, sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write roles,
sn_change_write, or admin

Procedure
1. Navigate to All > Change > Schedule > Default Style Rules.
2. On the Style Rule page, click New.
3. On the form, fill in the fields.
Style Rule form
Field

Description

Name

Name of the style rule.

Conditions

Conditions which dictate the style rule. For example, risk = High
= red.

Active

Check box to determine whether the style rule is active.

Styling
Advanced

Check box to write script to set the value of label color, label
weight, and event color.
If you do not select the check box, the Label color, Label weight,
and the Event color fields appear.

Label color

Color of the text that is displayed for each record on the timeline
that matches the style rule.

Label weight

Thickness of the label such as normal or bold.

Event color

Color of the schedule span displayed for each record on the
timeline that matches the style rule.

4. Click Save.
Define style rules from Change Schedule Definitions
You can define style rules from change schedule definitions when you want the style rules to be
applied to the change schedule related to the change schedule definition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
Before you begin

Role required: itil, sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write roles,
sn_change_write, or admin

Procedure
1. Navigate to All > Change > Schedules > Change Schedule Definitions.
2. Open the definition for which you want to define or edit a style rule.
3. Click the Style Rules related list and click New.
4. On the form, fill in the fields.
Style Rule form
Field

Description

Name

Name for the style rule.

Conditions

Conditions which dictate the style rule. For example, risk = High
= red.

Active

Check box to determine whether the style rule is active.

Styling
Advanced

Check box to write a script to set the value of label color, label
weight and event color.
If you do not select the check box, the Label color, Label
weight, and the Event color fields appear.

Label color

Color of the text that is displayed for each record on the timeline
that matches the style rule.

Label weight

Thickness of the label such as normal or bold.

Event color

Color of the schedule span displayed for each record on the
timeline that matches the style rule.

5. Click Save.

Note: Style rules that you create from a change schedule definition take precedence
over the style rules that exist in the base style rule table [chg_soc_style_rule].
Define style rules from Change Schedules View
You can create style rules from the change schedules view when you want the style rules to be
applied to the specific change schedule where it is defined.

Before you begin

Role required: sn_chg_soc.change_soc_admin, sn_change_role, sn_change_write, or admin

Procedure
1. Navigate to All > Change > Schedule > Change Schedules.
2. Click a tile to view the Change Schedule page.
3. Click the style icon (

).

4. Do any one of the following actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
Option

Description

Create a new span style

Click Add Span Style.

Edit the name of an existing span style

Click the name of the span style that you want
to edit.

Edit all details of the span style

Click
that appears to the right of the span
style name and edit style rule name, span col­
or, and filtering, as required.

5. Click Save.

Configure ability to copy a change request
You can configure the ability to copy a change request record and its details using system
properties.

Before you begin

Role required: admin

About this task

You can configure the following functionality.
• Disable the ability to copy a change request.
• Disable the ability to copy attachments.
• Determine the components of the source change request that are copied.

Procedure
1. Navigate to All > Change > Administration > Change Properties.
Some properties are found by entering sys_properties.list in the application
navigator, as noted.
2. Set the following properties as desired.
Option

Description

Set Enable Copy Change feature
Disable the ability to copy a change request (com.snc.change_request.enable_copy)
to false.

Disable the ability to copy an attachment

Set Copy attachments
from originating change
(com.snc.change_request.attach.enable_copy)
to false.
This system property is located in the [sys_­
properties] table.

Disable the ability to copy the attachments
from the change task

Set the Enable copying of at­
tachments from the originating
change's related change tasks
(com.snc.change_request.rl.change_task.atta
system property to false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
Option

Description

Note: If the ability to copy attachments
is enabled, the attachment appears on
the copy of the change request only af­
ter it is saved.

Configure attributes to be copied

Edit the list of values in List of attrib­
utes (comma-separated) that will be
copied from the originating change
(com.snc.change_request.copy.attributes)
to remove or add more attributes.
For example, to prevent the Assigned to at­
tribute from being copied, remove the as­
signed_to value from the list of attributes
in the property text box.
This system property is located in the [sys_­
properties] table. The following related lists
are copied by default:
◦ Affected CIs
◦ Impacted Services/CIs
◦ Change Tasks

Configure related lists to be copied

Edit the list of values in Related lists
(comma-separated) that will be
copied from the originating change
(com.snc.change_request.copy.related_lists)­
.
For example, if you do not want to copy
the Change Tasks related list, remove the
change_task value from the list of related
lists in the property text box.

Note: You can configure this property
to control the copy functionality of the
Affected CIs, Impacted Services/CIs,
and Change Tasks related lists. You can­
not add any other related list to this prop­
erty.

Configure attributes of the default related
lists to be copied

These system properties are located in the
[sys_properties] table. Navigate to the ap­
propriate system property for one of the de­
fault related lists to configure the attributes to
copy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
Option

Description

System properties for related list attributes
Related
list

System property

Change
Tasks

com.snc.change_request.copy.rl.ch

Affected
CIs

com.snc.change_request.copy.rl.ta

Impacted
Services/
CIs

com.snc.change_request.copy.rl.ta

3. Complete the following steps to further customize the ability to copy a change request by
modifying a script include.
a. Navigate to System Definition > Script Includes.
b. Modify the ChangeUtils script include.
Example
For example, the ability to copy a change request is not available by default for standard
changes. However, you can provide your own implementation of the isCopyRulesValid
function in the ChangeUtils script include to override the default.
Related topics
Copy a change request

Create a change request template
You can create a template that can be used to create change requests with pre-defined
supporting tasks. Templates simplify the process of submitting new records by populating fields
automatically.

Before you begin

Role required: admin
The administrator must configure the form layout to add these fields: Next Related Template,
Next Related Child Template, Link element

About this task

There are two change request template configuration items.
• Change_request: This object does not have a link element, because it is at root level.
• Change_task: This task object is one level below root level, so it uses the parent table as a link
element.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
Procedure
1. Navigate to All > System Definition > Templates.
2. Click New.
3. Complete the form as described in Create a template using the Template form

.

4. Complete the remaining fields, as appropriate.

Field

Description

Next
A template at the same hierarchical level as the current template (sibling).
Related
Template Use this field on a child template to specify an extra child template under the
same parent template. For example, you can use child templates to create multiple
change tasks for a change request template and specify sibling child templates.
This field is not supported on top-level templates.
Next
A template at the hierarchical level below the current template (child).
Related
You can assign a child template to a child template.
Child
Template
Link
element

Specifies a link to a record created from a child template to the record created
from the parent template.
The template script chooses the first valid reference field that can link to the
parent record when this field is left blank.

5. Click Submit.

Create a change request assignment rule
You can define assignment rules to automate the process of assigning change requests to the
appropriate group or individual.

Before you begin

Role required: admin

About this task

You can define an assignment rule either for the change request or for the change tasks that
are generated for change requests. In the following example, you create an assignment rule to
assign change requests for configuration items in the database class to the Database group.

Procedure
1. Navigate to All > System Policy > Assignment, and then click New.
2. Enter the name: Database Change.
3. In the Applies To form section, select the table Change Request [change_request] and add a
condition [Configuration Item.Class] [is] [Database].
4. In the Assign To section, select the group Database.
5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
What to do next

To test the assignment rule, navigate to Change > Create New and enter a Normal change.
Complete the form, selecting bond_trade_ny, or another CI in the database class, in the
Configuration Item field.
Save the change and see that it was automatically assigned to the Database group.

Add a new change request type
You can add a new change type to your change process. There are several processes involved
with adding a change type. These processes include managing script includes and workflows.

Before you begin

Role required: admin

About this task

In addition to the three types of change available by default, you can add new change types
based on your organization requirements. For example, you can create a change type Expedited
for changes that you require to be processed immediately.

Procedure
1. Complete the following steps to add a new choice to the Type field.
a. Open an existing change request.
b. Right-click the Type field and select Show Choice List.
c. Click New and fill in the following fields.

Field Name

Description

Table

Select the Change Request table.

Label

Enter a value for the new change type. For example, Expedited.

Value

Enter a value for the new change type. For example, expedited.

Sequence

Enter a sequence for the change type. For example, 4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
d. Submit the form.

2. Complete the following steps to add the new change type to the change request interceptor.
a. Navigate to System Definition > Interceptors.
b. Open the Change Request interceptor.
c. Click New in the Answers related list.
d. Complete the form, as appropriate.

Field

Description

Question

Change Request

Name

Enter a name for the new change type. For example,
Direct to Expedited Change.

User Prompt

Enter a description that is displayed to the end user when
they click Create New under Change.

Target URL

Set the appropriate target URL. For
example, change_request.do?
sys_id=-1&sysparm_query=type=expedited.

Order

Set the appropriate order level for the change type. For
example, 400.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
e. Submit the form.

3. Complete the following steps to create the script include for the new change type.
a. Navigate to System Definition > Script Includes.
b. Search for a change type script include on which to base the workflow for the new change
type.
For example, to base it on Emergency change type, search for
ChangeRequestStateModelSNC_emergency and open the script include.
c. Copy the script of the ChangeRequestStateModelSNC_emergency script include
from the Script field.
d. Navigate to System Definition > Script Includes and click New.
e. Name the new script include to match the value of the new type.
For example, ChangeRequestStateModelCust_expedited.
f. Paste the copied script in the Script field of the new script include.
g. Update any references in the pasted script include from
ChangeRequestStateModelSNC_emergency to
ChangeRequestStateModelCust_expedited.
h. Click Submit.

Note: An existing script include contains the implementation for all the moving and
canMove functions. The moving function is used to pre-populate any fields that are
required for the new state. The canMove function is used to check for any additional
requirements and to validate whether a task can move to the next state.
4. Complete the following steps to create the script include to define state transitions and control
the transitioning between states for the new change type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
a. Navigate to System Definition > Script Includes.
b. Search for change type script include on which to base the transitioning controls for the new
change type on.
For example, to base it on Emergency change type, search for
ChangeRequestStateModel_emergency and open the script include.
c. Update the name of the script include to match the value of the new type.
For example, ChangeRequestStateModel_expedited.
d. Update the reference to the base script include for the new change type as created in step 3.
Change the extended Object in line 2 to the base script include name. For example,
ChangeRequestStateModelCust_expedited, so the reference is similar to the
following string.
ChangeRequestStateModel_expedited.prototype =
Object.extendsObject(ChangeRequestStateModelCust_expedited,
Ensure that the reference of the type is similar to the script include that is created. For
example, type:"ChangeRequestStateModel_expedited"});. The type is
present at the bottom of the script.
e. Click Insert and Stay create a copy of the script include
ChangeRequestStateModel_emergency with the new name
ChangeRequestStateModel_expedited.
5. Complete the following steps to modify the script include that controls the transition between
states using one of the defined models for the new change type.
a. Navigate to System Definition > Script Includes.
b. Search for and open the ChangeRequestStateHandler script include, which controls
the transitioning between states using one of the defined models.
c. Create a property to reference the new change request type value.
For example, EXPEDITED:"expedited".
d. Override the base method _resetModel to be able to include the new model.
For example, if the change request type is expedited, then the new state model
ChangeRequestStateModel_expedited is included. You must include the string
EXPEDITED:"expedited" after initialize: function(changeRequestGr)
{ as shown in the screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
e. Save the script include.
6. Complete the following steps to create a workflow for the new change request type.
a. Navigate to Workflow > Workflow Editor.
b. Open an existing change request workflow.
For example, Change Request – Emergency.
c. Select Copy from the Actions menu to copy the workflow and name the new workflow.
For example, Change Request - Expedited.
d. Select Properties from the Actions menu to update the condition under which the new
workflow executes.
For example, [Type] [is] [Expedited] in the condition.
e. Open the matching change tasks workflow that is called by the main workflow.
For example, Change Request - Emergency change tasks.
f. Select Copy from the Actions menu to copy the workflow and name the new workflow.
For example, Change Request - Expedited change tasks.
g. Select Publish from the Actions menu to publish the new change tasks workflow and make it
available for use.
h. Go back to the first workflow you created and update the Workflow activity to reference the
new change tasks workflow.
For example, Change Request - Expedited change tasks.
i. Select Publish from the Actions menu to publish the new workflow and make it available for
use.
Related topics
Change types
Add a state to the state model

Extend or disable multiple CI association
The ability to associate multiple CIs to a task can be extended to other types of tasks. You can
also disable multiple CI association from the related lists on change request records.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


<!-- page 342 -->
Procedure
1. In the navigation filter, enter sys_properties.list to open the System Property
[sys_properties] table.
2. Open the List of all the task types where user wants to associate CIs using a List
(com.snc.task.associate_ci) system property.
The value of this property is set to change_request, incident by default to enable association of
multiple CIs to change requests.
3. To enable multiple CI association to other types of task, add the required table as a value.
For example, to enable multiple CI association for problem records, add problem as a value,
separated by a comma.
4. Click Update to save and update the property.
5. Optional: Complete the following steps to disable multiple CI association for the Change
Request form.
a. Remove the change_request value from the List of all the task types where user wants to
associate CIs using a List (com.snc.task.associate_ci) system property.
b. Navigate to System UI > List control.
c. Perform one or both of the following tasks to disable multiple CI association for the related
lists.

Associated CIs

Open the entry with the task_ci.task related list and clear the Omit edit
check box.

Impacted
Services/CIs

Open the entry with the task_cmdb_ci_service.task related list and
clear the Omit edit check box.

State model and transitions
Change Management offers a state model to move and track change requests through several
states.
Example of state transitions for a normal change request

The following table provides a list of all the states that a change request can progress through.
Email notifications can be sent to the user who requested the change when it progresses to the
following states: Scheduled, Implement, Review, and Canceled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
Change states
State
value

State

Description

New

Change request is not yet submitted for review and authorization. A change
requester can save a change request as many times as necessary while
building out the details of the change prior to submission.

-5

Assess

Peer review and technical approval of the change details are performed
during this state.

-4

Authorize

Change Management and the CAB schedule the change and provide final
authorization to proceed.

-3

Scheduled The change is fully scheduled and authorized, and is waiting for the planned -2
start date. An email notification is sent to the user who requested the
change.
Implement The planned start date has approached and the actual work to implement
-1
the change is being conducted. An email notification is sent to the user, who
requested the change.
Review

The work has been completed. The change requester determines
whether the change was successful. A post-implementation review can be
conducted during this state. An email notification is sent to the user who
requested the change.

0

Note: You cannot cancel the change request if it is in the Review
state.
Closed

All review work is complete. The change is closed with no further action
required.

3

Canceled

A change can be canceled at any point when it is no longer required.
However, a change cannot be canceled from a Closed state. An email
notification is sent to the user who requested the change.

4

Normal, standard, and emergency changes progress through states in different ways.
Change state progress

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
State progress for different changes
• Normal changes progress through all states.
• Standard changes are considered to be pre-authorized, so they bypass the Assess and
Authorize states that trigger approval records. Approving these changes progress the change
to the next appropriate state. Rejecting these changes send them back to New state.
• Emergency changes are similar to standard changes, except that they must be authorized.

Revert a change request to a New change
Change Management allows the Emergency and Normal change types to be reverted to the new
state which is the first approval state using the Revert to New action from the Context Menu.
This action is performed if the approval was requested and the submitter recognizes that not all
configuration item in the scope of the change is included before submitting for approval.
• To modify the Normal change request to the New state, modify the state of a change request
from Assess state to New state by clicking Revert to New from the Context menu.
• To modify the Emergency change request to the New state, modify the state of a change
request from Authorized state to New state by clicking Revert to New from the Context menu.

Note: When you revert to New from the Assess state or the Authorized state, the
workflow is restarted and all pending approvals are cancelled.

Modify change request type
• A new ACL for change_request.type has been added that allows modification of the Type field
in change request when the change request is in a New state and no approvals have been
generated yet for it.
• In case of Standard change request, you can modify the type of the change request from
Standard to Normal or Emergency, if the state of a change request is New.
• In case of Normal or Emergency change request, you can modify the type of the change
request from Normal to Emergency or vice versa if the state of a change request is New.
• If a Normal or Emergency change request is rejected, the state of the change request is set
to New. As the state of the change request is New, you can modify the type of the change
request again. For example, if your Emergency change request is rejected on the grounds that
the change request is Normal, you can modify the Type of the change request to Normal and
resubmit the change request.

Disabled Cancel change action
The Cancel option for a change request in the Review state is disabled. This restricts cancelling
the request when the work is complete and is waiting for review.

Change model attributes
The Change Manager has the option to mandate specific actions when a Change Request is
moved to a specific state. Attributes assigned to that state determine what actions can take
place.
By default, there are two attributes to manage a change request:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
• allow_ci_modification – Allows to modify the CI. Attributes are only considered if they are
included in a model. If the allow_ci_modification attribute is not added to a model, it
defaults to its initial state.
• allow_implementation – Indicates that the change will be implemented. By enabling
allow_implementation, this feature replaces the implementation states field currently
present on the Change model. Both the states listed in the implementation states field and the
attribute will be respected.
Add a state to the state model
You can add a new state to the existing state model for different change types based on the
requirements of your organization.

Before you begin

Role required: script_include_admin, ui_policy_admin, ui_action_admin, or admin

About this task

The State model plugin is activated by default. For more information about base system states for
change requests, see State model and transitions.

Procedure
1. Navigate to All > Change > Create New and complete the following steps to add a choice to
the choice list.
a. Right-click the State field and click Configure dictionary.
b. In the Choices related list, run a filter for [Table] [is] [change_request].
c. Click New and add the new state with the following information.
▪ Table: Change Request [change_request]
▪ Label: name of your new state
▪ Value: numerical value that is not already assigned to an existing state choice
▪ Sequence: number corresponding to the location for it to appear in the list of states. If
you assign it the same sequence number as another choice, it appears below the other
choice.
d. Click Submit.
2. Navigate to System definition > Script includes.
Script include records that contain SNC in the name are read-only. As you complete the
following steps, ensure that you are selecting the correct script include to modify. For example,
modify ChangeRequestStateHandler not ChangeRequestStateHandlerSNC.

Note: Extended script includes (without SNC) include all of the functionality of their SNC
counterparts. If you modify a base script include (appended with SNC), it is no longer
updated during system upgrades.
3. Open the ChangeRequestStateHandler script to perform the following edits.
◦ Update the statehandler constants section at the start of this script include to include
values for the newly added state. For example:
ChangeRequestStateHandler.MY_NEW_STATE = "mynewstate";
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
◦ Update the STATE_NAMES map at the end of the initialize function to include the numeric
value for the newly added state. For example:
this.STATE_NAMES["-6"] =
ChangeRequestStateHandler.MY_NEW_STATE;

Note: The STATE_NAMES map provides a mapping between the numeric values

that are stored in the State field on a change request under a memorable name. This
mapping enables the memorable name to be used in the state model script includes.
4. Edit the appropriate script include to incorporate the new states into the model for the relevant
change request types.
Each type of change request has a corresponding script include named
ChangeRequestStateModel_<type> where <type> is the value of the change request
type. For example, ChangeRequestStateModel_normal defines the state model for
change requests with a type of normal.
Each state model script include defines objects that specify the following information.
◦ Which states are available.
◦ The next state or states for each available state.
◦ Functions for each state transition to decide whether that transition is available (canMove)
along with a function to be executed as part of moving to that state (moving).
The following example is from the ChangeRequestStateModel_normal script include.

5. Create a UI action to provide a button to progress the change request to the new state.
a. Use Insert and Stay to make a copy of one of the default UI actions, such as implement.
b. Update the following fields on the form.

Field
name

Update

Name

Update to match the name of the new state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
Field
name

Update

Action
name

Replace the state at the end of the name with the new state.

Hint

Update the text to refer to the new state.

Onclick

Rename the function to match the new state.

Condition Update the call to the isNext function with the new state.
Script

▪ Update the function name to match the one specified in the Onclick field.
▪ Update the line that starts with
ga.addParam(“sysparm_state_name”,… to enter the name of the
new state as the second parameter of the addParam function.
▪ Update the line starts with gsftSubmit and modify the third parameter of
this function call to match the value entered in the Action name field.

The following example uses the Implement UI action to show the values to update.

The ChangeRequestStateHandler script include contains two functions that are used
to determine if a UI action is displayed based on the current state of the change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
▪ isNext(stateName): This function only checks if the stateName passed as a
parameter is available as a next state for the current state of the change request.
▪ canMoveTo(stateName): This function performs the same check as the isNext
function. However, it also checks the result of calling the appropriate canMoveTo
function for the transition from the current state to the stateName passed as a
parameter. This function is used if there are additional checks in the canMove functions
such as checking that a field contains a particular value.
6. Complete the following steps to update the process flow configuration to incorporate the new
change state.
The process flow is displayed at the top of the Change Request form and is configured in
various process flow records.

a. Navigate to System UI > Process Flow module and filter for [Table] [is] [change_request].
b. Open a record and use Insert and Stay to make a copy.
c. Update the following fields on the form.

Field
name

Update

Name

Update to match the name of the new state.

Label

Update to match the name of the new state. This value is included in the
process flow at the top of the Change Request form.

Order

Update this number so that the new state is in the correct sequence with the
existing process flow records for other states.

Condition Update the filter to match the new state.
d. Click Update.

What to do next

To ensure that the new state works as expected, review the default workflows. Add the new state
to the workflow as necessary.
Review default workflows
Any modification to the state model may impact the default workflows for change requests.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
About this task

Each change type has a default workflow. To ensure that any change to the state model has not
adversely impacted workflows, you must review each of the default workflows.

Procedure
Review the workflow for each ChangeRequestStateModel_<type> script include that has
been modified.
Change request default workflows
Change type

Script include name

Workflow

Normal

ChangeRequestStateModel_normal

Change Request - Normal

Standard

ChangeRequestStateModel_standard

Change Request - Standard

Emergency

ChangeRequestStateModel_emergency

Change Request - Emergency

Modifications to the default workflow for each change type depend on where the new state is
added in the sequences of states.
Configure state model transitions
You can use script includes or UI policies to configure state models and the criteria for moving
change requests from one state to another.

Before you begin

Role required: script_include_admin, ui_policy_admin, or admin

Procedure
1. Complete the following steps to add state change criteria in a script include that enables a
state transition.
a. Navigate to System Definitions > Script Includes.
b. Open the script include for the state transition model that you want to edit.

State transition model

Script include

Normal

ChangeRequestStateModel_normal

Standard

ChangeRequestStateModel_standard

Emergency

ChangeRequestStateModel_emergency

c. Modify the appropriate method canMove method in the script include.
Example
For example, to add a condition for a normal change to transition from the New state to
the Authorized state, modify the draft.authorized.canMove() method in the
ChangeRequestStateModel_normal script include. In the script, the GlideRecord
you are acting on can be referenced using the this._gr variable.
The canMove method is part of a structure that defines the transitions
available to the change type. The canMove method is contained in the
currentState.nextState.canMove() structure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
2. Complete the following steps to use a UI policy to add new criteria for state transitions.
a. Navigate to System UI > UI Policies.
b. Open a default UI policy to edit or click New to create a new policy.
The following are the default UI policies.

UI Policy

Description

Show

CAB fields for normal and emergency changes from the Authorize state and
onwards.

Mandatory Assignment Group field.
Mandatory Close notes and Code fields when in the Closed state.

Note: In both of the mandatory UI policies, the state of the change request

determines the mandatory fields. For Show - CAB fields, the type of change is also
taken into account because standard changes do not require approval.
c. Complete and save the UI policy.

Create a Change model
Depending on your requirements, you can create a Change model and configure the states and
transitions for a specific use case.

Before you begin

Role required: change_manager

Procedure
1. Navigate to All > Change > Administration > Change Models.
2. Click New.
3. On the form, fill in the fields.
Change Model form
Field

Description

Name

Unique name for the Change model.

Default Change Model

Option for enabling the Change model as a
default model on the Change request form.

Active

Option for enabling that this model is
available for selection when creating a
Change request.

Color

Color that appears on the left side of the
Change model bar on the Models tab in the
Change landing page.

Available in 'Create New'

Option for enabling that this model is
available for selection on the Models tab on
the Change landing page. Also, the model will

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
Field

Description

be available to select in the Model field on
the Change request form.
Description

Detailed description of the Change model.

Implementation states

Implementation state for the Change model.
For more information on states, see State
model and transitions.
If you are using Mass CI Update with Change
Models ensure the Implementation states
field in the model is set to the state in which
you want the changes to take effect.

Record Preset

Preset values for all changes using this
model.

Advanced Security

Option to enable role-based access controls
and user criteria to tailor the Change creation
landing page views. When you enable
Advanced Security, Available For, Not
Available For, and Can write tabs appear
next to Model States tab.

Read Roles

Option to define the roles to view the Change
model.

Write Roles

Option to define the roles to edit the Change
model.

) and select Save.
4. Click the form context menu icon (
The Model States context menu appears. You can select the states for your Change model.
5. Click New.
6. On the form, fill in the fields.
Model State form
Field

Description

State

State that you want to include in your model.

Initial State

Option to enable this state as the initial state
for your model. This field is automatically
selected when you add the first state to your
model.

7. To save the state and return to the Change Model form, click Submit.
8. To add a transition between the states, click the display/hide hierarchical lists icon (
model state that you want to apply the transition to.
The Model State Transitions context menu appears.

) for the

9. Click New.
10. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
Model State form
Field

Description

From

State that the Change request is moving from.

To

State that the Change request is moving to.

Automatic Transition

Option for enabling automatic transition
to the Change request when the defined
conditions are met. Selecting this option also
prevents you from manually selecting the
State field on the Change request form.

11. Click the form context menu icon (
) and click Save.
The Model State Transition Condition context menu appears.
12. Click New.
13. On the form, fill in the fields.
Model State Transition Condition form
Field

Description

Name

Unique name for the condition.

State Transition

State that you're applying the transition
condition to. This field is automatically
set with the state that you're applying the
condition to.

Description

Detailed description of the condition.

Requires

Condition for your transition.
You can select a pre-defined condition, such
as Mandatory Fields to require that specified
fields are populated before the model state
transitions, or select Transition Condition to
define a more granular condition.
To create pre-defined conditions, see Create
predefined conditions.

Condition (condition builder)

Condition on the Change request that must
be fulfilled to enable the transition.

Condition (script)

Script that must be fulfilled to enable the
transition. The script returns a value of True
when passed.

Active

Option to make the condition active.

14. Click Submit.
15. Select Available For tab.
16. Select New to add the list of users who can access the Change model
17. On the form, fill the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
User Criteria record
Field

Description

Name

Unique name for the user criteria record.

Active

Option to make the condition active.

Users

Option to select the users who can access
the Change model.

Groups

Option to select the groups who can access
the Change model.

Roles

Option to select the role who can access the
Change model.

Companies

Option to select the companies who can
access the Change model.

Locations

Option to select the location of the company
who can access the Change model.

Departments

Option to select the departments who can
access the Change model.

Match All

Option to use the Change model if it meets all
conditions in the user criteria.

Advanced

Option to create a script to meet the
condition for user criteria.

18. Select Submit.
19. Manage the users to access the change model by providing the user access in Not Available
For, Available For, and Can Write tabs:
◦ Available For – Provides the access for the change model
◦ Not Available For – Doesn’t provide the access for the change model
◦ Can Write – Provides the editable access to the change model
For more information on user access, refer Create a user criteria record for Change
Management.
20. Select Submit.
Create predefined transition condition types
Create predefined transition conditions to reuse the conditions for your Change models.

Before you begin

Role required: change_manager

Procedure
1. Navigate to All > Application > Module > Change Model Condition Types.
A list of transition conditions for Change requests appears.
2. Click New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
Model State form
Field

Description

Name

Unique name for the condition type. This
name is displayed in the Requires field on
the Model State Transition Condition form.

Description

Detailed description of the condition type.

Condition Type

Type of condition that is either condition or
script.

Table name

Table name that the condition is based on.

Condition (Condition builder)

Conditions that must be fulfilled for
processing the transition.

Condition (Script)

Script that must be fulfilled for processing the
transition. If passed, it returns a value of true.

4. Click Submit.
Attach a process for Change model states
You can attach a process with defined conditions to the Change model states to enable state
transitions.
This process can be done by using one of the following methods:
®

• ServiceNow Workflow Studio: See Flow Designer
• Business Rules: See Business rules
Change flows for default Change models are available in Workflow Studio. For more information
on default Change flows, see Change flows.

Evaluating a Change model
When your flow is completed, you can evaluate the Change model to process any automated
transitions. In Workflow Studio, the Evaluate Change Model action is used to evaluate the
Change model.
When using Business Rules, you can use the script to evaluate the Change model. For
example, see the Change Registration: Auto State Change business rule on the
change_request table.
You can also evaluate a Change model for a specific Change request using this event:
Event to evaluate Change model
Event name

Parameter

Description

change_model.evaluate

Change Request sys_id

Process that may affect the
state of the Change request
but doesn't change the
Change request record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
Conflict detection
Conflict detection identifies potential scheduling conflicts for a change request based on the
configuration items, and planned start and end date or the change. If a scheduling conflict exists,
conflict detection also checks any related blackout or maintenance schedules and other active
change requests to determine the scheduling conflict.
Conflict detection identifies conflicts for any of the following reasons:
• The configuration items (CIs) are already scheduled at the given date and time.
• A parent or child of the CI is already scheduled at the given date and time.
• The CI is not in the maintenance window.
• A parent or child of the CI is not in the maintenance window.
• The CI is in a blackout window.
• A parent or child of the CI is in a blackout window.
• The CI is assigned to a person already scheduled at the given date and time.
Using the change.conflict.useprogressworker system property, the conflict
detection process can now be managed in two ways. By default, the value of this property is set
as false, and conflict detection is executed using the Change Management Worker table and the
Change - Conflict Detection flow.
If you set the value of this property as true, conflict detection uses Progress Workers instead, as it
used previously.
You can also manually execute conflict detection. For more information, see Detect conflicts
manually and review conflict details.

Conflict detection process
Conflict detection can run automatically when you provide values for the Configuration item,
planned start and end date fields. It can also run when the values in any one of these fields are
updated, or when values for these fields are available and the state of the change request is
updated.
When the value in the change.conflict.useprogressworker system property is set
to false, the Change Management Worker (chg_mgt_worker) table can be used to track the
execution of conflict detection for a change request. You can view the associated Change Conflict Detection flow by selecting Show Flows on the change form.
When Conflicts are identified, the conflict status and conflict last run fields are updated to reflect
the outcome. Conflicts can be reviewed in the Conflict section of the change request form.

Conflict Calendar
You can choose to display a conflict calendar to view identified scheduling conflicts. For more
information, see Conflict calendar
Detect change conflicts
Detect change conflicts by setting Change Management conflict analysis properties. Use the
resulting information to calculate conflicts for change requests and review and modify the
change to eliminate conflicts.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
About this task

By default, not all properties are selected in the Change Management Conflict Analysis
Properties page. Modify or customize conflict detection capabilities to meet the needs of your
organization.

Procedure
1. Navigate to All > Change > Administration > Conflict Properties.
2. In the Change Management Conflict analysis properties page, enter the roles that have access
to the conflict detection feature.
3. Configure the remaining customization properties.
For more information on conflict detection properties, see Conflict detection properties.
4. Select Save.
Conflict detection properties
Conflict detection includes properties that determine how the conflict detection capability is
executed.
Initiate properties without other settings by setting the value to Yes.

Note: You can determine the mechanism for conflict detection. You can
choose between the Flow and Progress Worker options by updating the
change.conflict.useprogressworker system property. It is set to false by
default.
Change Management conflict analysis properties
Property name

Description

change.conflict.role

A comma-separated list of roles that
have access to the conflict detection
feature. Roles included here should have
access to the underlying change_request
record. Roles are entered exactly as they
appear in User Administration > Roles.
For example, itil.

change.conflict.blackout

Checks whether the change request falls
within the blackout window.

change.conflict.relatedchildblackout Checks whether the change request of
any of the child configuration items (CIs)
falls within the blackout window.

change.conflict.relatedparentblackoutChecks whether the change request of
the parent CI falls within the blackout
window.

change.conflict.currentci

Checks whether the change request is
already scheduled against the given CI.

change.conflict.currentwindow

Checks whether the change request
of the CI falls within the maintenance
window.

change.conflict.relatedchildwindow

Checks whether the change request
of any of the child CIs falls within the
maintenance window.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
Change Management conflict analysis properties (continued)
Property name

Description

change.conflict.relatedparentwindow Checks whether the change request
of the parent CI falls within the
maintenance window.

change.conflict.ci_maint_sched

Checks whether the change request
falls within the scheduled maintenance
defined for the CI in the maintenance
schedule reference field.

change.conflict.relatedservices

Checks whether a change request that
falls within the maintenance or blackout
windows affects other related application
services, such as the services created
that include the CI scheduled for change
or any other CI within that service.

Note: This action requires any
business services identified to
be converted to an application
service. For more information,
see Convert business services
to application services . For
information about application
services, see Application services
Application services .

change.conflict.assigned_to

Checks whether any other change
request is assigned to the same change
request assigned to a user. For example,
if you assign a change request to a user
who is already scheduled to implement
another change request at that date and
time, a conflict error will be displayed.

change.conflict.mode

Determines the conflict mode for a CI.
The available values are:
• Basic: Checks only change requests of
the CI against the change request for
the CI and all affected CIs.
• Advanced: Checks both the CI for the
current change request and affected
CIs against other change requests for
the CI and affected CIs.

change.conflict.refresh.conflicts

Refreshes and run conflict detection
automatically when any of the following
field values are changed:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
Change Management conflict analysis properties (continued)
Property name

Description

• Configuration item
• Planned start date
• Planned end date

change.conflict.populateimpactedcis Automatically includes and lists all the
business and application services with
related CIs that have conflicts.

change.conflict.identifymostcritical Identifies the most affected business or
application services that have a related
conflicting CI.

change.conflict.next_available.schedule_window
Factors from the scheduled planned start
date or end date of the change request
to find the next available time, enter the
number of days.
• Type: Integer
• The default value is 90.

change.conflict.next_available.choice_limit
The number of suggestions to calculate
and display for the next available time.
The greater the value, the more time
taken to calculate the next available
times to implement the change.
• Type: Integer
• The default value is 100.

change.conflict.log

The logging levels for change conflicts:
The available options are:
• Emergency
• Alert
• Critical
• Error
• Warning
• Notice
• Info
• Debug
The default level is Notice.

change.conflict.show_conflict_messageDetermines whether or when a message
is displayed when a scheduling conflict is
detected. The available options are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
Change Management conflict analysis properties (continued)
Property name

Description

• User Preference: The user can select
whether to show or hide the conflict
message through a UI menu option.
• Always: Always displays the conflict
message.
• Never: Conflict messages are not
displayed.
By default, User Preference is selected.

change.conflict.allow_contiguous_changes
Handles contiguous change requests
with overlapping schedules. This
property is active by default.

change.conflict.consolidated_conflicts
Displays only conflicts that result from
a combination of the conflict type and
schedule or conflict type and conflicting
change.
This property is active by default.

change.conflict.max_count

The maximum number of conflict records
that can be generated for each conflict
type when conflict detection runs. Create
this system property if it is not already
present.
• Type: Integer
• The minimum value is 1000. If you set
a lesser number, 1000 is displayed as
the default value.

Create blackout and maintenance schedules in Change Management
Use the Blackout and Maintenance windows to schedule a change. Blackout windows specify
times during which normal change activity should not be scheduled. Maintenance windows
specify times during which change requests should be scheduled. For example, create a
blackout schedule for code freezes at the end of the year. blackout-maintenance-schedule

Before you begin

Role required: itil_admin or admin
Ensure that the Change Management - Collision Detector (com.snc.change.collision) plugin is
activated.

About this task

Conflict detection uses blackout and maintenance schedules to find potential scheduling
conflicts for the configuration items (CIs) associated with a change request. When conflict
detection runs, either automatically or by manual request, conflict detection determines if either
type of defined schedule applies to the change request. If a potential conflict is identified, a
warning message appears and conflicts are listed within the Conflict form section. View conflicts
in the Conflict calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
Note: To use the business service as the source for a blackout or maintenance schedule,
the business service must be converted to an application service. For instructions, see
Convert business services to application services . For information about application
services, see Application services .

Procedure
1. Create a blackout or maintenance schedule.
Option

Description

Create a blackout schedule

a. Navigate to Change > Schedules > Black­
out Schedules.
b. Click New.

Create a maintenance schedule

a. Navigate to Change > Schedules > Mainte­
nance Schedules.
b. Click New.

2. On the form, fill in the fields.
Blackout and Maintenance schedule form
Field

Description

Name

Unique name for the schedule.

Description Short description about the schedule.
Time zone

Time zone for the schedule.
Select Floating to evaluate planned start and end dates on the Change
Request form for the logged-in user.

Source

Source of the blackout or maintenance schedule. The available options are
Service, Change Request, and CI Class.

Note: When you select Service or Change Request from the Source list,
the Applies to field does not appear. The Applies to field appears if you
select CI Class as the Source, which in turn enables the selection of a CI
Class.
Applies to

The class of CI that this schedule applies to.
Specifying CI [cmdb_ci] indicates that this schedule is applicable to all CIs in
this class and any children of this class.
Conflict detection evaluates whether the schedule applies to a given change
request, service, or CI, and the condition defined on the schedule.

Condition

Conditions to specify the CIs that the schedule applies to.
This field does not appear when the Applies to field is set to None.

Note: Related fields used in conditions are not evaluated for blackout or
maintenance schedules.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
3. Open the form context menu and click Save.
A blackout or maintenance schedule is created and the Schedule Entries, Child Schedules,
and Referenced By related lists appear in the change.

Note:
The Blackout Schedule [cmn_schedule_blackout] table extends the Condition Schedule
[cmn_schedule_condition] table, which in turn extends the Schedule [cmn_schedule]
table. The Blackout Schedule table inherits the domain properties from the Schedule
table which has the Domain and Domain path columns.
Because the Blackout schedule table uses the same Child Schedule and Schedule
Entry tables as the Schedule table uses, the domain support is identical. The
domain_master attribute is used to derive the domain from a parent record. For more
information, see Domain support for schedules .
4. Create one or more schedule entries by completing the following steps:
a. In the Schedule Entries related list of the new maintenance schedule, click New.
b. Enter a unique name and define the time during which you want to schedule the
maintenance.
For more information about the schedule entries field, see Schedule entry fields

.

Note: To delete the schedule created, select Delete. If you delete a schedule, the
child schedules and schedule entries associated with the schedule would be deleted
automatically.

Result

A blackout or maintenance schedule is created.

What to do next

Associate the configuration item with the maintenance schedule that is used in the change
request.
Related topics
Define a schedule
Schedule entry fields
Parent and child schedules
Assign a maintenance schedule to configuration items
You can review and determine the conflicts in a change schedule by assigning the maintenance
schedules to configuration items (CI). After you assign a maintenance schedules to the CI, add
the CI to the change request.

Before you begin
Role required: itil

About this task

When the configuration item with an assigned maintenance schedule is used in the change
request, the conflict detection determines the schedule change outside the maintenance
window and displays a conflict error message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
Procedure
1. Navigate to All > Configuration > Application Servers.
2. From the list of servers, select the server that you want to add the maintenance schedule to.

Note: If you don't see the Maintenance schedule field on the record, click the
personalize list icon (

) and modify the Personalize List settings to add this field.

3. Double-click the Maintenance schedule field and use the search icon to select a schedule
and assign it to the server.

Result

The selected maintenance schedule is assigned to the server.
Configure a change request to monitor outside maintenance schedule conflicts
When a change request is configured to display the conflicts that are outside the maintenance
schedule, conflict detection indicates whether the planned start and end dates occur outside
the maintenance window or not. By reviewing the conflicts that are detected, you can modify the
change schedule.

Before you begin

Role required: personalize_ui or admin

About this task

The Outside maintenance schedule check box is informational and the instance sets this value
and disregards any changes that you make to this check box. The check box is selected by
default if either of the following actions occur.
• The planned start and end dates in the change request with an associated configuration
item (CI) are compared to the maintenance schedule and are determined to be outside the
schedule.
• Affected CIs associated with the change request are checked against their assigned
maintenance schedules, if any.

Note: Only the maintenance window for the primary CI or affected CIs is checked; the
upstream and downstream items are not checked.

Procedure
1. Navigate to All > Change > Open and select an existing change request.
2. If the Outside maintenance schedule field does not appear, add the field to the form.
a. Click the context menu icon and then click Additional actions > Configure > Form Layout.
b. Move Outside maintenance schedule to the Selected list.
c. Click Save.

Result

When you save a change request that is outside the maintenance schedule, a warning appears
for each item (primary or affected). This warning also displays the planned dates that fall outside
the maintenance window.
Conflict calendar
The conflict calendar graphically represents the potential scheduling conflicts for a change
request. Conflicts are identified as active change requests, blackout schedules, and changes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
scheduled outside maintenance schedules. Use the Scheduling Assistant to resolve any
schedule conflicts.
Conflict calendar

SI

UI Component

Description

1

View Form

Returns you to the Change Request form.

2

Calendar

Enables you to choose a date. When you select a date, you
can view the schedule details of that day.

3

Current day or month Enables you to view the schedule of the current day or
month when you click Today.

4

Navigating dates

5

Scheduling Assistant Enables you to choose from the list of available time slots
to resolve conflicts. For more information on resolving
conflicts, see Manage your change schedules and resolve
conflicts

6

Day or Month view

Enables you to change the calendar view to a day view or
month view.

7

Keyboard Shortcuts

Provides you with keyboard shortcuts for quick navigation.

8

Options

Enables you to control the view of the calender, customize
settings, or set the configuration filters using the Settings
tab and the Configuration tab. From the configuration filters
you can select and display the Assigned to, Assignment
group, Configuration item, or Show all options in the
Related Changes section. This section has the same value
of the option selected for the current change.

9

Change request
block

Enables you to view the details of the change request.

10

Related Changes

Helps you to detect other scheduled changes that
potentially conflict with the change based on a schedule or
assignment. For example, if the same person is assigned
to two or more changes at the same date and time, you can
visually see the conflict and update one of the scheduled
changes, as appropriate.

Enables you to navigate to the previous day, the next day,
or month, depending on the view type when you click the
arrow buttons.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
Manage your change schedules and resolve conflicts
Prevent schedule conflicts by using the conflict calendar to manage your change schedule
details, customize views, and resolve conflicts.

Before you begin

Role required: admin

Note: Users with the admin role must activate the Change Request Calendar

(com.snc.change_request_calendar) plugin for the Conflict Calendar button to appear.

About this task

When there is a conflict, you can use Scheduling Assistant link in the change form to find the
next available slot.

When there are no available slots for the next 90 days, then an actionable message is displayed
with the reason why the assistant was not able to find a slot.

Alternatively, you can resolve conflicts by moving the change request to be within a maintenance
window in the conflict calendar. The Conflict Calendar button appears in the header of the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
change form once the Planned start date, Planned end date, and the Configuration items fields
are added and the record is saved.

Procedure
1. Navigate to All > Change > Open.
2. Open your required change request.
3. Click Conflict Calendar.
4. Click Scheduling Assistant.
The scheduling assistant dialog box displays the next available times to choose to resolve the
conflict. The number of days factored after the planned start and end dates and the number
of suggestions calculated for the next available time are configured under Conflict properties.
For more information, see Configure conflict analysis properties form.
5. Select the time from the available time slots.
6. Click Select Available Time.
The planned start date and end date are updated with the new time, and the conflict is
resolved.
7. To select another day from the calendar, click the calendar icon (

) and select the date.

Result

The conflicts are reviewed and resolved.
Enable automatic change conflict detection
Automate conflict detection to run at specific intervals or when a change request is updated to
immediately review the conflicts when the schedule dates are updated.

Before you begin

Prior to running conflict detection, consider the following scenarios unique to your organization.
CMDB list size and relationship complexities
If you have a large organization with a large CMDB, conflict detection can take
longer to complete.
Inactive changes are not evaluated
Conflict detection does not evaluate inactive changes when determining conflicting
changes.
Advanced mode conflict checking is disabled by default
When you upgrade the application, advanced mode conflict checking is disabled by
default and affected CIs are not considered during conflict detection. To evaluate all
the CIs, set the mode to Advanced.
Role required: change_manager or admin

Procedure
1. Navigate to All > Change > Administration > Conflict Properties.
2. Select one of the following options.
Option

Description

Run conflict detection automatically after
changes to Configuration item, Planned

When selected, runs conflict detection auto­
matically when a change to one or more of
the following fields on the change request
record is saved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
Option

Description

◦ Configuration item
start date, Planned end date, or State when ◦ Planned start date
a change request is updated
◦ Planned end date
◦ State
When selected, runs the following conflict de­
tection scheduled jobs at these intervals:

Change Conflict Detection < 1
Week Away is scheduled every day.
Enable the scheduled change conflict check­
Change Conflict Detection < 1
er
Month Away is scheduled every two days.

Change Conflict Detection >=1
Month Away is scheduled every seven
days.
3. Click Save.
You can view the conflicts on the Conflicts tab on the change request record.
Detect conflicts manually and review conflict details
Run conflict detection manually for a change request and cancel conflict detection before it
completes. Review the conflicts detected either automatically or manually and resolve them by
changing the schedules.

Before you begin

Before you can run conflict detection for a change request, the following fields must be
completed in the change record.
• Configuration item, except in advanced mode. In advanced mode, the Affected CIs field is
required instead.
• Planned start date of the change request.
• Planned end date of the change request.
For more information about running conflict detection automatically, see Enable automatic
change conflict detection.
Prior to running conflict detection, consider the following scenarios unique to your organization.
CMDB list size and relationship complexities
If you have a large organization with a large CMDB, conflict detection can take
longer to complete.
Inactive changes are not evaluated
Conflict detection does not evaluate inactive changes when determining conflicting
changes.
Advanced mode conflict checking is disabled by default
When you upgrade the application, advanced mode conflict checking is disabled by
default and affected CIs are not considered during conflict detection. To evaluate all
the CIs, set the mode to Advanced.
Role required: itil or sn_change_write
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
Procedure
1. Navigate to All > Change > Open.
2. From the list of change requests, open the desired change request.
3. Click the Conflicts tab or scroll to the bottom the form to find the Conflicts tab.
4. Click Check Conflicts.
5. When the conflict detection is completed, click Close in the pop-up window.
Conflicts appear in the Conflicts Detected list on the Conflicts tab. The Conflict status and
Conflict last run fields on the change request record are also updated.
6. In the Conflicts Detected list, review the list of conflicts that appear.
Conflicts Detected List columns
Field

Description

Conflicting
change

The change that is in conflict with the scheduled change, if any.

Affected CI

The affected CI associated with the change.

Last Checked

The last time the conflicts were checked. The Last Checked field is
automatically updated.

Related CI

The parent CI or child CI of the current CI, if the CI has caused a conflict.

Schedule

The name of the maintenance window or blackout window that is causing
the conflict, if any.

Type

The issue that caused the conflict.
◦ CI Already Scheduled
◦ Parent CI Already Scheduled
◦ Child CI Already Scheduled
◦ Not in Maintenance Window
◦ Parent Not In Maintenance Window
◦ Child Not In Maintenance Window
◦ Blackout

Result

You can review the conflicts and the affected CIs in the Conflicts Detected list and reschedule
the change to resolve the conflicts.
Cancel conflict detection manually
Cancel any conflict detection jobs that are actively running for a change request if you want
to make any modifications to the schedules. After modifying the schedules, you can rerun the
check conflicts action again to identify potential conflicts.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
Procedure
1. Navigate to All > Change > Open.
2. Open the change request that you want to cancel conflict checking for.
3. Click the Conflicts tab.
4. Click Check Conflicts.
The Checking conflicts progress status pop-up window appears.
5. To cancel conflict detection, click Cancel.
The active conflict detection job is canceled and all conflicts displayed in the Conflicts section
are cleared. The Conflict Status field displays a Not Run status.

Note: If you set conflict detection to run automatically or on a scheduled basis, the
future executions of conflict detection against the same change request record are not
canceled.

Change success score
Use team historical data for insights into team performance. The score value helps you to
determine how likely the team is to complete your change request without issues.

Note: The change success score feature is installed after you activate the Change
Management - change success score plugin available with the ITSM Professional
subscription only. Contact your account manager for more information.
The change success score can help you evaluate a team's success in handling prior change
requests.

When the Change Management - Change success score plugin is activated, a Change
success score metrics (Daily) performance analytic (PA) job is added. The PA job
is a daily job that collects the first set of change success scores until the next job run time that
is 02.00 UTC. After the first job run, a Change Success Score card

icon appears next to the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
Assignment group field on the change request form. On a click of this icon, you can view the
score card details of the assignment group.

Change Success Score dashboard
Use the data on this dashboard to see trends in the resolution efficiency of a team over time
based on the same parameters used to calculate the overall score. To view the trends of all the
assignment groups, clear the selected element.
Navigate to Change > Change Analytics to access the Change Success Score, Change Type
Success, and Change Model Success dashboards.

For more information on the indicators, see Success score indicators.

Change Type Success dashboard
This dashboard displays trends in the resolution efficiency for change types. To view the trends
of all the change types, clear the selected type.

Change Model Success dashboard
This dashboard displays trends in the resolution efficiency for the change model over time
based on the same parameters used to calculate the overall score. To view the trends of all the
change model, clear the selected model.
Success score indicators
Change Success score uses Performance Analytics indicators for data collection. Indicators
define a performance measurement taken at regular intervals of a business service, an activity, or
organizational behavior. These performance measurements result in a series of indicator scores
over time.
The following are the Change Success Score indicators that are used to collect data daily for the
changes completed on the previous day.
Total Changes
The total number of change requests addressed during the time.
Successful changes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
The number of successfully resolved change requests.
Unsuccessful changes
The number of change requests that was not resolved.
Successful changes with issues
The number of change requests that was resolved, but had other defects that were
not addressed.
P1 incidents caused by change
The total number of P1 incidents that were reported as caused by one of the
changes completed by the team.
P2 incidents caused by change
The total number of P2 incidents that were reported as caused by one of the
changes completed by the team.
P3 incidents caused by change
The total number of P3 incidents that were reported as caused by one of the
changes completed by the team.
For more information on the PA indicators including how to configure Change Management
Performance Analytics indicators, see Performance Analytics indicators
Success score calculation
To calculate the success score, formula indicators are provided. These indicators apply the
multiplication operation to the data collected by the automated indicators to arrive at the final
score.
You can view the Change success score formula indicators in Performance Analytics under the
indicator group Change success score - multipliers.
Review the following table to understand the default multipliers used in success score
calculation.
Default multipliers
Automated indicator

Multiplier applied by formula indicator

Successful changes

3

Successful changes with issues

-2

Unsuccessful changes

-5

P1 incident caused by change

-10

P2 incident caused by change

-5

P3 incident caused by change

-2

Modify score calculation
Modify the multiplier values in the formula indicators to calculate the final success score.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
Procedure
1. Navigate to All > Performance Analytics > Indicator Groups > Change success score multipliers.
2. Open the indicator that you want to modify.
3. In the formula, change the multiplier value.

4. Click Update.
Success score rating
Based on the change success score rating, a color and text is associated that is displayed as
part of the Change Success Score card. By default, four success score ratings are available with
a specific score range.

Before you begin

Role required: admin
The following default ratings available.
• Low
• Medium
• High
• Excellent
Each rating is associated with a default range and color.
The Change Success Score Ratings table is used to hold the records of the text and a color
associated with the success score range.
You can choose to modify the score range, color, introduce, or modify new rating values. The
values defined here can be viewed in the Change Success Score card on the change Request
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
Procedure
1. Navigate to All > Change > Administration > Change Success Score Ratings.
2. Perform the given action based on your requirements.
Action

Procedure

To add a new score range

Click New and fill in the range details and the
color you want to associate and submit.

To modify the existing range

Open the rating, and click the here link in the
record information message to modify the val­
ues.

3. Click Update.

Predictive Intelligence for Change Management
The Predictive Intelligence for Change Management capability uses machine-learning
algorithms to suggest standard templates, identify similar incidents, and enhance risk
assessment for the change.
Predictive Intelligence for Change Management delivers the following benefits:
• Enhanced change risk calculation using machine-learning algorithms to assess change risk.
• Uses Predictive Intelligence clustering capability to identify and suggest Standard Change
templates to create a change.

Solution definitions for Predictive Intelligence for Change Management
The Solutions definitions for Predictive Intelligence for Change Management capability are
available after you activate the following plugins:
• Change Management - Risk Intelligence plugin (com.snc.change_management.ml.risk)
• Change Management - Standard Change Template Intelligence plugin
(com.snc.change_management.ml.sctp)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
Note: Predictive intelligent for Change Management plugins can be requested through
the Now Support Customer Service system.
For more information, see Change Management plugins.
Solution definitions for Change Management
Solution definition

Solution type

Description

Risk for proposed change

Similarity and Categorization

Provides insight into the
potential risk of the change
activity and facilitates
intelligent approval decisions.
The info message puts all
the risk related information to
easily compare the returned
value.
This prediction helps in
reducing approval friction
and time. For example,
when risk = low, you can use
Change Approval Policies to
automatically approve this low
risk activity.

Standard change candidates

Clustering

Analyzes and suggests
opportunities for Standard
Change proposal templates
that can be used for
automatically creating a
change. This solution uses
similarity and clustering
solution type to identify the
common fields in the records
and make it a template.

Intelligent solutions system properties
Administrators can configure the Change Management Intelligent solutions system properties to
use predictive intelligence (PI) capabilities.
By configuring these properties, you enable the Change Management application to:
• Predict the risk of the proposed change.
• Use similarity and clustering to identify and suggest potential standard change templates.
Navigate to Change > Intelligent Solution Configuration to view and edit the properties.

Risk Intelligence Properties
Risk Intelligence properties
Property

Description

Solution type [chg_ml_prop_risk.model_type]

The type of PI solutions used for risk
prediction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
Risk Intelligence properties (continued)
Property

Description

• Similarity: Uses machine-learning solution to
collect and compare your existing records to
new similar records. This solution type uses
the following risk calculation method:
◦ Use count of records: Risk of the group
that has highest count is used.​
◦ Use confidence of records: Risk of the
group that has highest total number of
confidence is used.​
If the risk have same count or confidence,
then the higher risk is considered.
• Classification: Uses machine-learning
algorithms to set field values during record
creation, such as setting the risk category
based on previous data.
Predicted value usage
[chg_ml_prop_risk.usage]

Determines how the predictive value must be
used.
• View risk value
• Set risk value

Solution enabled
[chg_ml_prop_risk.solution_enabled]

Identifies if the solution is enabled or not.

Threshold
The minimum confidence value for the
[chg_ml_prop_risk.classification_confidence_threshold]
returned results.

Standard Change Proposal Properties
Standard Change proposal properties
Property

Description

Minimum quality level
[chg_ml_prop_sctp.quality]

Minimum cluster quality to use for Standard
Change candidate.

Train the Risk Intelligence solution
Create Risk categorization or similarity solution definitions to use the predictive intelligence that
helps in accessing change risk.

Before you begin

Ensure that Change Management - Risk Assessment (com.snc.change_management.ml.risk)
plugin is activated.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
Procedure
1. Navigate to All > Change > Intelligent Solution Configuration > Risk Intelligence.
2. Select the Solution type.
◦ If the Solution type is Similarity, then you can see the default, Change Risk Similarity
Definition solution.
◦ If the Solution type is Classification, you can see the default, Change Risk solution.
3. Customize the default solution.
For more information, see Create and train a similarity solution
classification solution .

and Create and train a

4. Click Update.
Train the clustering solution for standard change proposal
Train the Standard change proposal solution definition to use clustering capabilities to identify
and suggest Standard Change templates to create a change.

Before you begin

Ensure that Change Management - Standard Change Template Intelligence
(com.snc.change_management.ml.sctp) plugin is activated.
Role required: admin

Procedure
1. Navigate to All > Change > Intelligent Solution Configuration > Standard Change Proposal.
2. Customize the default solution definition to train the solution.
By default, the Std Change Template Candidates is the solution definition provided. To
generate records in the std_change_template_candidate list, execute the scheduled
job Update Standard Change Cluster Candidates. You can also configure the scheduled job to
run at specific periods by selecting the required option in the Run field in the Scheduled Script
Execution page. You can then create standard change templates from the clusters generated.
For more information on creating and training the solutions, see Create and train a clustering
solution .
3. Click Update.

Applying CSDM guidelines to Change Management
Change Management lets you control every aspect of the IT change process from creation to
approval. When you have accurate information, you can minimize risks to your business and
avoid conflicts with scheduling. The goal of this product view is to help you to understand how
Change Management key entities work with the core CSDM framework.

Change Management
Change Management includes the following features:
• Manage changes more quickly by using the Change Advisory Board (CAB) Workbench to
schedule, plan, and manage CAB meetings from one interface.
• The Change Management backlog analysis dashboard provides increased visibility into any
changes.
• Service Maps let you see the change impacts at-a-glance.
• The change approval policies increase DevOps velocity and remove IT friction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
For details on implementing the CSDM framework, see Implementing the CSDM framework in
stages .

Change Request form
The Change Request form references the following attributes and related lists.

1 Service (Business Service)

References the [cmdb_ci_service_business]
table.

Note: Earlier platform releases labeled
this attribute Business Service.
2 Service Offering

References the [service_offering] table where
the offering has a parent service.

3 Configuration Items

References the [cmdb_ci] table.

4 Affected/Causal CIs

Related list [task_ci] table.

5 Impacted Services

Related list [task_cmdb_ci_service] table.

6 Assignment Group

References the Group attribute.

Note: You can populate the Group
attribute by using the Assignment Group
for the relevant CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
For more information
For additional details on Change Management, see Change Management.
See the video: How Change Management leverages the CSDM
Change Management and CSDM tables
Change Management manages and uses CSDM tables. Several ServiceNow products benefit
from and add value to Change Management.

CSDM tables managed by Change Management
Configuration items (CIs) tables [cmdb_ci_*]:
• Application table [cmdb_ci_appl]
• Server table [cmdb_ci_server]
• Virtual machines table [cmdb_ci_vm_instance]
• Load balancer table [cmdb_ci_lb]
• Network gear table [cmdb_ci_netgear]
The following figure highlights the CSDM tables managed by Change Management.
CSDM tables managed by Change Management

CSDM tables used by Change Management
1. Service instance table [cmdb_ci_discovered_service] (the table was formerly labeled
application service) or any infrastructure CI.
2. Configuration Item tables [cmdb_ci*]
3. Business Service [cmdb_ci_service_business] table and Technology Management Service
[cmdb_ci_service_technical] table (formerly Technical service): Uses the service classification

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
attribute to identify business services, technical services, and application services as types of
services.
4. Service Offering [service_offering] table: Uses the service classification attribute to identify
business services, Technology Management Offerings (formerly Technical service offerings),
and application services as types of service offerings.
Tables used by Change Management

Products that add value to Change Management
When you use Change Management with other ServiceNow products, you increase the value you
get from Change Management. These other ServiceNow products include:
Discovery
Discovery provides details about the hardware and software CIs you are using.
Service Mapping
Service Mapping provides details about the application instance service in
the Mapped Application Service [cmdb_ci_service_discovered] table, relating
infrastructure and application [cmdb_ci_appl] CIs.

Products that benefit from Change Management
Service Portfolio Management (Service Portfolio Management)
Services have the context of the business and applications, along with the
information and technologies that underpin them.
IT Service Management (ITSM)
Incidents caused by, impacted by, or fixed by Change Management.
Asset Management
Updates assets.
Information Technology Operations Management
Updates CIs using a controlled process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
DevOps
Provides Change Management governance for pipeline tool chains.

For more information
See the video: How Change Management leverages the CSDM
Change Management use case
For ITSM, specifically incident and change, identifying the location of critical data can help
reduce mean time to resolve incidents and eliminate outages caused by change.

Key features of the Change Management use case
Applying the CSDM framework provides value to Change Management in the following ways:
• Enables users to understand the impact of a change on services and service offerings.
• Changes are dynamically routed.
• Change Management identifies and notifies all affected services to support the approval
decision.

1. Subscription: Related lists on service offerings that identify who has access to the offering
and thus may be impacted in an outage. An incident or change can identify impact using the
subscribed by tables. The related lists are as follows:
◦ Service Subscriptions by Company [service_subscribe_company]
◦ Service Subscriptions by Department [service_subscribe_department]
◦ Service Subscriptions by Group [service_subscribe_sys_user_grp]
◦ Service Subscriptions by Location [service_subscribe_location]
◦ Service Subscriptions by User [service_subscribe_sys_user]
2. Business service offering may be used to provide the business approver based on
approval_group and business_criticality. A business service may have multiple offerings, each
with a different criticality.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
3. Technical service offering may be used to provide the technical approver approval_group
and technical assignment group on the attribute assignment_group. May be used by change
for routing of change and change tasks. May be synchronized onto the CI’s that the offerings
manage thus reducing the manual overhead of maintaining manual data on thousands/
millions of CI’s.
4. Service instance (the table was formerly labeled application service) may be used to provide
prod and non-prod (DEV, QA, UAT, etc.) environments. Non-prod environments may be filtered
out if desired. The legacy used_for attribute maps to the environment attribute. You should
use the environment attribute.

Note: Some technology service offerings (the table was formerly labeled service
offering) may identify the environment of the offering as well.

Results of the Change Management use case
The CSDM framework provides context for the changes. The context includes the CIs involved in
the change and the services affected.
Use the Change Request form to see the impact of the change. Complete the following steps:
1. Populate the Configuration Item attribute [configuration_item] with the target CI for the change
activity. You can then use this CI to identify details for change routing. For example, you can
use the CI data, such as “Assignment Group” or "Approval Group," and provide information
about the service impact by using dependency relationships.
2. Populate the Impacted Services related list [task_cmdb_ci_service] with the services that are
related to the populated CI. These may include services and service offerings.
3. (Optional) Use the Service and Service Offering attributes to identify the provider services
responsible for managing the selected CIs.
4. (Optional) Use the Affected CI related list [task_ci] to identify the CIs that may have caused the
change. These CIs are in addition to the CIs previously populated. The [task_ci] table can be
populated dynamically or manually.

Note: Dynamic population is not part of the base system. To use dynamic population,
you need to configure the Change Request form.

For more information
See the video: How Change Management leverages the CSDM
Change Management considerations
Consider these points while implementing the CSDM framework.
• Business applications not referenced in the Change Management use case: Business
applications are portfolio objects you can use for designing and planning an Enterprise
Architecture. Business application portfolio objects don't contain version, environment, and
localization details for deployments using one or more applications.
• Change approval process: It depends on how you implement Change Management. After
you populate the CIs on the Change form (if there's a relationship between the CI and the
impacted services and service offerings), the Approval group approves the change.
• CI attributes used for routing changes: If you are initiating the change or the change task, use
the Assignment Group attribute CI. If you are using build run teams, you could use the Support
Group attribute CI for the team assignments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
For more information
See the video: How Change Management leverages the CSDM

Using Change Management
Work on a change request seamlessly and create the approval policies as required to meet your
organizational needs.

Create a change request
Create a change request to implement a controlled process for modifying approved and
supported configuration items (CIs).

Before you begin

Role required: itil, admin, or sn_change_write

About this task

A change request records the detailed information about the change, such as the reason of the
change, the priority, the risk, the type of change, and the change category.
If you use conflict detection, the planned start and end dates and the configuration item (CI) are
required.

Procedure
1. Create the change request with one of these options.
Option

Description

You can create all three types of change from the Change module.
a. Navigate to All > Change > Create New.
b. Select Normal, Emergency, or Standard changes.
If you are an upgrade customer and willing to use change models, you
must enable the change model properties. For information on change
models and its properties, see Change models.
From the Change
module

When you enable the change model properties, you see the following
tabs when you navigate to All > Change > Create New.
◦ Models: Shows all the available models available to select.
◦ Preapproved: List of preapproved models to select.
◦ Pinned: Models that you have pinned from the Models and Preap­
proved tabs.
◦ All: All models are available to select.
As a user with the sn_change_write role, you can create a standard, nor­
mal, or an emergency change from an incident or a problem.

From an incident
or a problem

From an existing
change record

a. Open the incident or problem.
b. Right-click the form header and select Create Normal Change, Create
Standard Change, or Create Emergency Change.
If the administrator enabled the change request copy option, you can
create a new change by copying an existing change record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
Option

Description

a. Open the change record that you want to copy.
b. Click Copy Change.

Note: If the create task workflow sets the create_from field in the
[change_task] table to workflow, manually created tasks from the
existing change record are copied.

2. On the form, fill in the fields.
Change Request form
Field

Definition

Number

Change request number.

Requested by

User who requested the change. This field is available in the
Change Requests list view, so that you can see who requested a
particular change.

Category

Category of the change, for example, Hardware, Network,
Software.

Service

Business service that you want to make available for the change
request.

Note: If you select a business service as the configuration
item and that business service is also listed as the
configuration item in any other active task, the active tasks
icon ( ) appears. Click this icon to view the list of all the
other active tasks that are affecting the business service. You
can view the BSM map (dependency view) of the selected
business service by clicking the dependency icon (
Service Offerings

Configuration item

).

Consists of one or more service commitments that uniquely define
the level of service in terms of availability, scope, pricing, and
packaging options. You can choose to receive different levels
of performance and features for a given service through service
offerings. You must select a service to filter the available service
offerings.
Select Add to add a CI for the change. You can add a CI for a
change in New state only.
CI that the change applies to. Change requests can be associated
with any type of CI, including service offerings, providing detailed
access to SLA and availability requirements.
When you select a dynamic CI group, all the configuration items
related to the selected dynamic group will be populated in the
Affected CIs related list. In the Affected CIs related list, you can also
manually add and delete the dynamic CI groups. When you add
a dynamic CI group, all the related CIs are added, and when you
remove a dynamic CI group, the related CIs are removed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
Field

Definition

After selecting a CI, you can click the health dashboard icon (
view the CI health details.

) to

Note: By default, Service Offering is filtered out and CIs
with Principal Class are selected. The Principal Class filter
functionality is applicable to new customers starting the Paris
release.
See Refresh impacted services properties
Priority

Priority is based on impact and urgency, and it identifies how quickly
the service desk should address the task.

Risk

Risk level for the change.
The Risk value is -- None -- until you define it as High, Moderate,
or Low. You can also use Risk Calculation and Risk Assessment to
drive the risk value of the change.

Impact

Impact is a measure of the effect of an incident, problem, or change
on business processes.

Model

Change model being used for the change request.
For information about Change models, see Change models.

Type

The type of change request. The field displays Model if the Change
model has not been configured with a defined Type. This field is
read-only.
For information about creating Change models, see Create a
Change model.

State

State of the change request. The default state is New.

Conflict status

Status that indicates whether there is a conflict for this change or
the conflict is not run.

Conflict last run

Date and the time when the conflict was last run.

Assignment group

Group who will work on the change request.
The business rule Populate Assignment Group based on
CI/SO populates the Assignment group field available for the CI or
the service offering consecutively.

Note: The business rule is triggered when a change request
is created or updated and when the Assignment group and
the Assigned to fields are empty.

If you want to override the default value, you need to create new
properties and provide the field in the property value that must be
used to populate the Assignment group field. Create the properties
in the following order of preference:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
Field

Definition

◦ com.snc.change_request.ci_assignment_group.field_name:
Identifies which CI field populates the Assignment group field.

◦ com.snc.change_request.service_offering_assignment_group.
Identifies which service offering field populates the Assignment
group field.
Assigned to

User that the change is assigned to. If an assignment rule applies,
the change is automatically assigned to the appropriate user or
group.

Short description

Summary of the change.

Description

Detailed description of the change.

3. To plan the change, click the Planning tab and enter information.
This information is critical for change approvers.
4. Click the Schedule tab.
a. Enter as much information about the scheduled dates as you have.
Some of the fields are available for normal or emergency changes only because standard
changes are preapproved.

Note: For normal or emergency changes, enter the planned start and end dates
and actual start and end dates manually. Populate the actual start and end date fields
during the Implement state as the assignee begins and completes the work.
b. If the form is configured to show the CAB required check box, select it to indicate that CAB
approval is required before implementation.
The CAB date field in the change request is automatically updated with the date in the
Meeting start time field of the CAB meeting form.
c. If there is an unplanned CI activity, select the Unauthorized check box to determine if the
change is an unauthorized change.
For more information, see Unauthorized change request.

Note: This check box is available only for emergency change requests.
d. If the form is configured to show the CAB delegate field, select the user who attends the
CAB meeting to describe the change.
e. In the CAB recommendation field, enter notes or recommendations related for the CAB
meeting.
5. Click the Conflicts tab.
6. To detect change conflicts, click Check conflicts.
7. Right-click the form header and click Save.
8. Review entries in the related lists and modify the entries as appropriate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
Default Change Request related lists
Field

Description

Affected
CIs

List of CIs (from the CMDB) affected by the change. You can associate multiple
affected CIs with a change.

Impacted
services/
CIs

List of CIs, such as business services or from other CI classes, that are impacted
by the affected CI in the change. You can associate multiple impacted CIs with a
change.

Service
Offerings

List of service offerings affected by the change. You can associate multiple
service offerings with a change. This related list is available only when a service
offering is selected.
If there are service offerings associated to the Impacted Services, then refresh
the Impacted services/CIs related list to view the offerings.

Note: If you have customized the default view of your form or related list
prior to the Paris release, you cannot see the field or the related list by
default. Modify the form to add them manually.
Approvers This list is automatically generated from the workflow. You can also view the
Group of approvers assigned to the task.
Change
Tasks

The list of tasks can be created from a workflow. The default workflow generates
tasks in the Implementation state. You can also create a new change task. The
Planned start date and Planned end date in task type Implementation must fall
within the planned start and end dates specified in the change request.

Problems

If the change was generated from a problem, this list is generated automatically.

Incidents
Fixed by
Change

List of incidents that require the change for resolution.

Incidents
Caused
by
Change

List of incidents caused by the implementation of the change.

CAB
Agenda
Items

List of agenda items and details of respective items. For example, the meeting
start and end time, allocated time for the meeting, state of the meeting, and the
decision made for that agenda item.

Note: The CAB Agenda Items related list is not shown on the form when
the list is empty. This feature is available only for Jakarta instances.
9. When the change request is ready to move to the next state, click Request Approval.
The state is moved forward based on the type of change request:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
◦ Assess state: Group level approval for a normal change request. Approval records are
automatically generated based on the Assignment group. You can conduct peer and
technical reviews of the proposed change.
◦ Authorize state: An emergency change request.
◦ Scheduled state: Pre-approved standard changes.

Note: To mail the change record, click the more options icon (

) in the content frame
and select Email. Both the user who requested the change and the user who is assigned
to the change are automatically populated in the list of recipients.
To view the calendar, click View Calendar in the title bar of the Change Request form.

What to do next

Process a change request
Related topics
State model and transitions
Place a change request on hold
Conflict calendar
Create a change request from a configuration item (CI)
Create a change request from a list of configuration items (CIs), or add selected CIs from a list to
a change record.

Before you begin

Role required: itil, admin, or sn_change_write

Procedure
1. Select a list of CIs.
For example, navigate to All > Configuration > Servers > Unix.
2. Select one or more CIs from the list.
3. Select one of the following options from the Actions list.
Option

Description

Add to existing Change Request

Select this option to associate the CIs with an
existing change request.

Add to new Change Request

Select this option to associate the CIs with a
new change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
Note: CIs with a Business Service CI class are added to the Impacted Services/CIs
related list on the change request. The remaining CIs are added to the Affected CIs
related list.
Depending on your selection, either an existing change requested is updated with the
selected CIs or a new change request record is created with the selected CIs.
4. Continue to create or modify the change record as required.
Create a standard change request from the catalog
You can create a standard change request from the published standard change catalog
templates.

Before you begin

Role required: itil, admin, or sn_change_write

Procedure
1. Navigate to All > Change > Standard Change > Standard Change Catalog.
2. Select one of the following options depending on the type of standard change you want to
create.
Option

Description

Network Standard Changes

Create a standard change request for the net­
work.

Server Standard Changes

Create a standard change request for servers
and attached storage.

3. Select a template from the Items section.
Example
For example, Add network switch to datacenter cabinet in the Network Standard Changes >
Items section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
When you select the catalog item, a standard change is created. The Change Request form is
displayed with values from the standard change template.
4. Complete the form with additional information you have.
Example
For example, add the Configuration item and the Assignment group.
5. Open the form context menu and select Save.
6. Complete any information in the related lists that apply to the standard change request.
7. Select Update.
Copy a change request
You can copy details of an active or canceled change request to a new change request.

Before you begin

Role required: itil, admin, or sn_change_write

About this task

The administrator configures which of the following items are copied to the new change request.
• The content that is copied.
• The attributes or fields and values that are copied. All non-copied attributes are reset to default
values.
• The configured related tables that are copied.

Note: You cannot copy change details from a standard change.
New change tasks can be created when a change is copied. If your change record has
associated workflows that create change tasks, then these change tasks may not be copied
because the workflow creates them. Only manually created tasks are copied, if the workflow
when creating the task sets the created_from field on the change_task table to workflow. The
created_from field has a default value of manual.

Procedure
1. Navigate to Change > Open.
2. Select the change request to be copied.
3. Right-click on the header and then click Copy Change to copy change details.
A preview of the new change record appears with values from the original source change
record.
4. Edit values on the newly created change record, as appropriate.
5. Click Submit to create a new change request record.

What to do next

After an existing change request is copied and a new one created. A user with ITIL role then
reviews, approves, implements, and closes the change request as necessary.
In addition, you can associate CIs to the newly created change request.
Related topics
Configure ability to copy a change request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
Create a change task
You can create change tasks for a change request. A change task is a piece of work related to the
change request. For example, there can be tasks to plan the change, implement the change, and
test, and review the work.

Before you begin

Role required: itil, admin, or sn_change_write

About this task

Change tasks can be created manually or from a workflow. The Change Request form has a
Change Tasks related list, which includes all manual and workflow change tasks. From this
related list, you can edit existing tasks or create tasks. Workflow change tasks are generated
automatically in Review task type.

Procedure
1. Navigate to All > Change > Open.
2. Select the change request to add a change task.
3. In the Change Tasks related list, click New.
4. Fill in the fields, as appropriate.
Change Task form
Name

Definition

Configuration The configuration item (CI) or service that the change task applies to.
item
Planned start The date you plan to begin working on the task.
date
Planned end
date

The date the change task is planned to be completed.

Type

The type of change task, Planning, Implementation, Testing, or Review. The
default workflow generates tasks in type Review.

State

The state of the change task:

If the task type is Implementation, the Planned start date and Planned end
date values must fall within the planned start and end dates specified in the
change request.

◦ Pending: Open and unassigned
◦ Open: Open and unassigned
◦ In progress: Open and actively being worked on
◦ Closed: Inactive and closed. Requires close code and close notes to be
provided.
◦ Canceled
On hold

The On hold check box indicates whether the change task is on hold. Provide
an On hold reason if a change task is placed on hold.

Assignment
group

The group that the change task is assigned to.

Assigned to

The user that the change task is assigned to. If an assignment rule applies,
the change task is automatically assigned to the appropriate user or group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
Name

Definition

Short
description

A summary of the task.

Description

A detailed description of the task.

5. To enter work notes for the change task, click the Notes tab.
6. To enter notes on why the task was closed, click the Closure Information tab.
7. Click Submit.
The change task is added to the change request. The assigned user receives a notification that
a task was assigned to them.
Unauthorized change request
Understand how an unauthorized change activity on a configuration item (CI) is captured and
managed, so that you can review and take timely action on this change.
®

®

As part of the ServiceNow Service Mapping integration with ServiceNow ITSM , the Change
Management application receives an event notification when an unauthorized change activity is
detected. As a result, an emergency unauthorized change request is created for the relevant CI.
You can review and approve or reject the unauthorized change from the Change Management
application.

Note: Unauthorized change requests are created only for the CIs that are part of the
application services. Also, there is a flapper algorithm that uses a learning pattern to
minimize false positives.
At times, the discovery process (horizontal or top-down discovery) identifies a change on
a CI property that may not be an actual change by definition. This identification is due to a
measurement error or just a different representation of the same value, such as case sensitivity.
The learning pattern identifies the false positives (flapper changes) and prevents triggering the
recomputation and time-line updates as an emergency change request is a critical action. You
want to avoid false positives and report only real changes.
The learning pattern identifies the false positives as follows:
1. When a CI property associated with a service changes, the new value (CI and field pair) is
logged in the flapper’s data table.
2. The system runs a nightly job and executes various algorithms on the data that is collected to
identify patterns that point to false positives.
3. The system runs all the relevant strategy predicates for the changed CI fields with a
confidence level greater than 90%. This step determines whether all the new values are false
positives or not. If all the new values are false positives, then the change is ignored, and the
model is not updated.

Note: If the CI is associated with an active change request, then this step is skipped.
An unauthorized change request is created when an unplanned CI change activity occurs, and
the system triggers the following checks:
• The system checks to see if the CI is part of the allowed CI classes. If it is allowed, then the
system checks to see if this specific CI has been flagged previously. If it was flagged and the
previously created unauthorized change was within the notification ignore period, then no
further action is taken. If not, then further checks are made to see whether this CI is associated
to a change request that matches the condition stated in the properties. If not, then the change
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
to the CI that was detected is flagged as unauthorized and a ci.change.unplanned event
is raised.
• On receipt of the ci.change.unplanned event, the script checks to see if the Enable
event processing field is true. If it is true, then an unauthorized change request is created. By
default, this property is false.
The ci.change.unplanned event that is generated automatically triggers the creation of an
Emergency type change request.
With the help of the following details that are pre-populated on the form, you can identify and
review the unauthorized change:
• The Unauthorized option is selected. This option indicates that the change is an unauthorized
change.
• The Assignment group field is populated with Change Management.
• The Configuration item field is populated with the item that the unauthorized change was
made for.
• The Description field is populated with the information on the changed fields of the change
request.

An email notification is sent to the Assignment group, CI Item managed by, Owned by, and
Assigned to members for review and approval. However, if there are many CI changes and
there are no open change requests created to include the CIs, the system creates unauthorized
change requests on these CIs. When this event occurs, the members receive numerous
unauthorized change notification emails. In such a case, you can choose to disable these
notifications. For more information, see Disable unauthorized change notification.

Note: Email notifications are sent only when there is an unplanned change on the CI that
is part of an application service (discovered or manual service).
After this change request is approved, the state changes to Review and the regular process is
followed to close the request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
Assign post-implementation review
When a change is implemented without approval, post-implementation review is necessary to
evaluate the risk and impact of the unauthorized change.
After the unauthorized change is approved, a change task is created with State field as Review.
This change task is assigned to the Change Management group with the Short description field
as Post Implementation Review. The assigned members who receive the notification can review
and close the change task.

Modify the unauthorized change setting
As a change manager, you can clear the Unauthorized check box to convert the unauthorized
change request to an emergency change request. When you clear the check box, enter the
reason for this modification in the Work notes field.
If you are an ITIL user, clear the Unauthorized check box by creating an outage from the task
record with the Type field specified as Outage. For more information, see Create an outage
from a task.

Note: When there is an unauthorized change without an outage record associated, then

the state flow moves from Authorize to Review and skips the schedule or implement state.
The state changes because the implementation has already happened for this change.
Disable the creation of an unauthorized change request
You can choose to disable the generation of unauthorized change requests that you receive
on any unauthorized change event. When a configuration item (CI) that is part of an application
service is updated, the system identifies this update and verifies whether the updated CI is part
of an open change request.

Before you begin

Role required: admin or change_manager

About this task

If the updated CI is not part of an open change request, then the system triggers a change
request, and sends a notification. The Change Management application uses this event to create
an unauthorized change. If there are many CI changes with no open change request created
to include the CIs, then the system creates unauthorized change requests on these CIs. When
this event occurs, numerous unauthorized change requests are triggered, and notifications are
sent to the members of the group. To avoid this situation, you can disable the Enable event
processing property before you perform the updates. For more information on additional
unauthorized change properties, see Unauthorized change properties.

Note: Enable the property when you finish your updates. If this property is disabled,
unauthorized change requests are not created.

Procedure
1. Navigate to All > Change > Administration > Unauthorized Change Properties.
2. Clear the Enable event processing property check box.
3. Click Update.

Result

The creation of an unauthorized change request is disabled, and no notifications are sent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

392


<!-- page 393 -->
Unauthorized change properties
Use the Unauthorized Change Properties page to enable or disable the unauthorized change
capability, and to configure the criteria for additional unauthorized change properties.
From this properties page, you can control the capabilities, such as:
• Enabling or disabling the creation of unauthorized change requests when receiving the
ci.change.unplanned event.
• Configuring the type of change requests, which are valid, and fall into the unauthorized change
category.
• Configuring a quiet time, whereby, if there is a repeated change to a CI that has been flagged
previously, another unauthorized change is not created within that time period.
• Configuring the interval frequency for detection.
• Including a CI class for the change request that must be monitored.

Note: Monitored CIs must be part of an application service.
Navigate to Change > Administration > Unauthorized Change Properties to view and edit the
properties.
Unauthorized change properties
Name

Description

Enable
Enable the property to create unauthorized change events when an unplanned CI
event
change (ci.change.unplanned) event is triggered.
processing
Default value: False
Notification Enter the time duration until which you want to disable sending notifications or
ignores
creating unauthorized changes for the same CI.
period
Default value: 1 day
Change
request
query

Add the query conditions to define what change requests are valid and belong to
the unauthorized change category. For example, you can add a condition to view
all active change requests that are in the implement or review state for the given
CI. If the conditions given are not met, then the change becomes an unauthorized
change.

CI class
inclusion

Choose the CI classes that you want to include and monitor for an unauthorized
change to be created.

Process a change request
You can approve, implement, review, and close a change request.

Before you begin

Role required: itil, admin, sn_change_write, or change_manager
As part of processing a change request, ensure that you have detected any change conflicts and
performed risk assessment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


<!-- page 394 -->
Procedure
1. Navigate to All > Change > Open.
2. Select a change request you like to work upon.
3. You can perform the following actions on a change request based on your role.
Option

Description

Open the approval record and click Approve
to approve the change request or Reject to re­
ject it.
Approve or reject a change request

The change request changes to the Sched­
uled state if it is approved or to New state if it
is rejected.
Click Implement to put the change request in­
to action.

Implement a change request

The change request state changes to Im­
plement. The workflow creates two change
tasks: Implement and Post-implementation
testing. Review the change tasks and assign
them to a user or group, as appropriate.
Click Review after reviewing the details on
the change request.

Review a change request

Close a change request

The change request is moved to the Review
state. All open change tasks are set to Can­
celed.
Click Close after entering the Close code and
Close notes in the Closure Information sec­
tion.
The change request is closed.
From the context menu, click Cancel Change.
Provide a reason for canceling the change
and click Save.

Cancel a change request

The change request is canceled and the rea­
son for canceling the change is added to the
Work Notes field.

Note: Manually created change tasks are not automatically closed or cancelled when
state is changed from Implement to Review. You must first close the change tasks and to
close the change request.
Users with approval_user role, who approve change requests, do not have access to the
change request itself. The following information are made available within the approval record
to help these users make the right approval decision:
◦ Number
◦ Requested by
◦ Configuration Item
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

394


<!-- page 395 -->
◦ Type
◦ Planned Start Date
◦ Risk
◦ Planned End Date
◦ Impact
◦ Short Description
◦ Description
◦ Justification
◦ Implementation plan
◦ Risk and impact analysis
◦ Backout plan
You can also add approval history to the change request activity log. Click the activity filter icon
and select Approval history from the list. When there is a change in the approval process,
such as an approval, rejection, or comments, the activity log is updated.
Related topics
Create a change request
Associated CIs on a change request
You can associate additional CIs or services to change requests through related lists on the
Change Request form. You can also associate CIs with a change request from the dependency
views map.
The Affected CIs and Impacted Services/CIs related lists enable you to manage CI changes.
When you first access a change request and work with these related lists, you can identify CIs
across CI classes using configuration class. You can change the configuration class manually to
filter the list and narrow the selection of CIs. For example, to filter for Linux servers only, select
Linux Servers as the Configuration Class.
You can also create and save filters to provide quick access to common CI searches. The next
time you access the change request, the Configuration Class field displays the last associated
CI class. This automatic filter ensures that relevant CIs are displayed.
After identifying the CIs affected by a change request, you can add them to the Affected CIs
related list on the change request. After saving affected CIs, you can open the form context
menu and select the Refresh Impacted Services option. This option populates the Impacted
Services/CIs related lists based on the primary CI i.e. the CI that is mentioned on the form.
The Impacted Services/CIs and Service Offering related lists represents a many-to-many
relationship between the Task [task] and CMDB [cmdb_ci] tables. The related list displays CIs,
such as business services or other CI classes, and the offerings that are impacted. You can
add this related list to any task form such as an incident or problem form. You can also enter the
details of the impacted services and the service offerings manually, as required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

395


<!-- page 396 -->
Note:
• The manually added CIs are not deleted each time the impacted services are refreshed.
However, business services related to the CIs are displayed on the Impacted Services/
CIs related list.
• Refresh Impacted Services was only available for Change Request table. From this
release, it is available for tables that extend the Task table. The list of these tables is
driven by the com.snc.task.refresh_impacted_services property. This UI
action populates the Impacted Services/CIs related list based on the primary CI i.e. the
CI that is mentioned on the form.
• The Impacted Services list includes application services discovered by Service Mapping.
Add affected CIs to change requests using dependency views
You can use dependency views to identify dependent CIs affected by a change request, and
then add them to the Affected CIs related list.

Before you begin

Role required: itil, sn_change_write, or admin

About this task

When a change request is associated with a configuration item, the change record becomes
accessible from dependency views. Services affected by the change request are easy to assess
in dependency views.
If not visible, the administrator can configure the change request form to display the Affected CIs
related list.

Procedure
1. In the change request, click the dependency views icon next to the Configuration item field.

Note: If there are critical change requests attached to a CI for a database, the map
includes the business services that rely on that database. The database icon has a
blinking glyph on the lower left edge that indicates any issues with the node.
The configuration item is displayed in the map with all dependent CIs.
2. Click the down arrow next to the CI to display a list of tasks and issues with the CI.
The list may contain one or more change requests, and follow-on audit tasks. You can open
each record from this list.
3. Click the task number to display the complete list of tasks attached to this CI.
You can view the user assigned to the change and also open the record for more information.
4. To change the map configuration, select a format from the Layout field or use the filter panel to
filter the map.
The dependency views map highlights the affected CIs that depend on the database or other
CI.
5. To add an affected CI to the change, click the arrow next to the highlighted node and select
Add Affected CIs.
6. Reload the change request form.
You can view the CI you added in the Affected CIs related list.
Related topics
Dependency Views

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

396


<!-- page 397 -->
Associate multiple CIs with a change request
You can associate multiple impacted or affected CIs with a single change request.

Before you begin

Role required: itil, change_manager, sn_change_write, or admin

About this task

Use the Configuration Item > Configuration > CI Class Manager.
In the Affected CIs related list, a new filter is added for the Principal Class. You can control this
functionality by the system property com.snc.task.principal_class_filter. The
property contains all the task types where the Principal Class filter is applied to.
When you create a change request, you can add multiple CIs to that change request using the
Affected CIs or Impacted Services/CIs related lists in the change record. Affected CIs can be
added only when the change request is in the New state.

Procedure
1. Navigate to All > Change > Open and select a change request record.
2. In either the Affected CIs or Impacted Services/CIs related list, click Add.

3. Select the appropriate CIs from the list of CIs displayed in the pop-up window.
The pop-up window for the Affected CIs list is filtered for the configuration class of the last
added CI. This automatic filter ensures that relevant CIs are displayed. You can change the
class to list other CIs, if appropriate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

397


<!-- page 398 -->
The Impacted Services/CIs pop-up window lists all CIs and provides standard filtering
options. You can also save any filters you create to provide faster access to common CI
searches.
4. Perform one of the following actions.
◦ Select the CIs to add and click Add Selected to add the selected CIs to the change request.
◦ Click Add All to add all the CIs in the list to the change request.
Related topics
Mass Update CI
Add an affected CI with a calculated application service
From the change request form, you can add an affected CI that is associated with a calculated
application service.

Before you begin

Role required: itil, sn_change_write, or admin

Procedure
1. Navigate to All > Change > Open.
2. Select a change request to add affected CIs to.
3. On the Change Request form, scroll to the Related Links section.
4. Click the Affected CIs tab and then click Add to add an affected CI to the change request.

Note: You can export the Affected CIs in an excel. Right click on the change request and
open in a new window. Right click on Configuration Item, and select Export Excel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

398


<!-- page 399 -->
5. Open the form context menu and click Refresh Impacted Services.
6. Click the Impacted Services/CIs tab to see any dynamic services that are associated with the
affected CI and that are impacted by the change request.
Mass Update CI
The Mass Update CI plugin enable users to apply the same update to a set of CIs for a specific
CI class. The Change Management - Mass Update CI plugin is intended to be used when the
Change Management - State Model plugin is activated.
To use these features, activate the Change Management - Mass Update CI plugin.

Note: This feature is available for normal and emergency changes only.
When you activate the Change Management - Mass Update CI plugin, the Mass update CI class
check box appears on the Change Request form. When selected, the Mass update CI class
tab appears and allows changes to be proposed against the configuration items that match that
class associated with the affected CI’s related list in that change.
When the change moves to the Implement state, the required update for each CI related to the
Change Request is created. These updates can then be applied in the Implement or Review
state.

Note: You cannot add or delete a CI when the change request in the In-progress state
and is not approved.
Related topics
Activate Change Management - Mass Update CI
Associate multiple CIs with a change request
State model and transitions
Configure a form
Use Mass Update CI
You can use the proposed changes in a change request to apply the same update to a set of CIs
for a specific CI class.

Before you begin

Role required: itil, sn_change_write, or admin

About this task
Procedure
1. Navigate to All > Change > Create New and select Normal or Emergency change.
2. Select the Mass update CI class check box.
The Mass update CI class tab or form section appears.
3. On the Mass update CI class tab, select the CI class to update.
The dynamic CI group is not available for selection. When using mass update, a specific CI
class must be selected and not a group that may have different CI classes.
The parent CMDB [cmdb_ci] table is selected by default. Search for the class name, for
example, enter linux or email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

399


<!-- page 400 -->
Note: If you have selected a dynamic CI group for the Configuration item field, the
configuration items that are part of the dynamic group and belong to the selected CI
class are updated. For example, if the dynamic CI group that you have selected consists
of Linux servers, computers, and network switches, and you select Linux servers for
the CI class with proposed changes, only the Linux servers in the dynamic group get
updated.
4. Enter the proposed changes that you want to make to all the affected CIs.
Each time that you select a field and value, another line appears. If you enter a proposed
change in error, click the X beside the line to remove it.
5. Click Submit.
6. Open the change request you submitted.
7. In the Affected CIs related list, click Add.
The Add Affected Configuration Items window that opens lists only the CIs in the selected CI
class.
8. Select one or more CIs and click Add Selected, or click Add All.
If you change the CI class after selecting affected CIs, the list is cleared when you save the
record.
9. Continue with the change management process for this change request.
10. When the record reaches the Implement or Review states, click Apply Proposed Changes.
A message appears informing you that the proposed changes were applied to all the affected
CIs.

Note: If you are using the Bulk CI Change without Mass Update CI feature, then the
proposed changes are applied when the change request is closed.
Related topics
Mass Update CI
Activate Change Management - Mass Update CI
Create a change request
Place a change request on hold
You can put a change request on hold to get additional information for the created change
request.

Before you begin

The following plugins need to be activated to avail the synchronization of the On Hold
functionality between change task and change request:
• Change Management — Core [com.snc.change_management]
• Change Management — State Model [com.snc.change_management.state_model]
Roles required: itil, admin, sn_change_write, or change manager

About this task

Change tasks inherit some state conditions from the parent change request they are related to.
When a change request is placed on hold, these conditions are applied to it:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

400


<!-- page 401 -->
• If the change is waiting for approval, the pending approvals are marked No Longer Required.
When the change request is no longer On Hold, the pending approvals are reinstated and are
Awaiting approval.
• The change can progress only to the Canceled state while it is On Hold.
• If a change request is canceled while it is On Hold, then its On Hold flag is set to false so the
change cannot be canceled and still be On Hold.
• If the change request is set to On Hold, the value of the On Hold field for all the active change
tasks for that change request is set to true and the On hold reason is copied from the change
request to the change tasks.
• If you clear the On Hold check box in a change request, the On Hold field for all the active
change tasks for that change request is set to false and the On hold reason is cleared from the
change tasks.
• If the change request is canceled, all the active change tasks related to that change request
are also canceled.
• A change request can only be closed when all the active change tasks related to that change
request are closed or canceled otherwise a pop-up appears notifying that there are open
change tasks that require to be closed.
• If there are existing change tasks that are manually placed on hold, those change tasks do not
get overwritten when the change request is placed to the On Hold state. Similarly, when the
change request is taken off the hold state, the change tasks that were placed on hold manually
stays in the On Hold state.

Procedure
1. Navigate to All > Change > Open.
2. Open the specific change request.
3. Select the On Hold check box.
4. In the On hold reason field, enter the reason for placing the change request on hold.
5. Click Update.
Related topics
State model and transitions
Create a change request
Refresh impacted services and CIs for Change
The Impacted services and CIs related list refreshes its records and also the records listed in
the Service Offerings and Business Applications related lists based on the affected CIs. You can
identify the impacted services and CIs and take necessary action.

Before you begin

Role required: itil, change_manager, sn_change_write, or admin

About this task

Refreshing impacted Services on a change request form is executed in one of the following ways:
• Conflict detection: When a conflict detection is triggered, refreshing of impacted
services may be initiated. The Automatically include business or application services
related to Cis with conflicts in the Impacted Cis/Services related list property
(change.conflict.populateimpactedcis) controls whether the Impacted Services/
CIs related list should be refreshed or not. If this property is enabled, then a call is made to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

401


<!-- page 402 -->
the ChangeUtils script include calling a refreshImpactedServices method for the
current change request.
• Automatically when the change request moves from the new state: Impacted services are
refreshed when the change request moves from the new state and when the Affected CIs
related list is not modifiable.
• Manually when selecting the Refresh Impacted Services option from contextual menu.

Procedure
1. Navigate to All > Change > Open.
2. Open the change record for which you want to refresh the related lists those values are based
on affected CIs.
3. Click the Additional actions icon
and then select Refresh Impacted Services.
The records in the Impacted Services/CIs, Business Applications, and Service Offerings
related lists are updated according to this flow:
◦ If the change.refresh_impacted.include_affected_cis property is set to
true, all the services from svc_ci_assoc table are retrieved. If the property is set to false, then
services are retrieved from CIUtils script include.
◦ If the change.conflict.populateimpactedcis property is set to true, then
additional services are retrieved from ChangeCollisionHelper and added to the list of
services.
◦ If the Service Mapping plugin is active, then Application Services are retrieved. These are
retrieved, whereby, the association type is Runs On, and the association child is one of the
CIs in the affected list.
Once all these services are correlated, a new list is added, and the existing items in the
related list are removed, where the manually_added flag is set to false. The list of services is
then used to populate the Business Applications and Service Offerings if the properties are
enabled.
Refresh impacted services properties
Use the refresh impacted services properties to enable or disable the refresh impacted services
capability, and to configure the criteria for additional refresh impacted services properties.
By configuring these properties, you can control the capabilities, such as:
• Include the primary configuration item or all the items in the Affected CIs related list.
• Processing of refreshing the impacted services as an event.
• Populate Service Offerings and Business Applications from the Impacted Services related list.
The following properties can be found in sys_properties.list and on the Change properties page.
Refresh impacted services properties
Property

Description

com.snc.change_request.refresh_impacted.include_affected_cis
• When true, all the configuration items listed
in the Affected CIs related list are checked.
These configuration items are checked
against the Application services mapping
table (svc_ci_assoc) as this is a faster
process, and also returns a more concise
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

402


<!-- page 403 -->
Refresh impacted services properties (continued)
Property

Description

relationship picture. All the services from
svc_ci_assoc table are retrieved.
• If the property is false, only the CI on the
change form is used. This uses the method
of traversing the cmdb tree structure to find
the services. The services are retrieved from
CIUtils script include.

Note: If dynamic CI groups are used
on the Change form, then this property
must be set to true as the associations
are located in the svc_ci_assoc table.
When a business service is converted to an
application service (as an example), all the
levels included in the svc_ci_assoc table are
considered at the time of conversion.
change.conflict.populateimpactedcis

If this property is set to true, then the
ChangeCollisionHelper script
include checks the configuration items
that have been identified in the list of
conflicts against the Application services
mapping table (svc_ci_assoc) and also table
(cmdb_ci_service) to check if there are any
business services that are directly impacted.

com.snc.change_request.refresh_impacted.event
• When true, the process of refreshing the
impacted services is done through an event.
This process is run in the background and
you will be notified through a message in
Notify that the process has been complete.
• When false, this is run in your session. As
this is not run in background, there is no
notification on completion.
com.snc.change_request.populate_service_offering
• When true, the Service Offerings related list
is populated from the Impacted Services/
CIs related list.
• When false, the related list is not populated
or amended in any way.
com.snc.change_request.populate_business_application
• When true, the Business Applications
related list is populated from the Impacted
Services/CIs related list.
• When false, the related list is not populated
or amended.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

403


<!-- page 404 -->
Refresh impacted services properties (continued)
Property

Description

com.snc.change_request.refresh_impacted_services.message.show
• When true, the Refresh impacted
services is initiated message
appears on the Change request form.
• When false, the Refresh impacted
services is initiated message
doesn't appear.

Creating change approval policies
Use the change approval policy to create change approval definitions and the change approval
policy workflow to control the approval process for a change request.
Create approval definitions
Use approval definitions to define a set of criteria that are evaluated automatically before the
policy is marked as approved.

Before you begin

In the approval definitions, you can define to determine
• If the approval is user or group based.
• If it should automatically approve or reject on behalf of a user.
• If a response to the approval is required.
Role required: change_manager or admin

Note: Approval definitions can be applied only once if multiple applied decisions have the
same approval definitions associated with them.

Procedure
1. Navigate to All > Change > Change Policy > Approval Definitions.
2. Click New.
3. On the form, fill in the fields.
Field

Description

Name

Indicates the name of the approval definition.

Mandatory

When checked, indicates if the Change Ap­
proval Policy must wait until there is a re­
sponse from the approval generated by the
definition.
Allows you to choose the type of the approval
record to be created.

Approval action

◦ Approve: Generates an approval record
with the state set to Approved. Assign the
user to associate with the record in the
User field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

404


<!-- page 405 -->
Field

Description

◦ Reject: Generates an approval record with
the state set to Rejected. Assign the user to
associate with the record in the User field.
◦ Add a user approval: Adds an approval
record for the user specified in the User
field.
If the approval is necessary before the
policy is approved, select the Mandatory
check box.
◦ Add a group approval: Adds approval
records for the members of the group listed
in the Group field.
If the approval is necessary before the
policy is approved, select the Mandatory
check box.
When the Add a Group Approval
action is selected, the Wait for field deter­
mines when an approval action should be
considered met.
Allows you to select the source of the user or
group approver.

Approver source

◦ Approval Definition: enables the selection
of a specific user or group.
◦ Change Request: enables the user or
group to be determined dynamically
through a reference field from the change_­
request table.
Determines the approval timing.
◦ First response: waits for the first response
from the group.
◦ All responses: waits for all responses from
the group. All members of the group must
approve for the approval decision to be ap­
proved.

Wait for

◦ Percentage of users: Set a percentage of
users required for approval in the Percent­
age field. The possible values are:
▪ Empty: The first response satisfies the ap­
proval decision.
▪ Less than or equal to 0%: The first re­
sponse satisfies the approval decision.
▪ Greater than or equal to 100%: All re­
sponses are required.
▪ Between 0 and 100%: The specified per­
centage of response is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

405


<!-- page 406 -->
Field

Description

Note:
The percentage is rounded to the near­
est integer. 2.49 would round to 2, where­
as 2.5 would round to 3.

Note: When adding users or groups to which you want to send the approval, specify the
Approval Definition value as Approver Source.
4. Click Submit.
Create change approval policies
Use a change approval policy to define approvals that should be generated for your change.

Before you begin

Role required: admin or change manager

Procedure
1. Navigate to All > Change > Change Policy > Change Approval Policies.
2. Click New to create a new approval policy.
3. Enter the Name of the policy.
4. In the Execution field, select an option to determine the approach to execute your decision.
◦ First decision that matches: Uses the first matching decision in the ascending order of the
value defined in the Order column of the Decisions list. The associated approval definition is
applied.
◦ Run all decisions that match: Uses all matching decision and applies the associated
approval definition.
5. Click Submit.
6. Select the policy you created.
7. Add your decisions to the policy and click Submit.

What to do next

To add additional policy inputs and decisions, see Create Policy inputs and Create Decision
records..
Create policy inputs
Policy inputs are variable sources that you can use while evaluating a decision to determine the
approval action. You can create multiple policy inputs to evaluate the decision created, and also
access the change request table and any table change request references.

Before you begin

Role required: admin or change manager
You can create multiple policy input types. By default, the change_request policy input of type
Reference is available for all change types. This policy input provides access to the change
request table and to any table change request references. For a normal change policy, an extra
manager_approved policy input of type True/false is available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

406


<!-- page 407 -->
To define additional policy inputs, perform the following steps:

Procedure
1. Navigate to All > Change > Change Policy > Change Approval Policies.
2. Create a change approval policy or open an existing policy.
For more information, see Create change approval policy
3. In the Policy inputs tab, click New to create a record.
The Name and Application fields are auto-populated.
4. Click the reference lookup icon for the Type field and choose a Type value.
5. Enter a name in the Label field.
The column name for the new record is populated in the Column Name field automatically.
6. Depending on the value of the Type field, you can configure the other parameters for the policy
input.
7. Click Submit.

What to do next

After you create a policy input, reference it within a decision.
Create Decision records
Decision records contain the conditions that you can use to determine the change approval
action. Create decisions using condition builder when creating change approval policies.

Before you begin

Role required: admin or change manager
You can create decisions to evaluate conditions that reference policy inputs and apply the
associated approval definition. To create a decision, perform the following steps:

Procedure
1. Navigate to All > Change > Change Policy > Change Approval Policies.
2. Create a change approval policy or open an existing policy.
For more information, see Create change approval policy.
3. In the Policy inputs tab, create a policy input or update an existing record.
For more information, see Create a decision.
4. In the Decisions tab, open the default decision record.
5. Copy and modify the decision record configuration or click New to create a new decision
record.
6. Provide a label in the Label field.
7. In the Answer field, select an approval definition.
8. Add any necessary filter conditions using the condition builder.
These conditions determine the outcome of the policy. For example, to generate approvals
at the Assess state that trigger an approval definition when risk is low, set the condition to
[Change request.state] [is] [Assess] AND [Change request.Risk] [is] [Low].
9. Click Submit.
Change Approval Policy workflow activity
Use the Change Approval Policy workflow activity to control the approval process for a change
request by creating user and group approvals according to a change approval policy record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

407


<!-- page 408 -->
Multiple activities can be used in a workflow, where each activity can reference the same or
different Change Approval Policies.
Using the current change request and additional inputs defined in the Policy Input script field
in the activity, you can evaluate the Change Approval Policy record, which applies the approval
definitions from matching decisions.

Note: This activity is only available when the workflow runs on a table that extends or is
the [change_request] table.

Results
The activity assigns a result value according to the outcome of the applied policy. The possible
result values are:
• Approved
• Rejected
• Canceled
• Skipped
• Finished

Input variables
Input variables determine the initial behavior of the activity.
Change Approval Policy activity input variables
Field

Description

Approval Policy

The Change Approval Policy that you want to
apply to the change request.

Policy Input

Policy Inputs that are defined on the Change
Approval Policy record. Set additional policy
inputs here.

Finish condition

Determine if the activity should complete
while pending approvals remain. Use this
condition if the workflow is configured to
handle restarting the Change Approval Policy
activity. For example, when the Change
Request goes on-hold.

Condition
The following conditions determine which transition runs after this activity.
Change Approval Policy activity conditions
Condition

Description

Approved Change request is approved when the criteria defined by applied Approval
Definitions is met.
Rejected

Any rejection from applied Approval Definitions will result in the Rejected outcome.

Error

The event or condition that generates an error.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

408


<!-- page 409 -->
Change Approval Policy activity conditions (continued)
Condition

Description

Skipped

If this condition is not configured on the activity, then the Approved condition is
used. This outcome occurs for the following scenarios:
• No decisions from the Change Approval Policy match
• No approvals can be generated from matched decisions

States
The workflow engine uses the activity state to perform the next logical action on the activity.
Change Approval Policy activity states
State

Description

Executing The workflow engine starts the execute function of the activity.
Waiting

The workflow engine ignores the activity until a specific event to restart the activity
is fired.

Finished

The activity finished running. See the result value for the outcome of the activity.

Cancelled This activity, or the workflow that contains this activity, was canceled.
Error

A JavaScript error occurred. Review the logs for error details.

Example
In this example, let us reference the Risk approvals activity in the Change Request - Normal
workflow. In the workflow, the change approval policy factors if the assigned group's manager
has already approved the Change Request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

409


<!-- page 410 -->
You can use this activity to access the risk of the change request of a normal change policy.
When this activity runs, the associated decisions executes the approvals that needs to be
requested.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

410


<!-- page 411 -->
Use the Policy Input field to set up additional inputs. In the given example, the activity defines
the manager_approved property and performs the query to check if an approved record exists
for the approved group's manager.

Note: Ensure that the manager_approved policy input is defined in the Change Approval
Policy record.
The Finish condition field is used to complete the activity by marking pending approvals as
No Longer Required. In this workflow example, when the Change Request is put on-hold,
the Change Approval Policy activity is completed and the workflow disregards the pending
approvals before waiting for the Change Request to resume. When the on-hold state is released,
the Change Approval Policy activity is restarted.
Use the Change Approval Policy workflow activity
Apply your Change Policy in your Change Request workflow to manage the approvals.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Workflow Editor.
2. Open the change request workflow that you want to use in the Change Policy activity.
3. Drag and drop the Change Approval Policy activity from the Change Policy section in the
Core activities tab.

Note: This activity is only available when the workflow runs on a table that extends or is
the change_request table.
4. Configure the activity by specifying the Change Approval Policy in the workflow.
5. Configure the Policy input field to setup inputs that are defined on the associated Change
Approval Policy record.
6. Configure the Finish condition if the workflow needs to handle a scenario where the activity
needs to complete ahead of time because of a change in the Change Request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

411


<!-- page 412 -->
For example, when the change request is on-hold.
7. Click Update.
Use the Apply Change Approval Policy flow action
Apply your change approval policy in the Change Management Workflow Studio action to control
the approval process for a change request. You can create user and group approvals according
to a change approval policy record.

Before you begin

Role required: admin

About this task

This flow action uses the Ask For Approval flow action to apply approvals that are derived from
the Change approval policy. For more information on how to configure approval policies, see
Create approval definitions.
When approvals are being generated, the Ask For Approval action avoids generating more than
one approval for the same user. For example, if the policy requires approval from two groups and
both groups have the same user, then the shared user is notified only once for the approval.

Procedure
1. Navigate to All > Process Automation > Flow Designer > Flows.
2. Select the flow that you want to apply the change approval policy to.
3. Select Action > Installed Spokes > ITSM > Change > Apply Change Approval Policy.
4. On the form, fill in the fields:
Apply Change Approval Policy form
Field

Description

Action Label

Unique label for the action.

Policy [Change Approval Policy]

Policy that you want to apply to your Change
request.

Change Request

Source of the change request required by
the policy. Select this field using the data
pill picker icon (
). Alternatively, you can
select the change request from the Change
Request list.

Due Date

Due date for the approval policy. Select one
of the following options:
◦ None: The approval has no due date.
◦ Approve: Automatically approve the
approval policy on the due date.
◦ Reject: Automatically reject the approval
policy on the due date.
◦ Cancel: Automatically cancel the approval
policy on the due date.

5. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

412


<!-- page 413 -->
Create a Change approval policy using decision builder
Create a change approval policy using the Change approval policy decision builder to define the
approvals that should be generated for your change.

Before you begin

The Decision Builder [sn_decision_design] plugin must be installed.
A change approval policy can be applied to a change request. An approval policy can contain
multiple decisions allowing a single policy to handle every approval required for a change type.
When a decision condition matches, the related approval definition is evaluated.
Role required: admin or change_manager

Procedure
1. Navigate to All > Change > Change Policy > .
2. Select Create new change approval policy.
3. Enter the name of the policy.
4. In the Execution field, select an option to determine the approach to implement your decision.
Option

Description

First decision that matches

Uses the first matching decision in ascend­
ing order of the value defined in the Order col­
umn of the Decisions list. The associated ap­
proval definition is applied.

Run all decisions that match

Uses all matching decisions and applies the
associated approval definition.

5. Select Create & Continue.
6. Select Add an input.
7. On the form, fill in the fields.
Add an input form
Field

Description

Label

Header of the input.

Type

Type of data used for the input.
When the data type is Reference, a new column titled
Reference appears in the form. The reference is the table
associated with the input.
The available input types are:
◦ Choice
◦ Date
◦ Date/Time
◦ Decimal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

413


<!-- page 414 -->
Field

Description

◦ Due Date
◦ Integer
◦ Long
◦ Reference
◦ String
◦ String (Full UTF-8)
◦ True/False
8. Add a condition by selecting Add Condition Column.
9. On the form, fill in the fields.
Add Condition Column form
Field

Description

Condition column label

Label for the condition.

Description

Brief overview of the condition.

Input

Input linked to the condition column.
To evaluate multiple fields, you can add multiple conditions
with the Reference input type.

Table

Data to evaluate

Condition type
Default operator

If the data type is Reference, this field is automatically set to
the name of the reference table.
If the input type is Reference, specifies whether the
condition evaluates a reference record or a field from the
reference table.
Data type selected for the input.
Operator used to evaluate a user-specified value. A default
operator is required for all input data types except for True or
False.

10. Optional: Add more conditions by navigating to the last condition column and the plus icon
(+) or by pointing to a condition column and clicking the plus icon (+).
11. For each condition cell, select an operator and enter a value.
For example, if you wanted to evaluate the change approval policy only for hardware issues,
you could set the condition [Assignment group][is][Hardware].
12. Select the result column, and then select a desired Change approval definition from the list.
13. In the form header, click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

414


<!-- page 415 -->
Result

A change approval policy is created and is evaluated on a change request that matches the
defined condition.

Working with the CAB Workbench
Use the CAB workbench to review and authorize change requests and review recently
implemented changes.
Create a CAB definition
A Change Advisory Board (CAB) definition is similar to a recurring meeting invitation. When you
define a CAB definition, it determines the attributes that are associated with all CAB meetings
generated from that definition.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to All > Change > Change Advisory Board > My CAB Definitions.
2. Click New.
3. On the CAB Definition form, fill in the fields.
CAB Definition form
Field

Description

Name

Name for the CAB definition.

CAB Manager

Name of the user who manages the CAB meetings.

Delegates

Delegate CAB members who can substitute as the CAB
manager during the meeting.

Board Members

Board members who are expected to attend the CAB meeting,
selected from the list of users.

Board Groups

Board groups who are expected to attend the CAB meeting,
selected from the list of user groups.

Rolling Meeting Window

Number of days for which you want to create CAB meetings.

Note: The CAB schedule and related schedules, if any,
determine the number of CAB meetings that are created.
For example, if you have a CAB schedule of once every
week and you enter 28 days in the Rolling Meeting
Window field, then three CAB meetings are created.
CAB Type

Type of CAB meeting this definition is used for.

Time zone

Time zone for the CAB meeting.

Locations

One or more locations for your CAB meetings. For example,
meeting rooms in different offices.

Active

Check box that specifies whether the CAB definition is active.
Clear the check box to deactivate the CAB definition.

Conference Details

Information such as meeting links, passwords, and phone
numbers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

415


<!-- page 416 -->
Field

Description

Agenda Management
Use filter criteria to drive
Change Request date range If selected, helps to choose a time range for the planned start
and end date from Change Request additional condition
instead of selecting specific dates based on meeting
schedule.

Note: The same field is selected for all CAB meetings in
the CAB definition unless individually overridden.
Notification lead time

The advanced notification on the number of agenda items that
needs to be discussed.

Auto Add Agenda Decisions Check box for capturing agenda decisions automatically on
the meeting widget. The agenda decision is captured in the
following format:
(CAB Automation) - <change request number>
- <decision> - <CAB Manager name> <time><AM/PM> <timezone>
Automatically Add Change
Requests

Check box to define the types of change requests that are
automatically added to the CAB meeting agenda.
When you select Automatically Add Change Requests, the
Refresh CAB Meetings related link appears. If you click this
link, search is performed for change requests that match the
value in the Change Request Addition Conditions field. If
there are any matching change requests, agenda items are
created for them and added to the CAB agenda.
If you do not select Automatically Add Change Requests,
then you need to create individual agenda item for the
associated change request for the meeting agenda.

Change Request Addition
Conditions

Condition builder to specify which change requests are added
to the CAB meeting agenda.
◦ Add Filter Condition: Click to add additional filter
conditions, or click AND next to the existing filter condition.
◦ Add “OR” Clause: Click to display the results of multiple
filter criteria in a single list.
◦ Add Sort: Click to define the order of the change requests in
this CAB meeting agenda. The agenda order can be defined
in CAB Definitions or CAB Meetings, and can be based on
one or more fields.

Time per Agenda Item

The time, in minutes and seconds, allotted to discuss each
change request on the agenda. The allotted time can be
adjusted for agenda items before or during the meeting.

Complete Pre-approved
Changes

Check box to mark each pre-approved change request as
Complete in the CAB meeting agenda.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

416


<!-- page 417 -->
Field

Description

Note: Pre-approved changes are automatically marked
as complete so that approvers do not have to review
them. The pre-approved changes are visible in the CAB
Workbench, and can be discussed if necessary.

4. Open the form context menu and select Save.
The Schedule Entries, Related Schedules, and CAB Meetings related lists appear.
5. To set the meeting schedule for your CAB meeting series, complete the following steps:
You can add one or more schedule entries to a CAB definition to schedule the series of CAB
meetings. These schedule entries let you set valid days and times for holding CAB meetings.
a. In the Schedule Entries related list, click New.
b. On the Schedule Entry fields form, fill in these fields.
Schedule Entry fields form
Field

Description

Name

Name for the schedule entry.

Type

Type of schedule entry for the specified date and time duration,
for example, appointment or meeting.
▪ Time off: Shown as planned time-off.
▪ Appointment: Shown as appointment time.
▪ Meeting: Shown as meeting time.
▪ Phone call: Shown as time for making phone calls.
▪ Excluded: The duration is excluded.

Show as

How the schedule entry is displayed on the CAB calendar, for
example, busy or tentative.

When

Start and end date and time for the schedule entry.

All day

Check box to make the schedule entry active for the entire
duration of the selected dates.

Time zone

Time zone for the schedule entry. The time zone cannot be
modified.

Repeats

Frequency with which the schedule entry repeats, for example,
daily or weekly.
When you select Monthly, the Monthly type field appears.
Enter the number of times in a month when the schedule entry
repeats.
When you select Yearly, the Yearly type field appears. Select an
option, as follows:
▪ Day of the year: Chosen as the current day on which you
define the schedule.
▪ Floating: If you select this option, the following fields appear:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

417


<!-- page 418 -->
Field

Description

▪ Float week: The week of the month when the schedule
entry repeats.
▪ Float day: The day of that week when the schedule entry
repeats.
▪ Month: The month when the schedule entry repeats.
Repeat every

If the schedule entry is selected to repeat, specifies how often
it repeats. For example, if you select weekly repetitions, specify
the frequency such as every week or every two weeks.
This field appears when you select the Weekly, Monthly, or
Yearly options.

Repeat on

If the schedule entry is selected to repeat, then specify when it
repeats. For example, if you select weekly repetitions, specify
the days of the week when it repeats.
This field appears when you select the Weekly option.

Repeat until

If the schedule entry is scheduled to repeat, specifies an end
date until which the schedule entry is repeated.

c. To add the schedule entry to the CAB definition, click Submit.
d. Optional: To view the series of CAB meetings in a calendar view in a new browser window or
tab, click the Show Schedule related link.
6. To set a related schedule for your CAB meeting series, complete the following steps:
You can add one or more related schedules to a CAB definition. Related schedules enable
you to set valid schedules for holding CAB meetings. For example, if you set the public holiday
schedule as a related schedule, it ensures that no CAB meeting is scheduled on a public
holiday.
a. In the Related Schedules related list, click Edit.
b. Select one or more related schedules and move them to the Related Schedules List.
c. Click Save.
d. Optional: On the CAB Definition form, click the Show Schedule related link to view the
defined schedule in the calendar.
7. In the Related Links section, click Refresh CAB Meetings.
The CAB meeting series created from CAB definitions inherit the criteria of the CAB definition.
You can view the series of CAB meetings generated from the CAB definition in the CAB
Meetings related list.

What to do next

You can modify CAB meeting details and send meeting requests to attendees. You can also
manage agendas by reviewing or adding agenda items to each of the meetings.
Related topics
OR conditions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

418


<!-- page 419 -->
View the CAB calendar
The CAB calendar provides an overview of your CAB meeting schedule to help with planning and
managing CAB meetings.

Before you begin

Role required: itil, sn_change_cab.cab_manager, sn_change_read, sn_change_write, or admin

About this task

You can view the CAB calendar to view and attend specific meetings.

Procedure
1. Navigate to All > Change > Change Advisory Board > CAB Workbench.

2. You can perform the following actions from the CAB calendar.
Option

Description

View the calendar

Click the options in the top right of the CAB
calendar to display the calendar in daily,
weekly, or monthly view.

View CAB meeting details at a glance

Click a specific CAB meeting to view details
such as the CAB manager, meeting start time,
and meeting end time.

Attend a specific CAB meeting

Click the meeting you want to attend and click
Open to launch the meeting.

Create a single CAB meeting occurrence
Depending on your requirements, you can create an individual Change Advisory Board (CAB)
meeting occurrence.

Before you begin

Role required: sn_change_cab.cab_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

419


<!-- page 420 -->
Procedure
1. Navigate to All > Change > Change Advisory Board > My CAB Meetings.
2. Click New.
3. On the CAB Meeting form, fill in the fields.
CAB Meeting form
Field

Description

Name

Name of the CAB meeting.

CAB
manager

Name of the user who manages the CAB meeting. The default is the user that is
currently logged in.

Delegates

Delegate CAB members who can substitute as the CAB manager during the
meeting.

Board
groups
Board
members
State

◦ Pending: Indicates that the meeting is yet to begin. It is the default state of
the meeting.
◦ In progress: Indicates that the meeting has begun and is in progress.
◦ Complete: Indicates that the meeting has occurred and is finished.
◦ Canceled: Indicates that the meeting has been canceled.

Note: The system automatically updates the State field when the
meeting starts and ends from within the CAB workbench. There is
no need to manually change this field, unless, for example, the CAB
manager wants to cancel a future meeting. If the CAB workbench closes
unexpectedly, the CAB manager must manually update the State field.
Meeting
start time

Start date and time for the meeting.

Note: When you add an agenda item to a CAB meeting, the CAB date
field in the change request is automatically updated with this date.

Meeting
end time

End date and time for the meeting.

Meeting
Notes

Enter notes for the meeting, if any.

Locations

One or more locations for your CAB meetings. For example, meeting rooms in
different offices.

Conference Information
Conference Information such as meeting links, passwords, and phone numbers.
details
Agenda Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

420


<!-- page 421 -->
Field

Use filter
criteria
to drive
Change
Request
date range

Description

If selected, helps to choose a time range for the planned start and end date
from Change Request additional condition instead of selecting specific dates
based on meeting schedule.

Note: If you select the Use filter criteria to drive Change Request date

range field in a cab meeting, the Change Requests starting after field
and the Change Requests starting on or before field is disabled for the
meeting, and therefore ignored. The change request additional conditions
drive the date range.

Change
Requests
starting
after

Change requests that starts after this date and time should be added to the
CAB meeting.

Change
Requests
starting on
or before

Change requests that starts on or before this date and time should be added to
the CAB meeting.

Complete
Preapproved
Changes

Check box to mark each pre-approved change request as Complete in the CAB
meeting agenda.

Note: Pre-approved changes are automatically marked as complete so
that approvers do not have to review them. The pre-approved changes are
visible in the CAB Workbench, and can be discussed if necessary.

Time per
Agenda
Item

The time, in minutes and seconds, allotted to discuss each change request
on the agenda. The allotted time can be adjusted for agenda items before or
during the meeting.

Notification The advanced notification on the number of agenda items that needs to be
lead time
discussed.
Auto Add
Agenda
Decisions

Check box to capture agenda decisions automatically on the meeting widget.
The agenda decision is captured in the following format:
(CAB Automation) - <change request number> <decision> - <CAB Manager name> - <time><AM/PM>
<timezone>

4. Open the form context menu and select Save.
The Agenda Items and Attendees related lists appear.

What to do next

You can now add agenda items and attendees to the cab meeting.
View CAB meeting details
You can view the details of any past, scheduled, or in-progress CAB meeting.

Before you begin

Role required: itil, sn_change_cab.cab_manager, sn_change_read, sn_change_write, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

421


<!-- page 422 -->
Procedure
1. Use one of the following ways to navigate to the CAB meeting.
Option

Description

CAB meeting

a. Navigate to Change > Change Advisory
Board > All CAB Meetings and open the
specific CAB meeting to view.
b. Click the Go to this meeting in CAB work­
bench related link.
a. Navigate to Change > Change Advisory
Board > CAB Workbench.

CAB workbench

b. Click the meeting details you want to view
from your calendar.
c. Click Open in the window that appears for
the meeting.

Note: You can only click Open if the
meeting has an agenda.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

422


<!-- page 423 -->
The following information is available:
CAB meeting
Field

Description

Time

◦ Total time scheduled for the CAB meeting
◦ Time covered until present for a CAB
meeting in progress
◦ Time spent discussing current agenda item
◦ Time assigned to each agenda item

Agenda items

List of agenda items for the CAB meeting.
You can view all agenda items or filter the list
for current, pending, and completed agenda
items.

Calendar

The blackout and maintenance windows are
displayed on the change calendar. You can
also view when the current agenda item is
scheduled. You can view the calendar in a
daily and weekly format.

Meeting Notes

Meeting notes, if any, for a past CAB meeting.
If you are the CAB manager, you can take
notes during the meeting.

Attendees

Details of attendees for the specific CAB
meeting including the CAB board and
delegates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

423


<!-- page 424 -->
Field

Description

Conference Information

Conference details of the CAB meeting.

2. If you are the CAB manager, or one of the CAB delegates who has chosen to host a specific
CAB meeting, you can perform the following tasks:

Task

Steps

Edit the change request

Click the edit icon beside the Change,
Planning, and Schedule tabs.

Start the meeting

Click Start meeting.

End the meeting

Click End meeting.

Pause the timer on the current agenda item

Click Pause on the Current Agenda Item
widget.

Move to the next agenda item

Click Next after a decision is taken on the
current agenda item.

Host the meeting

Click Attendees > Host to become the host.
You can host the meeting when you are a
CAB manager or delegate.

Promote an agenda item

Click Promote under a change request name
and title to promote it as the next agenda item
for discussion.

Take meeting notes

Click Meeting Notes to take notes during the
meeting. These notes can be shared with
CAB attendees.

Modify CAB meeting details
You can modify the agenda items for a specific CAB meeting.

Before you begin

Role required: itil, sn_change_read, sn_change_write, or sn_change_cab.cab_manager

About this task

After you update the CAB board or change request conditions, refresh the CAB meeting to apply
the updates. If you add new board members or attendees to the meeting, they are notified via
email invitations after the meeting is refreshed.

Procedure
1. Navigate to the CAB meeting whose agenda you want to modify using one of the following
steps.
Option

Open from the CAB meeting list

Description

a. Navigate to Change > Change Advisory
Board > All CAB meetings.
b. Select and open the CAB meeting to modi­
fy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

424


<!-- page 425 -->
Option

Description

a. Navigate to Change > Change Advisory
Board > All CAB definitions.
Open from the CAB definition list

b. Select and open the CAB definition to send
out the meeting request.
c. Select and open the specific CAB meeting
to modify.

2. Modify the CAB meeting agenda in the Agenda Management tab or form section, as
appropriate.
Agenda Management fields
Field

Description

Notification lead time

The advanced notification on the number of
agenda items that needs to be discussed.

Automatically Add Change Requests

Check box to define the types of change
requests that are automatically added to the
CAB meeting agenda.
When you select Automatically Add Change
Requests, the Refresh CAB Meetings related
link appears. If you click this link, search is
performed for change requests that match
the value in the Change Request Addition
Conditions field. If there are any matching
change requests, agenda items are created
for them and added to the CAB agenda.
If you do not select Automatically Add
Change Requests, then you need to create
each agenda item for the associated change
request for the meeting agenda.

Change Request Addition Conditions

Condition builder to specify which change
requests are added to the CAB meeting
agenda.
◦ Add Filter Condition: Click to add
additional filter conditions, or click AND
next to the existing filter condition.
◦ Add “OR” Clause: Click to display the
results of multiple filter criteria in a single
list.
◦ Add Sort: Click to define the order of the
change requests in this CAB meeting
agenda. The agenda order can be defined
in CAB Definitions or CAB Meetings, and
can be based on one or more fields.

Time per Agenda Item

The time, in minutes and seconds, allotted to
discuss each change request on the agenda.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

425


