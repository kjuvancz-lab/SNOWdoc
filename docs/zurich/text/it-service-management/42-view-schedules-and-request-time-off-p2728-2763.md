# Zurich IT Service Management — View schedules and request time-off

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2728–2763 of 3857

Sections: View schedules and request time-off (p2728); Manage schedules and shifts (p2733)

---

<!-- page 2728 -->
• Voice
• Slack
• Microsoft Teams
• Mobile Push
Besides the on-call notification channels available in the base system, you can configure your
own service provider and add the provider as the custom on-call notification channel.
To define, configure and integrate a custom channel in On-Call Scheduling for sending
on-call escalation notification, refer to the https://support.servicenow.com/kb?
id=kb_article_view&sysparm_article=KB2299454 .

Viewing schedules and request time-off
View your schedule, see the members of your group, request time off, and set your preferences
for contact methods.
As an itil user you can perform these tasks:
• View On-Call schedules
• Configure my availability and contact preferences
• Request time off and suggest who can cover

View On-Call schedules
The tiled grouping of on-call shift schedules helps you to review shifts rather than having to
search through all shifts in the system.

Before you begin

Role required: itil, rota_manager, or rota_admin

About this task

Each card on the On-Call Schedules page represents a shift and identifies the on-call members.
A card displays the group name, the shift name, and rosters (Primary and Secondary).
On-Call schedules enable you to view the presence of on-call members. For more information on
presence, see User presence .

Note: By default, on-call schedules are loaded in batches of 20. You can use the

com.snc.on_call_rotation.landing_page.group_limit property update
the setting. For details, see System properties for On-Call Scheduling.

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Schedules.

Note: For a group with overlapping shifts, shift cards are displayed based on the
escalation setting.
The following tabs appear:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2728


<!-- page 2729 -->
◦ Pinned On-Call Schedules: Displays a personalized list of who is on-call for the groups you
are most interested in. Pin groups here for fast access.
◦ My On-Call Schedules: Displays only the On-Call schedules that you manage or are a
member of.
◦ All On-Call Schedules: Displays the list of all groups that have active On-Call schedules. You
can also find who is on-call for groups that you have not pinned.
Use the filter to display On-call schedules by group, schedule, or username.
2. Optional: In the All On-Call Schedules tab, pin a shift card by pointing to the card and clicking
the Pin icon (

).

Note: When you pin a shift card of a group with overlapping shifts, all other shift cards
of that group are also pinned.
3. Optional: In the Pinned On-Call Schedules tab, unpin a shift card by clicking the Pin icon.
4. To view details of a shift, click the shift card.

Note: Each shift card displays only the first two rosters.
If you are a shift manager or roster member, the schedule opens. For more information, see
Updating an On-Call schedule. In all other cases, you are redirected to the calendar view. For
more information on on-call scheduling calendars, see Manage shifts from the Calendar view.
5. Optional: To view roster and escalation details, click Roster and escalation details on the shift
card.
A dialog box displays the following tabs:
◦ Roster: Displays a list of all rosters and contact number, email address, group, and the shift
for the active On-Call member.
◦ Escalation Path: Displays the escalation path defined for the shift.

Note: By default, the details of the on-call member of the primary roster are displayed.

Click Send a direct message to send a direct message to the on-call member.
Alternatively, call the member if the Notify WebRTC is configured. For more information
on real-time messaging, see Connect . For information on Notify WebRTC, see Forward
call workflow activity . For information on the Specify a valid Notify Number with voice
capability property that enables the Notify WebRTC for on-call, see System properties for
On-Call Scheduling.
6. Optional: To view gaps and conflicts in a shift, click the info badge on the shift card.
◦ This is applicable only for group managers, shift managers, and delegated shift managers.
◦ This information is displayed based on the setting of the

com.snc.on_call_rotation.landing_page.show_pending_actions
property. For more information, see System properties for On-Call Scheduling.

Configure my availability and contact preferences
You specify your availability and the methods to use to contact you for On-Call escalations. The
instance notifies you if an admin overrides your settings for some reason.

Before you begin

Role required: itil or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2729


<!-- page 2730 -->
Procedure
1. Navigate to All > On-Call Scheduling > My Preferences
2. On the Contact Attempts tab, click the + icon and fill in the Availability form.
Availability form
Name

A unique and meaningful name for this
record of your availability settings.

User

The user for whom you are creating the
availability (typically yourself).

Active

Option to enable this availability record.
Select the check box to activate your
availability.

Schedule type

Select an existing availability schedule or
create a custom schedule.

Use these fields to create a custom availability schedule:
Start time

If this shift is not an all-day shift, then specify
the start time of your availability.

End time

The end time of your availability.

Repeat on

The time of a single duration. For example,
if you select weekly repetitions, specify the
days of the week when you are available.

Time zone

The time zone of your availability.

Note: The time zone is not editable
and is taken from your user's profile.

3. Click Submit.
4. On the Contact Preferences tab, click the contact Attempt method to configure.
The Contact Preferences dialog box appears.
5. Select the contact methods that the instance should use to contact you while you are on-call.
The methods you select are the contact methods that the instance should use for this contact
attempt. Depending on your instance configuration, you can specify any or all of the following
notification methods:
◦ SMS text
◦ Email
◦ Slack
◦ Voice
◦ Microsoft Teams. For information on setting up this channel, see Set up Microsoft Teams as a
contact method for an on-call escalation.
◦ Mobile push. For information on setting up this channel, see Set up mobile push as a contact
method for an on-call escalation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2730


<!-- page 2731 -->
6. Repeat the process for each contact attempt.

Note: Admins can specify overrides of your contact methods for all members of your
group. Override settings appear on the Contact Overrides tab.

View my group schedules
You can see the on-call schedules for your groups.

Before you begin
Role required: itil

Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Open a schedule.
3. Optional: To view a roster, click its order number in the Rosters related list.

View my personal schedule on the My Schedule report
You can view when you are on call and the escalation lineup for a particular date range.

Before you begin
Role required: itil

Procedure
1. Navigate to All > On-Call Scheduling > Reports > My Schedule Report.
2. In the Show for field, select a date range and then click Submit.
The User Rotation Schedules list shows the shift, the roster, and the start and end times for
each timeslot.

3. To view alternate rosters, expand an entry by clicking the arrow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2731


<!-- page 2732 -->
The alternate roster appears for that timeslot. For example, if you are the primary contact, this
list shows secondary and tertiary contacts for the timeslot.

Request time off and suggest who can cover
You can schedule your own time off and suggest a suitable cover from among fellow roster
members.

Before you begin

To use this feature, the system administrator must enable the Configuration
to determine if PTO requests need approval system property
(com.snc.on_call_rotation.pto.approval.required).
Role required: itil

Procedure
1. Navigate to On-call Scheduling > On-call Calendar.
2. Select the shift entry for the time off.
3. Click Schedule Time Off and fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2732


<!-- page 2733 -->
Schedule time off form
Field

Description

Member

The member getting time off (typically, yourself).

Starts and Ends

Start and end dates for the time off.

Propose cover

Name of a roster member who can provide cover in the absence.

All day event

Option to specify that the time-off period involves full workdays.

Notes

Optional. Comments to help the shift manager understand the request.

4. Click Schedule.
The time off is tentatively scheduled in your On-Call calendar.

View my On-Call calendar on my calendar app
You can subscribe to your On-Call calendar using your personal calendar client.

Before you begin
1. Ensure that your calendar client uses and supports the iCalendar format.
2. Ensure that your calendar client can subscribe to an external calendar.
3. If calendar client meets the requirements, ask your shift manager to send your On-Call
calendar subscription URL by email notification.

Important: You must provide your instance credentials to authenticate yourself to use
the subscription URL to view On-Call events. Currently, only the Calendar application on
Mac OS X 8.0 and newer and the Outlook application on Windows 2013 and newer support
authenticated calendar subscriptions.
Role required: rota_admin, itil, rota_manager, or admin

Procedure
1. On your calendar client, add a new external calendar subscription.
2. Enter the On-Call calendar subscription URL that you received.
3. Click Subscribe.
4. Enter your login details for your instance.
5. Specify additional details such as how frequently to update the calendar.
Related topics
Assigning On-Call Scheduling roles

Managing schedules and shifts
You can configure and manage an On-call schedule and shift. Add or remove members to a shift
and override their contact preferences.
you can configure roster, shift and on-call schedule details. Add or remove members to a shift
and override their contact preferences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2733


<!-- page 2734 -->
As a rota_manager or rota_admin you can perform most of these tasks for the members of your
group.
• Configure or update an On-Call shift
• Configure or update an On-Call schedule
• Managing roster members
• Manage requests for time off
• Override contact preferences for a shift
• Configure preferences for a user group
• Delegate the shift manager [rota_admin] role

Enable users to subscribe to the On-Call calendar
Configure an On-Call calendar subscription URL and send it to the members of a shift. The URL is
an iCal link that enables users to subscribe to their on-call calendar from their preferred calendar
client.

Before you begin

Role required: admin, rota_admin, or rota_manager

About this task

The Subscription URL supports SSO authentication to view and download on-call calendar.

Note: Don’t share the subscription URL for security reasons.
Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Select the shift for which you want to send the on-call calendar subscription URL.
3. Specify the following details in the Calendar Subscription section.

Name

Definition

Coverage Select if you want to update the subscribed calendar with weekly or daily
interval
coverage details.
Get
coverage
for

Based on your coverage interval selection, select the number of weeks or days
for which you want to update the subscribed calendar.

4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2734


<!-- page 2735 -->
5. Select Send Subscriptions to send the calendar subscription URL to all members of the shift
by

email.
Members of the shift will receive an email with the subscription
link. Select the Subscription link and log in with SSO credentials
to download the calendar or generate and copy the subscription

URL.

Configure preferences for a user group
Specify the On-Call preferences for a user group.

Before you begin

Role required: admin, rota_admin, or rota_manager.

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Group Preferences and then set the
values as needed.
On-Call Group Preference form fields
Field

Description

Group

User group for which the On-Call preferences should apply.

Shift
managers

Users who can manage the shift in addition to group managers, shift
administrator [rota_admin], and delegated shift managers. You can also select
the current group members.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2735


<!-- page 2736 -->
Field

Description

Allow Shift
Schedule
Overlap

Specifies if overlapping schedules are allowed for shifts within
the group. When set to Default, the value selected for the
Configuration to control whether to allow overlapping Shift schedules
(com.snc.on_call_rotation.allow_rota_overlap) property is
applied.

Note: Shift overlap is required to have a hand-off period between shifts.
With this, multiple shifts can be on-call for the same duration. On-call
members from multiple shifts can be contacted.
Escalation
Escalation rule that applies when there is a shift overlap.
rule on Shift When set to Default, the value selected for the
overlap
Escalation rule which applies when Shifts overlap
(com.snc.on_call_rotation.escalation_rule_rota_over)
property is applied.
PTO
Specifies if an On-Call member in the group can create time-off request
approval
(PTO). When set to Default, the value selected for the sys property
preferences com.snc.on_call_rotation.pto.configuration (This property
governs if an On-Call user (Not "admin, rota_manager, group manager or
rota_admin") is allowed to create PTO) is applied.
First Day of
the Week

Select a preferred start day of the week for the selected group

2. To view On-Call property settings, click View Global Settings.
3. Click Submit to configure the settings or Delete to delete the preference.

Configure On-Call communication channel
Configure notification messages sent from a communication channel for on-call escalations.
You can customize the notification content, the response keywords, table and the domain they
apply, for a specific channel available in the base system such as Email and Microsoft Teams or a
custom channel that is created.

Before you begin

Role required: admin

Procedure
1. In the navigation filter, enter on_call_communication_channel_config.list.
The On-Call Communication Channel Configs [On-Call Communication Channel Configs]
table opens up on a new browser tab.
2. Select New.
3. On the form, fill in the details:
On-Call Communication Channel Configs
Field

Description

Channel type

Type of channel associated with the
communication channel configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2736


<!-- page 2737 -->
Field

Description

Channel default

Option to make this channel configuration
serve as default configuration for the
specified channel.

Channel subflow

Subflow that is triggered to send escalation
notifications for the specified channel type.

Order

Priority for this configuration when multiple
configurations exist for the same channel
type and table.

Table

Table and its child tables on which the
configuration is applicable.

Note:
◦ This field is visible only if the Channel
default check box is cleared.
◦ If no configuration is available or
matched for the child table then
the configuration that is available
or matched for the parent table is
considered for the child table.
◦ If no configuration is available or is
matched for both the parent and the
child table, then the configuration
for the specified channel with the
Channel default check box selected,
is considered.
Conditions

Conditions based on which the channel
configuration is applied to the table or it's
child tables.

Response Keywords
Accept keyword

Text or number keyword that is used to
accept the escalation sent from channel type
such as email or voice.

Note: This field is read-only for SMS
channel type.
Reject keyword

Text or number keyword used to reject the
escalation sent from channel type such as
email or voice.

Note: This field is read-only for SMS
channel type.
Messages - User
Title

Subject line that is displayed in escalation
notifications to users for various channels,
such as Email or Microsoft Teams.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2737


<!-- page 2738 -->
Field

Description

Note: This field is not available for
SMS channel type.
Message

Message content included in escalation
notifications sent to users through channels
such as Email, SMS, and others.

Accept instruction

Instruction that is used to accept escalation
sent to the user from channel type such as
email or voice.

Reject instruction

Instruction that is used to reject escalation
sent to the user from channel type such as
email or voice.

Messages - Device
Title

Subject line that is displayed in escalation
notifications to devices for various channels,
such as Email or Microsoft Teams.

Note: This field is not available for
SMS channel type.
Message

Message content included in escalation
notifications sent to devices through
channels such as Email, SMS, and others.

Messages - Catch All
Title

Subject line that is displayed in escalation
notifications sent to catch all users through
various channels, such as Email or Microsoft
Teams.

Note: This field is not available for
SMS channel type.
Message

Message content included in escalation
notifications sent to catch all users through
various channels such as Email, SMS, and
others.

Accept instruction

Instruction that is used to accept escalation
sent to the catch all users from channel type
such as email or voice.

Reject instruction

Instruction that is used to reject escalation
sent to the catch all users from channel type
such as email or voice.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2738


<!-- page 2739 -->
Note: The following variables are used and applicable in the content for messages,
titles, accept and reject instructions:
◦ Dynamic Variables: Placeholders like {number} represent field values
from the source record. For example, you can reference fields such as
{caller_id.user_name} for incidents.
◦ Reserved Variables: Functional placeholders, including Response keywords
({accept_keyword}, {reject_keyword}) and Notify variables
({message_number}, {on_call_group_notify_number}), are critical and
cannot not be modified.
◦ Hyperlink Variables: {URI} and {URI_REF} generate clickable links in the
notifications to the source record. {URI} appear as LINK, clicking which opens the
source record while {URI_REF} appears as the clickable source record number,
clicking which also opens the source record.
4. Select Submit.

Override contact preferences for a shift
Override all shift members' contact preferences to enforce a communication channel, for
example, in case of an emergency.

Before you begin

Role required: rota_admin, rota_manager

Procedure
1. Use one of the following methods to open the Edit Escalation and Contact Preferences page:
◦ a. Navigate to On-Call Scheduling > On-Call Schedules. The On-Call Schedules page opens
to the All On-Call Schedules tab.
b. Click a schedule card.
c. On the Shifts tab, click the Actions icon (
Contact Preferences.

) for the shift and select Edit Escalation and

◦ a. Navigate to On-Call Scheduling > My Group Schedules.
b. Select the shift.
c. Click Edit Escalation and Contact Preferences
2. On the Contact Preferences tab, click the contact Attempt method to configure.
The Contact Preferences dialog box appears.
3. Select the contact methods that the instance should use for all shift members for the selected
contact attempt.
Depending on your instance configuration, you can specify any or all of the following
notification methods:
◦ SMS text
◦ Email
◦ Slack
◦ Voice

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2739


<!-- page 2740 -->
◦ Microsoft Teams. For information on setting up this channel, see Set up Microsoft Teams as a
contact method for an on-call escalation.
◦ Mobile push. For information on setting up this channel, see Set up mobile push as a contact
method for an on-call escalation.

Note: SMS and voice require that Notify is active.
4. Enable the Override user preference option.

Configure or update an On-Call shift
You can add extra coverage, specify extra times for when a shift is active, and schedule time off.

Before you begin

Role required: rota_admin or rota_manager

About this task

You can update the calendar only for the time zone specified in your user profile.

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
The on-call calendar opens.
2. Click the Timeline view icon (

).

) and then select the group.
3. Click the Filters icon (
The calendar displays the selected group.
4. Right-click a block that represents a member of the shift and select Manage Shift.
The Manage Shift dialog box displays the current shift settings.

5. Select an Action, as appropriate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2740


<!-- page 2741 -->
Option

Description

Select details of the member who will provide on-call coverage for an­
other roster member. The following options appear when you select
this option:
◦ Rosters: Select one or more rosters for which the member will pro­
vide coverage.
Provide coverage

◦ Member: Select the member to provide extra coverage.
◦ Shift start: Select the date from which the coverage will start.
◦ Shift end: Select the date on which the coverage will end.

Note: The coverage is created between the start and end date
of the shift based on its schedule time.
Specify extra coverage for the selected shift. The following options ap­
pear when you select this option:
Schedule extra time ◦ Shift: Select the shift for which you want to specify extra time.
◦ Shift start: Select the date from which the extra time will start.
◦ Shift end: Select the date on which the extra time will end.
Specify the group member who will take scheduled time off during the
selected time frame. The following options appear when you select
this option:
◦ Member: Select the member who requested time off.

Schedule time off

◦ Starts: Select the date and time from which the time-off period will
start.
◦ Ends: Select the date and time on which the time-off period will
end.
◦ All day event: Select if the time-off period is a total of one working
day.
◦ Proposed cover: Select the name of the shift member who you
would like to provide cover in your absence.

6. Click Schedule to schedule the update.
7. To save the view settings, click the Bookmark this filter icon (

).

Related topics
View On-Call schedules
Manage shifts from the Calendar view
Configure a roster
Edit a roster to specify its reminder and escalation settings and to identify a subset of group
members to participate in the On-Call roster.

Before you begin

Role required: rota_admin or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2741


<!-- page 2742 -->
Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
2. Right-click a shift and select Edit Shift from the Actions list.
3. In the Rosters related list, select a roster and then fill the form.
Roster form fields
Field

Description

Name

Name of the roster.

Shift

Shift associated with the current roster.

Active

If selected, the roster is active for on-call operations.

Order

Order of the roster.

Rotation
interval

Type of the rotation interval.

Day of
week for
rotation

Weekday on which the roster rotation should start. When this field is specified,
roster rotation happens based on the specified frequency and the weekday.

Note: This field is displayed only if the Rotation interval field is set to
Weekly.

Rotate
every

Frequency of the rotation interval.

Rotation
start date

Start date of the rotation.

Rotation
start time

Start time of the rotation.

All day
rotation

If selected, roster rotation happens throughout the day.
To specify a particular time of day for roster rotation, for example 08:00 instead
of midnight, deselect the check box and specify the time.

Escalation Settings
Number of times that reminders are sent to a user who does not reply within the
reminders time frame defined in Time between reminders.
Time
Time between each reminder.
between
reminders
Time
Values in theNumber of reminders and Time between reminders fields
before
determine the value in the Time before escalation field.
escalation
For example, if Number of reminders is 2 and Time between reminders is 10
minutes, then the Time before escalation is 30 minutes. That is, the time that
passes between the first notification of a non-responsive roster member and the
first notification of the next member in the escalation path.
Reminder Communication

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2742


<!-- page 2743 -->
Field

Description

Send
If selected, a reminder is sent to the email address specified in the user record,
on-call
unless it is specified somewhere else in the notification preferences. Notification
reminders preferences take precedence over the user record.
Reminder Lead time for email reminders.
lead time
Note: This field is displayed only when the Send On-Call Reminders
(days)
check box is selected.

4. Click Update.

Note:
◦ Initially, roster members are automatically populated from the user group.
◦ All members of a roster must be members of the same user group.
Related topics
Escalation and reminder settings for rosters
Update shift details from the On-Call calendar
To save time, update shift details directly from an on-call calendar.

Before you begin

Role required: rota_admin or admin

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
2. In the title bar, click the toggle filters icon

and select a user group.

3. Click the shift name on the calendar.
A dialog box displays the Actions list and information about the primary and secondary
rosters. For each listed user, you have an option to either connect through phone, email, or
chat. The application that is launched for phone or email is dependent on the client that is
installed in the local machine.
4. Navigate to Actions > Edit Shift.
Edit Shift form fields
Question

Description

Name

The name of the shift.

Group

Select Yes, and then select one of the predefined options in the next question.
Select No to set up the schedule's configuration manually.

Active

Shows the state of the shift

Schedule

The shift is a part of this schedule. Choose from a predefined list of schedules
using the lookup if you want to change the schedule. Click the calendar to view
the complete schedule.

Based on

The template that the schedule is based on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2743


<!-- page 2744 -->
Question

Description

Background Use this field to specify the background color of the shift or to change from an
Color
existing color. Differentiate between groups with the colors.
Catch All

Specify who should receive notifications in case none of the people who are
on-call accepted the incident assignment. It can be none, a group manager, a
shift manager, an individual, or any or all roster members.
◦ Select Notify Individual to specify a member of the group to notify.
◦ Select Notify All to specify a shift. All shift members are notified.

Manager

The user with the shift manager [rota_admin] role.

Override
user
preference

User preferences are overridden with contact preferences when set to true.

Send
On-Call
Reminders

If selected, on-call reminders are sent.

Reminder
lead time
(days)

Lead time for email reminders.

Note: This field is displayed only when the Send On-Call Reminders
check box is selected.

Coverage
interval

Update interval for the subscribed calendar: Weekly or daily coverage details.

Get
coverage
for

Number of weeks or days for which you want to update the subscribed
calendar.

Send or resend reminders of an upcoming shift
Remind roster members of an upcoming shift by sending an email notification. You specify the
number of days before their shift starts for the email.

Before you begin

Role required: rota_admin or admin

About this task

The reminder is sent to the email address specified in the user record, unless the address is
specified in other notification preferences. Notification preferences take precedence over the
user record.
For all major on-call shift email notifications, you can now decide where the links to an on-call
shift records are redirected. Instead of an on-call shift record automatically opening in the classic
UI16 interface in On-Call Scheduling, the record can be opened in SOW. The on-call shift record
link in an email notification opens in SOW only if the following conditions are met:
• The Redirect SOW Email notification (sow_email_notification_redirect) property
is set to true.
• The Redirect SOW Email notification for On-call scheduling
(sow_email_notification_redirect.on_call) property is set to true.
• You have the sn_sow_user role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2744


<!-- page 2745 -->
The ITSM Notifications Redirection (com.snc.itsm.notifications_redirection) plugin is installed
and activated automatically to support this behavior.

Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
The option is also available when you edit a shift in an On-Call calendar.
2. Select the shift.
3. On the Shift form, select the Send on-call reminders check box and then specify the number
of days in the Reminder lead time field.

Note: If you set the value of Reminder lead time (days) to more than one day and also
set the roster to daily rotation, the instance does not send reminder emails.
4. To resend a reminder, click Resend.
5. Click Update.
Related topics
Assigning On-Call Scheduling roles
Manage shifts from the Calendar view
Configure the lead time for email reminders
On-Call Scheduling includes a scheduled job that checks if any shift members should be
notified about upcoming On-Call commitments. Modify the lead time for the reminder to be sent.

Before you begin

Role required: rota_manager or rota_admin

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
2. Right-click the shift and select Edit Shift.
3. Update the Reminder lead time (days) value for the on-call schedule record or for any of its
rosters.
The reminder lead time defined on a roster is always respected. If no lead time is defined, the
instance uses the schedule reminder lead time. If the reminder lead time is not defined for
either the schedule or its rosters, then the instance uses a default of 2 days.

Note: The Reminder lead time on the Roster form is different from the reminders and
Time between reminders values in the Escalation Settings section of the form.

The escalation settings are used only to configure reminders for escalations. The
Reminder lead time is in the Reminder Communication section of the Roster form, and is
used to email reminders for upcoming on-call commitments.
Manage requests for time off
As a shift manager, you can review and approve time-off requests from shift members. You also
specify the roster member who can cover for the time.

Before you begin

Role required: rota_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2745


<!-- page 2746 -->
Procedure
1. Navigate to All > Self-Service > My Approvals.
2. Select the time-off request record to approve.
The time-off request displays the details of the time-off requested by the member of your team.
In this example, the dark blue shade with stripes represents the requested time-off. A message
also gives you the request details including that of the proposed cover.

3. Optional: Enter comments in the Comments section.
4. Select Approve or Reject.
◦ For rejection, the On-Call calendar no longer indicates the time-off details and the requester
receives email notification.
◦ For approval, the On-Call calendar indicates the time-off details and the requester receives
email notification.

Related topics
Assigning On-Call Scheduling roles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2746


<!-- page 2747 -->
Resolve gaps, conflicts, and time-off requests in a shift
Review and resolve gaps and conflicts. Find a replacement on-call member for time-off requests
to ensure proper support coverage.

Before you begin

Role required: rota_manager

About this task

Possible reasons for gaps are:
• Time off without coverage
• User has been moved out of the group
• User is marked as inactive
A conflict is possible if a user is assigned as both the primary and secondary point of contact for
a shift.

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Schedules.
2. Click a shift card.

Note: If you are a shift manager or roster member, the schedule view opens. In all
other cases, you are redirected to the calendar view. For more information on on-call
scheduling calendars, see Manage shifts from the Calendar view.
◦ The On-Call Schedules page open. For more information, see Updating an On-Call schedule
◦ The pending actions for the current shift appear in the Pending Actions section.
.
3. To resolve gaps or conflicts, perform the following steps.
a. Click Review in the Pending Actions section.
The calendar view appears, and gaps or conflicts are highlighted.
b. Click the Information icon (

) to view gaps.

c. Right-click the shift and select Edit shift from the Actions list.
d. Scroll down to the Rosters list and select the roster where the user is unavailable.
e. In the Members related list, add a To value for the unavailable user.
f. Add a new member with a From value to close the gap.
4. To resolve a time-off request, perform the following steps.
a. Click Review in the Pending Actions section.
The calendar view appears, and time-off requests are highlighted.
b. Right-click the shift and select Manage shift from the Actions list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2747


<!-- page 2748 -->
The Manage Shift dialog box appears.
c. Approve the time-off requests.
Managing roster members
You can manage roster members by adding and removing users to or from the roster as needed.
You can also modify the order number for a member without affecting the past shift schedule.
Add a new or returning employee to a roster
You can add a new employee or an employee who had previously been a member to a roster.

Before you begin

Role required: rota_manager, rota_admin, or admin

Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Open the required shift form.
3. In the Rosters related list, click the information icon (
add a member.

) for the roster to which you want to

4. Click Open Record.
5. On the Roster form, click Add in the Members related list.
6. On the form, fill in the fields.
On-Call Add Member form
Field

Description

From
date

Date on which the employee will join the roster.

Note: The member will be active on the roster in the next rotation.

Add
Name of the member after whom the new member will be in the order. The order
after
number determines where the member starts on the rotation cycle.
member
Shift

Name of the shift.

Member Name of the member to add to the roster.
Rosters

Rosters affected after modifying the order of a member. This field is auto-populated
by comparing the members in the rosters. If a member exists in more than one
roster, both the rosters are auto-populated to avoid conflicts in schedule.

Current
roster

Roster from which you navigated to the form.

7. Click Submit.
The instance adds the employee to the roster.

Note: For a returning employee: The instance displays two shift member records for the
same employee with different start and end validity dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2748


<!-- page 2749 -->
Modify the order of a member in a roster
You can modify the order number for a member without affecting the past shift schedule.

Before you begin

Role required: rota_admin, rota_manager, or admin

Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Open the required shift form.
3. In the Rosters related list, click the information icon (
modify the order of a member.

) for the roster in which you want to

4. Click Open Record.
5. On the Roster form, click Move in the Members related list.
6. On the form, fill in the fields.
On-Call Move Member form
Field

Description

From
date

Date from when the order change applies to the member.

Note: The member's order will be active on the roster in the next rotation.

Member Name of the member to update the order.
Current
roster

Roster from which you navigated to the form.

Shift

Name of the shift.

Move
type

Type of move.
◦ Move after: Moves the order of the member after the target member.
◦ Swap: Swaps the order of the member with the target member.

Target
Name of the member with whom the order is swapped or after whom the member
member will be in the execution order.
Rosters

Rosters affected after modifying the order of a member. This field is auto-populated
by comparing the members in the rosters. If a member exists in more than one
roster, both the rosters are auto-populated to avoid conflicts in schedule.

7. Click Submit.
The member appears in the new order. The original record has a To date for the end of validity
and the new record has the current date as the From date for the start of validity.
Remove a member from a roster
You might remove a member from a roster, for example, if they are no longer a member of the
organization or of the group.

Before you begin

Role required: rota_manager, rota_admin, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2749


<!-- page 2750 -->
Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Open the required shift form.
3. In the Rosters related list, click the information icon (
remove a member.

) for the roster from which you want to

4. Click Open Record.
5. On the Roster form, click Remove in the Members related list.
6. On the form, fill in the fields.
On-Call Remove Member form
Field

Description

From date

Date from when the member is removed.

Rosters

Rosters affected after modifying the order
of a member. This field is auto-populated
by comparing the members in the rosters.
If a member exists in more than one roster,
both the rosters are auto-populated to avoid
conflicts in schedule.

Delete member

Option to delete the member record.

Warning: When you enable this
option to delete the member record,
the deleted member rotation history
is removed, and the rotation history of
other members is affected.
Member

Name of the member to remove from the
roster.

Current roster

Roster from which you navigated to the form.

Shift

Name of the shift.

7. Click Submit.
Related topics
Assigning On-Call Scheduling roles

Configure or update an On-Call schedule
Create an On-Call schedule or edit an existing schedule by defining shifts and rosters.
Set up an on-call schedule

Before you begin

Role required: rota_admin, rota_manager

About this task

You can use the wizard to create an on-call schedule using an existing template or you can
create shifts from scratch. You can create multiple shifts at given time and can preview shifts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2750


<!-- page 2751 -->
while creating them. This enables you to create rosters, define escalation policies, and review
and publish shifts.
After running the wizard, you can adjust individual roster, escalation, and reminder settings to
fine-tune the setup. You can also enable on-call notifications by setting up rotation workflow
triggers.

Procedure
1. Navigate to All > On-Call Scheduling > Create/Edit Schedule.
2. In the Define Schedule, from the Select Group choice list, select the group for which you are
defining the schedule.
You can edit an existing shift for a selected group. If you want to create a new schedule, click
Add shift button.

Note: When creating a new on-call group schedule, you are redirected to
oc_creation_wizard page instead of expert_shell page which is no longer supported.
3. Choose an existing template for the shifts or create a new shift.
4. Optional: Select the Allow Shift Schedule overlap check box to allow overlapping schedules
for shifts within the group.
For example, if a group has a 24x7 schedule, you can create multiple schedules for the group.
Shift overlap is required to have a hand-off period between shifts so that multiple shifts can be
on-call for the same duration.
(Optional) If you select Allow Shift Schedule overlap, then the Escalation rule on Shift
overlap check box appears.
5. Optional: Select the Escalation rule on Shift overlap check box to specify which shift needs
to be notified of an escalation during a shift overlap.
You can escalate to an incoming, an outgoing, or to all shifts.
6. Fill in the form fields.
Define Schedule
Question

Description

Name

Name of the shift that appears on the On-call calendar page.

Would you Option to use an existing schedule.
like to use
◦ Select Yes to use an existing or predefined shift.
an existing
schedule? ◦ Select No to create a new schedule.
Schedule

Select the value to base your schedule on. Some options are available in the
base system, for example, 24x7, Workday 8-5.
This option appears only if you answer Yes to Would you like to use an existing
schedule?.
The logged-in user's time zone is used as the basis for these schedules. If the
logged-in user does not have a time zone specified, the instance time zone is
used.

Start date

The date on which the shift is scheduled to begin.

Specify
holidays

Option to define holidays.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2751


<!-- page 2752 -->
Question

Description

◦ Select Yes to define holidays for the on-call shift. You can select an existing
holiday schedule.
◦ Select No to not specify holidays for the shift.
Holiday
Schedule

Specify a holiday schedule for the group.

Additional fields

Note: The following fields are displayed only when the Would you like to use an
existing schedule? field is set to No.

Time Zone The time zone in which the shift operates.
Is the shift List of options. Specify whether this shift is an all-day shift.
for this
schedule
all day?
Start
End

The time of day the shift is scheduled to start. The start and end time represent
one shift. The date is different only if the shift spans midnight.
The time of day the shift is scheduled to end. The start and end time represent
one shift. The the date is different only if the shift spans midnight.
For example, for the 8 a.m. to 8 p.m. shift, the start is 2014-01-01 08:00:00
and the end is 2014-01-01 19:59:59. For the 8 p.m. to 8 a.m. shift, the start is
2014-01-01 20:00:00 and the end is 2014-01-02 07:59:59.

Repeats

The days that the shift repeats.

Note: The wizard does not provide a monthly or yearly option. Creating
a monthly or a yearly shift by editing the schedule manually is not advised
because it is hard to determine the on-call person over a long period.
In this case, create a yearly or a monthly schedule with only one roster
and one member so that the same person is always on-call. Make any
exceptions as a one-time change in the roster for the shift.
Send
Option to send on-call reminders to members of the roster.
On-Call
Reminders
Reminder
lead time
(days)

Lead time for email reminders.

Note: This field is displayed only when the Send On-Call Reminders
option is selected.

Coverage
interval

Interval for updates of coverage details. Specifies whether you want to update
the subscribed calendar with weekly or daily coverage details.

Get
coverage
for

Number of weeks or days for which you want to update the subscribed calendar.

Note: The instance saves the schedule and adds it to the list of existing schedules.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2752


<!-- page 2753 -->
7. Click Next.
8. Optional: Click Add Shift to add another shift to the schedule if needed.
9. Use the Members page to specify members for a shift and rosters.
Configure Members
Field

Description

Roster Name

Use the edit icon to edit the name of the roster that you are adding
members to.

Which members
would you like to be
in your schedule?

Move the members you want to add from Available list to Selected
list.

Rotation start date

Date on which the rotation needs to start.

Rotation interval

Type of the rotation interval. Possible options are:
◦ Daily
◦ Weekly
◦ Monthly

Note: This option is available only for the 2024 schedule
engine. For information about this schedule engine, see OnCall Scheduling new schedule engine.
Rotate every

Frequency of the rotation interval.

Note: This field appears only if the Rotation interval field is
set to Weekly or Monthly.
Day of week for
rotation

Day of the week on which the roster rotation should start. When this
field is specified, roster rotation happens based on the specified
frequency and the day of the week.

Note: This field appears only if the Rotation interval field is
set to Weekly.
Day of the month for
rotation

Day of the month on which the roster rotation should start. Possible
options are:
◦ Last day of the month
◦ Specific day

Note: This field appears only if the Rotation interval field is
set to Monthly.
Rotation day

Specific day of the month on which the roster rotation should start.

Note: This field appears only if the Rotation interval field is

set to Monthly and Day of the month for rotation field is set to
Specific day.
Send On-Call
Reminders

If selected, on-call reminders are sent to the members of the roster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2753


<!-- page 2754 -->
Field

Description

Reminder lead time
(days)

Lead time for email reminders.

Note: This field is displayed only when the Send On-Call
Reminders option is selected.

10. Click Next Step.
11. Use the Escalation Setup form to specify escalation settings.
Escalation Setup steps
Field

Description

Escalation Method used to determine who receives an escalation notification. Its value is
type
automatically set to Rotate Through Members if a shift has only one roster. The
escalation path goes through all members of that roster. If a shift has more than
one roster, the default value is Rotate Through Rosters. The escalation path
goes through all the rosters to determine who to notify. Click Override escalation
to change the default setting.
Catch-All

Specifies users who receive a notification when no other on-call users have
acknowledged the escalation. The value can be none, a group manager, a shift
manager, an individual, or any or all roster members.
◦ Select Notify Individual to specify a member of the group to notify.
◦ Select Notify All to specify a shift. All shift members are notified.

12. Click Next Step.
13. Click Edit Reminder to edit the reminder settings for an escalation.
14. Use the Edit Reminder form to edit the reminder settings for a schedule.
Escalation Reminder form fields
Field

reminders
Time
between
reminders

Description

When escalations are configured for this group, the instance first sends this
number of reminders before notifying the backup personnel.
The interval of time between reminders.
Default: 15 minutes
If your choice is not in the list, select the closest value. Edit the roster to
update the number of reminders after the schedule is generated.

Time before
escalation

The interval of time to wait before escalating a task.

15. Review the schedule and then click Save.
The schedule is saved in Draft mode.
16. Select Send subscriptions to send a subscription URL to an on-call member after the shift is
published.
17. After the schedule is complete, click Finish to save and publish the schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2754


<!-- page 2755 -->
What to do next

Perform one of the following procedures to update the schedule.
Updating an On-Call schedule
Shift managers and members can use the Schedules tabs to view and update the on-call
schedules of a group. Shift managers can review, manage, and resolve gaps or conflicts in your
On-Call schedule from a single view.

Opening the Schedules page
To open and start working on a schedule, navigate to On-Call Scheduling > On-Call Schedules
and then click the card for the group.
Edit an on-call schedule

Overview tab
This tab gives an overview of the current shift. The following sections are available:
• On-Call: Displays information about the current on-call shift. From here, you can:
◦ Navigate to the previous and next shifts.
◦ View the roster and escalation details of the current shift. When you click Roster and
escalation details, a dialog box displays the following tabs:
▪ Roster: Displays a list of all rosters along with its active on-call member. Information of the
on-call member such as the contact number, email address, group, and the shift to which
the user belongs to is also available.
▪ Escalation Path: Displays the escalation path defined for the shift.
▪ Profile: Displays the user profile of the primary on-call member. You can send a direct
message to the on-call member by clicking Send a direct message or call the member
if Notify WebRTC for on-call is set up. For more information on real-time messaging, see
Connect . For information on Notify webrtc, see Forward to notify client workflow activity

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2755


<!-- page 2756 -->
For information on the Specify a valid Notify Number with voice capability property that
enables the Notify WebRTC for on-call, see System properties for On-Call Scheduling.
▪ Contact Preferences: The contact preferences set for the primary on-call member.

• Pending Actions: Displays the pending actions for the group’s on-call schedule. You can
review gaps, conflicts, and time-off requests to find a replacement and ensure proper support
coverage. For information on resolving the pending actions, see Resolve gaps, conflicts, and
time-off requests in a shift and Resolve gaps, conflicts, and time-off requests in a shift.

Note: This section is displayed only for a shift manager.
• Your Upcoming Shifts: Displays your upcoming shifts in a calendar view.

Note: This section is displayed for a shift member or a Shift Manager who is a shift
member.
• On-call calendar: This section displays the calendar view of all shifts of the group. By default,
the week view is displayed. For more information on on-call calendar, see Manage shifts from
the Calendar view.

Shifts tab
This tab displays all shifts defined for the user group. From here, you can edit a shift or create a
custom escalation policy to override the default policy. For information on editing the escalation
type, see Create an escalation policy.
You can also edit contact preferences from this tab. For more information on configuring a
contact preference, see Configure my availability and contact preferences
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2756


<!-- page 2757 -->
Settings tab
This tab displays the group preferences set for your group's on-call shift. If not already set, click
Create Custom Group Settings to set the group preferences. For more information about group
preferences, see Configure preferences for a user group.

Note: The group preferences set here affect only this group. These settings override the
global settings.
To view on-call properties, click View Global Settings.

Note: View Global Settings is only visible to rota_admin.
Update a schedule entry
You can deactivate a schedule entry or update setting like schedule entry type, date, or time.

Before you begin

Role required: rota_admin or rota_manager

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
The on-call coverage for your group's calendar appears.
2. Click the shift name and navigate to Actions > Edit span.
The Schedule Entry dialog box is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2757


<!-- page 2758 -->
3. Update the fields as needed.
Schedule Entry
Field

Description

Name

Modify the name of the schedule entry, if required.

Type

Select the type of schedule entry. For example, on-call or time off.

Group

The Group field is empty by design.

Warning: If the Group field is populated, then the spans for the entry are
not displayed.
Show as

Select what the schedule entry must be displayed as. For example, busy or oncall.

When

Select the appropriate start and end date, and time for the schedule entry.

All day
Select the check box to make the schedule entry active for the entire duration.
check box
Timezone

Displays the time zone for the schedule entry. This cannot be modified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2758


<!-- page 2759 -->
Field

Description

Repeats

Select the frequency with which the schedule entry repeats. For example, daily
or weekly.
The following fields appear if you select Monthly:
Monthly type: specify the date of the month when the schedule entry repeats.
The following fields appear if you select Yearly:
Yearly type: specify the date of the year when the schedule entry repeats or if it
is floating. If you select the Floating option, then the following fields appear:
◦ Float week: Select the week of the month when the schedule entry repeats.
◦ Float day: Select the day of that week when the schedule entry repeats.
◦ Month: Select the month when the schedule entry repeats.

Repeat
every

If the schedule entry is selected to repeat, then specify how often it repeats. For
example, if you select weekly repetitions, specify the frequency such as every
week or every two weeks.

Repeat on If the schedule entry is selected to repeat, then specify when it repeats. For
example, if you select weekly repetitions, specify the days of the week when it
would repeat.
Repeat
until

If the schedule entry is scheduled to repeat, then specify an end date until which
the schedule entry repeats itself.

Deactivate Deactivate the schedule entry. A warning message appears.
Delete

Delete the schedule entry. A warning message appears.

4. Click Update.
Related topics
Assigning On-Call Scheduling roles
Specify the sources of contact information for schedule notifications
Configure the communications methods that shift managers can choose from to send on-call
schedule notifications. For example, add email and phone contact sources.

Before you begin

Role required: admin

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Contact Sources.
2. Click New and then fill in the form.
On-Call Contact Source form
Name

Unique and meaningful display label for the
type of contact source.

Table

Table that contains the contact source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2759


<!-- page 2760 -->
User Field

Reference field to the user table. This field
appears only for some tables.

Active

Option to activate the contact source for use.

Source Type

Type of communication method.

Source

◦ For email, the source of the email address.
◦ For phone numbers, the source of the
phone number.

For all major on-call schedule email notifications, you can now decide where the links to an
on-call schedule record are redirected. Instead of an on-call schedule record automatically
opening in the classic UI16 interface in On-Call Scheduling, the record can be opened in SOW.
The on-call schedule record link in an email notification opens in SOW only if the following
conditions are met:
◦ The Redirect SOW Email notification (sow_email_notification_redirect)
property is set to true.
◦ The Redirect SOW Email notification for On-call scheduling
(sow_email_notification_redirect.on_call) property is set to true.
◦ You have the sn_sow_user role.
The ITSM Notifications Redirection (com.snc.itsm.notifications_redirection) plugin is installed
and activated automatically to support this behavior.
3. Click Submit.
Manage shifts from the Calendar view
The Calendar view displays all shifts for a user group for a specified time interval. Use the
Calendar view of an On-Call schedule to update or manage shifts.

Before you begin
Role required:

• View and update: rota_admin, rota_manager, or admin
• View only: itil

About this task
• For information on updating a shift, see Update shift details from the On-Call calendar.
• For information on managing a shift, see Configure or update an On-Call shift.

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
) to open the calendar view of shifts.
2. Click the Calendar View icon (
By default, the calendar displays one month of shifts.

Important: The Time Zone view displays shift members grouped by shift within the
specified geographical time zone. To open the Time Zone view on this page, click the
Time Zone icon (

). See Manage shifts from the Timeline view.

3. Perform any of the following operations to organize the view for your needs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2760


<!-- page 2761 -->
◦ Specify the time period that appears: View events for the current day, week, or month: In the
title bar, click Day, Week, or Month.

Note: You cannot view the calendar for a month in the Timeline view.
◦ Navigate to the previous or the next occurrence of the time period: In the title bar, click the
left or the right arrow next to Today ( ).
◦ View the event of any specific day, week, or month: In the title bar, click the Calendar icon
(

) and specify the date.

◦ View the list of navigation shortcuts: In the title bar, click the keyboard shortcuts icon
4. Configure the view: Click the Filter icon (

.

).

◦ To show working hours for a time zone, enable Time zone.
◦ To view roster assignments within a time zone, click the Primary, Secondary, or Tertiary
check box as needed.
◦ To view roster assignments for all rosters in all time zones, select the Show all rosters check
box.

◦ To show gaps: In the Review options section, enable Show gaps. An info icon indicates a
shift with gaps. Click the icon to view the gaps. Gaps occur when no one is on-call when
support coverage is required. Possible reasons:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2761


<!-- page 2762 -->
▪ Time off without coverage.
▪ User has been moved out of the group.
▪ User is marked as inactive.
For information on resolving gaps and conflicts, see Resolve gaps, conflicts, and time-off
requests in a shift.
◦ >To show conflicts: In the Review options > Show conflicts.
For example, a conflict occurs when a user is assigned as both primary and secondary point
of contact for a shift. An info icon indicates a shift with conflicts. Click the icon to view the
conflicts.
For information on resolving gaps and conflicts, see Resolve gaps, conflicts, and time-off
requests in a shift.
5. To save the view settings, click the Bookmark this filter icon (

).

Manage shifts from the Timeline view
Use the Timeline view of an On-Call schedule to update or manage shifts based on the
geographical location of roster members.

Before you begin

Role required: rota_admin, itil, rota_manager, or admin

About this task
• For information on updating a shift, see Update shift details from the On-Call calendar.
• For information on managing a shift, see Configure or update an On-Call shift.

Procedure
1. Navigate to All > On-Call Scheduling > On-Call Calendars.
2. Click the Timeline view icon (

).

Important: The Calendar view on this page displays all shifts for a user group for a
specified time interval. To open the Calendar view, click the Calendar View icon (
Manage shifts from the Calendar view.

). See

3. Perform any of the following operations to organize the view for your needs:
◦ Specify the time period that appears: View events for the current day, week, or month: In the
title bar, click Day, Week, or Month.

Note: You cannot view the calendar for a month in the Timeline view.
◦ Navigate to the previous or the next occurrence of the time period: In the title bar, click the
left or the right arrow next to Today ( ).
◦ View the event of any specific day, week, or month: In the title bar, click the Calendar icon
(

) and specify the date.

◦ View the list of navigation shortcuts: In the title bar, click the keyboard shortcuts icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2762


<!-- page 2763 -->
4. Configure the view: Click the Filter icon (

).

◦ To show working hours for a time zone, enable Time zone.
◦ To view roster assignments within a time zone, click the Primary, Secondary, or Tertiary
check box as needed.
◦ To show gaps: In the Review options section, enable Show gaps. An info icon indicates a
shift with gaps. Click the icon to view the gaps. Gaps occur when no one is on-call when
support coverage is required. Possible reasons:
▪ Time off without coverage.
▪ User has been moved out of the group.
▪ User is marked as inactive.
For information on resolving gaps and conflicts, see Resolve gaps, conflicts, and time-off
requests in a shift.
◦ >To show conflicts: In the Review options > Show conflicts.
For example, a conflict occurs when a user is assigned as both primary and secondary point
of contact for a shift. An info icon indicates a shift with conflicts. Click the icon to view the
conflicts.
For information on resolving gaps and conflicts, see Resolve gaps, conflicts, and time-off
requests in a shift.
5. To save the view settings, click the Bookmark this filter icon (

).

Set a shift to Draft mode while waiting for info
If you do not have all the information that you need to define a shift, you can set the shift to Draft
mode. Later, when all the information is available, you can publish the shift so you can add it to a
schedule.

Before you begin

Role required: rota_manager

Procedure
1. Navigate to All > On-Call Scheduling > My Group Schedules.
2. Select the shift that will include the group.
3. On the Shift dialog box, click Move to Draft.
A message confirms that the rotation schedule is updated for the shift that you moved to a
draft mode.

Delegate the shift manager [rota_admin] role
As a shift manager, you can delegate your role to a member of shift.

Before you begin

Role required: rota_manager or admin

Procedure
1. Navigate to All > User Administration > Delegate Roles in Group.
2. Follow the instructions to Delegating roles

the shift manager role to a member of your shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2763


