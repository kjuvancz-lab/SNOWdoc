# Zurich IT Service Management — Collaboration services

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3648–3661 of 3857

Sections: Collaboration services (p3648); Explore (p3648); Configure (p3651); Use (p3659); Reference (p3660)

---

<!-- page 3648 -->
Collaboration services
Collaboration services provides a way to communicate and collaborate in real-time. You can
directly use a collaboration tool from task records and as a channel within communication plans.

Compatibility
Compatible with all the releases starting with the Madrid release.

Key features
• Slack
◦ Create dynamic slack channels for tasks and import back.
◦ Slash commands to get incident details directly from slack and perform basic operations on
incident.
◦ Initiate chat with slack users/channels directly from incidents.
◦ Archive the slack channel when the task is closed.
• ServiceNow for Microsoft Teams
◦ Initiate a chat using Microsoft Teams directly from tasks.
◦ Import message history into a task record from Microsoft Teams, manually or automated.
◦ Send individual notification and collaboration on Major Incident and Incident
Communication Plan using Slack or Microsoft Teams.
◦ For information about ServiceNow for Microsoft Teams integrations, see ServiceNow for
Microsoft Teams .
• ServiceNow for Zoom
◦ Initiate a chat using Zoom Team Chat directly from tasks.
◦ Import message history into a task record from Zoom Team Chat.
◦ For information about ServiceNow for Zoom integrations, see ServiceNow for Zoom

.

◦ Access ServiceNow Employee Center in the Zoom application. For information about
ServiceNow Employee Center in Zoom, see Make Employee Center capabilities available in
Zoom .

Exploring Collaboration services
Collaboration services provides a way to communicate and collaborate in real-time.

Process flow for Slack communication
Collaborate with the stakeholders from major incident management workbench using slack for
an open and transparent communication.
Define a communication plan to manage the communication process. The plan includes tasks to
achieve the plan goal and the stakeholders whom you must contact in the process.
When you create communication tasks for a plan, select slack as a mode of communication.
To know how to define a channel for any communication task, refer to Define a communication
channel . Keeping in mind the fact that it not always possible to plan for a communication plan
or task in advance, you have the option to create adhoc communication plan and its tasks from
an incident. When any task record meets the conditions in the communication plan, the plan
gets attached with the task record. If for a major incident, a communication plan gets attached to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3648


<!-- page 3649 -->
the incident which has communication channel as slack for any of its tasks, you can send slack
notifications from the major incident workbench.

Note: The slack communication is a one-way communication from ServiceNow
application to slack. The contacts in the slack cannot reply to the person who initiated the
slack communication. Also, the users in slack must be employees of the organization. For
example, the email address that they share for participating in a slack collaboration must be
their email address of that organization.
Slack communication uses the following subflows:
• TCM Slack – Add Users to Channel
• TCM Slack – Archive Channel
• TCM Slack – Create Channel
• TCM Slack – Send Message
• TCM Slack – Remove User From Channel

Slack communication through workbench
• In the major incident workbench, under the Communicate tab, you can find all the
communication tasks for the plan.
• For the task where you have selected slack as a channel, you can click Compose to start a
slack communication. For information on how to create a communication plan, refer to Add
communication plan from the major incident workbench
• In the dialog box, the To field includes the contacts that you have added while creating the
communication contact for the plan.
• The Message field includes the message you are intending to convey to the recipients.
Add a collaborative communication task
In major incident workbench, you can add a collaborative communication task to collaborate and
understand the progress of communication plan and its related tasks.

Before you begin
• Role required: major_incident_manager
• This feature is compatible with:
◦ Collaboration Services store app - minimum version 3.04
◦ Slack store app - minimum version 1.4.x

Procedure
1. Navigate to All > Incident Major incident > Open.
2. Select the incident for which you want to add a collaborative communication task.
3. Click View Workbench.
4. Click the Collaborate tab, and then click Add that appears in the Collaborative
Communication Tasks section.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3649


<!-- page 3650 -->
Collaborative communication task plan form
Field

Description

Communication Plan

List to select a new communication plan
or to select an existing plan and add
communication tasks to the plan

Plan Short description

Brief description of what the communication
plan is all about.

Task Short description

Brief description of what the communication
task is all about.

Channel

Option to select Slack chat as a channel for
collaboration.

Frequency

Frequency at which a specific task must be
executed. A task can be executed only once
or on specific durations

Due in(Minutes)

Time span when the task must be executed
after the task initiates. For recurring tasks, it
also indicates the time span after which the
task must repeat.

6. Click Next.
7. In the Manage Recipients tab, add the users required to be involved in the major incident
collaborative communication task, and click Add.
Create a Slack channel for a collaborative communication task
Create a Slack channel for a collaborative communication task to collaborate and discuss the
communication task details.

Before you begin

Role required: major_incident_manager

Procedure
1. Navigate to All > Incident > Major Incident Open.
2. Select the relevant major incident.
3. Click View Workbench.
4. Click the Collaborate tab.
The Collaborative Communication Tasks section appears.
5. Click Initiate for the task that you want to create a Slack channel.
6. On the form, fill in the fields.
Initiate form
Fields

Description

Add participants

Individual users or groups whom you want as
participants to the channel.

Recommended and Selected

Columns to personalize your list. Select the
items in the Recommended column and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3650


<!-- page 3651 -->
Fields

Description

move them to the Selected column using the
right-arrow icon (

).

Channel name

Unique name for the channel that
differentiates it from the rest of the channels
in Slack.

Channel topic

Description about the purpose of the
channel.

Include a brief message for participants

Brief message that you want to send to the
participants.

Private channel

Option to indicate whether the slack channel
is private or public.

7. Click Start.
A slack channel is created, and you see the View channel and Import messages buttons next
to the task.
8. To view the channel on slack, click View channel.
9. To import messages, click Import messages.
For more information on how to import messages, see import-messages-from-incident.

Configuring Collaboration services
Configure Slack as a communication channel to communicate with the users to work towards the
resolution of incidents.

Install Collaboration services
You can install the Collaboration services application (sn_tcm_collab_hook) if you have the
admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Collaboration services requires the following ServiceNow Store applications. Ensure that these
applications are installed before you install Collaboration services.
Required ServiceNow Store applications
Slack Spoke for ServiceNow IntegrationHub [com.sn.slack.ahv2]
If you want Slack integration for tasks or task communication
management, install the Slack Spoke for ServiceNow IntegrationHub
application. The application provides actions that you can use when
designing flows. These actions allow you to communicate with Slack
APIs.
ServiceNow for Microsoft Teams
If you want to integrate ServiceNow for Microsoft Teams, install the
IT Service Management integration with Microsoft Teams or HR
Service Delivery integration with Microsoft Teams applications as
required. For more information on the integration, see ServiceNow
for Microsoft Teams .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3651


<!-- page 3652 -->
ServiceNow for Zoom
If you want to integrate ServiceNow instance with Zoom, for complete
information, see ServiceNow for Zoom .
Role required: admin

About this task

For the tables that are installed with Collaboration services, refer Components installed with
Collaboration services
.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the application () using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install .
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.
Components installed with Collaboration services
Several types of components are installed with activation of the Collaboration services
application.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed

Note: The tables are installed when you activate the Task Communications Management
plugin (com.snc.task_communication_management).

Table

Description

Communication Channel Definition Extends the Communication Channel Definition
— Slack
[comm_channel_definition] table.
[comm_channel_def_slack]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3652


<!-- page 3653 -->
Table

Description

Communication Channel — Slack

Extends the Communication Channel Definition
[comm_channel] table.

[comm_channel_slack]
Communication Plan —
Collaboration Service Data

Stores Collaboration Service related data.

[comm_plan_collab_data]

Setting up Slack for communication
The Slack spoke requires creating a custom app on your Slack account to generate OAuth 2.0
tokens for the Slack spoke.
For more information, refer to Set up Slack spoke

.

Configure Slack as a communication channel for a communication task
Configure Slack as a mode of communication for a communication task to send direct message
to the users.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Incident > Communication Plan Definitions.
2. Open the communication plan where you want to add Slack as a communication channel for a
communication task.
3. Open the communication task definition for which you want to add Slack as the mode of
communication.
4. Click the Add Channel – Slack related links.
5. Click Submit.
Slack gets added as a communication channel for the communication task.

Create slack channel for an incident
Create a private or a public slack channel to collaborate with support teams or send a
communication to keep stakeholders informed.

Before you begin
• Role required: sn_incident_write, itil, or admin
• Plugins required:
◦ Collaboration Services plugin (sn_tcm_collab_hook) version 2.0.x
◦ Slack Spoke for ServiceNow Integration Hub plugin (com.sn.slack.ahv2) version 1.3.x
• Ensure you have set up interactivity and shortcuts for slack. For more information, refer
configure slack app .

About this task

The system property sn_tcm_collab_hook.slack_on_task enables the slack feature on
a task table. By default, the value is incident. If you want to enable the slack feature on other task
tables such as problem or change_request, add the table names in the Value field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3653


<!-- page 3654 -->
Procedure
1. Navigate to All > Incident > Open.
2. Open an active incident record.
3. Click the Create Slack Channel related link.
Create slack channel

4. On the form, fill in the fields.
Create slack channel form
Fields

Description

Add participants

Individual users or groups whom you want as
participants to the channel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3654


<!-- page 3655 -->
Fields

Description

Recommended and Selected

Columns to personalize your list. Select the
items in the Recommended column and
move them to the Selected column using the
right-arrow icon (

).

Channel name

Unique name of the channel that
differentiates it from the rest of the channels
in Slack.

Channel topic

Description about the purpose of the
channel.

Include a brief message for participants

Brief message that you want to send to the
participants.

Private channel

Option to indicate whether the slack channel
is private or public. If you select the check
box, the channel is created as a private
channel else it is created as a public channel.

5. Click Create channel.
A slack channel is created and an invitation is sent to the participants. Any duplicate user is
removed from the selected participant list before the notification is sent. The participants can
click Skip or Join Channel to ignore or join a slack channel.

View or join slack channel from an incident
View all slack channels associated with an incident to know if a required slack channel already
exists before you create a new one. You can also import messages from a slack channel.

Before you begin
• Role required: sn_incident_write, itil, or admin
• Plugins required:
◦ Collaboration Services plugin (sn_tcm_collab_hook) version 2.0.x
◦ Slack Spoke for ServiceNow Integration Hub plugin (com.sn.slack.ahv2) version 1.3.x

About this task

The system property sn_tcm_collab_hook.slack_on_task enables the slack feature on
a task table. By default, the value is incident. If you want to enable the slack feature on other task
tables, such as problem or change_request, add the table names in the Value field.

Note: When an incident becomes inactive, the associated slack channels get archived.
Procedure
1. Navigate to All > Incident > Open.
2. Open an active incident record.
3. Click the View Slack Channels related link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3655


<!-- page 3656 -->
View slack channels

All the dedicated slack channels for the incident are displayed.

Note: The Join channel option appears only for public channels.
4. Optional: Click View channel to open the slack channel.
5. Click Join channel to join any slack channel.
6. To import messages from any slack channel, click Import messages.
Add form section to view slack channels
View unarchived slack channels associated with an incident in the form section. The form
section saves you the effort of opening the available channel list manually from the related list.

Before you begin

Role required: personalize_form or admin

Procedure
1. Navigate to All > Incident > Open.
2. Open an incident record.
3. Click the Additional actions icon
and select Configure > Form Layout.
For more information, refer Configuring form layouts .
4. Under Form view and section, in the Section field, click New.
5. In the Section caption field, enter a name for the section such as Slack Channels and click OK.
6. From the Available column, select View Slack Channels and move it to the Selected column
using the right-arrow icon (

).

7. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3656


<!-- page 3657 -->
The new section displays all the active slack channels.
Slack channels associated with the incident

Set up slack for a user or group
Set up slack from an incident to communicate and work together in channels with a user or a
group.

Before you begin

Role required: admin

About this task

To enable slack for the Assignment group field, ensure you have set up a slack channel for that
group. For more information, refer Associate existing slack channel with a group.

Procedure
1. Download the Fix script to add Slack field decorators update set to get the
fix scripts from ServiceNow Store app.
2. Import the update set file.
For more information, refer Import an update set

.

3. Navigate to System Definition > Fix Scripts.
4. Open the Add Slack Field Decorator fix script.
5. Optional: In the Scripts field, edit the script to indicate the table and the field for which you
want to enable the slack communication.
6. Click Run Fix Script.
The slack icon (

) appears next to the following fields mentioned in the script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3657


<!-- page 3658 -->
◦ Caller
◦ Assignment group
◦ Assigned to
Clicking the icon takes you to the direct message with the user on slack or slack channel for an
assignment group.
Related topics
Open slack from an incident
Associate existing slack channel with a group
Associate an existing slack channel to reach out to an assignment group from an incident.
Assignment groups are a great way to contact all your stakeholders at once.

Before you begin

Role required: sn_slack_ah_v2.slack_admin or admin

Procedure
1. Navigate to All > Slack > Slack Channel Cache and click New.
2. On the form, fill in the fields.

Field

Description

Channel Name

Name of the existing slack channel.

Channel ID

Unique ID given by slack for a channel.

Channel Topic

Description about the purpose of the
channel.

Channel Link

URI scheme to deep link into native Slack
client of user. Example: slack://channel?
team={TEAM_ID}&id={CHANNEL_ID}, where
<TEAM_ID> is slack workspace id and
<CHANNEL_ID> is the unique Id for the slack
channel.

Note: For more information, refer Deep
linking into Slack
Document ID

.

Group record for which channel is intended
to be used.
◦ Table: Group [sys_user_group]
◦ Document: <Reference to a group>

Is Archived

Option to indicate whether the slack channel
is active or inactive.

Is Private

Option to indicate whether the slack channel
is private or public.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3658


<!-- page 3659 -->
Field

Description

Note: It is strongly recommended to
associate a public slack channel. In
case of private channel, and you are not
a member of it, the navigation link may
break.
Creator

User who creates the slack channel cache
record.

3. Click Submit.

Open slack from an incident
Open slack from an incident and send message to a user or an assignment group to exchange
incident information. You do not need to manually search for a user in slack to send a message.

Before you begin

Role required: sn_incident_read, sn_incident_write, itil, or admin

About this task
The slack icon ( ) appears for the fields that you include in the fix script. For example, if you
have the Caller, Assigned to, and the Assignment group fields for incident in the fix script, then
the icon appears for these fields.

Procedure
1. Navigate to All > Incident > Open.
2. Open an active incident record.
3. Click the slack icon (
group fields.

) that appears next to the Caller, Assigned to, or the Assignment

4. In the Open Slack dialog window, click Open Slack.
A direct message with the user on slack or a slack channel opens for the group.

Using Collaboration services
Use Slack as a communication channel to communicate with the users to resolve their incidents.

Import messages from an incident
You can import messages from a slack channel for an incident and append them in the
®
Comments to store all important messages in the ServiceNow instance.

Before you begin
• Role required: sn_incident_write, itil, or admin
• You must be a member of the private slack channel to import messages from the private
channel.
®

• Your ServiceNow email ID must be associated with your slack account.
• This feature is compatible with:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3659


<!-- page 3660 -->
◦ Collaboration Services store app - minimum version 3.04
◦ Slack store app - minimum version 1.4.x

About this task

Importing messages helps agents to view the history of the incident, allow the requester to see
all discussions about their incident in one place. This helps to capture the information required
for post-ticket review and continuous improvement processes.

Procedure
1. Navigate to All > Incident > Open.
2. Select the incident for which you want to import messages.
3. Click the View Slack Channels related link.
The View Slack Channels form appears. The form shows all the available slack channel for that
incident.
4. Click Import messages for the channel that you want to import the messages from.
The Import messages from Slack form appears. The form shows all the messages on that
channel sorted by date.
5. On the form, fill in the fields.
Import messages from Slack form
Field

Description

Search

Field to enter a keyword and search for a
specific message.

Include reply threads in search

Option to include threads in search.

Filter by

◦ Shared by: The messages will be filtered
based on the selected users.
◦ Date: The messages will be filtered based
on the Start and Enddates that you select.

Import messages as

◦ Additional comments: The messages will
be appended under Additional comments.
◦ Work notes; The messages will be
appended under Work notes.

Include attachments

Option to include attachments while
importing messages.

6. Click Import messages.

Collaboration services reference
Reference topics provide additional information about integrating Slack integration with
®
ServiceNow AI Platform .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3660


<!-- page 3661 -->
Slack integration - Incident Management
With Slack integration, you can create a dedicated channel for incident responders to
collaborate during an incident enabling bidirectional integration with slack. You can create
and update an incident, view information such as who is on-call for a group or view the list of
incidents assigned to you.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Compatibility
The Collaboration Services store app version 2.0.x is compatible with all the releases starting
with the Paris Patch 3 release.

Key features
• Send a direct message to the caller​
• Assign the incident to a user​
• Create a collaboration channel for an incident​
• View and join a channel from an incident​
• Create and update incident using a Slash Command
• View who is on-call for a group​

System requirements
• Incident Management (com.snc.incident)
• Collaboration Services plugin (sn_tcm_collab_hook) version 2.0.x
• Slack Spoke for ServiceNow IntegrationHub
plugin (com.sn.slack.ahv2) version 1.3.x and the
necessary Integration Hub license to use Slack as a collaboration channel.

Note: The Slack spoke requires creating a custom app on your Slack account to
generate OAuth 2.0 tokens for the Slack spoke. For more information, refer Set up Slack
spoke .
Slack slash commands
Slash commands provides a quick way to invoke your app to perform specific actions from Slack.
You need to configure slash commands
to execute the commands. Only a user with the
sn_incident_write, itil or admin role can execute the commands.
Slash commands
Commands

Description

/now help

Provides list of available ServiceNow
commands with description.

/now create incident

Creates an incident with the inputs provided
by the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3661


