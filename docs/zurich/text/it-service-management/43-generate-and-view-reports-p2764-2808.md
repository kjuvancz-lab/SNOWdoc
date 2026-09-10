# Zurich IT Service Management — Generate and view reports / Define escalation process

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2764–2808 of 3857

Sections: Generate and view reports (p2764); Define escalation process (p2772); Mobile experience (p2789); Reference (p2792)

---

<!-- page 2764 -->
Note: Ensure that you select the shift group where you want to delegate the shift
manager role.
3. Submit the role delegation request.
Related topics
Assigning On-Call Scheduling roles

Viewing On-Call Scheduling reports
Generate escalation and schedule reports. You can also view performance report.
All the users can generate and view the following reports:
• Escalation report
• Schedule report
• Escalation over report
• Group overview report
Users with premium dashboard access can view an additional performance tab. You can
generate and view performance reports using the performance tab.

Run an Escalations report to view who is on call
The Escalations report displays the escalation sequence and the rules that apply for a selected
date. For each group that you are authorized to see, you can choose to show either the active
roster members or the on-call person.

Before you begin
Role required: itil

Procedure
1. Navigate to All > On-Call Scheduling > Reports > Escalations Report.
2. Select a value for the For each group, show setting.
◦ Active escalation members: Display the on-call persons and catch-all persons in the
escalation order, along with their delay times.
◦ On-call person: Determine who is on duty.
3. Select the start date for the report.
4. Move at least one group into the Selected list.
Enter the first few letters of the group into the Name starts with field to see a list of groups that
start with those letters. Or select the All groups check box to see the list of all groups.
5. Click Run Report.

Run a Schedule report to view my schedule
An On-Call Rotation Schedule report shows users or groups that are on-call for a specified time
period.

Before you begin

Role required: itil, roster_admin, rota_admin, rota_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2764


<!-- page 2765 -->
Procedure
1. Navigate to All > On-Call Scheduling > Reports > Schedule

Report.
2. Specify the Report style:
◦ Table: Display a list that can be sorted, filtered, and configured.
◦ Formatted: Generate a report in PDF format. Select Click to Print to print the report.
3. Select the start date for the report.
4. Move at least one group into the Selected list.
Enter the first few letters of the group into the Name starts with field to see a list of groups that
start with those letters. Or select the All groups check box to see the list of all groups.
5. Click Run Report.

Example:

Example Formatted report: The report shows on-call commitments for all specified groups during
the specified date range.
Formatted Schedule report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2765


<!-- page 2766 -->
Legacy: Viewing Escalation Overview reports
Run Escalation Overview reports to view count and rate information on escalations currently in
progress, acknowledged and unacknowledged escalations, and Mean Time to Acknowledge
(MTTA). You can view data for all groups or for one or more selected groups.

Important: Starting in Xanadu release, the On-Call dashboard is deprecated. Users can
use On-call dashboard to view, maintain, and track the escalation reports.

Opening the reports
Any user with the itil role can view the reports. Use one of the following methods to open the
reports:
• Click Self-Service > Dashboards and select On-Call Overview. If you have licensed the
premium version, then click On-Call Overview - Premium.
• Click On-Call Scheduling > Reports > Overview.
Click the Escalations Overview tab.

Escalations Overview reports
• Acknowledged escalations are accepted by at least one user. The "true" value indicates
acknowledged escalations.
• Unacknowledged escalations are not accepted by any user or are rejected by all users. The
"false" value indicates unacknowledged escalations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2766


<!-- page 2767 -->
Escalations Overview reports

My On-Call Groups
Select one or more groups. Only data for selected groups appears in the reports. If
no group is specified, then data for all groups appears.
Active Escalations - 7 days
The number of escalations that are currently in progress.
Unacknowledged Escalations - 7 days
The number of escalations that nobody has yet acknowledged during the most
recent seven-day period.
Acknowledged Escalations
The number of escalations that escalatees have acknowledged during the most
recent seven-day period.
Acknowledged Escalations by Level - 7 days
The number of acknowledged escalations during the most recent seven-day period.
• The Y axis indicates groups.
• The X axis indicates escalation level.
• The color shade indicates the count of escalations in the box.
Acknowledged and Unacknowledged Escalations by Group - 7 days
The number of escalations by group during the most recent seven-day period.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2767


<!-- page 2768 -->
• The "true" value indicates acknowledged escalations.
• The "false" value indicates unacknowledged escalations.
Escalations per Day
The number of escalations for the specified date.
• The Y axis represents the count of escalations.
• The X axis represents time by date.
Mean Time to Acknowledge (MTTA) - 7 days
The average time that it took a user to acknowledge an escalation during the most
recent seven-day period.
• The Y axis indicates the time it took a user to acknowledge an escalation.
• The X axis indicates the group.

Legacy: Viewing the Performance reports for escalations
The Performance reports enable detailed review of how well escalations are being processed.
You have precise control of the data that describes escalation progress using filters like group,
priority, level, or escalation category.

Important: Starting in Xanadu release, the On-Call dashboard is deprecated. Users can
use On-call dashboard to view, maintain, and track the performance reports.

Opening the reports
You must have the Premium Dashboard user [rota_prem_dashboard_user] role to view the
Performance reports. Use one of the following methods to open the reports:
• Click Self-Service > Dashboards and select On-Call Overview - Premium.
• Click On-Call Scheduling > Reports > Overview.
Click the Performance tab and then select the date of interest. The time line shows the time of
day at which escalations happen. Use the tabs to control the type of data to view:
Breakdowns tab
Use the filters to segment the data into categories that suit your need. For example,
if you are investigating your SMS costs, you can set filters to display how many
notifications of the SMS type are sent and to which groups or users they are being
sent. For example, you might notice that you sent 68 SMS messages to users in
the Network group. The group, however, did not acknowledge any escalations.
You might therefore consider that you can lower SMS costs by not sending SMS
notifications to that group.
• Groups
• Escalation Category
Records tab
The Records tab lists the individual records that make up the results that you
configured on the Breakdowns tab. Click a name to view record details.

Note: Each record also appears in the appropriate escalation log. See View
details in an escalation log.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2768


<!-- page 2769 -->
All Escalations tab
• Acknowledged escalations are accepted by at least one user.
• Unacknowledged escalations are not accepted by any user or are rejected by all users.
• All Escalations: Count of escalations that started on the selected date.
• Escalation Notifications: Count of notifications that were sent on the selected date. An
escalation might have triggered several notifications.
All Escalations tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2769


<!-- page 2770 -->
Acknowledged Escalations tab
Acknowledged Escalations tab

• Acknowledged Escalation Notifications: Count of escalations that had any of the following
values in the Response field for the notification:
◦ Accepted or Accepted from other device
◦ Auto-assigned
• Acknowledged Escalation %: Percent of escalations that had a valid value in the Response
field for the notification.
• Acknowledged Contact Attempt %: Percent of contact attempts that were acknowledged.

Unacknowledged Escalations tab
Unacknowledged escalations have one of the following values for each member of an escalation
path in the Response field for the escalation notification:
• Rejected
• Rejected from other device
• Invalid response
• [no response]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2770


<!-- page 2771 -->
Unacknowledged Escalations tab

Legacy: Viewing Group Overview reports
Run My Groups Overview reports to view the activities of a selected group: Count information on
acknowledged and unacknowledged escalations by shift, acknowledged escalations by user,
and the hours for each user over seven days.

Important: Starting in Xanadu release, the On-Call dashboard is deprecated. Users can
use On-call dashboard to view, maintain, and track the escalation reports.

Opening the reports
Any user with the itil role can view the reports. Use one of the following methods to open the
reports:
• Click Self-Service > Dashboards and select On-Call Overview. If you have licensed the
premium version, then click On-Call Overview - Premium.
• Click On-Call Scheduling > Reports > Overview.
Click the My Groups Overview tab and then specify the group in the My On-Call Groups list.
• Acknowledged escalations are accepted by at least one user. The "true" value indicates
acknowledged escalations.
• Unacknowledged escalations are not accepted by any user or are rejected by all users. The
"false" value indicates unacknowledged escalations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2771


<!-- page 2772 -->
My Groups Overview reports
My Groups Overview reports

On-Call Hours - 7 days
The sum for each day over the last seven days: (Number of hours / roster member) *
(number of roster members that worked on an escalation)
Acknowledged and Unacknowledged Escalations by Shift - 7 days
The number of escalations by shift during the most recent seven-day period.
• The Y axis represents the count of escalations.
• The X axis represents the shift.
• The "true" value indicates acknowledged escalations.
• The "false" value indicates unacknowledged escalations.
Hours Distribution by User - 7 days
Pie chart that displays the number of hours that each user in the group worked on
escalations during the most recent seven-day period.
Acknowledged Escalations by User - 7 days
Pie chart that displays the number of acknowledged escalations that each user in
the group worked on during the most recent seven-day period.

Defining On-Call Scheduling escalation process
Create shift and group templates, escalation policies and trigger rules. Design escalation
process and track progress of an escalation.
As rota_admin you can perform these tasks for your user groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2772


<!-- page 2773 -->
• Designing an escalation process
• Track the progress of an escalation
• Create a shift template to simplify configuring shifts
• Create a group template to simplify configuring schedules

Escalations in On-Call Scheduling
An escalation is a mechanism that ensures that important issues are addressed in a timely
manner.
On-Call Scheduling monitors response time for a task. You can define the actions to take when
a task is not acknowledged. The actions, like sending out an email or an SMS, are fired by trigger
rules. You define a trigger rule by specifying the conditions that trigger the actions and the
actions to take when the conditions are met.
For example, a critical incident is raised for Acme Pharmaceuticals regarding a problem with their
network access. An SMS task notification is sent to Ken, the third-line support engineer who is
on call for this type of incident. Ken is unavailable, however, and does not respond within the
specified 30-minute response time.
A trigger rule that is defined for Acme Pharmaceuticals critical incidents starts an escalation if
a task goes 30 minutes without a response. The person specified as the next point-of-contact
is Nakul, Ken's line manager, so an SMS notification is sent to Nakul. Settings in the escalation
policy specify how many notifications to send, how long to wait, and so on.
Shift administrators and shift managers can define trigger rules and configure escalation
policies.
Related topics
Legacy: Viewing Escalation Overview reports
Legacy: Viewing the Performance reports for escalations
Designing an escalation process
To design an escalation process for a task, you define a trigger rule and configure one or more
escalation policies.
A trigger rule specifies both the conditions under which an escalation process should begin and
the escalation actions (workflow or script) to perform. An escalation policy describes the order
in which escalation notifications are sent, the escalation audience, and other aspects of the
escalation.

How a trigger rule works
When a task is created or updated, the instance compares the assignment rules with the
rule's conditions to determine whether a condition is met. If there is a match, then the instance
activates the workflow or script that is specified by the rule's action. Trigger rules are an
extension of assignment rules and they have the same behavior as assignment rules.
For example, a trigger rule might specify:
• If (rule condition): An incident with level Critical or High is raised and is assigned to the
Network group.
• Then (rule action): Run the Assign and Notify workflow. (The workflow sends an email
notification to the current on-call roster member.)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2773


<!-- page 2774 -->
Rule condition on the When to activate tab

Rule action on the What action to take tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2774


<!-- page 2775 -->
Note: An on-call escalation is canceled when the assignment group of the associated
task record, for example, an incident, changes to a different group without a matching
trigger rule. It ensures that an existing irrelevant escalation workflow is no longer associated
with that task record.
See Create an escalation trigger rule.

About escalation policies
An escalation policy includes the following configurations:
• The escalation audience (roster members and managers).
• A policy type that defines the order in which rosters and roster members receive escalation
notifications.
• Other aspects of the escalation process like the contact methods to use and the number of
reminders to send for each notification.
You can create a custom escalation policy for a shift by overriding settings in a default escalation
type, for example, by configuring custom delays between escalation steps.
Configure a table for escalation trigger rules
Configure escalation trigger rules for the tables that do not extend tasks.

Before you begin

Role required: admin

About this task

Tables that are configured in the Trigger Rule Table Configuration [trigger_rule_table_cfg] table
appear in the Table field in the Trigger Rule form for creating an escalation trigger rule.

Procedure
1. Navigate to All > On-Call Administration > Administration > Trigger Rule Table Configuration.
In Service Operations Workspace (SOW), you can access On-call trigger rule table
configuration by navigating to All > Service Operations Workspace Admin Center > Overview
> Configuration. On the Configurations tab, from the SOW configurations section, navigate
to the On-call Scheduling tile and select Configure and then select Table configuration
for trigger rules. For more information, see Manage configurations in Service Operations
Workspace for ITSM
2. Select New.
3. On the form, fill in the fields.
Trigger Rule Table Configuration form
Field

Description

Table

Name of the table that will be enabled for
creating escalation trigger rules.

Trigger group field

Group field value in the table based on which
trigger rule processes.

Trigger user field

User field value in the table based on which
trigger rule processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2775


<!-- page 2776 -->
Field

Description

Trigger condition fields

List of table fields that are displayed as a
choice list in the Trigger fields field when
creating or editing the trigger rules.

Journal field

The ongoing escalation activity.

4. Click Submit.
The Trigger Rules related list shows the escalation trigger rules that are configured for the
table.
Create an escalation trigger rule
Create a trigger rule to specify both the conditions under which an escalation process should
begin and the actions (workflow or script) to perform for the escalation.

Before you begin

Role required: rota_admin, admin, or rota_manager

About this task
• Users with rota_manager role can create escalation trigger rules (with the Trigger action field
set to Workflow) only for the groups that are managed by the rota_manager.
• Users with rota_admin role can create escalation trigger rules (with the Trigger action field set
to Workflow or Subflow) for all the groups.
• Users with admin role can create escalation trigger rules to execute Workflow, Subflow, and
Script for all the groups.

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Trigger Rules.
2. Click New.
3. On the form, fill in the fields.
Trigger Rule form
Field

Description

Name

Unique and meaningful name for the trigger rule.

Table

Task table that applies to the trigger rule.

Note:
◦ Only tables and database views that are in the same scope as the trigger
rule appear in the list.
◦ Tables that do not extend tasks do appear in the list only if those tables
are configured for trigger rules in the Trigger Rule Table Configuration
[trigger_rule_table_cfg] table.
.
Execution
order

Run order of the trigger rule.

Active

Option to activate the trigger rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2776


<!-- page 2777 -->
Field

Description

When to activate
Run
Trigger

Frequency at which the trigger rule is run. Available values:
◦ Run once: Trigger rule is run only once.
◦ Every time trigger field changes: Trigger rule is run every time the value of the
Trigger fields field is changed.

Trigger
fields

List of fields for a specific table which when changed causes the trigger rule
to re-run. For example, for the incident table, you can select fields such as
assignment group, priority and state.

Note:
◦ This field is visible only if the Run Trigger field is set to Every time
trigger field changes.
◦ You can use the Trigger Rule Table Configs table to configure which
fields must be displayed for a specific table. For more information, see
Configure a table for escalation trigger rules.
Trigger
when

Type of trigger for the table that is the default behavior or conditional.
This field is available only when the Trigger when group assigned changes
check box is enabled.
◦ Condition matches: Triggers escalation when conditions match.
◦ Default: Triggers escalation based on only the Trigger action field value.

Match
Conditions type to match before triggering escalation.
conditions
◦ All: Each condition must be met.
◦ Any: Any one of the conditions can be met.
Conditions Conditions that must be met for the trigger rule to fire (run the workflow or
subflow or script that is the action for the rule).
What action to take
Group

Group that becomes the Task assignment group when the trigger rule fires.

Note:
◦ This field is visible only when the Trigger fields field doesn’t contain the
Assignment group value.
◦ This field enables you to set the group level trigger rule. When this field is
not set, or the Trigger fields field contain the Assignment group value, it
becomes a global level trigger rule.
Trigger
action

Action that is triggered when the Match conditions and Conditions are met.
Possible values:
◦ Subflow
◦ Workflow
◦ Script (server-side JavaScript)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2777


<!-- page 2778 -->
Field

Description

Note:
◦ Starting Zurich release, the following options are available:
▪ For new users, the Subflow option is visible while the Workflow
option is not visible.
▪ For existing or upgrade users, both the Subflow and Workflow
options are visible, and either of them can be selected.
◦ The Script option is available only for users with the rota_admin and
admin roles.
For more information, see On-Call Scheduling subflows.
Trigger
workflow

Workflow to run. Available only if Trigger action is set to Workflow.

Trigger
subflow

Subflow to run. Available only if Trigger action is set to Subflow.

Note: The following subflows under the On-Call Escalation Triggers
category can be configured using the trigger rules:
◦ On-Call: Assign
◦ On-Call: Assign and Notify
◦ On-Call: Assign By Acknowledgement
◦ On-Call: Escalations by Email

Trigger
script

Script (server-side JavaScript) to run. Available only if the Trigger action field is
set to Script.

Note: This action is available only for users with the rota_admin and
admin roles.

4. Click Submit.
Create an escalation policy
An escalation policy includes the policy type that defines the order in which rosters and roster
members receive escalation notifications. You can create a custom escalation policy for a shift
by overriding settings in a default escalation type, for example, by configuring custom delays
between escalation steps.

Before you begin

Role required: rota_admin, rota_manager, or admin

About this task

Users with rota_manager role can edit policies only for their groups. Users with rota_admin and
admin role can edit policies for all the groups.
The escalation type determines the order in which members of a user group are notified about
the escalation. The escalation type depends on the number of rosters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2778


<!-- page 2779 -->
• If a shift has only one roster, the escalation type is automatically set to Rotate through
members and the escalation path goes through the member list of a roster (primary,
secondary, tertiary) to determine whom to notify.
• If the shift has multiple rosters, the escalation type is automatically set to Rotate through
rosters and the escalation path goes through all rosters to determine whom to notify.
• If the shift has a customized escalation hierarchy, the escalation type is set to Custom and the
escalation path goes through members as defined in the escalation hierarchy. See Create an
escalation policy for details.
On-Call Scheduling supports multiple escalation policies per shift; for example, policies based
on the priority of the incident or type of task record.

Procedure
1. Create a custom escalation policy using the escalation designer.
Option

Description

a. Navigate to On-Call Scheduling > On-Call
Schedules.
Access the designer from the On-Call
Schedules module

b. Click the required shift card.
c. In the Shifts tab, click the actions icon for
the shift.
d. Click Override escalation and click OK in
the confirmation window.

Access the designer from the My Group
Schedules module

a. Navigate to On-Call Scheduling > My
Group Schedules.
b. Open the required shift.
c. Click Override Escalation Policy and then
click Yes in the confirmation dialog box.

2. Click the Add Escalation Step icon and then fill in the Add Escalation Step form.
Add Escalation Step form
Field

Description

Name

Name of the escalation step.

Escalation
level

Hierarchy level of the step.

Time to next
step

Wait time from the last reminder to run the next step.

Escalation
set

Escalation set for the step.

Number of
reminders

Number of reminders to send in this step.

Time
between
reminders

Time between each reminder of this step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2779


<!-- page 2780 -->
Field

Description

Escalation audience
Roster

Rosters to which escalation notifications and reminders are sent.

Groups

User groups to which escalation notifications and reminders are sent.

Users

Users to whom escalation notifications and reminders are sent.

Devices

Devices to which escalation notifications and reminders are sent. For
example, a mobile phone that is rotated between group members.

Group
manager

Option to send escalation notifications and reminders to the group manager.

Group
Option to select group managers hierarchically to send escalation
manager field notifications and reminders.
This field is available only when the Group manager check box is selected.
Add Escalation set form
Name

Name the escalation policy.

Shift

The shift to which the escalation policy
applies.

Default

Select the check box to mark the escalation
policy as default. The default escalation
policy is used for all on-call escalations in the
case that none of the specified Conditions
are met.

Table

Choose the table for which you want to set
the escalation policy.

Condition

Use the condition section to add filters to the
escalation criteria.

Description

Short description of the escalation policy.

Active

Select the check box to enable the escalation
policy.

Override user preference

Select the check box to override the user's
contact preferences.

Order

When there are multiple escalation policies
defined for a shift, the order in which to apply
this policy. Smaller numbers first.

3. Optional: To edit an escalation step, click the edit escalation step icon and perform the edits.
4. Optional: Add multiple escalation steps if required.
5. Optional: To edit the escalation hierarchy for the shift, click the actions icon and click Edit
escalation.
6. Optional: To reset to the default escalation type for the shift, click the actions icon and click
Reset escalation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2780


<!-- page 2781 -->
Escalation and reminder settings for rosters
Use the escalation settings to specify how and when escalations occur and when reminder
notifications are sent.

Escalation and reminder settings
You can specify unique settings for each roster. When you configure a roster, you can specify
• Forced communication channel: You can specify a mandatory communication channel: SMS,
voice, Slack, email, Microsoft Teams, or mobile push.
◦ SMS and voice require that Notify is active.
◦ An on-call member must have an SMS device to receive SMS notifications. If the member
does not have an SMS device, then no further attempts are made and the lack of an SMS
device is logged.
For information on setting up MS Teams as a notification channel, see Set up Microsoft Teams
as a contact method for an on-call escalation.
For information on setting up mobile push as a notification channel, see Set up mobile push as
a contact method for an on-call escalation.
• Number of reminders: The number of times the instance sends reminders to a person who
does not reply within the time frame specified by Time between reminders.
• Time between reminders: The time interval between sending reminders.
• Values in the Number of reminders and Time between reminders fields determine the value
in the Time before escalation field. For example, if Number of reminders is 2 and Time
between reminders is 10 minutes, then the Time before escalation is 30 minutes. That is, the
time that passes between the first notification of a non-responsive roster member and the first
notification of the next member in the escalation path.

Instructions
For detailed instructions, see Configure a roster.
Example escalation reports
Because escalation reports depend on the escalation type, report content can vary greatly.
Because escalation reports depend on the escalation type, report content can vary greatly.
Example reports follow:
Example report for a Rotate through members escalation type
In this example, users can see which shifts they are part of in My Schedule reports.
Users who are not the first on-call person appear as well. This action enables the
user to view the shift from a personal perspective, which is the preferred method for
most users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2781


<!-- page 2782 -->
Rotate through members escalation report

Example report for a Rotate through rosters escalation type
In this example, reminders are defined for the Primary, Secondary, and Tertiary
rosters. Members of the primary roster are notified first, then the members of the
secondary, and so on, for all rosters.
Rotate through rosters escalation report

Track the progress of an escalation
Use the On-Call Escalation Tracking page for full visibility into the time line of an active or closed
escalation as it progresses through its on-call escalation path.

Before you begin

Role required: Any role that enables the user to read incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2782


<!-- page 2783 -->
About this task

Note:

• Escalation logging must be enabled to view the On-Call Escalation Tracking page. See
the com.snc.on_call_rotation.log_escalations property in System
properties for On-Call Scheduling.
• An on-call escalation is canceled when the assignment group of the
associated task record, for example, an incident, changes to a different
group without a matching trigger rule. It ensures that an existing
irrelevant escalation workflow is no longer associated with that task

record.

Procedure
1. Navigate to Incident and open the incident.
The Assignment group field includes the On-Call Escalation Tracking icon (
) that indicates
the active status of the escalation. Green indicates an active escalation, and black indicates a
finished escalation.
2. Click the On-Call Escalation Tracking icon.
The On-Call Escalation Tracking dialog box opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2783


<!-- page 2784 -->
Example: On-call escalation tracking
On-call escalation tracking dialog box

1. The Escalation Path section identifies the escalation with start time, group, and shift that
handles the escalation, and Escalation category.
2. Indicators on the time line show status:
a. For active escalations, a green arrow on the path time line indicates the current active
response phase.
b. Unfilled check mark: Skipped response.
c. Filled green check mark: Accepted response.
d. Red X: Rejected response.
3. Click the escalation timestamp for an escalatee or escalatee's name to view timing details. The
list on the Contact Information tab shows contact times, modes of contact, and responses for
the associated escalation phase.
The dots for the escalation timestamps indicate overall acceptance. Point to a dot to view
further information. Color codes of the dots:
◦ Green: At least one escalatee has accepted the escalation.
◦ Orange: At least one escalatee has rejected the escalation.
◦ Red: All escalatees have rejected the escalation.

Note: To enhance the visual differences between dots, use the high-contrast user
interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2784


<!-- page 2785 -->
4. Depending on the contact settings, you can call or send a
direct message to the person from the escalatee's Profile

tab.
Click

to view delegator and delegated user's information.

View details in an escalation log
View the escalation log record for full details on the time line and actions for an on-call escalation
as it progressed through the on-call escalation path. You can also access escalation and
escalation notification information from reports.

Before you begin

Role required: rota_admin or admin

About this task

This topic describes how to use the logs to access escalation information. You can also access
escalation notification information from reports. See Legacy: Viewing the Performance reports for
escalations.
You can enable or disable logging using the

com.snc.on_call_rotation.log_escalations property, as described in System
properties for On-Call Scheduling.

Procedure
1. Navigate to All > On-Call Scheduling > Escalations > Escalation Logs and open the incident.
The On-Call Escalations [Escalation Logs view] opens.
2. Click the Information icon (

) to open the incident record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2785


<!-- page 2786 -->
3. For each item in the related lists, you can click the Information icon ( ) to drill deeper into the
details of the escalation (for example, to determine Time to acknowledge values).

Assigning On-Call Scheduling roles
Admins can assign On-Call Scheduling roles to user groups and to individual users based on
user activities and responsibilities.

On-Call Scheduling roles tasks and access permissions
Role

Shift administrator [rota_admin]

Tasks and access permissions

A user with the rota_admin role can create,
read, update, and delete shifts. The
rota_admin can create shifts using the Create
new schedule wizard, modify shifts and
rosters, and maintain coverage and time off on
the Manage shifts from the Calendar view.
The rota_admin role contains the platform
assignment_rule_admin role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2786


<!-- page 2787 -->
Role

Shift manager [rota_manager]

Tasks and access permissions

The Shift manager role is for the manager of a
group. The purpose of the role is to distinguish
a member that has been delegated the role of
managing shifts of a group. The role cannot be
used to manage all groups on the instance.
The role can be delegated to the members of a
group. See Delegating roles
.
A user with the Shift manager role that meets
any of the following requirements can manage
shifts for their group:
• The user is the manager of the group.
• The user was delegated the rota_manager
role. For information on delegating the
shift manager role, see Delegate the shift
manager [rota_admin] role. For information
on role delegation, see Delegate roles
.

Note: When a user is delegated a
role on behalf of a group, the user can
manage the shifts only for that group.
• The user is configured as a shift manager
for a group. For information on configuring
group preferences, see Configure
preferences for a user group.
itil

A user with the itil role can view the Manage
shifts from the Calendar view, on-call
commitments on reports, and has general
read-only access to their group's shifts.

Premium Dashboard user
[rota_prem_dashboard_user]

Access to the On-Call Premium dashboard.
The Premium dashboard displays
performance metrics across groups. See
Legacy: Viewing the Performance reports for
escalations.

DEPRECATED: roster_admin

Warning: Do not use this role for new
users. This deprecated legacy role exists
only to support customers that still use
the role.

Related topics
Base system Roles
Assign a role to a group
Assign a role to a user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2787


<!-- page 2788 -->
Create a shift template to simplify configuring shifts
You can predefine sets of shift settings using shift templates. Shift templates are a subset of
group templates.

Before you begin

Role required: rota_admin

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Group Templates.
2. From the list of group schedule templates, select the template for which you want to create a
new shift template.
3. On the related list of the shift templates, click New and then fill in the On-Call Shift Template
form.
New shift template fields
Shift name

The friendly name of the shift template. For
example, US or EMEA.

Schedule type

The type of schedule. You can specify
settings for a Simple schedule. Alternatively,
you can select an existing template.

All day

Select the check box if the shift spans the full
workday.

Start Time

If this is not an all-day shift, then specify the
start time of the shift.

End time

The end time of the shift.

End time day

The day on which the shift should end.

Repeat on

For repeating shifts, the days of the week on
which the shift should repeat.

On-Call Group Template

The group template to which the shift
belongs.

Time zone

The time zone of the members of the rosters
that will fill the shift.

Specify holiday Schedule

Select the check box to specify the holiday
schedule for the shift. The setting is applied
to the shift.

4. Click Submit.

Result

The template is now available for you to choose when creating or updating a shift.

Create a group template to simplify configuring schedules
Create templates to help your group create on-call schedules. For example, use the 24/7
template, which is available in the on-call demo data, to create on-call schedules for continuous
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2788


<!-- page 2789 -->
Before you begin

Role required: rota_admin

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Group Templates.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Name

A name for the new template. For example,
8-5.

Description

A short description of the template.

4. Click Submit.

Mobile experience for On-Call Scheduling
View and manage on-call schedules from a mobile device with the On-Call Scheduling mobile
applet.
On-call managers and shift managers can perform the following actions:
• View your group's on-call schedule including any gaps, time-off requests, and so on.
• View roster and escalation details for a shift.
• Review and act on gaps and conflicts.
• Approve/Reject time-off and shift swap requests.
• Provide, replace, or delete coverage and delete time-offs
Members of a roster can perform the following actions:
• View your on-call schedules, who else is on-call during a shift, and your role for the shift
(primary/secondary).
• View the roster and escalation details for a shift.
• Submit time-off and shift swap requests.
• Send a message (Slack /MS teams/ Push notifications) to find a replacement.

Getting started with the On-Call Scheduling mobile app
Use the ServiceNow Agent mobile app to access the On-Call Scheduling mobile application.
Then log in to an instance and work on your schedules.

Before you begin

Depending on your device, go to the Apple App Store or the Google Play Store and download the
ServiceNow Agent mobile app.
Role required: rota_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2789


<!-- page 2790 -->
Procedure
1. Tap the mobile app icon on your device, and then tap + to open an instance.
2. In the instance address field, enter the instance address in one of two ways.
Option

Description

Type the instance address in the instance ad­
dress field.
Manual input

Note: You do not need to include ser­
vice-now.com at the end of the in­
stance name.

Scan QR code

Tap the QR icon (Scan a QR code), and then
scan the QR code that was provided by your
administrator.

3. Tap Login.

Mobile On-Call Scheduling overview
Members and managers of a shift can use the On-Call Scheduling applets and navigation menu
on the Mobile Agent application to view and manage shifts and schedules.

Applet launchers
Applet launchers serve as landing pages or home pages. When you log in to your instance,
you see an applet launcher and the applets configured to display on that launcher. The system
administrator configures the applet launcher and applets for the Now Agent mobile application.

Navigation bar
The navigation bar appears at the bottom of the mobile application screen. This bar includes the
following tabs that you can use to access different applets and application launch pages:
• My Work: As a member of a shift, view your upcoming shifts, request time off, and
accomplish daily tasks related to your schedule.
• My Team: As an on-call manager, view your team's schedule and act upon important
activities, like approving time-off requests and providing coverage.
• Notification: View a list of the notifications that have been pushed to an agent. Tap a
notification in the list to see the details, then tap the details open the case.
• Settings: Manage settings for the mobile application.

Manage work with ITSM Mobile Agent
As a member of a shift, view your upcoming shifts, request time off, and accomplish daily tasks
related to your schedule.
My work application in the ITSM Mobile Agent app has the On-Call Scheduling applet to view
your upcoming shifts and request time-off. You can also view the members of your group
available on call.
For detailed procedure see Managing incidents and tasks using My Work applet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2790


<!-- page 2791 -->
On-call schedule actions- Upcoming shifts
Action

Description

Tap on Upcoming shifts

View all upcoming shifts for the current month.
The shift are grouped based on the events.
Multiple-day event are displayed at the top.

Swipe left on the shift card

Request a time-off for the shift.

Tap on the shift card

View details for the shift like the group, roster,
start time, and end time.

Tap Request time-off

Request a time-off for the shift.

Tap the

Changes the view of the calendar from
monthly to daily.

icon.

On-call schedule- Time-off requests
Tap on Time-off requests

View a list of time-off requests divided into
pending and completed requests.

Tap the filter icon

Filter the time-off requests.

Tap the menu icon

Request time off from the Time-off requests
screen.

Tap a pending time-off request

View the details of the request.

Tap Cancel time-off

Cancel the time-off by clicking YES on the
confirmation message.

On-call schedule- Who is on-call
Tap on Who is on-call

View a form that lets you select a group from a
list of groups.

Tap the right arrow

View the list of groups that should be on-call in
a schedule.

Select a group

Select a group from the list of groups and
click the arrow to view who is on-call for the
schedule.

Manage team with ITSM Mobile Agent
As a shift manager, view your team's schedule and perform activities like approving time-off
requests and providing coverage.
Upcoming shifts in On call schedule actions
Action

Description

Tap Upcoming shifts

View all upcoming shifts for the current month.

Swipe left on the shift card

Request time off for this shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2791


<!-- page 2792 -->
Upcoming shifts in On call schedule actions (continued)
Action

Description

Tap the shift card

View details for the shift (like group, roster,
start time, and end time).

Tap Request time-off

Request a time-off for this shift by providing
information on the Request time-off screen.

Tap Provide Coverage

Provide coverage for a shift member.

Time off requests in On-call schedule actions
Action

Description

Tap Time-off requests

View a list of time-off requests divided into
pending and completed requests.

Tap the filter icon

Filter the time-off requests using filters like End
date or group.

Tap the menu icon

Request time off on the Time-off requests
screen.

Tap a pending time-off request

View details of the request.

Tap Approve or Reject

Approve or reject a time-off request.

Note: Add a reason for rejection of a
time-off request.

Gaps and conflicts in On call schedule actions
Action

Description

Tap Gaps and conflicts

View a list of all the gaps and conflicts for the
shifts in your group.

Tap any day of the month

View all gaps and conflicts for shifts on that
day.

Tap any of the shift cards

View gaps and conflicts for the shift.

Swipe left on any of the shift cards

Tap Provide coverage to provide coverage for
the shift.

Tap Provide Coverage

Provide coverage for a gap in the shift.

For detailed procedure see Managing teams and incidents using My Team applet.

Reference for on-call scheduling
Reference section provides additional information about components installed with On-Call
Scheduling

Definitions of On-Call Scheduling terms
Some terms have specific meaning in the On-Call Scheduling application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2792


<!-- page 2793 -->
Shift
A shift is the time period during which the members of a roster are on-call. You can
view the details of any shift from the calendar.
Roster
A roster is a set of members that is on call for a shift. Because there is typically a
roster for each escalation level (primary, secondary, tertiary), there are typically
multiple rosters for a shift. The members of any roster are contacted in the order that
is defined by the escalation policy.
Roster members (members)
The members of a roster are the users that have been added to a single roster.
Roster members typically have the itil role. During an assigned shift, members must
be available to act if notified of an escalation.
• Users must be members of the same group.
• The shift manager (rota_manager role) might or might not be a roster member.
Rotation
Rotation is the process of exchanging the turn of duty of members of a roster.
Members' From and To dates determine when they are members of the roster.
Schedule
A schedule specifies the times that shifts are active. For example, a company that
wants coverage of tasks around the clock would use a 24-7 schedule. Companies
that provide support around the globe could use a follow the sun schedule to cover
time zones across continents.
Escalation
Escalations are a series of notifications to roster members for a task. The
notifications happen in the order specified by the escalation path for the shift.
Notification
On-Call Scheduling sends escalation notifications to members of a shift.
Notification methods include email, voice, Slack, SMS, Microsoft Teams, and mobile
push.
Holidays and time off
Roster members can request time off. Managers can plan for and manage holidays
and requests for time off.
Related topics
On-Call Scheduling

Components installed with On-call scheduling
Several types of components are installed with activation of On-call scheduling, including tables
and user roles.
Tables installed with On-Call Scheduling
On-Call Scheduling adds the following tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2793


<!-- page 2794 -->
Tables installed with On-Call Scheduling

Note: Tables with prefix "v_" such as [v_alternate_rotation] are view-only tables used for
generating on-call reports. Do not use these tables to create reports.

Display name [Table name]

Description

On-call Member
[cmn_rota_member]

Table of group members that are participating in the oncall schedule and escalations.

Roster [cmn_rota_roster]

Table that holds the members of the shift, the shift interval,
and escalation settings.

Shift [cmn_rota]

The table that holds the on-call schedule for a shift.

Roster Schedule Span
[roster_schedule_span]

Table that contains the schedule span definitions. On-Call
Scheduling adds a group reference and the On-call type to
the Type field.

Trigger Rule [trigger_rule]

Table that extends the Assignment Rule
[sysrule_assignment] table and stores when the escalation
process is triggered and what actions to take.

On-call Notifications [v_on_call]

Table that lists the reminder notifications that were sent.

Rotation Schedule [v_rotation]

Table that lists shift schedules by start date and time and
includes user contact information, if available.

User Rotation Schedule
[v_user_rotation]

Table that lists the shift schedule by user.

Alternate Rotation Schedule
[v_alternate_rotation]

Table that lists the alternate user schedules by shift and
roster and the start and end date and time stamps.

Rotation Escalation
[cmn_rota_escalation]

Table that lists the escalations including the event and last
updated time stamp.

Shift Contact Preference
[cmn_rota_contact_preference]

Table that holds the contact preferences for default and
custom escalations.

On-Call Communication Type
[on_call_communication_type]

Table that lists the type of communication channel used.

On-Call Group Template
[sys_on_call_group_template]

Table with information about the template used to create/
edit a schedule of a group.

On-Call Shift Template
[sys_on_call_shift_template]

Table with information about the template used to create/
edit a schedule of a shift.

On-Call User Preference
[on_call_user_preference]

Table with information on a member's preferences.

On-Call User Contact Preference
Table with information on a member's contact preferences.
[on_call_user_contact_preference]
[sys_on_call_contact_source]

Table that lists the contact sources and devices

On-Call Escalation
[on_call_escalation]

Table that records the source, group, and related details
for escalation tracking.

On-Call Escalation Level
[on_call_escalation_level]

Table that logs the escalation levels reached for an
escalation and related details for escalation tracking.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2794


<!-- page 2795 -->
Display name [Table name]

Description

On-Call Escalation
Contact Attempt
[on_call_escalation_con_attempt]

Table that logs contact attempts at an escalation level and
related details for escalation tracking.

On-Call Escalation Notification
[on_call_escalation_comm]

Table that logs both the notifications and the responses
for a contact attempt and related details for escalation
tracking.

On-Call Escalation Response
[on_call_escalation_response]

Table that tracks On-Call escalation responses by On-Call
workflows. Once consumed, entries are deleted by the
system.

Trigger Rule Table Configuration
[trigger_rule_table_cfg]

Table that lists the tables that are enabled for creating
escalation trigger rules. The table is used to enable the
escalation trigger rules for the tables that do not extend
tasks.

On-Call Add Member
[on_call_add_member]

Table that records the member details for adding a
member to the roster.

On-Call Remove Member
[on_call_remove_member]

Table that records the member details for removing a
member from the roster.

On-Call Move Member
[on_call_swap_member]

Table that records the member details for swapping the
order of a member with the target member or moving the
order of a member after the target member in the roster.

Scheduled jobs installed with On-Call Scheduling
On-Call Scheduling includes scheduled jobs.

Schedule job

Description

On-Call Reminders Sends daily reminders to on-call roster members.
On-Call Gaps
Conflicts Report

Sends a weekly report of gaps and conflicts in on-call schedules to shift
managers, group managers, and admin.

Quick start tests for On-Call Scheduling
Validate that On-Call Scheduling still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.

On-Call Scheduling
Activate the On-Call Scheduling plugin (com.snc.on_call_rotation) to run the On-Call Scheduling
quick start tests.
On-Call: On-Call scheduling ATF Suites
Test

Description

Release version

On-Call: Verify request timeoff when PTO approval
preferences is Not allowed

Verify whether you can
request a time-off when PTO
approval preferences is set to
Not allowed

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2795


<!-- page 2796 -->
On-Call: On-Call scheduling ATF Suites (continued)
Test

Description

Release version

On-Call: Create overlapping
shifts without selecting a
template

Verify whether you can create
overlapping shifts without
selecting a template.

Orlando

On-Call: Create overlapping
shifts when allow shift overlap
is set to No

Verify whether you can create Orlando
overlapping shifts when Allow
overlap is set to No.

On-Call: Request timeoff when PTO approval
preferences is with approval

Verify whether you can
request a time-off when PTO
approval preference is With
approval.

Orlando

On-Call: Assign shift
managers for maintaining oncall schedules.

Verify whether shift managers
can maintain on-call
schedules.

Orlando

On-Call: Search on-call
schedules by user name

Verify whether you can search Orlando
for on-call schedules by user
name.

On-Call: Search on-call
schedules by group name or
schedule name

Verify whether you can search Orlando
for on-call schedules by group
name or schedule.

On-Call: Roster details for
overlapping shifts with the
escalation rule 'Escalate to
incoming shift'

Verify the roster details for
overlapping shifts when
the escalation rule is set to
Escalate to incoming shifts.

Orlando

On-Call: Calendar preview
with timezone options

Verify whether the calendar
preview is available with the
timezone options.

Orlando

On-Call: Create overlapping
shifts by selecting a template

Verify whether you can create Orlando
overlapping shifts by selecting
a template.

On-Call: Show active shifts

Orlando

On-Call: Make shift draft/
publish form shift form

Verify whether you can
publish/unpublish a shift and
alternate between making the
rota Draft and Publish state
from the form.

Orlando

On-Call: Roster Details for
overlapping shifts with the
escalation rule 'Escalate to
outgoing shift'

Verify the roster details for
overlapping shifts when
the escalation rule is set to
Escalate to outgoing shifts.

Orlando

On-Call: Roster Details for
overlapping shifts with the
escalation rule 'Escalate to all
shifts'

Verify the roster details for
overlapping shifts when
the escalation rule is set to
Escalate to all shifts.

Orlando

On-call: Verify On-Call
workbench

Test to verify the On-Call
workbench layout.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2796


<!-- page 2797 -->
On-Call: On-Call scheduling ATF Suites (continued)
Test

Description

Release version

On-call: Hide or show shifts

Verify whether you can hide
or show shifts from On-Call
calendar

Orlando

To learn more about On-Call Scheduling, see On-Call Scheduling.
Related topics
Quick start tests

System properties for On-Call Scheduling
The property settings configure On-Call Scheduling operations.

Setting properties from the UI
You can set most property values from the On-Call Properties page at On-Call Scheduling >
Administration > On-Call Properties.

Property

Description

com.snc.on_call_rotation.calendar_macro

The name of the macro that provides a calend
DHTMLX scheduler. Fullcalendar is set by ocf

com.snc.on_call_rotation.support_legacy_spans

Used to search for override or time-off records
records and not the standard roster_schedule

com.snc.on_call_rotation.pto.approval.required

Configuration to determine if PTO requests ne

com.snc.on_call_rotation.factor_daily_rotation_interval_all_day

If true, mandates daily rotation to occur at mid
roster start time for the next day.

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.log.level

Enable logs for debugging.

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.log_escalations

Enable logging of escalations. See View detai

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.calendar_macro

The name of the macro that provides a calend
scheduler. Fullcalendar is set by ocf_calen

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.support_legacy_spans

Used to search for override or time-off records
cmn_schedule_span table and not in the stan

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.pto.approval.required

Configuration to determine whether PTO requ

Location: System Property [sys_properties] ta
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2797


<!-- page 2798 -->
Property

Description

com.snc.on_call_rotation.contrast

Sets text color to either white or black depend
background color on the calendar. The followi
• ContrastYIQ
• ContrastPercent
• ContrastLuminance

Note: ContrastYIQ is used if the propert

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.access.debug

If true, enable general On-Call logs for debug

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.reminders.showtz

Include a user's time zone in On-Call Shift Rem

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.show_legacy_calendar

Show the legacy On-Call calendar.

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.calendar_read_roles

Comma-separated list of roles that can read th

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.cover.color

Sets the color of the span for On-Call coverag

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.timeoff.color

Sets the color of the span when the type is tim

Location: System Property [sys_properties] ta
com.snc.on_call_rotation.landing_page.group_limit

The number of On-Call schedules loaded per

com.snc.on_call_rotation.landing_page.max_groups

The maximum number of On-Call schedules t

Note: The default value is chosen as the
com.snc.on_call_rotation.landing_page.pinned_notification

Displays a message when any schedule is pin

com.snc.on_call_rotation.landing_page.notification_timeout

Specifies the time (in milliseconds) until the m

com.snc.on_call_rotation.landing_page.show_wizard_btn

Displays the New button to open the On-Call

com.snc.iam.conference_call_follow_on_call_escalation

If selected, On-Call the escalation path is follo

This property is added when the Incident Com
activated.
com.snc.iam.conference_call_escalation_workflow

If selected, custom escalation hierarchy is app

This property is added when the Incident Com
activated.
com.snc.on_call_rotation.landing_page.show_pending_actions

If true, displays the pending actions on the On

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2798


<!-- page 2799 -->
Property

Description

com.snc.on_call_rotation.allow_rota_overlap

If true, overlapping shifts are allowed for a use

com.snc.on_call_rotation.escalation_rule_rota_overlap

Escalation rule that applies for shift overlap. O
• Escalate to outgoing Shift
• Escalate to incoming Shift
• Escalate to all Shifts

com.snc.on_call_rotation.pto.configuration

Specifies how a roster member can create vac
• With approval
• Without approval
• Not allowed

com.snc.notify.default.conference_call_follow_on_call_escalation If true, the On-Call escalation path is followed
added to a conference call. Users can create
types such as incident. Example: For Incident

com.snc.notify.incident.confere

Note: The property is enabled only whe
com.snc.notify.default.on_call_escalation_level

Fetches the number of users from the group e
plan. A value of 1 fetches only the first level of

Note:

• This is the default property that is used
configured. To use different workflows f
create a new property by replacing the
• This property is used only when the

com.snc.notify.default.conf
sys property is false.

• The property is enabled only when the
com.snc.notify.default.conference_call_escalation_workflow

The sys_id of the default workflow that must b

Note:

• This is the default property that is used
type is configured. To use different work
incident or problem), create a new prop
in the key with the task type. Example: F

com.snc.notify.incident.con
• The property is enabled only when the
com.snc.on_call_rotation.use_slack_for_dm

If false, disables direct messaging via Slack o

com.snc.on_call_rotation.use_msteams_for_dm

If false, disables direct messaging via Microso

com.snc.on_call.announcement_message

If false, removes the banner of SOW announc

com.snc.on_call_rotation.new_trigger_engine

If true, a new on-call trigger engine is activate
runner queue. As the on-call subflows are ma

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2799


<!-- page 2800 -->
Property

Description

runner queue compared to the traditional eve
at the same time and are in the process queu

On-Call Scheduling subflows
Subflows in On-Call Scheduling enable you to build and configure on-call escalation notification
flows.

Using subflows for on-call escalation
A subflow is an automated process consisting of a sequence of reusable actions, data inputs,
and outputs. In contrast to flows, subflows do not have a trigger but instead run when called from
a flow, from another subflow, or from a script. Compared to workflows, subflows enables you to
easily configure channels, and notification and response messages. Maintain, build, and modify
your own custom on-call scheduling flows in Workflow Studio with subflows for new instances.
The following subflows are available with On-call:
• On-Call: Assign
• On-Call: Assign and Notify
• On-Call: Assign by Acknowledgment
• On-Call: Assign by Acknowledgement per Rota
• On-Call: Assign by Acknowledgement Voice
• On-Call: Check Assignment Response
• On-Call: Conference Call Escalation
• On-Call: Escalations by Email
• On-Call: Escalation By Email per Rota
• On-Call: Time-off approval
Using Workflow Studio, you can build and configure various components such as subflow
inputs, outputs, actions, and flow variables such as escalation levels. You can use the contextual
comments in the flow designer to help you configure the subflows. For more information on
building and configuring subflows in Workflow Studio, see
Workflow Studio

Subflows activation and uses
Starting from the Zurich release, for the zBoot or new users, On-Call Scheduling uses subflows
and workflows are no longer supported.
For existing or upgrade users, in Zurich, your current workflows continue to be supported along
with the subflows.
With the migration from legacy workflow to subflows, each workflow has a corresponding subflow
with similar name and functional capabilities.
To activate the subflows, you must navigate to All > On-Call Scheduling > Administration >
Trigger Rules and select the subflow for a trigger rule to activate and use the subflow. For more
information, see Create an escalation trigger rule.
For using subflows in Service Operations Workspace (SOW), SOW version must be 8.0 or later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2800


<!-- page 2801 -->
Subflows installed with On-Call Scheduling
Subflows are installed with On-Call Scheduling to support building on-call escalation notification
configurable flows.
Starting from the Zurich release, the following subflows are available instead of the workflows as
the workflows are deprecated:
On-Call: Assign by Acknowledgement
The subflow sends notifications to the members on the escalation path via
channels configured in the user or shift preferences. Assignment occurs after
the On-Call member acknowledges the notification.The subflow uses data from
escalation settings, including overlapping shifts and custom escalation settings
for shifts and rosters. Depending on the settings, the subflow moves through the
escalation path and sends notifications by SMS, voice, or email that ask users to
accept a task.
On-call notifications are sent to multiple channels such as SMS or email
simultaneously instead of sending it sequentially.
The subflow respects time off as specified in rosters. Roster members with time off
are not included in the escalation path and no notifications are sent to them.
If Force communication channel is specified in the Escalation settings for rosters,
the Subscription-based notifications
is used: SMS, email, voice, Microsoft Teams,
or mobile push. If the preferred method is SMS and the on-call member does not
have an SMS device defined, the user is not contacted even if the user has an email
address. When forcing a communication channel on an escalation level does not
succeed, no further communication attempts are made. The failed contact attempt
is logged. The Force communication channel setting is available only if Notify is
installed.
• Until acknowledged, sends on-call notifications to escalatees based on the
escalation policy and configured contact preference.
• Logs escalation details for each communication.
• Resumes the subflow immediately after rejection.
• Catch-all users are treated like all other escalation users: A response is expected,
and the incident might be assigned to them based on their response.

Note: This subflow internally launches the On-Call: Assign by
Acknowledgement per Rota subflow for each shift if multiple shifts are
available at a time for a group.
On-Call: Escalations by Email
• Until acknowledged, sends on-call escalation notifications via email to oncall members based on the escalation policy and configured email contact
preferences.
• Logs escalation details for each communication.
• Catch-all users are treated like all other escalation users: A response is expected
and the incident might be assigned to them based on their response.

Note: This subflow internally launches the On-Call: Escalation By Email per
Rota subflow for each shift if multiple shifts are available at a time for a group.
On-Call: Assign
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2801


<!-- page 2802 -->
Assigns the task directly to the current primary roster member. You can also enable
the Notify to assignee check box to notify the member about the assignment. By
default, the Notify to assignee check box is cleared for On-Call: Assign subflow.
On-Call: Assign and Notify
Assigns the task directly to the current primary roster member and notifies the
member about the assignment. If no member is available at the current time, the
subflow ends. By default, the Notify to assignee check box is selected for On-Call:
Assign and Notify subflow.
On-Call: Check Assignment Response
• Triggered when an inbound SMS message is received.
• Based on the response in the message, assigns the task to the roster member.
• Updates the response in the corresponding notification record.
On-Call: Assign by Acknowledgement Voice
• Triggered when an outbound call is made from the on-call number to any user or
device.
• Based on the response to the voice call, assigns the task to the roster member.
• Updates the response in the corresponding notification record.
On-Call: Time-off approval
• Triggered when vacation time off (PTO) is requested by a user.
• Sends approval requests to appropriate managers.
On-Call: Conference Call Escalation
• Triggered when a conference call is initiated and a group is added to the call.
• Makes a voice call to the first group member in the escalation policy.
• If the member does not join the conference call, then escalates to next group
member in the policy

Note: All the flows and channel information related to notifications channels including
the primary, secondary channel, user preferences are placed inside the On-call Send
Notifications subflow. This subflow is invoked to send notifications to the on-call members
or user groups.

On-Call Scheduling workflows
Workflows perform On-Call Scheduling operations.

Workflows installed with On-Call Scheduling
On-Call: Assign by Acknowledgement
The workflow uses data from escalation settings, including overlapping shifts and
custom escalation settings for shifts and rosters. Depending on the settings, the
workflow moves through the escalation path and sends notifications by SMS, voice,
or email that ask users to accept a task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2802


<!-- page 2803 -->
To send notifications, a trigger rule is required. Trigger rules supersede some OnCall business rules in earlier releases. To define a trigger rule, you must deactivate
business rules that you customized in earlier releases.
The workflow respects time off as specified in rosters. Roster members with time off
are not included in the escalation path and no notifications are sent to them.
If Force communication channel is specified in the Escalation settings for rosters,
the Subscription-based notifications
is used: SMS, email, voice, Microsoft Teams,
or mobile push. If the preferred method is SMS and the on-call member does not
have an SMS device defined, the user is not contacted even if the user has an email
address. When forcing a communication channel on an escalation level does not
succeed, no further communication attempts are made. The failed contact attempt
is logged. The setting Force communication channel is available only if Notify is
installed.
• Until acknowledged, sends on-call notifications to escalatees based on the
escalation policy and configured contact preference.
• Logs escalation details for each communication.
• Resumes the workflow immediately after rejection.
• Catch-all users are treated like all other escalation users: A response is expected
and the incident might be assigned to them based on their response.

Note: This workflow internally launches the On-Call: Assign by
Acknowledgement per Rota workflow.
On-Call: Escalations by Email
• Until acknowledged, sends on-call email notifications to escalatees based on the
escalation policy and configured email contact preferences.
• Logs escalation details for each communication.
• Catch-all users are treated like all other escalation users: A response is expected
and the incident might be assigned to them based on their response.
On-Call: Assign
Assigns the task to the current primary roster member.
On-Call: Check Assignment Response
• Triggered when an inbound SMS message is received.
• Based on the response in the message, assigns the task to the roster member.
• Updates the response in the corresponding notification record.
On-Call: Assign by Acknowledgement Voice
• Triggered when an outbound call is made from the on-call number to any user or
device.
• Based on the response to the voice call, assigns the task to the roster member.
• Updates the response in the corresponding notification record.
On-Call: Time-off approval

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2803


<!-- page 2804 -->
• Triggered when vacation time off (PTO) is requested by a user.
• Sends approval requests to appropriate managers.
On-Call: Conference Call Escalation
• Triggered when a conference call is initiated and a group is added to the call.
• Makes a voice call to the first group member in the escalation policy.
• If the member does not join the conference call, then escalates to next group
member in the policy
Workflow Activities for On-Call Scheduling
Workflow activities in On-Call Scheduling workflows.

Escalation workflow activities
On-Call: Log Escalation Start
Creates an escalation record based on group, task, and workflow details.

Note:
The escalation that the workflow creates the
workflow.scratchpad.escalationSysId sys_id. Use the sys_id in
any of the other workflow activities.

Setting

Description

Group

sys_id of the group that the escalation belongs to.

Table

Table name of the task record of the incident.

Source

sys_id of the task record on which the escalation
happened.

WorkflowDefinition

sys_id of the workflow definition that is used to escalate.

WorkflowContext

sys_id of the workflow context.

ParentEscalationLevelId sys_id of the parent escalation in the case that the
escalation was triggered from another escalation.
Category

Category of the escalation. One of:
[assign_by_acknowledgement, auto_assignment,
notify_manual_assignmen,conferencing].

Channels

Comma-separated list of the channels used to
communicate during the escalation. Any or all of: [email,
sms, voice, slack]. For example, sms,email,voice

IgnoreDefReminders

If true, the workflow sends notification reminders as
specified by the workflow, rather than as specified in OnCall Escalation settings. For example, in Conference OnCall escalations, the workflow might to dial the on-call
members at one-minute intervals instead of the standard
15-minute intervals.

On-Call: Log Escalation Level
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2804


<!-- page 2805 -->
Creates an escalation level record given escalation and level details.

Setting

Description

EscalationId sys_id of the escalation to which the level belongs.
RotaId

sys_id of the shift for which the escalation is happening.

Level

Current escalation level. For example, 2.

Escalatee

Escalatee object at current escalation level. For example,
getEscalationPlan()[1].

CatchAll

True if the escalation level belongs to a catch-all.

On-Call: Log Escalation Attempt
Creates a Contact attempt record given an escalation, level, and attempt details.

Setting

Description

EscalationId

sys_id of the escalation to which the contact attempt belongs.

RotaId

sys_id of the shift for which the escalation is happening.

Level

Current escalation level. For example, 2.

ContactAttempt Contact attempt number within the escalation level. For example,
1.
On-Call: Log Escalation Communication
Creates a communication record given escalation, level, attempt, and
communication details.

Setting

Description

EscalationId

sys_id of the escalation to which the communication belongs.

RotaId

sys_id of the shift for which escalation is happening.

Level

Current escalation level. For example, 2.

ContactAttempt Contact attempt number within the escalation level. For example,
1.
EscalateeType

Type of escalatee to whom the communication is sent. One of:
[user,device]

EscalateeId

sys_id of the user or device, depending on escalatee type.

CommType

Type of communication. One of: [sms, voice, email, slack]

CommValue

Phone number or email address, depending on communication
type. For example, abel.tuter@servicenow.com

Status

Status of the communication. One of: [sent, failed].

Escalatee

Escalatee object at current escalation level. For example,
getEscalationPlan()[1].

CatchAll

True if the escalation level belongs to a catch-all.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2805


<!-- page 2806 -->
On-Call: Log Escalation End
Completes the escalation by setting active flag to false.

Setting

Description

EscalationId

sys_id of the escalation.

On-Call: Send Notification
Sends notification to the current escalatee via voice, SMS, Slack, Microsoft Teams,
or mobile push.

Setting

Description

Notification
type

Type of notification. One of: [sms, voice, slack].

Message

Text of message to send to current escalatee if notification type
is sms.

Notification
detail

List of parameters that are required for a notification:
• SMS: notify_number, users, groups, numbers
• Voice: numberToCallFrom, numberToCall, user
• Slack: slack user, taskId, catchAllOption, wFContextId
• Microsoft Teams: user, taskId, catchAllOption, wFContextId
• Mobile push: userSysId, tablename, recordSysId

On-Call: Manage Escalation Response
Manage an escalation response record (insert escalation record, clean escalation
records, update response to an escalation). An escalation response record keeps
track of a response received for an escalation through the SMS, voice, email, or
Slack notification channels. An escalation response record is used to resume the
On-Call: Assign by Acknowledgement workflow upon rejection of an escalation.
Setting

Description

Workflow
Context

Workflow context ID.

Escalatee Id

UserID of the current escalatee.

Table Name

Table name of the task record. For example, incident.

Current Record
Id

sys_id of the task record.

Action Type

Type of action. One of: [add,clean,update]

Response

Response by escalatee to an escalation. One of:
[accepted,rejected]

Example uses:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2806


<!-- page 2807 -->
• Insert (add) - Workflow Context, Escalatee ID, Table Name, Current Record ID
• Clean - Workflow Context
• Update - Escalatee ID, Table Name, Current Record ID, Response

Domain separation and On-Call Scheduling
Domain separation is supported in On-Call Scheduling. The On-Call Scheduling application
helps you to ensure that dedicated support team members are available to resolve issues as
they arise. Domain separation enables you to separate data, processes, and administrative
tasks into logical groupings called domains. You can control several aspects of this separation,
including which users can see and access data.

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

On-Call Scheduling domain separation overview
• On-Call Scheduling behaves the same with domain support as it does without domain support.
Customers have the same ability to create and maintain on-call shifts.
• A shift includes a selection of users from a group. It uses the base-system Advanced
Schedules Support plugin to specify when the shift is active.

How domain separation works in On-Call Scheduling
With domain separation enabled, a user with the rota_admin role uses the Create New Schedule
wizard to generate schedules in the group's domain. All generated related records for the new
schedule are created with a matching domain.
This setup is enforced with a combination of the domain field and the domain_master
attribute. The attribute is used to derive the domain of the record from the master record. For the
roster table, it derives the domain from the associated shift record.

Domain-separated tables
• Shift [cmn_rota]
• Rotation Escalation [cmn_rota_escalation]
• Shift Escalation Set [cmn_rota_escalation_set]
• Shift Escalation Step Definition [cmn_rota_esc_step_def]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2807


<!-- page 2808 -->
• On-Call Group Preference [on_call_group_preference]
• On-Call Contact Source [sys_on_call_contact_source]
• On-Call Group Template [sys_on_call_group_template]
• On-Call Shift Template [sys_on_call_shift_template]
• On-Call Template Contact Attempt [on_call_template_contact_attempt]
• On-Call Template Contact Preference [on_call_template_contact_preference]
• On-Call Template Escalation Policy [on_call_template_escalation_policy]
• On-Call Template Escalation Step [on_call_template_escalation_step]
• On-Call Escalation [on_call_escalation]
• On-Call Escalation Level [on_call_escalation_level]
• On-Call Escalation Contact Attempt [on_call_escalation_con_attempt]
• On-Call Escalation Notification [on_call_escalation_comm]

Tables that use the domain_master attribute
• Roster [cmn_rota_roster]: domain_master=rota
• Rota Member [cmn_rota_member]: domain_master=roster
• Roster Schedule Span [roster_schedule_span]: domain_master=schedule
• Shift Escalation Set [cmn_rota_escalation_set]: domain_master=cmn_rota
• Shift Escalation Step Definition [cmn_rota_esc_step_def]:
domain_master=cmn_rota_escalation_set
• On-Call Escalation Level [on_call_escalation_level]: domain_master=escalation
• On-Call Escalation Contact Attempt [on_call_escalation_con_attempt]:
domain_master=escalation_level
• On-Call Escalation Notification [on_call_escalation_comm]:
domain_master=contact_attempt
To learn more, see Domain support for schedules

Use cases
For the following On-Call Scheduling features, domain separation ensures that end users
(whether they possess the itil or rota_admin role) are able to see only shifts accessible via their
domain:
• On-Call calendars
• On-Call schedules
• My Schedule reports
• Schedule reports
• Escalations
Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2808


