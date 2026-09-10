# Zurich Customer Service Management — Schedules and sites

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1573–1601 of 2452

Sections: Schedules and sites (p1573)

---

<!-- page 1573 -->
Procedure
1. Navigate to Outsourced Customer Service > Cases > All.
2. Open a case and click the preview icon next to the Account field.
The customer account page is displayed.
3. Click Entitlements related list.
4. Open an entitlement and view the asset details to fulfill a case.

Manage schedules and sites
Manage agent scheduling and availability, use the mobile app to perform common tasks on the
go, and manage and support your customer base with install base plans and contracts.
Manage schedules and sites
Topic

Description

Managing agent calendar

Customer service agents and field service
technicians can use the agent calendar to
see work schedules and assignments and
also add personal events such as meetings or
appointments.

Using Microsoft Outlook with CSM

Integrating Microsoft Outlook with CSM
helps to improve collaboration among team
members. Agents can share insights, discuss
complex cases, and provide updates on
customer issues effortlessly, fostering a more
cohesive and responsive customer service
environment.

Mobile experience for Customer Service
Management

Manage customer service cases from a
mobile device with the Customer Service
Management mobile application. Stay
connected and access information in real time
to complete tasks quickly.

Install base work plans

You can create an install base work plan
on the Customer Service Management
application to get the details that are related
to an install base item. Work plans help you to
create, maintain, and view the basic details of
an install base item. You can also plan for the
regular and timely maintenance of the install
base item.

Using Customer Contracts and Entitlements

Learn how consumers, managers, agents, and
administrators use the Customer Contracts
and Entitlements application to generate
service contracts and contract lines to work on
the services.

Managing agent calendar
Customer service agents and field service technicians can use the agent calendar to see work
schedules and assignments and also add personal events such as meetings or appointments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
The agent calendar provides a tool for maintaining different work schedules or shifts and
assigning agents and technicians to shifts for specific time periods. The calendar has the
flexibility to accommodate work schedules that are fixed or varied and shifts that rotate by week,
month, or other patterns. The agent calendar administrator creates the calendar configuration,
including a schedule configuration for each calendar user and the types of tasks to display on
the calendar.
The schedule information stored in the agent calendar is used by other ServiceNow applications
and features, such as the assignment workbench, central dispatch, and auto assignment.
The assignment workbench uses agent availability, based on upcoming work schedules and
personal time off, when evaluating predefined criteria and recommending agents for case
assignment. Auto assignment in Service Management core applications, such as Field Service
Management and Facilities Service Management, evaluate agent work schedules before
assigning tasks.
The agent calendar administrator has access to the Agent Schedule menu in the application
navigator. This menu includes the following modules:
• Event Configuration: create a configuration for each type of event or task displayed on the
agent calendar.
• Work Schedule: create one or more work schedules for each calendar user.
• Agent Personal Events: create personal schedules for each agent and add events to those
schedules.
• Schedule: create or modify schedules. For more information, see Schedules

.

Viewing the calendar
Customer service agents and field service technicians with the agent_schedule_user role can
access their personal calendars in the following ways:
• Customer Service > My Schedule
• Field Service > Agent > My Schedule

Note: The agent calendar is supported in the mobile application and the mobile web.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
Agent Calendar

The calendar can display a single day, a week, or a month. Buttons in the calendar header allow
you to switch views as well as go backward or forward in time. An agent's scheduled work hours
are highlighted in gray and the current day is highlighted in blue. The agent calendar displays
work or tasks assigned to the agent as well as personal events. Each type of event is displayed
on the calendar using a different color.
Agents can add events to their calendars by double-clicking a specific time slot and entering
the details in the New Event popup window or by clicking and dragging. Agents can also move
events by dragging and dropping. Click an event to display a popup with event details and
double-click an event to open the event record.

Plugins
The Agent Schedule plugin (com.snc.agent_schedule) is activated as part of the Customer
Service Management and Field Service Management plugins.

Tables
The Agent Schedule plugin adds the following tables.
Tables installed with the Agent Schedule plugin
Table

Description

Agent Work Schedule

Stores one or more work schedules for
each agent, including the date range for the
schedule and the schedule type.

[agent_work_schedule]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
Tables installed with the Agent Schedule plugin (continued)
Table

Description

Agent Personal Schedule

Stores personal calendar events for each
agent, such as training, personal time off, or
meetings.

[agent_events]
Event Configuration
[agent_schedule_task_config]
Agent Schedule User Config
[agent_schedule_user_pref]

Agent Schedule Relationship
[agent_schedule_task_config_rel_user_pref]

Agent Schedule Definition Theme
[agent_schedule_definition_theme]

Stores a configuration for each type of task
displayed on the agent calendar, such as case
tasks or work order tasks.
Stores the agent’s personalization data
for the calendar. A user configuration is
created automatically when a user with the
agent_schedule_user role accesses their
personal calendar.
Stores the relationships between agent
configurations and event configurations.
Relationship entries are created automatically
based on a user's read access to the task
tables selected in the event configurations.
Stores the colors used to display different
types of tasks on the agent calendar.

User Roles
The following user roles are included with the Agent Schedule (com.snc.agent_schedule) plugin.
Roles included with Agent Schedule plugin
Role

Description

Agent schedule administrator

Sets up the Agent Calendar configuration.
Contains roles:

[agent_schedule_admin]

• agent_schedule_user
• schedule_admin

Agent schedule user
[agent_schedule_user]

Allows customer service agents and field
service technicians to access and update their
personal calendars.

Related topics
Creating and using schedules
Configuring an agent calendar
Configuring an agent calendar
Users with the agent calendar administrator role can perform several calendar configuration
tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
Configuration overview
You can configure the following for an agent calendar:
• Create an event configuration
Create configurations for each type of entry displayed on the agent calendar. Entries could
include case tasks, work order tasks, appointments, or schedule entries such as event types
that you could track and manage on the team calendar.
• Create a work schedule for an agent or technician
Create one or more work schedules for a customer service agent or a field service technician.
• Create a personal event for an agent or technician
Create personal events that appear on an agent's personal calendar.
• Create a schedule to use with the agent calendar
Create a schedule to use with the agent calendar.
Related topics
Managing agent calendar
Use the agent calendar
Create an event configuration
Create event configurations to define and manage event types for the team calendar.

Before you begin

The schedule entry uses the Schedule Span [cmn_schedule_span] table to store different types
of events.
The following types of schedule entries for event type configurations are available by default:
• Event — Appointment
• Event — Excluded
• Event — Meeting
• Event — Phone
• Event — Time Off
• Event — Other
These configurations are inactive by default. You can activate a configuration by navigating to
Agent Schedule > Event Configuration, selecting an event type configuration, and setting the
Active field to true for one or more event configuration types you would like to activate. Each
configuration displays as a separate event type on the team calendar.
Role required: agent_schedule_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
Procedure
1. Navigate to Agent Schedule > Event Configuration and perform one of the following actions.
Option

Description

a. Select the desired configuration.
Create a configuration from an exist­
ing event configuration

b. Right-click the form header and click Insert and
Stay.
A copy of the selected event type configuration is
created.

Create a new event configuration

Click New.

2. Fill in the fields on the Event Configuration form, as necessary.
Event Configuration form
Field

Description

Name

A descriptive name for this configuration.

Config Label

Name displayed for this event in the agent calendar.

Color theme

Color used to display this type of schedule on the agent calendar.
Setup

Setup

Setup method for this configuration.
◦ Simple: use condition builder to set up this configuration.
◦ Scripted: use advanced scripts to set up this configuration.

Table

The table where the tasks for this type of configuration are stored.

Filter

Use condition builder to create the desired conditions for the selected
task type.
For example, the event configuration for Case Tasks includes a filter
on the task State field to display only those tasks that are open.

User Field

A field from the Table that provides the user assigned to the task.
For example, the event configuration for Case Tasks uses the
Assigned To field from the Task table [sn_customerservice_task].
When a case task is assigned, it appears on the agent calendar for
the user selected in this field.

Event type

Type of schedule entry.

Display Field

A field from the Table that provides the information to be displayed for
this event type on the agent calendar.
For example, the event configuration for Case Tasks uses the Subject
field from the Task table [sn_customerservice_task]. When a case task
is assigned, the subject of the task appears on the agent calendar.

Start Date Field

A field from Table that provides the start date for the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
Field

Description

For example, the event configuration for Case Tasks uses the
Expected start field from the Task table [sn_customerservice_task].
When a case task is assigned, it appears on the agent calendar
starting on the date and time specified in this field. The Expected
start field must contain a value for the event to appear in Workforce. If
the field is empty, the event will not be displayed.
End Date Field

A field from the Table that provides the end date for the task.
For example, the event configuration for Case Tasks uses the Due
date field from the Task table [sn_customerservice_task]. When a
case task is assigned, it appears on the agent calendar ending on the
date and time specified in this field. The Due date field must contain
a value for the event to appear in Workforce. If the field is empty, the
event will not be displayed.

Note: Because the agent schedule administrator can select

any fields from the Task Table for the Start Date Field and the
End Date Field, it is possible that the end date may be earlier
than the start date. In this event, the task is displayed on the
agent calendar between the two points in time.
Script

Use advanced scripts to create the event configuration.

Note: This field is available when the Scripted value is
selected from the Setup field.

3. Perform one of the following actions:
◦ If you created the configuration from an existing configuration, click Update.
◦ If you created a new configuration, click Submit.
Create a work schedule for agents
Users with the agent schedule administrator role can create one or more work schedules for a
customer service agent or a field service technician.

Before you begin

Role required: agent_schedule_manager, agent_schedule_admin

About this task

A work schedule includes a date range and a schedule type, such as day shift or evening shift.
Agents and technicians can have multiple work schedules.

Procedure
1. Navigate to All > Agent Schedule > Work Schedule.
2. Click New.
3. Fill in the fields on the Agent Work Schedule form, as necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
Agent Work Schedule form
Field

Description

From Date The first day of the work schedule.
To Date

The last day of the work schedule.

User

The selected agent or technician.

Work
Schedule

The selected schedule from the Schedules list.

Type

The type of work that the agent or technician is performing during this schedule:
◦ Primary work
◦ Other
An agent can have only one primary schedule for a specific range of dates.
Primary schedules cannot overlap.

4. Click Submit.
Create a personal event for an agent or technician
Users with the agent schedule administrator role can create personal events that appear on an
agent's personal calendar.

Before you begin

Role required: agent_schedule_admin

About this task

Agents and technicians typically add personal events to their own calendars.

Procedure
1. Navigate to All > Agent Schedule > Agent Personal Events.
2. Select the personal schedule for the desired agent.
3. In the Schedule Entries related list, select New.
4. Fill in the fields on the Schedule Entry form, as necessary.
Schedule Entry form
Field

Description

Name

The name of the event.

Type

The type of event:
◦ Time off
◦ Appointment
◦ Meeting
◦ Phone call
◦ Excluded
◦ On call

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


<!-- page 1581 -->
Field

Description

◦ Time off - in approval
◦ Time off - rejected
Show
as

Show this event on the agent's personal calendar as one of the following:
◦ Busy
◦ Free
◦ Tentative
◦ On call
Select Busy to exclude the block of time from agent availability calculations for the
auto- assignment and the case assignment workbench.

When

The start date and time of the personal event.

To

The end date and time of the personal event.

All day

Enable this check box if the event lasts all day.

Repeats Create a repeating event by selecting the frequency. Depending on the selection,
other fields are required to complete the frequency information.
◦ Doesn’t repeat
◦ Daily
◦ Every Weekday (Mon-Fri)
◦ Every Weekend (Sat, Sun)
◦ Every Mon, Wed, Fri
◦ Every Tue, Thu
◦ Weekly
◦ Monthly
◦ Yearly
Repeat
every

Enter a number for the frequency of the repeated event.

Repeat
on

For weekly events, select a day of the week.

Monthly For monthly events, select one of the following. These selections use the day and
type
date in the When field as the basis for repetition.
◦ Day of the month
◦ Day of the week
◦ Last day of the month
◦ Last week of the month
Yearly
type

For monthly events, select one of the following:
◦ Day of the year: This selection uses the day and date in the When field as the
basis for repetition.
◦ Floating: For this selection, complete the Float week, Float day, and Float month
fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1581


<!-- page 1582 -->
Field

Description

Repeat
until

Select a date for the end of the repeated event.

Float
week

For a floating yearly repeating event, select the week.

Float
day

For a floating yearly repeating event, select the day.

Float
month

For a floating yearly repeating event, select the month.

5. Select Submit.
Create a schedule to use with the agent calendar
Users with the agent calendar administrator role can create a schedule to use with the agent
calendar.

Before you begin

Role required: agent_schedule_admin

About this task

Creating a schedule for the agent calendar uses the schedule feature. For more information, see
Schedules .
Schedules are configured with two types of records.
• Schedule records specify a time zone and a type of schedule and use one or more schedule
entries. Schedule records are saved in the Schedule [cmn_schedule] table.
• Schedule entry records specify the time periods that are included or excluded from a
schedule. Schedule entries are saved in the Schedule Entry [cmn_schedule_span] table.
For more information on schedule fields, see Schedule fields

.

Procedure
1. Navigate to All > Agent Schedule > Schedule.
2. Click New.
3. Complete the fields on the Schedule form.
Schedule form fields and descriptions
Field

Description

Name

Enter a unique name for the schedule.

Time Zone

Select the time zone for the schedule. If you select Floating, the time zone will
be relative to whatever is accessing the item at any given time.

Parent

Select a parent schedule to constrain the new schedule.

Type

Enter a label that describes the purpose of the schedule. You can also use one
of these system terms to determine how to process certain schedules:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1582


<!-- page 1583 -->
Field

Description

◦ excluded: excludes time periods from SLA counts.
◦ maintenance: specifies time periods where change management activities
are allowed. A schedule containing maintenance schedule entries cannot
also contain blackout schedule entries.
◦ blackout: excludes time periods from change management schedules.
A schedule containing blackout schedule entries cannot also contain
maintenance schedule entries.
Description [Optional] Describe the schedule.

Note: The Schedule form displays a warning message if there are no active entries
defined for the current schedule. If your schedule is a child schedule that only contains
exclusions, ignore the message because exclusions are non-active entries.
4. Right-click the header bar and click Save.

Note: If you create a schedule of type maintenance and save the record, a UI policy

hides the Type field from the form. To view or change the value for the Type field, view the
list of schedules rather than the schedule form and add the Type column if necessary.
You can double-click the cell for the value in the Type column and modify from the list
view.
5. Configure one or more schedule entries.
6. Click Submit.
Use the agent calendar
Users with the agent calendar user role can add events to their personal calendar and configure
the calendar to show or hide different types of events.
Related topics
Configuring an agent calendar
Managing agent calendar
Add an event to the agent calendar
Users with the agent schedule user role can add events to their personal calendar.

Before you begin

Role required: agent_schedule_user

Procedure
1. Navigate to your calendar.
◦ Customer Service > My Schedule
◦ Field Service > Agent > My Schedule
2. Double-click a timeslot or click and drag over a timeslot on the calendar to open the New Event
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1583


<!-- page 1584 -->
Agent schedule

3. Fill in the fields on the New Event form, as necessary.
New Event form fields and descriptions
Field

Description

Name

The name of the event.

Type

The type of event:
◦ Time off
◦ Appointment
◦ Meeting
◦ Phone call
◦ Excluded
◦ On call
◦ Time off - in approval
◦ Time off - rejected

Show
as

Show this event on the agent's personal calendar as one of the following:
◦ Busy
◦ Free
◦ Tentative
◦ On call

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1584


<!-- page 1585 -->
Field

Description

Select Busy to exclude the block of time from agent availability calculations for the
auto assignment and the case assignment workbench.
When

The start date and time of the personal event.

To

The end date and time of the personal event.

All day

Enable this check box if the event lasts all day.

Time
zone

[Read only] If an agent has selected a specific time zone in their user profile,
that time zone is displayed here and is used as the time zone for this event.
Subsequent changes to the Time zone field in the user profile do not change the
time zone designation for this event.

Repeats Create a repeating event by selecting the frequency. Depending on the selection,
other fields are required to complete the frequency information.
◦ Does not repeat
◦ Daily
◦ Every Weekday (Mon-Fri)
◦ Every Weekend (Sat, Sun)
◦ Every Mon, Wed, Fri
◦ Every Tue, Thu
◦ Weekly
◦ Monthly
◦ Yearly
Repeat
every

Enter a number for the frequency of the repeated event.

Repeat
on

For weekly events, select a day of the week.

Monthly For monthly events, select one of the following. These selections use the day and
type
date in the When field as the basis for repetition.
◦ Day of the month
◦ Day of the week
◦ Last day of the month
◦ Last week of the month
Yearly
type

For monthly events, select one of the following:
◦ Day of the year: this selection uses the day and date in the When field as the
basis for repetition.
◦ Floating: for this selection, complete the Float week, Float day, and Float month
fields.

Repeat
until

Select a date for the end of the repeated event.

Float
week

For a floating yearly repeating event, select the week.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1585


<!-- page 1586 -->
Field

Description

Float
day

For a floating yearly repeating event, select the day.

Float
month

For a floating yearly repeating event, select the month.

4. Click Submit.
The new event appears on the agent calendar and also in the Schedule Entries related list on
the Agent Personal Schedule form.
Move an event on the agent calendar
Users with the agent schedule user role can move events on their personal calendar.

Before you begin

Role required: agent_schedule_user

Procedure
1. Navigate to your calendar.
◦ Customer Service > My Schedule
◦ Field Service > Agent > My Schedule
2. Use one of the following methods to move an event.
Option

Description

Click an event and drag it to a new day or
time

The When and To fields in the event record
are updated with the new information.

Double-click an event to open the event
record

Change the date and time information in the
When and To fields and click Submit. The
event appears on the calendar in the new lo­
cation.

Show or hide event types on the agent calendar
Users with the agent schedule user role can personalize their calendar and show or hide
different types of events.

Before you begin

Role required: agent_schedule_user

Procedure
1. Navigate to your calendar.
◦ Customer Service > My Schedule
◦ Field Service > Agent > My Schedule
2. Click the configuration icon (
menu.

) in the calendar header to display the Schedule Configuration

3. Enable or disable the switches for the different types of events.
An option is enabled when the switch is moved to the right and appears with a green
background.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1586


<!-- page 1587 -->
4. Click the configuration icon ( ) again to hide the Schedule Configuration menu.
The calendar displays the enabled task types.

Using Microsoft Outlook with CSM
Integrate Customer Service Management with Microsoft Outlook to perform tasks such as
managing contacts and cases from within Microsoft Outlook.
®

Integrating Microsoft Outlook with ServiceNow Customer Service Management (CSM) can
significantly streamline communication and enhance the efficiency of customer service
operations. This integration offers several key benefits.
• Facilitates seamless communication between agents and customers by synchronizing emails,
calendars, and contacts. This ensures that important information is easily accessible, reducing
the risk of missed messages or appointments.
• Enhances task management by allowing agents to create, assign, and monitor tasks directly
from their Microsoft Outlook interface. This means that agents can manage their workloads
more effectively without needing to switch between different platforms.
• Supports automated workflows, enabling agents to respond to customer inquiries quickly
and accurately. It simplifies the process of updating customer records and logging service
requests, thereby improving the accuracy and reliability of customer data.
• Improve collaboration among team members. Agents can share insights, discuss complex
cases, and provide updates on customer issues effortlessly, fostering a more cohesive and
responsive customer service environment.
View Microsoft Outlook customer contact details in your instance
Once you have integrated Customer Service Management (CSM) with Microsoft Outlook, you
can view customer details in an Outlook add-in panel to make communication easier.

Before you begin

Role required: sn_customerservice.contact_manager, sn_customerservice.proxy_contact

Procedure
1. In Microsoft Outlook, open an email message you received from the contact.
2. On the Microsoft Outlook Home tab, click View in ServiceNow.
The Outlook add-in panel displays the contact details.

Note: If the contact details are not available, the No contact was found message
is displayed.
3. Optional: If you want to perform other contact tasks, access the contact information in the
CSM portal page by clicking the Pop-out icon (

).

Create a contact in Microsoft Outlook
As an account manager, you can create a contact when you receive an email from a customer
whose details aren’t in the Microsoft Outlook contacts list.

Before you begin

Role required: sn_customerservice.contact_manager and sn_customerservice.proxy_contact

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1587


<!-- page 1588 -->
Procedure
1. Open an email message that you received from the contact.
2. On the Microsoft Outlook Home tab, select View in ServiceNow.
The contact details aren’t available and the Outlook add-in panel displays the No contact
was found message.
3. Select the more actions icon (

) and select Create Contact.

4. Fill in the contact details in the case form and select Submit.
5. Optional: If you want to perform other contact tasks, access the CSM portal by selecting the
Pop-out icon (

).

View or modify existing cases in Microsoft Outlook
As an account manager, view the five most recent cases related to a Microsoft Outlook contact
to understand contact-related issues, modify any case information, and communicate more
efficiently with the contact.

Before you begin

Role required: sn_customerservice.contact_manager and sn_customerservice.proxy_contact

About this task

Although you can view or modify existing cases from Microsoft Outlook, you can also access the
CSM portal to work on open cases by clicking the pop-out icon (

).

Procedure
1. Open an email message you received from the contact.
2. On the Microsoft Outlook Home tab, click View in ServiceNow.
3. Click Cases in the Outlook add-in panel.
The add-in panel lists the five most recent cases connected to the contact that are not closed.
You can load more cases.
4. Click a case to open the case details.
5. Type your message.
6. Optional: If you have supporting information such as a message that you want to attach to a
case, click the attachment icon (

) and select the file.

7. Click Send.

Result

The newly added message is available in the activity stream.
Create a new case from an email message in Microsoft Outlook
If a customer whose contact details are available sends an email stating an issue, you can easily
create a customer service case.

Before you begin

Role required: sn_customerservice.contact_manager and sn_customerservice.proxy_contact

Procedure
1. Open the email message you received from a customer.
2. On the Microsoft Outlook Home tab, click View in ServiceNow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1588


<!-- page 1589 -->
The Outlook add-in panel opens in the right pane.
3. Click the more icon (

).

4. Select Create Case from the menu.
5. Fill in the case details on the case form.
6. Click Submit.

Mobile experience for CSM
Manage customer service cases from a mobile device with the Customer Service Management
mobile application. Stay connected and access information in real time to complete tasks
quickly.
Customer service agents and managers can use the Customer Service Management mobile
application to review case details quickly and complete case tasks. Agents and customer service
managers can perform routine actions and approvals effectively any time and anywhere.
Activate the Customer Service Mobile plugin (com.sn_csm_mobile) to use the available
features. To use the change request feature, the Customer Service with Service Management
(com.sn_cs_sm) plugin is required.

Note: The Customer Service Management mobile application supports product cases.
For more information, see Activate a plugin

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1589


<!-- page 1590 -->
Customer Service mobile application applet launcher for agent

With the customer service agent role (sn_customerservice_agent), you can:
• Get a quick overview of your case load, including new cases, critical cases, and those that
need attention.
• Accept and reassign cases.
• Add comments or work notes to cases.
• Review case details, activity stream, and related information such as SLAs, case tasks, and
child cases.
• Edit case information such as priority.
• Propose major cases.
• Receive push notifications for assigned or updated cases.
• Search for cases using keywords
With the system administrator role, you can configure the Customer Service Management mobile
application in the following ways:
• Configure pages to display the desired data.
• Configure the functions associated with swipe actions and top menu actions.
• Configure and create push notifications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1590


<!-- page 1591 -->
Customer Service mobile application applet launcher for manager

With the customer service manager role (sn_customerservice_manager) you can:
• Search for cases using keywords
• Review and approve change requests
• Approve escalations

Activate the Customer Service Mobile plugin
®

The Customer Service Management mobile application runs on the ServiceNow mobile
platform.
To use the Customer Service Management mobile application, activate the Customer Service
Mobile plugin (com.sn_csm_mobile). This plugin activates the following plugins:
• Mobile Agent Native Client plugin (com.glide.sg.agent_native_client)
• Customer Service (com.sn_customerservice)
• Customer Service Case Action Status (com.sn.csm_action_status)
To provide support for major cases, you can activate the optional Major Issue Management
plugin (com.sn_majorissue_mgt).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1591


<!-- page 1592 -->
Once the Customer Service Management mobile application is activated and configured,
agents can download the ServiceNow Agent mobile app on their mobile devices and access
ServiceNow instances.

Note: You can activate the Customer Service Mobile plugin (com.sn_csm_mobile) from
the Customer Service Management guided setup.
For more information, see Activate a plugin

.

Related topics
Getting started with ServiceNow Agent
CSM application overview
Customer service agents and managers can use the applet launcher and applets in the
Customer Service mobile application to view notifications and manage customer service cases.

Applet launchers
Applet launchers serve as landing pages or home pages. When you log in to your instance,
you see an applet launcher and the applets configured to display on that launcher. The system
administrator configures the applet launcher and applets for the Customer Service Management
mobile application.

Navigation bar
The navigation bar appears at the bottom of the mobile application screen. This bar includes the
following tabs that you can use to access different applets and application launch pages:
• Cases: displays the main case page. Use this applet launcher to access case management
functionality.
• Notifications: view a list of the notifications that have been pushed to the agent. Tap a
notification in the list to see the details, then tap the details open the case.
• Settings: manage settings for the mobile application.

Applets and cards
Select an applet from the applet launcher screen. Each applet contains one or more screens
used to display records that correspond to the applet function. The Active Cases applet, for
example, displays a list of all active case records.
The cases in the list are displayed as cards, with the case status displayed at the top of the card.
To use the cards:
• Swipe a card left or right to see the available actions, then tap the desired action.
• Tap a card to see the record details such as activity, related list, and escalations if any.
• In the detail view:
◦ Tap the top menu to see additional actions, then tap the desired action.
◦ Select the back button to return to the list.
Applets provide a filter option if there is more than one case in the list. When you tap the applet,
you see a list of filters that you can use to narrow down the list of cases.

Agent applets
Customer service agents have access to the following set of applets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
Agent applets for My Cases
Applet

Description

My Cases
Needs Attention Cases

Cases that are waiting for the agent to take
action. Includes cases in the Open, Awaiting
Info, and Resolved states.

Active Cases

Cases that are assigned to the agent. Includes
cases Open, Awaiting Info, and Resolved
states.

New Cases

Cases in the New state.

Active Critical Cases

Priority 1 cases in the Open, Awaiting Info, and
Resolved states.

Note: Cases in these lists are sorted by the last updated date in descending order, with
the most recent updated case displayed first.

Customer service card layout
In a list view, case cards display the following information:
• Case state
• Case number
• Short description
• Contact
• Account
In the major case list view, case cards display the following information:
• Major case state
• Case number
• Short description
• Account

Case form related lists
Customer service agents can access the following Case form related lists.
Related lists and their descriptions for Case form
Related list

Description

SLAs

Displays a list of SLAs for a case. View the
following information for SLAs included in this
list:
• Task
• SLA Stage
• SLA Definition

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1593


<!-- page 1594 -->
Related lists and their descriptions for Case form (continued)
Related list

Description

• Actual Elapsed Percentage
• Actual Elapsed Time

Note: Detail view is not available from
the SLA related list.
Tasks

Displays a list of case tasks. View the following
information for case tasks included in this list:
• State
• Number
• Subject
• Assigned to
• Priority

Note: Detail view is not available from
the Tasks related list.
Child Cases

Displays a list of child cases for a case. View
the following information for child cases
included in this list:
• Case number
• State
• Short description
• Account
• Contact
Click a child case to view additional details on
the Case form.

Notifications
Agents can receive notifications in the Customer Service mobile application when cases are
assigned, are commented, or need attention. The following table lists the available notifications:
Notifications in the Customer Service mobile application
Notification

Description

Case assignment

When a case is assigned to an agent by
someone else, a notification is sent to the
agent selected in the Assigned to field. The
notification includes the case number, state,
priority, and short description.

Case comments

When information is added to a case in the
Additional comments or Work notes fields

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
Notifications in the Customer Service mobile application (continued)
Notification

Description

by someone other than the assigned agent, a
notification is sent to the user selected in the
Assigned to field. The notification includes the
case number, priority, and short description.
Needs attention flag is checked

When the Needs attention flag is checked
on the Case form, a notification is sent to the
agent in the Assigned to field. The notification
includes the case number, state, priority, and
short description.

Case escalation

When an escalation is raised, users who are
part of the group that has permissions to
approve are notified. The approvers review
and approve them.

Change requests

When a change request is raised, users who
are part of the group that has permissions to
approve are notified. The approvers review
and approve them.

Related topics
Applet launcher
Navigation bar
Mobile push notifications
Get started with the Customer Service mobile application
Use the ServiceNow Agent mobile app to access the Customer Service mobile application. Then
log in to an instance as an agent or manager and work on your customer service cases.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

About this task
Procedure
1. Depending on your device, go to the Apple App Store or the Google Play Store and download
the ServiceNow Agent mobile app.
2. Log in to an instance

.

3. Tap Customer Service to open the application and display the applet launcher.
4. Manage your customer service cases based on your role.
For more information about the agent and manager tasks, see Use mobile application to
perform agent and manager tasks.
Related topics
Agent mobile app

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
Use mobile application to perform agent and manager tasks
Customer service agents manage cases and real-time notifications help in taking immediate
action. Customer service managers can approve escalations and perform tasks on major issues
with a swipe.
Agents (sn_customerservice_agent) and customer service managers
(sn_customerservice_manager) can perform routine actions and approvals effectively anytime
and anywhere.
Agent tasks
Agent tasks

Action

Description

Accept a case

Swipe left and tap Accept.

Accept a case that has been
assigned to you.

Add comments to a case

• Swipe right and tap Add
Comments.
• Tap the top menu and select
Add Comments.

Assign a case to another
agent

Assign a case to yourself

Add information to the case
Work Notes or Additional
Comments fields.

This action is available for
unassigned cases. Select
• Tap the top menu and select to display the Assignment
Assign.
Group and Assigned To fields
and make the assignments.
• Swipe left and tap Assign.

Assign an unassigned case to
• Swipe left and tap Assign to
yourself.
me.
• Tap the top menu and select
Assign to me.

Close a case

Tap the top menu and select
Close Case.

Select to display the
Resolution Code and
Resolution Notes fields,
which are mandatory fields
for completing this action.
Enable the check box to add
the resolution code to the
Additional Comments field.

Edit a case

Tap the top menu and select
Edit Case.

You can edit the following
fields in the Case form:
• Short description
• Account
• Contact
• Needs attention
• Priority
• Product
• Asset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
Agent tasks (continued)
Agent tasks

Action

Description

• Assignment group: selecting
an assignment group clears
the value in the Assigned to
field.
• Assigned to: if a group is
selected in the Assignment
group field, the list of
available users belong to
that group.
Open a case

Tap the top menu and select
Open Case.

Open a case and change the
state from Awaiting info or
Resolved to Open.

Propose a case as a major
case

Tap the top menu and select
Propose Major Case.

Propose a case as a major
case candidate.

Note: This action is
available if the Major
Issue Management
plugin is activated.
Propose a solution for a case

Tap the top menu and select
Propose Solution.

Select to display the
Resolution Code and
Resolution Notes fields,
which are mandatory fields
for completing this action.
Enable the check box to add
the resolution code to the
Additional Comments field.

Reassign a case to another
agent

Swipe left and tap Reassign.

Available for assigned
cases. Select to display the
Assignment Group and
Assigned To fields and
change the assignments.

Request more information

• Swipe left and tap Request
Info.

Add the request to the
Additional Comments field.

• Tap the top menu and select
Request Info.
Search for a case
Enter search keyword in the
using keywords (role:
search bar.
sn_customerservice_agent or
sn_customerservice_manager

All cases except those in
"Closed" state are listed. From
the top menu, you can request
for information, escalate a
case, propose a solution and
so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
Agent tasks (continued)
Agent tasks

Action

Escalate a case (role:
Tap the top menu and select
sn_customerservice_agent or Escalate Case and fill in the
sn_customerservice.escalation_requester​
required information.
)

Description

Enter the following information
and click Submit.
• Request Source
• Reason
• Escalation Severity
• Escalation Template
• Escalation Justification

View escalation

Click Escalations tab.

View change request (role:
sn_customerservice_agent
and sn_change_read)

Click on Change Request field The Change Request form
on the case form.
view displays details about the
schedule, planning, conflicts,
and details of the change
activity.

You can view details of
the escalation such as
escalation justification and the
requester's name.

Manager tasks
Manager tasks

Approve escalations (role:
approver_user)

Note: Agents with the
approver_user role can
also approve escalations
and change requests.

Action

• Navigate to My Approvals
>Escalations.
• Tap the top menu or swipe
left.
• Click Reject or Approve.

Description

• Pending approvals are
displayed based on the
oldest request.
• Click the Approved tab to
check the escalation you
approved.​

Note: When an
escalation is raised,
users who are part
of the group that
has permissions to
approve are notified. The
approvers review and
approve them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
Manager tasks (continued)
Manager tasks

Review and approve change
requests (role: approver_user)

Note: Agents with the
approver_user role can
also approve escalations
and change requests.

Action

Description

• Navigate to My
Approvals>Change
Requests on the case form.
• Approve or Reject the
change request that is in
Assess state on the Change
Requests form.

A change request requires
team members or a manager
to assess the change request.
They evaluate the request and
approve or reject.

Note: When a change
request is raised, users
who are part of the group
that has permissions to
approve are notified. The
approvers review and
approve them.

Install base work plans
You can create an install base work plan on the Customer Service Management application to
get the details that are related to an install base item. Work plans help you to create, maintain,
and view the basic details of an install base item. You can also plan for the regular and timely
maintenance of the install base item.

Overview
A work plan provides the information that you need about the regular maintenance that you must
do for an install base item. You can create a work plan for a product model. All the install base
items that are associated to that product model inherit the same work plan.
You assign your customer and consumer service agents with the
sn_fsm_planned_wm.planned_work_read role so that they can have read access to all the
planned work management tables.
You can also create a work plan in the CSM Configurable Workspace. To create a work plan in
the workspace, see Create a work plan in Customer Service Management (CSM) Configurable
Workspace.

Related lists for work plans
You can perform or view the maintenance operations, like device inspection and performance,
for an install base item through the related lists section of the Install Base form. The following
table lists the descriptions about the related lists for the work plans.
Work plans related list
Related list

Description

Work plans

Manage the maintenance requirements of an
install base item. They include information on
how often maintenance must be performed,
what the maintenance activities are for the
install base, and the order in which they must
be performed. To create a work plan, see

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


<!-- page 1600 -->
Work plans related list (continued)
Related list

Description

Create a work plan with Customer Service
Management (CSM).
Planned Work Schedules

Gauge the timing and regularity of
implementation of a schedule for a work plan.
Planned work schedules have triggers like
the duration, meter, condition, and script to
determine and ensure that the work plan
milestones are met. To create a planned work
schedule, see Configure a work schedule .

Planned Work Schedule Templates

Describe the planned maintenance activities
that must be performed for an install base
item and the order in which they must occur.
To create a planned work schedule template,
see Associate a work order template to a work
schedule .

Work Orders

Create work orders for field service agents to
perform scheduled maintenance activities for
the install base item. To create a work order, see
Create a work order.
Select the related list from the install base form
to create a work order for an install base item.
Select the Work order related list from the
planned work schedule form to create a work
order for a work plan.

Work Order Tasks

Work orders and work order tasks are related
and created only if there's an existing work
order for the install base item. Fill in the Parent
field on the work order task form with the name
of the work order. To create a work order task,
see Create a work order task .

Create a work plan with Customer Service Management (CSM)
Create a work plan so that you can plan and delegate field service agents to fulfill the planned
maintenance operations for an install base item on the Customer Service Management (CSM)
(CSM) application and CSM Configurable Workspace.

Before you begin

Role required: sn_fsm_planned_wm.planned_work_admin

Procedure
1. Navigate to All > Customer Service > Products > Install base item.
2. Open an install base item.
3. Open the Work Plans related list and select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
Work plan form on the Customer Service application
Field

Description

Name Name of the work plan.
Type

Type of trigger that determines when work should be performed:
◦ Model based: Base the work plan on a specified model of a configuration item (CI).
◦ General: Base the work plan on a table and filter.
◦ Install base: Base the work plan on specified models of the install base items.

Note:
◦ Model-based plans apply only to hardware models, specifically ones that
have at least one model category defined.
◦ The install base plan type is available only if the Customer Service Install
Base Management (com.snc.install_base) plugin is activated.
Model One or more product catalog items that you can select to identify the configuration
items (CIs) or install base that requires maintenance. When you select a model, the
associated table appears in the Table field. For example, if you select a specific PC
model, the Table field displays Computer [cmdb_ci_computer]. This field appears if
you selected either Model based or Install base type. For Install base type, the Table
field automatically fills in an appropriate table that is based on the selected model.
5. Right-click the form and select Save.

Result

A draft of the work plan is created. Next, you can create a planned work schedule to make the
work plan active and ready for an agent. To configure a planned work schedule, see Configure a
work schedule .
Create a work order
Create a work order to manage your regular maintenance and service requirements for an install
base item. You can do this task by using the Customer Service Management (CSM) application.

Before you begin

Role required: sn_customerservice_agent and sn_customerservice.consumer_agent

About this task

A work order is a request for off-site work. You can create a work order for a new or an existing
work plan so that you can assign work order tasks to field service agents. Users with the
sn_customerservice_agent and sn_customerservice.consumer_agent roles can create the work
orders and provide the information that is needed for the fulfillment of the work order tasks. If the
scope of an existing work order changes during the planned maintenance stage, you can create
a work order for an existing work order.

Procedure
1. Navigate to All > Customer Service > Products > Install base item.
2. Select an install base item record.
3. From the related list, select Work Orders and then select New.
4. On the Work Order form, enter the short description.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


