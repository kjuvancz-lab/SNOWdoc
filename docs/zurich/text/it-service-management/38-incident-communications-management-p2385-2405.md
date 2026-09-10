# Zurich IT Service Management — Incident Communications Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2385–2405 of 3857

Sections: Incident Communications Management (p2385); Explore (p2385); Configure (p2388); Manage (p2389); Reference (p2404)

---

<!-- page 2385 -->
The output displays all assignment groups that have access to the manager workspace. This
output is based on the configurations in the Group Exclusions filter and the implementations
using the extension points.
If the assignment groups listed are missing any groups that the logged-in user must have
access to, verify that the Group Exclusions filter, and the extension points are configured
correctly.

Incident Communications Management
®

The ServiceNow Incident Communications Management application enables organizations to
create and manage communications related to major business issues or incidents.

Get started

Explore

Configure

Learn about Incident Communications
Management concepts and features.

Configure environment,
tools, and user access.

Manage Incident Communications

Reference

Learn about defining and managing
communication process for an incident.

Get details about Incident Communications
Management components such as
roles and dependent applications.

Troubleshoot and get help
• Ask or answer questions in the Incident Communications Management community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Incident Communications Management
®

The ServiceNow Incident Communications Management application enables organizations to
create and manage communications related to major business issues or incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2385


<!-- page 2386 -->
Incident Communications Management overview
Incident Communications Management allows incident communications administrators to bring
together all involved users during these events and establish quick and easy communication
within this group.
For example, a major issue occurs in a server room, which leads to a high-priority incident to
be raised. The incident can potentially impact all users, so it is important to bring together key
representatives and communicate quickly and effectively. An incident communication plan can
facilitate this communication process and help resolve the source incident.

Incident Communications Management benefits
®

ServiceNow Incident Communications Management supports the incident communications
management process in the following ways:
• Create an incident communication plan when a crisis occurs.
• Set up contact responsibilities to identify the individuals who receive automatic notifications
when incident communication plans are created. If they want to receive notifications, SelfService users can subscribe to incident communication plans.
• Manage incident communication plans to improve communication while dealing with the crisis.
• Use the optional Notify feature to send notifications by SMS messages and voice mails, and to
set up conference calls.
• Monitor events and results with the incident communication plan dashboard and reports.

Incident communication plan state model
Incident communication plan state model helps you to understand the different states through
which a plan can progress and track the plan through its states.
Incident communication plans are created with an Open state. They follow a process that
finishes with the Closed or Canceled state. The following state model is applicable to new
customers starting the Madrid release.
Incident communication plan state model

The following two properties are responsible for different actions that take place on Incident
Communication Plan and Incident Communication Task:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2386


<!-- page 2387 -->
• The Close open Incident Communication Plans when Incident is closed or canceled property
(com.snc.incident.incident_alert.closure) is responsible for the following
action:
◦ When incident is closed, any open Incident Communication Plan is closed.
◦ When an incident is canceled, any open Incident Communication Plan is canceled.
• The Close open Incident Communication Tasks when an Incident Communication Plan is
closed or canceled property (com.snc.iam.incident_alert_task.closure) is
responsible for the following actions:
◦ If an Incident Communication Plan is Closed or Canceled, then the state of any open
Incident Communication Task on which communication is not yet performed, is set to
Skipped.
◦ If an Incident Communication Plan is Closed or Canceled, then the state of any open
Incident Communication Task on which communication is performed at least once, is set to
Complete.

Note: The Close open Incident Communication Plans when Incident is closed

or canceled and Close open Incident Communication Tasks when an Incident
Communication Plan is closed or canceled property is visible when you activate the
Incident Communications Management plugin (com.snc.iam). This property is set to false
for both new and existing customers.
For more information on the old Incident Communications Plan state model, see Incident
communication plan state model (old).
Incident communication plan state model (old)
Incident communication plan state model helps you to understand the different states through
which a plan can progress and also to track the plan through its states.
Incident alerts are created with a New state. They follow a process that finishes with the Closed
or Canceled state.

Note: The state model shown below is available only for customers prior to the London
release. Beginning London release, customers who have upgraded to the latest release,
can refer to Incident communication plan state model.
Incident communication plan stages

The incident communication plan changes from the New state to the Work in Progress state
when you update the Actions Taken field. Only the incident communication plan creator or a
user with the admin role can cancel an incident communication plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2387


<!-- page 2388 -->
The following two properties are responsible for different actions that take place on Incident
Communication Plan and Incident Communication Task:
• The Close open Incident Communication Plans when Incident is closed or canceled property
(com.snc.incident.incident_alert.closure) is responsible for the following
actions:
◦ If an incident is closed or canceled when the incident communication plan state is New or
Work in Progress, the incident communication plan state is set to Canceled.
◦ If an incident is closed or canceled when the incident communication plan state is
Resolved, the incident communication plan state is set to Closed.
• The Close open Incident Communication Tasks when an Incident Communication Plan is
closed or canceled property (com.snc.iam.incident_alert_task.closure) is
responsible for the following actions:
◦ If an incident communication plan is closed, the state of all open incident communication
tasks is set to Closed Incomplete.
◦ If an incident communication plan is canceled, the state of all open incident communication
tasks is set to Closed Skipped.

Note: The Close open Incident Communication Plans when Incident is closed

or canceled and Close open Incident Communication Tasks when an Incident
Communication Plan is closed or canceled property is visible when you activate the
Incident Communications Management plugin (com.snc.iam). This property is set to false
for both new and existing customers.

Configuring Incident Communications Management
Configure Incident Communications Management to create and manage communications
related to major business issues or incidents.

Configuration overview
Configure Incident Communications Management by installing and activating the Incident
Communications Management (com.snc.iam) plugin.

Install and activate Incident Communications Management
Install and activate the Incident Communications Management (com.snc.iam) plugin if you have
the admin role.

Before you begin

Role required: major_incident_manager, ia_admin, or admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2388


<!-- page 2389 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Incident Communications Management

Managing Incident Communications
Incident Communications Management provides a framework for defining and managing a
communication process for an incident. It helps you to streamline a communication process by
creating designated incident communication plans for effective communication during an event.

Communication plan definition
An incident communication plan helps you to streamline a communication process with regards
to an incident. It defines the stakeholders who should be informed, what information should be
shared, when the information should be delivered, and the methods of communication.
For information on how to create a communication plan definition, refer to Create communication
plan definition
.

Important: While creating the Communication Plan definition, ensure that the table
is Incident [incident]. If you have upgraded to London or a higher release and you use
communication plan to streamline the communication process, deactivate the Major
Incident Response and Resolution flow designer.

Communication task definition
Each communication plan involves a series of communication tasks. A communication task
definition helps you to specify the mode of communication (channel) and the frequency at which
the communication must be carried out.
For information on how to create a communication task definition, refer to Create communication
task definition .

Communication contact definition
Communication contact definition helps you to define the recipients of a particular
communication plan. The contact determines the target audience involved in each
communication task and the responsibilities they are expected to handle. A notification for
a task is sent to all individuals specified for that task. You can add or remove any particular
communication contact manually.
For information on how to create a communication contact definition, refer to Create
communication contact definitions
.

Communication channel definition
You can define a communication channel for each communication task. The communication
channel determines which mode of communication to use for the task when a plan is attached to
an incident. The modes of communication available are: email, SMS, conference, and Slack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2389


<!-- page 2390 -->
For information on how to create a communication channel definition, refer to Create
communication channel definition
.

Create adhoc incident communication plan
Create an adhoc incident communication plan to manage and track communications around a
high-priority incident or other issues.
The adhoc incident communication plan can be created in the following ways:
• Create adhoc incident communication plan from Incident Communications Management.
• Create adhoc incident communication plan from an incident.
Create adhoc incident communication plan from Incident Communications Management
Create an incident communication plan from Incident Communications Management when an
issue is not considered earlier. If you need collaboration on that issue, you can create an incident
communication plan.

Before you begin

Role required: major_incident_manager, ia_admin, or admin

Procedure
1. Navigate to All > Incident Communications Management > Create New.
2. On the form, fill in the fields.
Incident Communication Plan form

Field

Description

Number

Unique incident communication plan ID, in the ICPxxxxxxxx format.

Source incident The source incident for this communication plan, if any. If you select a
source incident, the Background field is populated with data from this
incident, unless there is existing data in this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2390


<!-- page 2391 -->
Field

Description

Type

Type of communication plan available are Ad hoc, End User, Stakeholder,
and Technical.

Communication The communication plan definition based on which this incident
plan definition communication plan is attached.
State

The state of the communication plan. The available values are Open,
Closed, or Canceled.

Assignment
group

The assignment group, if any, for that incident communication plan. For
example, there might be a group that represents a crisis management team,
including several Incident Managers, Duty Directors, and Duty Managers.

Assigned to

The assigned user for the communication plan. By default, the assigned to
user is the one who creates the communication plan. The communication
plan can also be assigned to an ITIL user or an incident communication
plan administrator.

Order

Order in which the communication plan appears in the incident. If there are
multiple communication plans, this field indicates which communication
plan to execute first.

Short
description

A brief summary of the communication plan.

Description

A detailed description of the communication plan.

Notes

Work notes, activities, and background information regarding the incident
communication plan.

3. Click Submit.
An incident communication plan is created. The Communication tab lists the communication
tasks that have email, SMS, or slack as the communication channel. The Conference tab lists
the communication tasks that have conference as the communication channel.
Create adhoc incident communication plan from incident
Create an adhoc incident communication plan from an incident when an issue related to the
incident is not considered earlier. The incident automatically populates the required information
in the adhoc communication plan, saving you time and effort.

Before you begin

Role required: major_incident_manager, ia_admin, or admin

Procedure
1. Navigate to All > Self-Service > Incident > Open.
2. Open an existing incident.
3. Click the Incident Communication Plans related list.
4. Click New.
The original incident becomes the source incident of this communication plan.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2391


<!-- page 2392 -->
Incident Communication Plan form
Field

Description

Number

Automatically generated unique incident communication plan ID, in the
ICPxxxxxxxx format.

Source incident The source incident for this communication plan, if any. If you select a
source incident, the Background field is populated with data from this
incident, unless there is existing data in this field.
Type

Type of communication plan available are Ad hoc, End User, Stakeholder,
and Technical.

Communication The communication plan definition based on which this incident
plan definition communication plan is attached.
State

The state of the communication plan. The available values are Open,
Closed, or Canceled.

Assignment
group

The assignment group, if any, for that incident communication plan. For
example, there might be a group that represents a crisis management team,
including several Incident Managers, Duty Directors, and Duty Managers.

Assigned to

The assigned user for the communication plan. By default, the assigned to
user is the one who creates the communication plan. The communication
plan can also be assigned to an ITIL user or an incident communication
plan administrator.

Order

Order in which the communication plan appears in the incident. If there are
multiple communication plans, this field indicates which communication
plan to execute first.

Short
description

A brief summary of the communication plan.

Description

A detailed description of the communication plan.

Notes

Work notes, activities, and background information regarding the incident
communication plan.

6. Click Submit.
An incident communication plan is created. The Communication tab lists the communication
tasks that have email, SMS, or slack as the communication channel. The Conference tab lists
the communication tasks that have conference as the communication channel.

Create adhoc incident communication task from Incident Communications
Management
Create an adhoc incident communication task while you are working on the communication plan.
The communication task helps you to specify the mode of communication (channel) and the
frequency at which the communication must be carried out.

Before you begin

Role required: major_incident_manager, ia_admin, or admin

Procedure
1. Navigate to All > Incident Communications Management > Open.
2. Open the incident communication plan for which you want to create the communication task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2392


<!-- page 2393 -->
3. In the Incident Communication Tasks related list and click New.
4. On the form, fill in the fields.
Incident Communication Task form
Number

Unique incident communication task ID, in
the ICTxxxxxxxx format.

Incident Communication Plan

[Read-only field] Incident communication
plan for which you create the task.

Source incident

[Read-only field] Lookup icon
to select
the incident on which you want the plan to be
attached.

Type

Lookup icon
to select the type of task
such as internal communication.

Communication task definition

[Read-only field] Unique name of the
communication task definition for which you
are creating the task.

State

The state of the communication plan. The
available values are Pending, Open, In
Progress, Complete, and Skipped.

Assignment group

The assignment group, if any, for that incident
communication task.

Assigned to

The assigned user for the communication
task.

Order

Order in which the communication task
appears in the communication plan. If there
are multiple communication tasks, this field
indicates which communication task to
execute first.

Communication frequency

Frequency of the communication task
execution. You can send the notification once
or the notification can be repeated.

Due in

Time by which the communication task must
be completed.

Last communication sent

The date and time when the last
communication is sent to the user or the
group.

Short description

A brief summary of the communication task.

Description

Detailed description of the communication
task.

5. Click Submit.

What to do next

Create adhoc incident communication channel. For more information on how to define a
communication channel, refer Define a communication channel .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2393


<!-- page 2394 -->
Incident Communications Management and Contacts
You can define contacts to associate users or groups to an incident communication plan. The
users or groups are contacted to complete the tasks included in a communication plan.
If you have the ia_admin role, you can assign users or groups to an incident communication plan
based on the information provided in these records:
• Contact responsibilities: Provides a name, such as Incident Duty Manager, for a set of
tasks related to incident communication plan. The contact responsibility record also
indicates whether the tasks are performed by an individual user or a group of users. Contact
responsibilities can also be used to manually add contacts to an incident communication plan.
• Contact definitions: Identifies a set of conditions to determine which specific user or
group is assigned to handle a particular responsibility for an incident communication plan.
For example, All P1 Incidents must have an Incident manager, assigned to US Incident
Management group.
Contact responsibilities and contact definitions allow you to define and modify data-driven
contact information for automatic notifications. You do not have to specify individual users or
groups directly for each incident communication plan.
You can use group contacts. You can use the Group contacts functionality when you have
on-call scheduling, Notify, and Incident Communications Management. Group contacts
include the people that are on-call. The group contacts can be included when initiating a
conference call that is a result of an incident communication plan. By default, the primary and
secondary on-call persons are available. To modify this behavior, set the system property
com.snc.iam.on_call_escalation_level.
Responsibilities for Incident Communication Plan
Contact responsibilities helps you to identify contacts by their responsibilities and to understand
what you can expect from the user throughout the life cycle of the communication plan.
There are two types of responsibilities available for use with incident communication plans:
• Default Responsibilities: Contacts who are notified by default.
• Other Responsibilities: Contacts who can be selected for notification.
Use contact definitions to view and modify the rules that determine the specific users associated
with contact responsibilities.

Default Responsibilities
By default, contacts with the following responsibilities are notified when an incident
communication plan is created:
• Duty Manager
• Incident Manager
• Duty Director
These roles are involved with resolving the source incident or original event that the incident
communication plan relates to. They are seen as key contacts for the incident communication
plan.
The following sections describe typical operational roles for these responsibilities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2394


<!-- page 2395 -->
Contact Administration Default Responsibilities
Responsibility Description

Duty
Manager

The senior point of presence in the monitoring environment at the time an
incident occurs. The Duty Manager assesses the incident against standard
operating procedures, escalation triggers, and personal knowledge and
experience, to take corrective actions. To clarify the urgency and impact of an
incident, the Duty Manager can contact the Incident Manager for advice.

Incident
Manager

A senior technician, accountable for coordinating and managing all technical
resources required to resolve incidents. After being notified by the Duty
Manager of a serious incident, the Incident Manager assesses the seriousness
and associated business impact. Based on this assessment, the Incident
Manager decides whether to escalate the incident to the Duty Director. The
Incident Manager may escalate to the Duty Director to gain access to resources
outside of the department, if necessary.

Duty Director The escalation point for all issues that affect critical services. The Duty Director
works in partnership with the business directors in the organization to approve
recovery plans developed by the Incident Manager. The Duty Director also
manages the senior level communications for the source incident.

Other Responsibilities
Incident Communications Management provides the following additional responsibilities that
can be added to incident communication plans. You can also create contact responsibilities, as
needed. The associated users receive notifications about the incident communication plan.
Contact Administration Other Responsibilities
Responsibility

Description

Business
Director

Director within the business who is identified as a potential contact when an
incident communication plan occurs.

Communication Business-facing role in the event communication is required in an incident
Manager
communication plan.
Crisis Action
Manager

Overall responsibility and accountability for managing incident
communication plans.

Crisis Action
Team Member

Nominated department heads who are involved when an incident
communication plan occurs.

Development
personnel

Development personnel involved in the troubleshooting and resolving an
incident communication plan.

Operations
support
personnel

Personnel involved in the second or third level of support in troubleshooting
and resolving an incident communication plan.

Service Owner

Service owner or manager who is identified as a potential contact when an
incident communication plan relates to one or more of their services.

Technical
Support

Second or third level technical support personnel involved in troubleshooting
and resolving an incident communication plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2395


<!-- page 2396 -->
Define contact responsibilities
Define the different contacts or target audience involved in the communication process and their
responsibility to understand the expectations from those contacts throughout the process.

Before you begin

Role required: ia_admin or admin

Procedure
1. Navigate to All > Incident Communications Management > Contact Administration > Contact
Responsibilities.
2. Click New.
3. On the form, fill in the fields.
Contact Responsibility form
Field

Description

Global

Check box to determine whether the contact responsibility
is available for all tables or for a specific table. If the check
box is not selected, the Table field appears where you
can select the table for which you are defining the contact
responsibility.

Name

Unique name of the contact, such as Business Director or
Communication Manager, involved in the communication
process.

Type

Type of contact such as user, group, or recipient list.

Table

Table on which contact is activated when a communication
plan is attached.

4. Click Submit.
Contact responsibilities are defined.
Create a contact definition
Define the recipients of a particular incident communication plan to determine the target
audience involved in each communication task and the responsibilities the recipients are
expected to handle.

Before you begin

Role required: ia_admin or admin

Procedure
1. Navigate to All > Incident Communications Management > Contact Administration > Contact
Definitions.
2. Click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2396


<!-- page 2397 -->
Contact definition form

3. On the form, fill in the fields.
Contact definition form
Field

Description

Name

Unique name for the contact definition.

Type

Type of contact such as user or group that you want to involve in the
plan.

Responsibility

Responsibility that the user or group is expected to handle.

Source

Method to determine the user or group to associate with this
definition.
The source can be:
◦ None: Use no association. You should associate users or groups
manually within the Incident Communication Plan form.
◦ Default Override: Use default override to associate users or groups
based on conditions.
◦ Form Field: Use information from the incident communication plan
form based on the value specified in the Source field.

Quantity

The maximum number of contacts that can be associated with the
selected responsibility for each incident communication plan record.

Note: The Quantity field appears only when you select None
as the value for the Source field.
Source field

The field on the Incident Communication Plan form whose value is
considered to be the contact associated with the selected contact
responsibility.
◦ For contact type as User, the values are Assigned to, Closed by,
Opened by, or Resolved by.
◦ For contact type as Group, the value is Assignment group.

Note: The Source field appears only when you select Form
field as the value for the Source field.
Active

Check box to indicate whether the definition is active or not.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2397


<!-- page 2398 -->
Field

Description

Condition

The conditions that must be met to associate this contact definition
to a particular user or group. If multiple conditions are defined, each
condition is evaluated in the order listed.

4. Click Submit.
Create a default override
Create a default override to specify user or group for a contact definition of an incident
communication plan. It helps you to set multiple conditions based on which a user or a group is
considered as a contact.

Before you begin

Role required: ia_admin or admin

About this task

The Default overrides related list is available only if you select Default override as the value of
the Source field in the Contact definition form.

Procedure
1. Navigate to All > Incident Communications Management > Contact Administration > Contact
Definitions.
2. Open the contact definition record.
3. In the Default override section, click New.

4. On the form, fill the fields.
Default override form
Field

Description

Order

The order in which the condition in default override
should be evaluated.

User value

User specified in the User value field is assigned as
the contact if the condition in the default override
matches.

Note: The User value field appears if the

value of the Type field in the Contact definition
form is User.
Group value

Group specified in the Group value field is assigned
as the contact if the condition in the default override
matches.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2398


<!-- page 2399 -->
Field

Description

Note: The Group value field appears if the

value of the Type field in the Contact definition
form is Group.
Condition

The conditions defining whether the default override
values are to be applied. If multiple conditions are
defined, each condition is evaluated as per the listed
order. If no conditions match, the default override is
not applied.

5. Click Submit.
Default override and its conditions are defined for a contact definition.
Add a user as a contact
Add a user to a communication plan if you have not added the user earlier in the contact. You
can assign a communication task to the user to resolve an issue.

Before you begin

Role required: ia_admin or admin

Procedure
1. Navigate to All > Incident Communications Management > Open.
2. Open an incident communications plan record.
3. Click the Users related list and click New.

4. On the form, fill in the fields.
Contact form
Field

Description

Table

Task table for which you are creating the contact.

Document

The incident communication plan for which you are
creating the contact.

Responsibility

Responsibility that the user is expected to handle
throughout the communication process.

Type

Type of contact such as user, group, or recipient list
that you want to involve in the plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2399


<!-- page 2400 -->
Field

Description

Note: To add a user, select User for the Type
field.
User

Name of the user who is considered as the contact.

5. Click Submit.
The contact information appears in the Users related list.

Close an incident communication plan
Close an incident communication plan after its execution or if it is no longer needed.

Before you begin

Role required: itil, ia_admin, or admin

About this task
• The business rule IA_State_Management allows any user with the ia_admin role or an
itil user who is assigned to the incident communication plan, to close or cancel an incident
communication plan.
• If a user with the itil role closes or cancels a parent incident, all related incident communication
plans are closed or canceled.

Note: Use the incident management property Close open Incident

Communication Plans when Incident is closed or canceled
(com.snc.incident.incident_alert.closure) to control this behavior.

Procedure
1. Navigate to All > Incident Communications Management > Open.
2. Open the incident communications plan record that you want to close.
3. In the State field, select Closed.
4. Right-click on the form header and click Save.

Initiate conference call on incident communication task
Initiate a conference call and include all the required stakeholders to discuss on the resolution of
the incident and the communication task.

Before you begin

Role required: sn_comm_management.comm_plan_manager or
sn_comm_management.comm_plan_admin
Activate the Notify plugin (com.snc.notify), configure the Twilio account, configure the
com.snc.iam.notify_number property and create a default provider selector. You can
also create a provider selector on the Incident Communication Task table [incident_alert_task].
The provider selector specifies the Notify group containing the Notify phone numbers or
conference provider to make outgoing calls.

Procedure
1. Navigate to Incident > All.
2. Open an incident record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2400


<!-- page 2401 -->
3. From the Incident Communication Plan related list, open the incident communication plan.
4. From the Incident Communication Tasks related list, open the incident communication task.
5. In the related link, click Initiate Conference Call.
6. Select the conference bridge number and the participants for the conference call and click
Start Call.

Join or end conference call on incident communication task
After a conference call is initiated, join the call to participate in the discussion or end the call
when the conference is no longer required.

Before you begin
Role required:

• Join conference call: ia_admin, itil, or sn_incident_write
• End conference call: sn_comm_management.comm_plan_manager or
sn_comm_management.comm_plan_admin

Procedure
1. Navigate to Incident > All.
2. Open an incident record.
3. From the Incident Communication Plan related list, open the incident communication plan.
4. From the Incident Communication Tasks related list, open the incident communication task.
5. In the related links, perform any of the following actions.
Option

Description

Join Conference Call

If the logged in user is not already a part of
the conference call, the user can join the con­
ference.
End the conference when the discussion is
over.

End Conference Call

Note: The work notes get updated with
the details of the conference call such
as duration and participants.

Send communication updates
Update users on the latest communication on an incident through selected communication
channels.

Before you begin
• Role required: itil (itil user is assigned to incident communication task) or ia_admin or
mim_manager or admin.
• Activate the Notify plugin (com.snc.notify) if you want to send communication through SMS.
• Set atleast one communication channel of a communication task as SMS or email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2401


<!-- page 2402 -->
Procedure
1. Navigate to Incident Communications Management > All.
2. Open an incident communication plan record.
3. From the Incident Communication Tasks related list, open the incident communication task for
which you want to send updates.
4. In the related links, click Send Updates.
5. Fill in the required information and click Compose.
For sending an SMS communication, in the From list, select a number from which you
want to send the communication. It contains a list of phone numbers derived from the
selected Provider selector column which is a reference to the Provider selector table
[notify_group_selector]. The From list displays phone numbers of all the groups associated
with the Provider selector only when the following conditions are met:
◦ The Manual selector check box in the Provider selector form is selected.
◦ The value of the Source table field in the Provider selector is either empty or the same table
that you have selected.
6. Click Compose.

Run an incident communication plan report
Run an incident communication plan report to view the status of communication plans. You can
track the progress of the plan and intervene to improve the overall efficiency and effectiveness of
the communication process.

Before you begin

Role required: ia_admin or admin

Procedure
1. Navigate to All > Reports > View / Run.
2. Click Create a report.
3. Under Data, fill in the fields.

Fields

Description

Report name

Unique name for the report.

Source type

Source from which the data is populated. The
default value is Table.

Table

Table from which the data is retrieved.

4. Click Run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2402


<!-- page 2403 -->
Note: You can also choose a graphical representation for the report or narrow down the
result using the Type and Configure options.

Subscribe to incident communication notifications
Subscribe to incident communication notifications to get periodic information about issues
related to incident communication plans.

Before you begin

Role required: itil, ia_admin, or admin

Procedure
1. Navigate to All > Self-Service > My Notification Preferences.
2. Under System Settings, select Notifications.
3. Under Notifications By Category, select Incident Communication Plan.
The following notification options appear for incident communication plan: IA Actions Taken,
IA Cancelled, IA Resolved Or Closed, and New IA Raised.
4. Click the notification option for which you want to receive notifications.
5. Under NOTIFICATION CHANNELS, right-swipe or left-swipe the toggle button to subscribe or
unsubscribe from a notification.
6. Click the channel name to add a schedule for the notification and to filter the notification
conditions as required.

Note: Apply filter to your notification channel to avoid receiving every notification for the
subscription.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2403


<!-- page 2404 -->
7. Click Save.
You are subscribed to incident communication notification.

Incident Communications Management reference
Reference sections provide additional information about components installed with Incident
Communications Management.

Components installed with Incident Communications Management
Several types of components are installed with activation of the Incident Communications
Management plugin (com.snc.iam), including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title

Description

ia_admin

Can create, edit,
or cancel incident
communication plan,
incident communication
task, and manage contact
information.

Contains roles

• contact_admin
• sn_comm_management.comm_plan_manager
• notify_view

Note: The role is
available when you
activate the Notify
plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2404


<!-- page 2405 -->
Role title

Description

Contains roles

contact_admin Can create and edit contact contact_user
definitions and contact
responsibilities.
contact_user

Can view contacts, contact NA
definitions, contact
responsibilities, and default
overrides.

Tables installed
Table

Description

Impacted CI

The CIs impacted by the source CI in the incident communication plan.

[impacted_ci]
Incident
Communication
Plan
[incident_alert]
Incident
Communication
Task

The Incident Communication Plan table extends from the
Communication Plan table [comm_plan] so that the incident
communication plan inherits any future enhancements made to the
communication object.
The Incident Communication Task table extends the Communication
Task table [comm_task].

[incident_alert_task]

Domain separation and Incident Communications Management
Domain separation is supported in Incident Communications Management. Domain separation
enables you to separate data, processes, and administrative tasks into logical groupings called
domains. You can control several aspects of this separation, including which users can see and
access data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2405


