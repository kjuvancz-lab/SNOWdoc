# Zurich IT Service Management — On-Call Scheduling

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2716–2727 of 3857

Sections: On-Call Scheduling (p2716); Explore (p2717); Configure (p2721)

---

<!-- page 2716 -->
8. Optional: If you update the release scope, you can regenerate the release notes by selecting
Regenerate.
The existing release notes are replaced with the regenerated release notes, which include the
latest release scope data.
9. To publish the release notes, select Publish.
The release notes are set to read only.
10. Select Download to download a copy of release notes as a PDF file.
11. Select Copy link to create a shareable link to the release notes.
You can share the link with your stakeholders. They can access the release notes in Digital
Product Release Workspace.
12. Optional: To add content manually or regenerate the release notes after they are published,
select Edit.
Related topics
AI-powered release notes generation

On-Call Scheduling
The On-Call Scheduling application identifies the assigned and available member of a support
group, for example, when assigning an incident.

Get started
The On-Call Scheduling application helps you to ensure that dedicated support team members
are available to resolve issues as they arise. You can set up on-call schedules, roster rotations,
and escalation policies, escalate notifications for a group, and determine the current contact for
an escalation.

Explore

Configure

View Schedules

Manage

Learn about OnCall Scheduling
concepts
and features.

Configure
environment, tools,
and user access.

Learn how to view
schedules and
request time-off.

Manage shifts and
time-off requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2716


<!-- page 2717 -->
View On-Call
Scheduling reports

Generate and view
reports. Premium
dashboard
user can view
performance
report.

Define On-Call
Scheduling
escalation process

Define escalation
trigger rules
and policies.

Mobile experience
for On-Call
Scheduling

View and manage
schedules.
Request and
manage timeoff request with
Mobile Agent.

Reference

Get details
about On-Call
Scheduling
components
such as roles
and dependent
applications.

Troubleshoot and get help
• Ask or answer questions in the IT Service Management community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring On-Call Scheduling
The On-Call Scheduling application helps you ensure that dedicated support team members are
available to resolve issues as they arise. Learn more about On-Call Scheduling and the benefits
it can provide for the different user roles in your organization.

On-Call Scheduling overview
On-Call Scheduling provides a way to determine which member of a user group is available to
work on a task.
On-Call Scheduling finds the right person to assign an incident to, by rotation through a
hierarchy of duty rosters. The automated process relieves the administrative burden on resource
managers and makes it easy for the incident managers to bring the right resources to the table
when needed.
On-Call Scheduling can be used by process owners and support managers who want to
collaborate more effectively. On-Call Scheduling simplifies the manual shift maintenance and
administration efforts while improving the mean time to resolve (MTTR) efficiencies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2717


<!-- page 2718 -->
On-Call Scheduling workflow
The various members of an organisation use On-Call Scheduling to work together. See a sample
end-to-end

workflow:
1. Shift admin creates shift and group templates.
2. Shift admin assigns role and configures escalation trigger rules.
3. The shift manager creates a shift and add or delete members to the shift.
4. Shift manager designs the entire escalation process for the new shift.
5. Roster member views their on-call schedules and find out who the other members on their
shift are.
6. Roster member can specify their availability and preferred contact methods from the methods
set up by Shift admin.
7. Roster members can submit a time-off request and refer another member of the group to cover
the shift.
8. Roster members views the roster and escalation details for a shift.
9. Roster members view on-call reports and receive reminders.
10. The shift manager approves or rejects the time-off requests.
11. Shift manager reviews the on-call schedules for their groups for any gaps and time-off
requests.
12. Shift manager provides, replace, or delete coverage and time-off requests.
13. Roster members receive on-call escalation notifications to acknowledge tasks or conference
requests.
14. Shift manager views escalation, group, and performance reports of their on-call teams.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2718


<!-- page 2719 -->
On-Call Scheduling benefits
Benefit

Feature

Users

View my On-Call
calendar on my
calendar app

itil, rota_manager

Designing an
escalation process

itil, rota_manager,
rota_admin

Configure my
availability and
contact preferences

itil, rota_manager,
rota_admin, admin

Generate escalation reports, shift reports, and
performance reports.

Viewing On-Call
Scheduling reports

itil, rota_manager,
rota_admin

Access the performance reports that are
available for premium dashboard users.

Legacy: Viewing the
Performance reports
for escalations

premium dashboard
user

Getting started
with the On-Call
Scheduling mobile
app

itil, rota_manager

Use the calendar to view or select a shift. You
can set a day, week, or month view as your
preference. The calendar also allows you to
set your preferred start day of the week.
Create your own escalation policies and path.
On-Call Scheduling allows you to create an
escalation trigger rule using the templates
available, based on your requirement.
Use any one of the multiple channels such
as Slack, Microsoft Teams, mobile push
messages, SMS, and voice messages to set
as the preferred contact method for receiving
notifications.

Download and use the Mobile agent to
perform all these activities on the go.

On-Call Scheduling capabilities
The key features and capabilities of On-Call Scheduling can be used by the various user roles.
On-Call Scheduling supports the Members of the roster (itil role), Shift Manager (rota_manager
role), shift administrator (rota_admin role). Based on the user role, you can perform the following
actions:

itil role
• View your on-call schedules and see the other members of your shift.
• Submit a time-off request and refer another member of the group to cover your shift.
• Specify your availability and your preferred contact methods.
• View the roster and escalation details for a shift.
• Run schedule and escalation reports.
• Use the ITSM Mobile Agent for viewing schedules and requesting time off.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2719


<!-- page 2720 -->
rota_manager role
• View the on-call schedule including any gaps and time-off requests for your group.
• Approve or reject time-off requests
• Review and manage gaps and conflicts.
• Provide, replace, or delete coverage and delete time-off requests.
• Create a shift and add or delete members to the shift.
• View escalation, group, and performance reports.
• Use the Mobile Agent for viewing the schedule of your groups and approve or reject time-off
requests.

rota_admin role
• Set up Slack, Microsoft Teams, text and voice messages, as a contact method for an on-call
escalation.
• Assign roles and configure escalation trigger rules.
• Create shift and group templates.
• Design the entire escalation process.

On-Call Scheduling new schedule engine
Introducing the new On-call schedule engine with enhanced capabilities and user experience.
The new On-call schedule engine is more efficient with the following enhanced features:
• It reduces the time taken to move, add, or remove members from a shift.
• It resolves the gaps arising when members are scheduled for extra-time or partial workdays
due to the holiday calendar.
• It reduces the gaps caused by adding, removing, or replacing members of the shift.
• It refers the previous rotation to determine the next person to start the new assignment with.
To ensure fair assignment, it starts the rotation with a person not yet assigned in the previous
rotation.

Note:
• New shift automatically works with the new schedule engine.
• For existing shifts, you can go to the shift record page and manually migrate using the
Migrate Now option.
• To migrate all the existing shifts in bulk, run On-Call Upgrade shifts to 2024 schedule
engine schedule job.

Important: The shift rotation may change after switching to the new schedule engine. In
that case, you can always create a new shift rotation from the current or future date with the
new schedule engine which works as expected

On-Call Scheduling new trigger engine
On-Call Scheduling new trigger engine enables the on-call subflows to get launched via the flow
runner queue instead of the event queue. Launching via the flow runner queue improves the oncall performance and helps to alert the on-call members faster than launching via event queue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2720


<!-- page 2721 -->
When a trigger condition set for an on-call trigger rule matches, that trigger rule is run, and the
defined subflow in the trigger rule is launched or triggered. The On-call new trigger engine is a
mechanism by which on-call subflows get triggered or launched via the flow runner queue.

Difference between old and new trigger engine
The old trigger engine supports both workflows and subflows. When a workflow or subflow
gets triggered, an event is created and launched via the event queue. When multiple events
are triggered at the same time, the events remain in the process queue and this causes slower
process time and delayed response.

Note: The workflow gets processed in the event queue while the subflow gets processed
in the flow runner queue.
The new trigger engine only supports on-call subflows and a subflow gets triggered via flow
runner queue. Base on-call subflow are marked as high priority, and hence helps launch the
on-call subflows faster via the flow runner queue compared to the traditional event queue. This
improves the on-call performance and helps to alert the On-call members faster, especially when
multiple events are triggered at the same time and are in the process queue.

Note: When the new trigger engine is active, the workflow has no impact and the subflow
is both launched and processed via the flow runner queue.
Reminder notifications are also sent to user channels even when the instance is upgrading.
The new trigger engine is applicable only when the following conditions are met:
• Subflows are used. The new engine is only applicable to on-call subflows and not the
workflows.
• The On-Call rotation new trigger engine
[com.snc.on_call_rotation.new_trigger_engine] system property is set to
true.

Configuring On-Call Scheduling
Plan and configure On-Call Scheduling properties, templates, trigger rules, escalation policies,
rosters, and schedules.
As an administrator, you can configure preferences and application behavior and create tools
that improve the effectiveness of roster members and shift managers. These are some of the
tasks you can perform as an administrator.

Activate On-Call Scheduling
You can activate the On-Call Scheduling (com.snc.on_call_rotation) plugin if you have the admin
role.

Set up contact methods
You can configure the following contact methods and enable users to receive notifications for
escalations.
• Slack: You can also configure a template and subflow for user responses to the notifications.
• Text and voice messages: You can configure phone number and workflows to drive escalation
via text and voice message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2721


<!-- page 2722 -->
• Microsoft Teams: Ensure that your ServiceNow instance is configured to integrate with Virtual
Agent and IT Service Management integration with Microsoft Teams plugin (sn_now_teams_it)
is active.
• Mobile push notifications: Configure ServiceNow Agent and enable mobile push notifications

Activate On-Call Scheduling
You can activate the On-Call Scheduling (com.snc.on_call_rotation) plugin if you have the admin
role.

Before you begin

Role required: admin

About this task

Activating the On-Call Scheduling plugin activates the following third-party libraries:
• Subscription-based notifications
• Advanced Schedules support
• NG shared components
• ServiceNow common calendar
• Fullcalendar library

Note: The On-Call Scheduling plugin (com.snc.on_call_rotation) is active by default for
zBoot customers.

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
On-Call Scheduling

Setting up Slack as a contact method
You configure Slack to enable users to receive Slack notifications for escalations. To offer Slack
as a contact method for shift members, you install the IntegrationHub spoke for Slack.

Configuring Slack for On-Call Scheduling
The Slack spoke automates On-Call Scheduling notifications and responds to them. The
following configurations support On-Call Scheduling notifications:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2722


<!-- page 2723 -->
Outbound Configurations
Slack > Outbound Configurations > On-Call: Assign by Acknowledgement
Generates a general escalation message. Modify the record to customize the
message template.
Outbound Assign by Acknowledgement subflow

Slack > Outbound Configurations > On-Call: Assign by Acknowledgement Catch All
Generates a catch-all escalation message. Modify this record to customize the
message template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2723


<!-- page 2724 -->
Outbound Assign by Acknowledgement Catch All subflow

Inbound Decisions
Slack > Inbound Decisions > On-Call: Assign by Acknowledgement Decision
Defines inbound configuration for general response handling for Accept or Reject
escalation messages. Use action_id as the key to map outbound configuration
and inbound decisions for general escalations. The answer points to the subflow
that is executed when the user clicks Accept or Reject. Modify the record to change
the response handling behavior.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2724


<!-- page 2725 -->
Inbound Assign by Acknowledgement Decision subflow

Slack > Inbound Decisions > On-Call: Assign by Acknowledgement Catch All Decision
Inbound configuration for catch-all response handling for escalation for Accept or
Reject messages. Use action_id as the key to map outbound configuration and
inbound decisions for catch-all situations. The answer points to the subflow that
is executed when the user clicks Accept or Reject. Modify the record to change
response handling behavior.
Assign by Acknowledgement Catch All Decision subflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2725


<!-- page 2726 -->
Subflows
Subflow designer

On-Call Assign by Acknowledgement
This subflow handles incoming responses from Slack and then acts. For example,
assign a task to a user and return an acknowledgement message. In case of
rejection, the subflow logs the response and moves the escalation to the next
escalatee.
Insert Slack Response
This action creates a record in the [sn_slack_ah_v2_inbound] table for incoming
Slack responses. You can reference the response by workflow based on
context_id.
On-Call Response Controller
This action performs appropriate operations when the user clicks Accept or
Reject from Slack. It invokes the utility methods to perform actions from the
OnCallSlackUtils script include.

Setting up SMS and voice messaging as contact methods
To send On-call escalation notifications as SMS or voice messages, you must configure Notify.
Configure the following items to use Notify with On-Call Scheduling:
• You must add at least one Notify phone number to the On-Call Group number group. This
group is configured by default to handle inbound SMS responses (via On-Call: Check
Assignment Response) that accepts or rejects an on-call assignment and to handle outbound
voice calls (via On-Call: Assign by Acknowledgement Voice) to accept or reject assignments.
• You must configure workflows, such as the On-Call: Assign by Acknowledgement to drive
escalations via SMS and Voice.
To set up SMS and voice message as contact methods, see Set up Notify with On-Call
Scheduling
Related topics
On-Call Assign by Acknowledgement workflow
Controlling the on-call communication channel with Notify

Set up Microsoft Teams as a contact method for an on-call escalation
Enable users to receive Microsoft Teams notifications for an on-call escalation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2726


<!-- page 2727 -->
Before you begin

User should have Microsoft Teams user credentials.
Role required: admin

Procedure
1. Ensure that your ServiceNow instance is configured for Conversational Integration with
Microsoft Teams and the IT Service Management integration with Microsoft 365 plugin
(sn_now_teams_it) is active.
For information on Virtual Agent permission policies, see Manage Now Virtual Agent
permission policies .
2. Select Microsoft Teams as your preferred notification channel while defining the escalation
settings for a user group.
For information on escalation settings, see Escalation and reminder settings for rosters.
3. For the required user group, create a trigger rule that uses the On-Call: Assign by
Acknowledgement trigger workflow.
If a user or shift manager sets the preferred contact channel as Microsoft Teams, a notification
is sent to the user in Microsoft Teams along with the actions that a user can perform.
For information on creating a trigger rule, see Create an escalation trigger rule.

Set up mobile push as a contact method for an on-call escalation
Enable users to receive mobile push notifications for on-call escalations.

Before you begin

Role required: admin

Procedure
1. Install ServiceNow Agent and enable mobile push notifications from the Notifications tab.
For information on this tab, see Base system functionality for ServiceNow mobile .
The mobile push appears as a communication channel in the ServiceNow instance.
2. Select Mobile push as your preferred notification channel while defining the escalation
settings for a user group.
For information on escalation settings, see Escalation and reminder settings for rosters.
3. For the required user group, create a trigger rule that uses the On-Call: Assign by
Acknowledgement trigger workflow.
If a user or shift manager sets the preferred contact channel as mobile push, a mobile push
notification is sent to the user along with the actions that a user can perform.
For information on creating a trigger rule, see Create an escalation trigger rule.

Setting up custom providers as communication channel
You can define and integrate a custom channel to send on-call escalation notifications.
The base system has the following existing on-call notification channels to send notifications to
on-call group members:
• Email
• SMS
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2727


