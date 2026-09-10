# Zurich IT Service Management — Scheduling

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2230–2284 of 3857

Sections: Scheduling (p2230)

---

<!-- page 2230 -->
Report name

Description

Average Walkup Interaction Wait Time

The average time a user is in queue before starting
a walk-up interaction.

Currently Waiting Interaction Work Item

Work items currently in queue waiting to be
processed.

Interactive Filters for Reports
Name of the interactive filter Description

Reference table

Channel Management
Agent Filter

Filters the reports based on an
agent.

[sys_user]

Channel Management
Group Filter

Filters the reports based on
groups.

[sys_user_group]

Channel Management
Queues Filter

Filters reports based on queues. [awa_queue]

Channel Management
Service Channel Filter

Filters reports based on service
channels.

[awa_service_channel]

Scheduling in Workforce Optimization for ITSM
Learn how you can plan shifts with automatically staggered break times for your agents to
manage their schedule effectively in Workforce Optimization for ITSM. Publish schedules for the
next scheduling period to get a snapshot of which agent is lined up to solve issues for that time
period.

Shift planning
Manage the scheduling for your organization from a central location. Use On-Call Scheduling
with Workforce Optimization for ITSM to have dedicated team members to resolve issues as they
arise.
The image provides a high-level overview of the Scheduling application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2230


<!-- page 2231 -->
The image provides a high-level overview of the tasks schedulers and agents can perform on the
calendar.

As a shift planning administrator, you can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2231


<!-- page 2232 -->
• Create shifts to make sure you have team coverage for the required span of time.
• Add breaks to the shifts that automatically stagger agent availability for those shifts.
• Preview the schedule and make necessary changes before publishing it to your agents.
• Access the schedule of all of your teams from one location.
As a shift planning agent, you can:
• Look up your schedule and request time off when required.
• Swap your shift with one of your peers.

Getting started with Scheduling in Workforce Optimization for ITSM
Easily find the tasks that you must complete in the Scheduling module.
Scheduling
Benefit

User

Finding tasks to complete in
Scheduling

Activate Scheduling in
Workforce Optimization for
ITSM.

admin

Activate Scheduling

Refer to the roles, system
properties, and more used
in Scheduling and Schedule
adherence.

Any scheduling role

Understand components used
in Scheduling in Workforce
Optimization for ITSM

Configure event categories,
access for event types and
more.

Scheduling admin

Set up Scheduling in
Workforce Optimization for
ITSM

Manage your workforce
efficiently by planning your
teams' shifts and schedule
plans. You can also plan
and manage schedules and
staffing needs across your
teams from one location.

Scheduling manager

Schedule your teams' work
in Workforce Optimization for
ITSM

Understand how Schedule
adherence works.

Any role

Understand Schedule
adherence in Workforce
Optimization for ITSM

Evaluate if your agents are
adhering to their schedules
and fine-tune your staffing
requirements based on their
adherence.

Scheduling manager

Monitor schedule adherence
of your agents

Predict resources based on
historical data.

Scheduling admin

Demand Forecast in
Workforce Optimization for
ITSM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2232


<!-- page 2233 -->
Example for using scheduling in Workforce Optimization for ITSM
Understand how you can set up and publish agent schedules and how your agents can manage
their own schedule based on an example.
A manager manages IT operations for a large organization and has 12 teams reporting to them.
Each of their teams has anywhere from 20 through 50 agents. At any given point, they needs
visibility into their teams' schedule. They must also be able to create shifts, and approve or reject
shift-swap or time-off requests from their agents.
As a manager, they can manage their entire teams' schedule using Scheduling. Ingrid's team can
manage their own schedule effectively by requesting shift-swaps or time-off.
The manager and their team can manage schedules by performing the following steps from one
central location:
1. Create shift plan
2. Create a schedule plan
3. Assign agents to work shifts
4. Publish the schedule
5. Agents make requests to change the schedule or take time off
For more information, refer to Service Operations Workspace - Scheduling.
6. Approve requests
Get an overview of how to you can create shift plans and assign agents to the shifts using the
schedule plan in this video. Create schedule plans and shifts
Get an overview of how you can monitor shifts and schedule for your entire team from a single
location in this video.
Workforce Optimization for ITSM Monitor Team Schedule
Get an overview of how agents use the workspace to manage their schedule.
Workforce Optimization for ITSM Agent Schedule
For detailed information on creating and managing schedules using Workforce Optimization for
ITSM, refer to Scheduling in Workforce Optimization for ITSM.

Setting up Scheduling in Workforce Optimization for ITSM
Manage events using the team calendar. You can create different types of event categories and
use scripted extension points to customize the event types.
Configure the due date logic for shift approval flows
As an administrator, you can configure the due date logic for the time-off request and shift-swap
request approval flows.

Before you begin

Make sure that your application is in the Shift Planning scope.
Role required: admin

About this task

You can configure the flows to restrict who can approve the requests. For example, you can set it
to only the manager of the agent's primary assignment group who can approve them. If the agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2233


<!-- page 2234 -->
submits the request for approval within two days before the agent time-off start date, then the
request for approval is auto-rejected.

Procedure
1. Navigate to All > Process Automation > Flow Designer.
Each flow has a requester and an approver workflow.
2. Configure the due date logic for the Time-off request flow.

If

Then

Reference image

The requester is one of the
managers

The request is autoapproved.

The requester is the agent

Enter the due date to approve
the request.
a. Open Else > Ask For
Approval flow.
b. In the Due Date field, select
the down arrow icon (

).

c. In the Due Date script
window, update
the value in the

dueDate.addDaysUTC(-2);
parameter to the number
of days you want to set the
due date for approval.
d. Select Done.
3. Configure the due date for the Swap request approval flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2234


<!-- page 2235 -->
If

Then

The shift-swap requester is
one of the managers

The request is autoapproved.

Reference image

The shift-swap requester is
Enter the due date for the
Enter the due date for
an agent (Requestee) and
requestee
agent
to
approve.
the requestee agent to
the The shift-swap approver
is the manager
a. Open Else > Ask For
Approval- Ask for Approval
from Requestee Agent flow.
b. In the Due Date field, select
the down arrow icon (

).
approve.

c. In the Due Date script
window, updated
the value in the

Enter the due date
to approve the
dueDate.addDaysUTC(-2);
parameter to the number
of days you want to set the
due date for approval.

d. Select Done.
Enter the due date to approve
request.
the request.
a. Open Ask For Approval Ask for an approval from
Managers and additional
managers of both the
agents flow.
b. In the Due Date field, select
the down arrow icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2235


<!-- page 2236 -->
If

Then

Reference image

c. In the Due Date script
window, updated
the value in the

dueDate.addDaysUTC(-2);
parameter to the number
of days you want to set the
due date for approval.
d. Select Done.
Related topics
Build your first flow in Flow Designer
Configure event categories for the ITSM Manager Workspace
Add an event category. Create or update field configurations for events. You can also specify if an
event category must be excluded when the shift coverage for agents is calculated.

Before you begin

Role required: sn_shift_planning.admin
The following event category configurations are available by default:
• Work
• Meeting
• Training
• Custom Event
• Time Off
• Break

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Scheduling > Event Categories.
2. In the Event Categories list, click New.
3. In the Name field, enter a name for the event category.
4. If you want to exclude this event category for agent coverage calculation, enable the Exclude
from coverage check box.
5. In the Event field configuration dialog box, edit the following configuration as needed:

Note:
◦ You can remove any property that does not apply to a type of event.
◦ By default, agents can add attendees to the meeting and training event types.
{
"create": {

//Creates an event type

form
"attendees": {

//Adds the Attendees

"mandatory": true,

//Sets this field as

field
mandatory
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2236


<!-- page 2237 -->
"readOnly": false,

//Sets this field as

read-only
"allowAllUsers": false //Allows you to only add
users managed by the logged-in user; to add any user, set this
value to true
},
"startDate": {
"mandatory": true,
"readOnly": false
},
"endDate": {
"mandatory": true,
"readOnly": false
},
"additionalSelectors": [
//Add custom fields
to the form
{
"fieldLabel": "Select Shift", //Name of the
field that displays on the form
"table":
"sn_shift_planning_shift_plan", //Name of the table referenced
by the field
"field": "name", //Any field from the
selected table whose display values must be shown in the
custom field
"value": "",
"mandatory": true,
"additionalQueryString": ""
}
]
},
"edit": {
//Edit an event type
form
"attendees": {
"mandatory": true,
"readOnly": false,
"allowAllUsers": false
},
"attendeesFieldForAgent": { //Add attendees to
events
"mandatory": true,
"visible":true,
"readOnly": false,
"allowAllUsers": false,
"label":"Attendees"
},
"startDate": {
"mandatory": true,
"readOnly": false
},
"endDate": {
"mandatory": true,
"readOnly": false
},
"description":{
//Add text
fields to the form
"mandatory":false,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2237


<!-- page 2238 -->
"readOnly":false,
"label":"Notes"
},
"additionalSelectors":[
{
"fieldLabel": "Select Shift",
"table": "sn_shift_planning_shift_plan",
"field": "name",
"value": "",
"mandatory": true,
"additionalQueryString": ""
}
]
}
}
6. Click Submit.
Configure an event load order in Workforce Optimization for ITSM
Add a system property to display your preferred event categories first on the calendar.

Before you begin

Set the map application scope to Shift Planning. For information on how to set the scope, see
Set map application scope .
Role required: admin

Procedure
1. In the application navigator, enter sys_properties.list.
2. Click New.
3. Enter the following field values.

Field

Value

Suffix

sn_shift_planning.event_load_order

Application
scope

Shift Planning

Type

String

Value

{
"fastLoad":[
"07e433f449a11010f877de942e7c1d18"
]
}
where fastLoad is the array of sys_ids for event categories that you would
like to load first. The remaining custom event categories will be loaded after
all event categories with fastLoad categories are loaded and updated on
the calendar.

Read roles

sn_shift_planning.agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2238


<!-- page 2239 -->
Field

Value

Write roles

sn_shift_planning.admin

4. Click Submit.
Create or enable access to event types to add them to the team calendar
Create multiple events from the same category and add them to the calendar in ITSM Manager
Workspace. Enable agents or managers to create specific event types.

Before you begin

Role required: sn_shift_planning.admin

Procedure
1. Create an event type.
a. Navigate to All > Workforce Optimization for ITSM > Scheduling > Event Types.
b. Click New.
c. On the form, fill in the fields.
Event Type form
Field

Description

Name

Unique name for the event type.

Priority Order

Priority of the event type that you want to exclude from the coverage. The
higher the number means the higher the priority.
For example, let's say you are attending a work event for four hours in
a day. You have marked that time window as both a time off and as a
meeting event type. If time off has a higher order of priority, then the
application excludes that event type from coverage.

Color

Color that identifies this type of event in the team calendar.

Use custom
colors

Preferred color that you can select to display the background and border
of the event type in the team calendar.

Active

Option that when enabled, displays the event type on the calendar.

Category

Type of event, for example, custom, meeting, break, or time off.

d. Click Submit.
2. Enable agents or managers to create specific event types.
For information on adding or removing access to user for event types, see Include or exclude
access for event types.

What to do next

Add events to the team calendar
Event type extension points in Workforce Optimization for ITSM
Use extension points to call scripts for event categories such as a meeting, time off, or work time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2239


<!-- page 2240 -->
Creating custom event types using extension points
When you create extension points for custom events, consider the following:
• Which users can create an event?
• Does the event have to go through an approval process?
• Is it a work-type or a non-work type event?
Here are some examples that provide guidance on some of the considerations you may want to
take into account when you create a new custom event using extension points:
• When you create an event for monthly staff meetings, take the following into consideration:
◦ Only managers can create this type of event.
◦ This is a non-work type event.
◦ The event does not have to go through an approval process.
• When you create an event for time-off requests, take the following into consideration:
◦ Any employee can create this event.
◦ The is a non-work type event.
◦ The event has to go through a manager approval process.
To see a list of extension points that you can use for Workforce Optimization for ITSM, navigate
to System Extension Points > Scripted Extension Points. In the Extension Points list, open the
sn_shift_planning.EventManager extension point.
Use scripted extension points to integrate customizations without altering the core components
in the application code. When customizing a base application, you implement the scripted
extension points by creating the custom script includes and registering them against the
scripted extension points.
Extension points for event types
Extension point name

Description

sn_shift_planning.EventManager Implement this extension point to customize the
logic for the event categories that you create.
You can use extension points to create events such as meeting, training, and time-off requests.
For example extension point implementations, see the following extension instances in the
Implementations related list:

Category

Extension script

Meeting

AgentScheduleMeetingEventManager

Break

AgentScheduleBreakEventManager

Training

AgentScheduleTrainingEventManager

Time off

AgentScheduleTimeOffEventManager

Work

AgentScheduleWorkEventManager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2240


<!-- page 2241 -->
Related topics
Using extension points to extend application functionality
Synchronize agent calendar in Workforce Optimization for ITSM with the Microsoft Outlook
calendar
Streamline the way that agents manage their calendar so that they can view their schedule in
one location.
As an admin, you can synchronize the agents' calendar in Workforce Optimization for ITSM with
their Microsoft Outlook calendar.
When the two calendars are integrated, agents with the Shift Planning Agent
(sn_shift_planning.agent) role can also view the calendar information in their Microsoft Outlook
calendar in real time. This information includes the agent's shifts, schedules, and events such as
meetings, trainings, and time-off.

Note: When you create events of type Custom, you must use extension points to
synchronize the custom events in the two calendars.
Set up the Workforce Optimization for ITSM agent calendar integration with their Microsoft
Outlook calendar
Display the schedules, shifts, and events from the agent's calendar also in their Microsoft
Outlook calendar when you synchronize both the calendars.

Before you begin

Role required: admin

Procedure
1. Set up the Microsoft Exchange Online spoke

.

Note: Verify that the following Microsoft Graph permissions are set correctly in the
Microsoft Azure portal:

Permission

Type

Description

Calendars.ReadWrite

Delegated

Full access to user
calendars

Calendars.ReadWrite.Shared Delegated

Read and write access to
user and shared calendars

Calendars.ReadWrite

Read and write access to
calendars in all mailboxes

Application

2. Set the sn_wfo_outlook.enable_outlook_sync system property to true.
For more information, see Scheduling components in Workforce Optimization for ITSM.
3. Add the email IDs of the users that you want to synchronize to the User [sys_user] table.
Your agents' Workforce Optimization for ITSM calendar is now synchronized with their
Microsoft Outlook calendar.

Important: If the swapped shifts don't appear in the Microsoft Outlook calendar, verify
that you've followed all steps in this procedure to make sure that the schedule for the
shifts have been synchronized with Microsoft Outlook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2241


<!-- page 2242 -->
Scheduling your teams' work in Workforce Optimization for ITSM
Manage your workforce efficiently by planning shifts for each day and assigning users to the
shifts. With Scheduling, you can use your resources efficiently by planning and managing
schedules and staffing needs across your teams from one location. You can also integrate with
on-call scheduling and create shifts and schedule for on-call rotations.
You can add meeting, training, time-off request, or an ad hoc work shift using the team calendar.
You can also filter agents in the team calendar based on their location, region, assignment
groups, schedule plan, list of team members, or any field in the agent's record.

Important: You must index new tables to see them in Work Scheduling. For more
information on indexing tables, see Configure a table for indexing and searching

.

Create a shift plan
Schedule shifts for your team so that you can make sure that you are covering all work
assignments and breaks. You can also specify the days of the week that you might need to
override scheduled shifts.

Before you begin

Role required: sn_shift_planning.admin

About this task

In the Shifts tab, you can view the work shifts and on-call shifts in separate tabs. The shifts are
grouped by active and inactive shifts. The contextual side panel displays the active and then the
inactive shifts in the order it is displayed in the Shifts tab. You can scroll through the shifts using
pagination.

Note: Your administrator can set user preferences for the pagination size to view work
shifts and on-call shifts. For more information see, Scheduling in Workforce Optimization for
ITSM

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Schedule icon (

).

3. Click the Shifts tab.
◦ Search shift plans: Type keywords in the Work shift or On-call shift search field to access
related shift plans easily.
◦ Filter shift plans: Use the filter icon (
or published state.

) to view shifts based on whether the shift is in draft

▪ To filter work shifts, in the Work shift tab, click the filter icon (
) and select the desired
state of shifts you want to view using the State field. Use the Days of week filter to narrow
down the display of shifts based on the desired days in a week.
▪ To filter on-call shifts, in the On-call shift tab, click the filter icon (
desired state of shifts you want to view.

) and select the

4. Click the plus (+) icon.
5. Create a shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2242


<!-- page 2243 -->
To

Do this

a. Create a work shift.
i. Click Work shift.
ii. In the Name field, enter a name for the shift.
iii. Select the time window for the shift.
1. In the Time Zone field, select the time zone of the users
that you want to allocate to the shift.

Note: To add a shift for agents working in their local
time zones, select the Use agent time zone option.
The system uses the time zone that is specified in
the agent's user record.
2. In the Start Time field, enter the time of day when you
want to start the shift.
3. In the End Time field, enter the time of day when you want
to end the shift.
iv. Select the days of the week for which you want to add this
shift.
v. Click Save.
Create a work shift

b. Add schedule breaks to the shift.
i. Select the shift that you created.
ii. Click Add break.
iii. In the Name field, enter a name for the break.
iv. Set a duration for the break.
1. In the Duration field, enter the length of time for the
break.
2. In the Earliest Start Time field, enter the earliest time to
start the break.
3. In the Latest End Time field, enter the latest time to end
the break.
For example, you can set the earliest start time as 11:00,
the latest end time as 15:00, and the duration of the break
as one hour. If you add four agents to that work shift, the
Scheduling application automatically staggers the break
duration for each agent. Stagger breaks to ensure that
your four agents can cover the entire shift span.
4. Click Save.
You can view the number of agents for each hour or day on
the shift span window.
a. Create an on-call shift.

Create an on-call shift

i. Click On-call shift.
ii. In the Name field, enter a name for the shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2243


<!-- page 2244 -->
To

Do this

iii. From the Group field, select a group that you want to assign
for the shift.
iv. Select the time window for the shift.
1. In the Start Time field, enter the time of day when you
want to start the shift.
2. In the End Time field, enter the time of day when you want
to end the shift.
3. From the Time Zone menu, select the time zone of the
users that you want to allocate to the shift.
v. Select the days of the week for which you want to apply the
shift.
vi. In the Rotation start date field, click the calendar icon (
),
select the on-call rotation start date for the shift and click
OK.
vii. Click Save.
b. Create the on-call rotation.
i. Select the shift that you created.
ii. Click Create Rotation.
iii. From the Agents field, select the names of the agents you
would like to be part of the shift. When you click the field,
the name of all agents that belong to the group that the oncall shift is being created for is displayed.
iv. From the Rotate interval field, select if you want the rotation
to be daily or weekly.
v. Click Save.

Note: The Escalation Type field is auto-populated with
Rotate through rosters field value if multiple rosters
have been created for the rotation. If not, it is populated
with Rotate through members field value.
c. Click Publish to make the shift active and publish it on the
schedule.

Note:
◦ You can select an active on-call shift and click Unpublish
to make the shift inactive and remove it from the sched­
ule.
◦ You can view all on-call shifts that have been published
on the schedule in the agent and team calendar. When
you add new agents to the on-call rotation, it might take
some time to refresh the data on the team calendar.
◦ You can click on an on-call shift in the team calendar to
see more details.
You can view the name of the primary agent for each on-call shift
on the shift calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2244


<!-- page 2245 -->
Related topics
On-Call Scheduling
Create a schedule plan
Manage your team's schedule by creating a schedule plan that covers a span of time and
includes your team's work shifts. You can also assign agents to shifts based on their skills and
availability. This way, you can make sure that you are using your resources in the best way
possible for your organization.

Before you begin

Role required: sn_shift_planning.admin

About this task

You can set the number of days to cache agent schedules using the
sn_shift_planning.number_of_days_to_cache system property.
If you do any of the following:
• Import agent schedules using table import
• Disable business rules and use a script to load the data
you must manually run the Shift Planning - Delete All Agent Schedules
Cache schedule job to clear the cache.

Note: Your administrator can set user preferences for the pagination size to view schedule
plans. For more information see, Scheduling in Workforce Optimization for ITSM

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Schedule icon (

).

3. Create a schedule plan.
a. Click the Team Calendar tab.

Note: You can analyze the staff alignment for a day or for the week.
b. In the contextual side panel, click the Show Schedules icon

to display the schedules.

c. In the Schedules panel, click the + icon.

Tip:
▪ Search schedules: Type keywords in the Schedules search field to access related
schedule plans easily.
▪ Filter schedules: Select the filter icon ( ) and then select the desired schedule
states using the Schedule plan state filter and the desired start and end dates using
the Schedule plan dates filter to narrow down the display of schedules in the team
calendar.
You can duplicate an existing schedule to create another one. The start date changes
to the day after the current date and the end date changes to 30 days from the current
date.
d. In the Name field, enter a name for the schedule plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2245


<!-- page 2246 -->
e. From the Start Date field, select a date to start the schedule plan and click OK.
f. From the End Date field, select a date to end the schedule plan and click OK.
g. In the Assignment groups section, assign the schedule plan to your groups.
▪ To assign it to all groups you manage, select Groups I manage.
▪ To assign it to specific groups, select Specific groups.
You can view the schedule of all agents in the assignment group that you directly or
additionally manage.
h. Click Save schedule.
.
4. Add a work shift to the schedule plan.

Note: To add more shifts to an existing schedule plan, select the schedule plan and
then add the work shift.
a. Click Add Shift.
b. In the Shift field, select the work shift that you want to add to the schedule plan.
c. In the Event type field, select the work event that categorizes the work shift.
5. Add agents to the work shift.
a. In the Assign agents field, search for agents and add one or more agents to add to the shift.
b. To publish the schedule plan, select Publish.
It may take a few minutes for the screen to refresh. For more information on publishing a
schedule plan, see Publish a schedule plan for visibility into team coverage.
Enable your teams to sign up for work shifts
Empower your teams to sign up for work shifts based on their availability and preference.

Before you begin

Role required: sn_shift_planning.admin

About this task

When a schedule plan is enabled for sign-up, you can receive notifications. You can also receive
notifications when the schedule plan that's open for sign up is due on the current day or when
it's due soon.

Important: Your administrator must set the value in the

glide.ui_notification.max_recipients property to the maximum number of
agents for which you want to send the notifications.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace
2. Select the Schedule icon (

).

3. Add a schedule plan.
a. Select the Team Calendar tab.
b. In the Contextual side panel, click the Show Schedules icon

to display the schedules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2246


<!-- page 2247 -->
Tip: Select the filter icon (

) and then select the desired sign-up state and sign-up
dates to narrow down the schedule plans enabled for sign-up.

In the filters, to add the desired

Sign-up state

Do this

i. Double-click one or more sign-up states in
the Available column to move them to the
Applied column.
ii. Select Apply.

Sign-up dates

i. Select a predefined option such as Last 7
days or select the start and end date for which
you want to see the schedule plans enabled
for sign-up.
ii. Select Apply

c. In the Schedules panel, select the + icon.
You can duplicate an existing schedule to create another one. After you duplicate a schedule
that has the shift sign up enabled, you can update the start date, end date, and the date for
which the agents must sign up for the schedule.

Note: If there are no agents associated with the schedule, then the shifts associated
with the schedule aren’t duplicated.
d. Fill in the required fields on the form.
The image below shows an example of a filled-in Schedule form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2247


<!-- page 2248 -->
e. To enable your agents to sign up for work shifts, do the following:
i. Enable the Request Agent Signup check box.
ii. In the Agents must sign-up by field, enter the date by which they must sign up for shifts
within that schedule.

Tip: If your agents have signed up for their preferred shifts, the Assigned To field is
auto-populated with those agents.
f. Select Save schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2248


<!-- page 2249 -->
4. Add a work shift to the schedule plan.
a. Select the schedule plan you've created.
The image below displays the schedule plan that was created.

b. Select Add Shift.
The image below provides an example of a form to enter the details for a shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2249


<!-- page 2250 -->
c. In the Shift field, select the work shift that you want to add to the schedule plan.

Note: If the schedule plan has been enabled for agents to sign up for shifts, the
following fields are automatically enabled:
▪ Request agent sign-up
▪ Enable auto-assignment of agents
If you want to assign agents manually, you can disable these check boxes at any time.
d. If the shifts are enabled for sign-up, you can select Send for signup.
All shifts that have been enabled for sign-up are sent to the agents to sign up for their shifts.
You can select Close sign-up to close agent sign-up for a shift before the sign-up due date
and manually assign the agents.
▪ The Enabled for sign-up highlighted label changes to Closed for sign-up.
▪ The system will automatically close the sign ups after the sign-up due date.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2250


<!-- page 2251 -->
5. Add agents to the work shifts.
To

Auto-assign agents

Do this

Enable the Enabled for auto-assignment
for agents check box. Your agents who
have set the shift to be their top preference
is auto-assigned. The number of shifts au­
to-assigned is based on the value set in the

sn_shift_planning.max_shifts_to_autoassign
system property.
a. In the Assign agents field, search for
agents and add one or more agents to add
to the shift.
b. To add agents who had signed up for shifts,
select +Add signed up agents

Assign agents manually

You can view the agents who had signed
up and their preferred ranking to work on
that shift. If you don't want to display the
agents who have already been assigned
to a shift in that schedule plan, enable the
Hide agents already assigned to other
shifts toggle button.

Note: This option is only available af­
ter you've closed agent sign-ups for
the shift.
c. Select Save selection.
6. Select Save shift.
The state for the schedule plan changes to Generating Preview.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2251


<!-- page 2252 -->
7. To publish the schedule plan, select Publish.

Note: It may take a few minutes for the screen to refresh.
The table describes the different shift sign-up states in the schedule plan.

Schedule plan sign up state

Description

Sign-up not enabled

The schedule plan isn’t enabled for sign-up.

Enabled for sign-up

◦ Schedule plan is enabled for sign-up but isn’t yet
ready for agents to sign up for shifts.
◦ Schedule plan can’t be published when enabled
for sign-up.

Open for sign-up

◦ Schedule plan is enabled for sign-up and is ready
for agents to sign up.
◦ Schedule plan can’t be published or deleted when
it's open for sign-up.
◦ When open for sign-up:
▪ The sign-up due date can’t be changed.
▪ The work shift details can’t be changed.
▪ New shifts can’t be added.
▪ If enabled for auto-assign, the agent assignment
in a shift can’t be changed.

Closed for sign-up

Schedule plan is closed for agents to sign up.

Publish a schedule plan for visibility into team coverage
Generate a preview of your schedule plan and publish it so that your agents can see their shifts
and schedules ahead of time. You can unpublish a schedule to make changes and then publish
it again.

Before you begin

Role required: sn_shift_planning.admin

About this task

You can make a copy of a schedule and update it to create a new schedule. Updates could
include modifying the schedule start and end dates as well as adding or removing shifts or
agents.
When you make a copy of the schedule, the following updates are automatically made to the
schedule copy:
• The start date is set to the current date and the end date to 30 days from the current date.
• The schedule state changes to Draft. You can make the necessary changes to the shift and
click Save.
• The schedule only displays agents in the assignment group of the current logged in user.
You can also unpublish a schedule make updates, and then publish it again.
When you unpublish a schedule:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2252


<!-- page 2253 -->
• If the start date is the either the current date or had occurred in the past, the schedule state
remains as Published and the end date changes to tomorrow.
• If the start date is in the future, the application changes the schedule state to Draft.
• If you delete one or more groups in a schedule plan, all agents who are part of the deleted
groups are removed from the shifts in the schedule. After you remove the groups, the schedule
changes to draft state and the team calendar refreshes with the updated data.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Click the Schedule icon (

).

3. Generate a schedule preview.
a. Click the Team Calendar tab.
b. Click the show schedules icon (
)to display in the contextual side panel.
The team calendar refreshes and generates the preview when you save a work shift.
4. Publish a schedule.
a. Select a schedule and edit the schedule if necessary.
b. Edit the schedule if necessary and click Save.
c. Click Publish.

Note: You can click Delete in Draft state and delete the schedule if you no longer
need it.
All the schedules that are in Draft state move to Published state. You can view the published
schedule in the team calendar.

Note: You can use pagination to scroll through your agents' schedules.
Track and manage your teams' schedule
Create, update, or monitor your teams' schedule from one location. You can approve or reject
requests for swapping shifts or time off for agents within your assignment group.

Before you begin

Role required: sn_shift_planning.admin

About this task

Using the team calendar, you can access the list of all of your agents by assignment group. When
you select a shift for an agent, you can see the agent's work schedule including the break time.
You can also view the number of agents that are scheduled at every time interval for each group.

Procedure
1. Modify an agent's shift.
The schedule that includes this shift must be in Preview or Published state.
a. Navigate to Workforce Optimization for ITSM > Manager Workspace.
b. Click the Schedule icon (

).

c. In the Team Calendar tab, navigate and point to the shift for the agent that you want to
modify the schedule for.
d. In the shift pop-up window, click the Edit icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2253


<!-- page 2254 -->
e. Modify the agent's shift as desired.

Note: If the existing shift has a break, you can add more breaks to the shift.
f. Click Save.
2. Approve or reject an agent's time off or shift-swap with another agent.

Note: You must approve a request two days before the time-off or shift-swap start date.
If not, the approval will be auto-rejected. An administrator can change this default setting.
For more information, see Setting the due date for time-off and shift-swap request
approvals in Scheduling in Workforce Optimization for ITSM in configurable workspace.
a. Click Approvals. You can view all agent requests in your queue and the details for each
request. You can use the Compose field to communicate with the agent.
b. Select a request that you want to approve or reject and do one of the following:
▪ To approve a request, click Approve.
▪ To reject a request, click Reject.
If you approve the request, the schedule gets updated in the team calendar based on the
approvals.
Related topics
Manage your schedule using Service Operations Workspace
Analyze your staff alignment using Demand Forecast
Use Demand Forecast to plan the number of staff members that you require so that you have
enough agents to do the job.

Before you begin

Role required: sn_agent_forecast.user

About this task

Using Demand Forecast, you can:
• Monitor agent or team shift coverage for any day or week.
• Analyze if you are overstaffed, understaffed, perfectly staffed, or not aligned well with your
staffing needs.
• Adjust your staff alignment depending on the coverage that you need and the schedule of your
teams.
• Analyze your staff alignment as you are creating a schedule.
• You can analyze the agent coverage you have and the actual demand for the number of agents
based on assignment groups and work shifts in a day.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Click the Schedule icon (

).

3. Click the Team Calendar tab.
4. Analyze your staff alignment for each shift.
You can click the filter icon and select the assignment groups and shift plans for which you
want to view the staff alignment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2254


<!-- page 2255 -->
To analyze staff alignment

Do the following

Select Day from the list.
The Total coverage/demand row displays the number of
agents that cover each shift in a day. It also shows the de­
mand for the number of agents that you forecast to work for
that day.
For example, 24/20 shows the following:
◦ You have 24 agents scheduled for all shifts for that day.
◦ The agent demand forecast for that day is 20.
You can also view the number of agents you have and the
demand for every hour for each group. The current agent
coverage and the demand is highlighted as follows:

For each day

Highlight color for
each day for a group

Description

Green

The number of agents you have
scheduled for that hour and
demand for that hour are an
exact match—your staffing needs
are perfectly aligned.

Yellow

The number of agents you have
scheduled are more than the
demand you have for that hour.

Red

The number of agents you have
scheduled are less than the
demand you have for that hour.

a. Select Week from the list.
The Total coverage/demand row has indicators for the
staff alignment.

For a given week

If the row displays

Then

An arrow that points
downwards

The predicted forecast is
lower than the number of
agents that you need for
that day.

An arrow that points
upwards

The predicted forecast is
higher than the number of
agents you need for that
day.

A checkmark

The perfect alignment of
the predicted forecast

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2255


<!-- page 2256 -->
To analyze staff alignment

Do the following
If the row displays

Then

and the required number
of agents.
b. Click any of the indications that are displayed in the To­
tal coverage/demand row to analyze further details about
the forecast.
You can also view the coverage and demand for every hour
for each group.
The following image shows an example of the staffing alignment in a Week view. The
misaligned staffing indicator in the pop-up window shows that the forecast manager
has scheduled four agents for each shift but more agents are needed to cover the

shifts.
Understanding user criteria for event types in Workforce Optimization for ITSM
Manage user access for any event type such as meeting, training, and time-off requests in the
team calendar.
You can include or exclude Create, Read, Write or Update, and Delete (CRUD) rights for event
types using the inclusion and exclusion user criteria access. You can perform the CRUD
operations for users, groups, or roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2256


<!-- page 2257 -->
Note: By default:
• Users have role-based access to manage event types.
• Team members don’t have read-access to events of type Actual work.
For additional flexibility around managing the CRUD access, you can set the user criteria for
each event type. For example, if team members don't have access to edit their work shifts
using their role-based access, you can set that access using user criteria. You can set this
access for specific team members or for the whole group.
The flow diagram shows the logic on how inclusion and exclusion user criteria access work for
event

types.
How inclusion and exclusion user criteria access works
When the user criteria rules get evaluated, it's done in the following order:
1. The system first evaluates the exclusion access for each criteria.
◦ If the exclusion access for a CRUD operation is set to true, then the system evaluates the
user criteria.
a. If the user doesn’t have access based on their role, then the user is denied access for the
specific CRUD operation.
b. If the user isn’t denied access, then the system evaluates the inclusion criteria.
◦ If the exclusion access for a CRUD operation is set to false, then the system evaluates the
inclusion criteria.
2. For the inclusion access, for a specific CRUD operation such as Create, the system checks if at
least one of the inclusion user criteria is set to true. If yes, then the system evaluates the user
criteria based on the user's role access.
◦ If the user:
▪ Has access for the CRUD operation based on their user role, then the user can perform
that action. For example, if the event type is training and the CRUD operation is Create
then the user can create the training event types.
▪ Doesn’t have access for the CRUD operation based on their user role, then the user can’t
perform that action.
◦ If at least one of the inclusion criteria isn’t set to true, the user doesn’t have access to the
specific CRUD operation. In this example, the user can’t create the training event types.

Note: The exclusion access always takes precedence over the inclusion access. If no
inclusion or exclusion access is set, then the role-based access is used for managing event
types.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2257


<!-- page 2258 -->
Create user criteria for event types in Workforce Optimization for ITSM
Add a user criteria record to specify which users, roles, and groups can access event types in
Workforce Optimization for ITSM.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > User Criteria.
2. Select New.
3. On the form, fill in the fields.

Field

Description

Name

Unique name for the user criteria

Users

Users who can access event types.

Groups

Groups who can access event types.

Roles

Roles who can access event types when you
apply the user criteria.

Advanced

Option to create a script for the user criteria.

Active

Enabling the check box makes the user
criteria available.

Companies

Companies who can access event types.

Location

Locations that can access event types.

Departments

Departments that can access event types.

Match All

Option to make every condition that is set
required when the user criteria are applied.

4. Select Submit.
Related topics
Create a user criteria record for Service Portal
Include or exclude user access for event types​
Add or remove access to users for any event type so that they can view event types that are
relevant only to them.​

Before you begin

Role required: sn_shift_planning.admin​

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Scheduling > Event Types.
2. Select an event.
3. Exclude or Include specific CRUD access for users to events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2258


<!-- page 2259 -->
To

Do this

a. Select the Evaluate access for exclusion
tab.

Note: You can set the CRUD access
for each user criteria where you would
exclude the user from specific CRUD
operations.
Exclude users for which you do not want to
enable specific access to event types.

Important: For exclusion, a Create

access will deny the user from creat­
ing events because it excludes that ac­
cess for the user. The same principle
applies to any of the CRUD operations.

b. To create a new Event Exclusion User Crite­
ria, select New.
c. In the Name field, enter a name, which is an
entity of users that is evaluated for the ex­
clusion user criteria for the selected event
type. This entity identifies and associates
the user criteria to the event type..
d. In the User criteria field, select the user cri­
teria record for which you want to set exclu­
sion CRUD operations.
e. Select the CRUD operations for which you
do not want to give access.
f. Select Submit.

Include users for which you want to enable
specific access to event types.

Important:
For inclusion, for specific CRUD opera­
tion such as Create, the system evalu­
ates if at least one of the inclusion user
criteria is set to true:
◦ If any of the criteria is set to true,
then the system checks if the user
satisfies the criteria.
▪ If the user satisfies the criteria,
then they have access for the spe­
cific CRUD operation.
▪ If the user does not satisfy the cri­
teria, then they don't have access
to the CRUD operation.
◦ If none of the criteria is set to true,
the user has access to the specific
CRUD operation. This is based on
the default behavior where all users
have access based on their roles be­
fore they're added to the user crite­
ria.

a. Select the Evaluate access for inclusion
tab.
b. To create a new Event Inclusion User Crite­
ria, select New.
c. In the Name field, enter a name for the
event inclusion user criteria.
d. In the User criteria field, select the user cri­
teria record for which you want to set inclu­
sion user criteria access.
e. Select the CRUD operations for which you
want to give access.
f. Select Submit.

4. Click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2259


<!-- page 2260 -->
Verify access criteria for a group or a team member in Workforce Optimization for ITSM
Check what create, read, update, and delete rights your groups or your team members have for
events to make sure that they have the correct permissions that they need.

Before you begin

Role required: sn_shift_planning.admin

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. In the lists module, go to Scheduling > Event type.
3. Select an event for which you want to verify user access.
4. Select the User access tab.
5. Do any of the following.
To

Do this

Verify user access for all your groups

Select All my groups.
a. Select Specific groups and team members.

Specific groups and team members

b. In the Specific groups field, enter the
groups for which you want to verify user ac­
cess.
c. In the Team members field, select the mem­
bers of your team for which you want to veri­
fy the access.
d. Select Check user access.

The screen displays the create, read, write, and delete columns as true for each team member
that has access to the specific type of access to the selected event.
Add events to the team calendar
Create a meeting, training, time-off request, a custom event, or an adhoc work shift from the team
calendar.

Before you begin

Role required: sn_shift_planning.admin

About this task

You can create custom event types and add or remove the desired fields. For more information,
see Configure event types for the ITSM Manager Workspace.

Note: In the team calendar, when you select an event for a team member and delete it, the
event is also deleted for other participants in the event.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Select the Schedule icon (

).

3. Select the Team Calendar tab.
4. Select +New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2260


<!-- page 2261 -->
5. Create an event.
To

Perform these tasks

a. Do one of the following:
▪ To schedule a meeting, select Meeting.
▪ To create a training event, select, Training.
▪ To create a time-off request, select Time-off.
b. Fill in the event form.
i. In the Title field, enter a name for the meeting.
ii. Add the required names for the event:
▪ For a meeting in the Attendees field, enter
the names of the meeting attendees.
▪ For a training, enter the names of the agents
who want to be trained in the Trainees field.
Create a meeting, training, or time-off
request

▪ For a time-off request, enter the names of the
agents in the Agents field.
In the Attendees field, start entering the name
of each of the attendees for the meeting and se­
lect the name.
iii. In the Start date field, select the calendar icon
and select the date you want to start the meet­
ing and select OK.
iv. In the End date field, select the calendar icon
and select the date you want to end the meet­
ing and select OK.
v. If the meeting spans for the whole day, select
the All Day slider.
vi. Make this event a recurring one.
vii. In the Description field, enter a description for
the meeting.
a. Select Custom Event.
b. In the Agents field, start entering the name of
each of the attendees for the meeting and select
the name.

Create a custom event

c. In the Start date field, select the calendar icon
and select the date you want to start the meeting
and select OK.
d. In the Start time field, enter the start time for this
event.
e. In the End date field, select the calendar icon and
select the date you want to end the meeting and
select OK.
f. In the End time field, enter the end time for this
event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2261


<!-- page 2262 -->
To

Perform these tasks

g. In the Notes field, enter any information that you
want to capture for the event.

Note: The label for this field can be cus­
tomized by the admin.
h. In the Select Shift field, select a shift to associate
with this event.
i. In the Select Incident field, select an incident you
want to associate with this event.
a. Select Work.
b. In the Agents field, start entering the name of
each of the attendees for the meeting and select
the name.
c. In the Start date field, select the calendar icon
and select the date you want to start the meeting
and select OK.

Create a work shift

d. In the End date field, select the calendar icon and
select the date you want to end the meeting and
select OK.
e. Select the Select Shift field and select a shift.
6. Select Save.
Swap your agents' shifts in Workforce Optimization for ITSM
Swap an agent's shift in your assignment group with another agent who can work on that shift
and skip the approval process.

Before you begin

Role required: sn_shift_planning.admin

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Click the Schedule icon (

).

3. In the Team Calendar tab, navigate and point to the shift for the agent that you want to swap
with another agent.
4. In the shift pop-up window, click the Shift Swap icon (

).

5. In the Requested Shift section, click the Agent field and select the agent who can work on that
shift.
6. Click Submit.
The team calendar displays the updated schedule.

Scheduling components in Workforce Optimization for ITSM
Workforce Optimization for ITSM has roles to administer agent shifts and schedules and
properties to configure default behavior.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2262


<!-- page 2263 -->
Roles
Role title [name]

Description

Contains roles

Shift Planning User
[sn_shift_planning.user]

Grants read access for
scheduling including the
ability to view schedules and
shifts.

Shift Planning Agent
[sn_shift_planning.agent]

Grants agents access to their sn_shift_planning.user
calendar. Agents can request
shift swap or time off.

Shift Planning Admin
Grants administrative access
[sn_shift_planning.admin] to create, read, update, and
delete (CRUD) schedules and
work shifts.

• sn_shift_planning.approver
• sn_shift_planning.user
• sn_shift_planning.agent

Properties
Property

Description

sn_itsm_
mobile_agent.events_query_days_past

The maximum number of days past events for
your shifts can be displayed on your mobile
application. You can enter values that range
from -1 to -31.
• Type: Integer
• Default value: -31

sn_itsm_
mobile_agent.events_query_days_future

The maximum number of days future events
for your shifts can be displayed on your mobile
application. You can enter values that range
from 1 to 90.
• Type: Integer
• Default value: 90

sn_uib_agent_sp.allow_agent_edit_break

Enables agents to edit the start and end time of
their break time in a shift span.
• Type: true|false
• Default value: false

sn_uib_agent_sp.allow_agent_add_remove_break
Enables agents to add or remove their break
time in a shift span.
• Type: true|false
• Default value: false
sn_shift_planning.number_of_days_to_cache

Number of days to cache agent schedules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2263


<!-- page 2264 -->
Property

Description

• Type: Integer
• Default value: 5
sn_shift_planning.max_shifts_to_autoassign

Number of preferred shifts from a schedule
plan that will be auto-assigned.
• Type: Integer
• Default value: 1

sn_shift_planning.max_shifts_allowed_for_signup
The maximum number of shifts that agents can
sign up for within a schedule plan.
• Type: Integer
• Default value:1
sn_shift_planning.enable_agent_signup

Enable agents to sign up for their own shifts.
• Type: true|false
• Default value:true

sn_shift_planning.enable_schedule_signup_linkEnables or disables the link in the Upcoming
section in the Service Operations Workspace
landing page where agents can view shifts
that they've signed up for that are due on the
current day and the day after the current day.
• Type:true|false
• Default value: true
sn_shift_planning.days_to_signup_due_date

The number of days before the shift signup due date when agents and managers are
notified.
• Type: Integer
• Default value: 2

sn_shift_planning.display_shift_name

Set this property to true to display the shift
name. If the value is set to false, the event type
will be displayed.
• Type: Boolean
• Default value: True

Note: It will take 24 hours for any
changes you make to the property value
to take effect. To view the changes
immediately, run the Shift Planning

- Delete All Agent Schedules
Cache scheduled job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2264


<!-- page 2265 -->
Property

Description

assignShiftAgentsTypeaheadDisableAutoClose

Turns off the closing of the Assign agents to
this shift typeahead list every time an agent is
selected.
In the application navigator, enter
sys_ux_page_property.LISTand press
Enter.
• Type:true|false
• Default value: false

sn_wfo_outlook.enable_outlook_sync

Set this property to true to turn on the
synchronization between the agent's calendar
and the Microsoft Outlook calendar.
• Type: Boolean
• Default value: False

Scheduled jobs
Scheduled Job
Name

Description

Shift Planning - Delete All Agent Schedules
Cache

Deletes cache from the
sn_shift_planning_agent_availability table.
• Runs automatically everyday at 2:30 am
• Run this job on-demand when you import data.

User preferences
Navigate to All > User Administration > User Preferences and add the preferences listed in the
table below.

Note: To set a system-wide user preference, select the System check box.
For information on setting user preferences, see User preferences

.

User Preference

Description

workspace.onCallShiftsPageSize

Set the maximum number of on-call shifts to view per
page in the On-call shifts tab in the Shifts side panel.
• Name: workspace.onCallShiftsPageSize
• Type: Integer
• Value: Enter the preferred number of on-call shifts you
want to view per page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2265


<!-- page 2266 -->
User Preference

Description

workspace.workShiftsPageSize

Set the maximum number of work shifts to view per page
in the Work shifts tab in the Shifts side panel.
• Name: workspace.workShiftsPageSize
• Type: Integer
• Value: Enter the preferred number of work shifts you
want to view per page.

workspace.schedulePlanPageSize

Set the maximum number of scheduling plans to view per
page in the Schedules side panel.
• Name: workspace.schedulePlanPageSize
• Type: Integer
• Value: Enter the preferred number of schedules you
want to view per page.

Schedule Adherence in Workforce Optimization for ITSM
Analyze how closely your agents adhere to their scheduled activities. You can also analyze
whether they complete the total time they were scheduled to work. Use these metrics to align
your staffing needs better and forecast the demand for agents more effectively.
Adherence measures how closely agents follow their schedule to complete their assigned work.
Conformance measures the work completed regardless of when it was completed.
Use Schedule Adherence to:
• Gain insights into how agent resources were historically used and plan your staffing needs
based on that data.
• Measure whether the effort spent on forecasting agent demand and scheduling team
members is used in an optimal manner.
• Discover coaching opportunities for your agents when you find gaps in their adherence. For
more information, see Coaching.
As a manager, you can do the following actions:
• Gain insights into whether your team is complying with published schedules.
• Increase your team's performance by setting expected adherence targets.
• View the time attendance of your agents by looking at such details as clock-in and clock-out
times.
• Analyze the historical time attendance of your team members.
• View planned versus actual historical data for your team and individual agents.
• Modify the clock-in and clock-out times of your agents.
As an administrator, you can set the threshold percentages and change the formulas for
calculating schedule adherence and conformance.
As an agent, you can clock-in to and clock-out of your work shift. For more information, see
Service Operations Workspace - Scheduling.
Here's a typical schedule adherence and conformance workflow:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2266


<!-- page 2267 -->
1. The administrator sets the Agent Time Work Event Trigger business rule as active
to record the clock-in and clock-out times of Workforce Optimization for ITSM agents.
2. An agent works for the ITSM team and reports to a manager. Let's assume this scenario is a
typical work day:
a. The agent logs in to ITSM Agent Workspace .
b. The agent changes the presence status to Available and starts work. The clock-in event gets
generated.
c. The agent changes the presence status to Break and goes for lunch. The clock-out event
gets generated.
d. When the agent comes back from lunch and answers a phone call, the presence state
becomes Busy and the clock-in event gets generated.
e. The agent then logs out from CSM Agent Workspace or changes the presence status to
Offline. The clock-out event gets generated.
f. At the end-of-the-day, the agent's time worked summary is generated with key performance
indicators (KPIs), such as Start Time, End Time, Planned Work, Time Not Worked, Available
Non Planned Time, Time Worked, and Adherence%, Conformance %.
3. The agent's manager logs in to Manager Workspace to view the agent's time worked in the
Team Calendar. The manager can also view the agent's actual time worked and working
pattern for all historical days. If required, the manager can coach the agent to a desired
performance that fits in with the team culture.
Monitor schedule adherence of your agents
Evaluate whether or not your agents are adhering to their assigned schedules. Look for areas
where agent activities that do not offer much value can be reduced or eliminated and fine-tune
your staffing levels requirements based on their adherence.

Before you begin

Role required: sn_shift_planning.admin

About this task
• A high adherence rate indicates that agents are sticking to their schedules and resolving work
items as expected. Low adherence rates indicate that you may want to analyze the processes
or decisions and tweak them to manage your teams' schedule efficiently. The numbers are
highlighted in red for non-adherent agents.
• Schedule adherence and conformance calculations are based on the formulas to calculate
schedule adherence and conformance and also the agents' actual and planned work timings.
The following are the default formulas that are used to calculate adherence and conformance
for agents. However, your administrator can customize the Schedule adherence extension
points to configure the formulas as required.
Components and formulas used in schedule adherence:
◦ The Agent Time Work Event Trigger business rule generates clockin and clock-out events anytime there's a change in agent's presence state. The
shift_planning_clock-in and shift_planning_clock-out scripts generate
the agents' clock-in and clock-out events from the login and logout sessions.
◦ Formulas:
▪ Schedule adherence is calculated as (Minutes worked in shift/Scheduled
shift time in minutes + Overtime).
▪ Conformance is calculated as (Minutes worked in shift + Overtime)/
Scheduled shift time in minutes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2267


<!-- page 2268 -->
Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Schedule icon (

).

3. Monitor the schedule adherence of your agents.
To

Do this

Click the Schedule Adherence tab.
View schedule adherence at organization or The bar displays the schedule adherence
and conformance in percentage for your
team level
teams. Click on the bar chart to drill down and
view more analytics.
a. Click the Team Calendar tab.
b. Select a date on the calendar.
c. Click on the bar that represents the agent's
actual time worked to view the summary.

Note: The clock-in and clock-out tim­

Analyze planned vs actual scheduling for
your team members

ings are the actual work timings of your
agents. The events are generated based
on the agent's login, logout actions, and
presence state. If an agent forgets to
clock-out, the system automatically gen­
erates the clock-out event after 60 min,
by default. However, your administra­
tor can change it the using Default

threshold time for clockout event generation (in
Minutes) .
Example: A clock-in event gets gener­
ated when an agent logs in or changes
the presence status to Available. Simi­
larly, a clock-out event gets generated
when an agent logs out of the system
or changes the presence status to ei­
ther Offline or Break. If an agent fails to
clock-out even after 60 min of the shift
end time, the system automatically gen­
erates the clock-out event.

The image below shows an example of how well the team members are adhering to their work
schedules. The bar colors are represented as follows:
◦ Blue—planned work shift
◦ Gray—agent not available
◦ Green—agent is available

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2268


<!-- page 2269 -->
◦ Purple—agent clock-in-time
◦ Red—agent clock-out-time

Use time-worked summary to analyze agent schedule adherence and conformance
Analyze if your teams are adhering to planned schedules. Use historical adherence to see how
well your agents have followed their schedules in the past.

Before you begin

Role required: sn_shift_planning.admin

About this task

Note:
• Historical adherence provides a reports of real-time adherence.
• Adherence and conformance calculations are based on your agents' actual and
planned work schedules. Your administrator can modify the schedule adherence and
conformance configurations. For more information, see Schedule Adherence reference.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Lists icon (

)

3. In the Schedule Adherence category, do any of the following:
◦ To analyze your agents' time-worked summary, select Time Worked Summary.
◦ To analyze your agents' time attendance, select Time Attendance.

Note: The Available Non Planned time captures the time the agent was available and
clocked in outside of the agent's scheduled work events. For example, if an agent is
scheduled to attend a training from 1 pm to 2 pm, but forgets to clock out that attendance,
then that time is considered as the clocked-in time. Therefore, the training time from 1 pm
to 2 pm will be captured as the available non-planned time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2269


<!-- page 2270 -->
Example:

To understand the computations of the fields in a time worked summary, let's consider Fatima
Alonzo's work day:
• Shift time begins at 8 a.m. and goes to 4 p.m. = 8 hours
• Planned time = 8 hours = 480 minutes​
• Clocks in 8 a.m. and clocks out at 12 p.m. for a break. Back from the break, clocks in at 12:30
p.m. and clocks out at 4 p.m.
• Minutes worked in shift = 480 - 30 = 450 minutes​
• Schedule adherence= (minutes worked in shift/scheduled shift time in minutes + overtime) =
450/(480+65) = 82.57%
• Conformance= (minutes worked in shift + overtime)/scheduled shift time in minutes = (450 +
65) / 480 = 107.29 percent.

Note: Fatima Alonzo is adherent because the schedule adherence and conformance are
within the threshold. To see which agents are non-adherent, look for the numbers that are
highlighted in red.
Schedule adherence extension points in Workforce Optimization for ITSM
Use the schedule adherence extension points to call custom scripts for agent schedule
adherence and conformance.
To access the extension points, navigate to System Extension Points > Scripted Extension
Points.
Extension points for schedule adherence
Extension point name

Description

sn_shift_planning.ScheduleAdherenceExtPt
Implement this extension point to customize the logic
for schedule adherence and conformance.
Related topics
Using extension points to extend application functionality
Configure properties for schedule adherence and conformance
Configure schedule adherence properties to calculate the adherence and conformance of your
agents so that you can improve the operational efficiency of your organization.

Before you begin

Role required: admin

About this task

The threshold settings for adherence and conformance indicate how many minutes early or late
an agent can clock in or clock out to a scheduled work shift without being considered as nonadherent.

Procedure
1. Navigate to All > Shift Planning > Schedule Adherence > Settings
2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2270


<!-- page 2271 -->
Schedule Adherence properties form
Field

Description

Enable Schedule
Adherence

Calculation and information about the agents' adherence to the
schedules.

Threshold for early
checkin for planned shift
(in Minutes)

Time that you can set for early check in. This time is the
acceptable time for an agent to start the work shift before the
actual shift time. The default value is 60 minutes. For example,
if an agent's planned work shift is 8 a.m. to 5 p.m. and the agent
clocks in at 7 a.m., the threshold time allows flexibility and the
agent is not considered as a non-adherent agent.

Threshold for adherence
% of Time Worked
Summary

Percentage that you can set for a threshold in adherence. The
agents who do not qualify to be above the defined threshold
value (70%) are considered non-adherent agents.

Lower threshold
conformance % of Time
Worked Summary

Lower threshold percentage that you can set for flexibility in
conformance. The agents who do not qualify for the defined
lower and upper conformance threshold values (80-120) are
considered as non-conformant agents. The default value is 80%.

Upper threshold for
conformance % of Time
Worked Summary

Upper threshold percentage that you can set for flexibility in
conformance. The agents who do not qualify for the defined
lower and upper conformance threshold values (80-120) are
considered as non-conformant agents. The default value is
120%.

Default threshold time
for clock-out event
generation (in Minutes)

Default threshold time to generate an automatic clock-out event
if an agent fails to clock out. The default value is 60 minutes.
For example, if an agent's planned work shift is 8 a.m. to 5 p.m.
and the agent fails to clock out at 5 p.m., the system waits for 60
minutes as the threshold time and generates an automatic clockout event.

3. Click Save.
Related topics
Schedule Adherence in Workforce Optimization for ITSM

Demand Forecast in Workforce Optimization for ITSM
Learn how you can use Demand Forecast to predict resources based on historical data.
The video below shows an overview of the Demand Forecast application.
Demand Forecast in Workforce Optimization for ITSM
Demand Forecast uses MetricBase

to forecast the demand for teams.

When you create demand forecast configurations, the application creates metrics:
• To forecast the number of agents you need for interactions.
• To resolve incidents throughout a given day.

Note: You can create forecast configurations for any table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2271


<!-- page 2272 -->
Analyzing Demand Forecast resource prediction
Watch this video to see how you can model demand scenarios and view updated demand on the
calendar.
Demand Forecast - Model Demand Scenarios
As a manager with the forecast admin role, you can create forecast parameters in the Workforce
Optimization for ITSM Manager Workspace. Modify forecast parameters to visualize forecast data
and preview time-series data before publishing it. You can create any number of forecasts to
preview the time-series data in real time.
You can also make manual adjustments to tweak the forecast and analyze the forecast pattern.
You can overlay the manual adjustments on the visualized forecast data and view the time-series
data to analyze the forecast model. For example, if you have a specific pattern for the upcoming
week but you know that a national holiday falls in the middle of the week where you need more
agents because you expect the sales to go up, you can manually tweak the forecast to increase it
by 10% and analyze that data.

Demand Forecast
The Demand Forecast application includes the following four modules:
Demand forecast application modules
Module Name

Description

Data Collection
Definitions

Set conditions to define the data you want to collect for incidents,
interactions, or any table.​

Formula Parameters

Add parameters to be defined in the formula to calculate the resource
count per hour in a day.

Resource Conversion
Formula

Add formulas to convert forecast to resources.

Group Forecast
Configuration

Associate the configured formula for resource conversion to groups.

As a forecast admin (sn_agent_forecast.admin), you can forecast the number of agents you need
for a shift.
To forecast the demand:
1. Collect data by defining data collection definitions
2. Create forecast parameters.
3. Create formulas to convert the forecasting number of incidents into the number of resources
you must respond to those incidents.
4. Associate the formulas to assignment groups.
5. View the predicted demand on the calendar.

Note: Refer to Demand Forecast in Workforce Optimization for ITSM configurable
workspace for information on default components and configurations installed with
Demand Forecast.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2272


<!-- page 2273 -->
Collect data by defining data collection definitions
Use the Data Collection Definitions application to define the data you want to collect for
forecasting agents.
• Use the Collect daily data for automated forecast configurations
scheduled job to gather data for the metrics defined in the data collection definitions.
The scheduled job fetches the records from the previous day for each hour and for every
assignment group. It stores this data in the MetricBase.
You can access the time series for the collected data using the MetricBase list on the Group
[sys_user_group] table. For more information on accessing MetricBase data, refer to Access
MetricBase data using the list command .
• Use the Collect historical data for automated forecast
configurations on-demand job to collect hourly historical data. This job collects data for
the past three years.
• Use the Forecast resources for future scheduled job to forecast the resources based on the
collected data. The scheduled job stores the data in the Agent Forecast metric in MetricBase.
Refer to the forecast properties to set the collection frequency such as the number of days you
must collect the data. You can use this information to calculate the forecast or the time period
for which you want to store the data.

Note: The time series metrics created for data collection definitions use the WFO

Forecast retention policy. This policy stores data at a one-hour interval for the past three
years.​

Create formula parameters
Use numeric values or a script to define parameters to use in the formula for forecasting. Refer to
the resource forecast configurations for the configured resource forecast formulas available by
default.

Associate formulas to assignment groups
To convert the number of incidents to agents, associate assignment groups to the resourceconversion formula.

View the predicted demand on the calendar
The data collected by the Agent Forecast metric in MetricBase is used to forecast the agents you
need for each hour in a day. This data is displayed on the team calendar. In a Week view for the
calendar, it displays the staffing levels for a given week.
Related topics
Set up Demand Forecast
Setting up Demand Forecast in Workforce Optimization for ITSM
Configure the data you want to collect, modify forecast parameters and calibrate manual
adjustments using Demand Forecast.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2273


<!-- page 2274 -->
The image shows the end-to-end flow of setting up Demand

Forecast.
Configure Demand Forecast
Define the data that you want to collect for incidents, interactions, or any table to forecast the
number of agents that you require for your staffing needs.

Before you begin
• You must have the MetricBase plugin [com.snc.clotho] enabled to use Demand Forecast
in Workforce Optimization for ITSM. For more information, see Requesting the MetricBase
product .
• You must be in the Global scope

.

Role required: sn_agent_forecast.admin

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Demand Forecast
2. Define the data that you want to collect for forecasting the number of agents that you need.
a. Click Data Collection Definitions.
See the forecast configuration tables for demand forecast for the list of configurations that
are available by default.
b. Click New.
c. On the form, fill in the fields.
Forecast Configuration form
Field

Description

Name

Unique name for the collection forecast configuration.

Type

Data Collection Definition type that is set to Collection by default and
collects data using a scheduled job.

Table

Table that is used for collecting data.
From the list, do one of the following:
▪ To collect data to forecast incidents, select Incidents.
▪ To collect data to forecast interactions, select Interactions.

Condition

Conditions that you can set so that you can capture the data that you need.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2274


<!-- page 2275 -->
Field

Description

Date Field

Data that you can add to forecast for the future.

d. Click Submit.

Note: A forecast parameter in Published state is automatically created.
e. Create an index for the table that you have created using the date field and the conditions
that you have added to the table. For information on creating a table index, see Create a
table index .
3. Add parameters for the formula to calculate how many agents you need per hour in a day.
a. Click Formula Parameters.
b. In the Name field, enter a name for the parameter.
c. Do one of the following:
▪ To add a value to be calculated for the formula, in the Value field, enter the value.
▪ To use the performance analytics score card API or a custom API, click Advanced, and
add the script.
The Average Chat Duration and Average Walkup Duration forecast parameters that are
provided by default are examples of how you can use scripts to add the parameters. For a list
of parameters provided by default, see the forecast parameters in demand forecast for the
list of configurations that are available by default.

Note: A resource conversion formula uses multiple data collection definitions
to calculate the resource conversion. In a data collection definition, if the forecast
parameters set for each of the forecast configurations vary, the resource conversion
formula uses the lowest parameter values set for a forecast configuration.
For example, let's assume:
▪ The P1 Incidents Created forecast configuration has the period length set to seven
days and periods to forecast set to 2. Therefore, the next number of days for which
the forecast would be calculated is 14 days.
▪ The Chat Interactions Created forecast configuration has the period length set to
seven days and periods to forecast set to 4. Therefore, the next number of days for
which the forecast would be calculated is 28 days.
When you add both of these forecast configurations to the resource conversion
formula, it only considers the lower of the two forecast configuration values, which is 14
days, to calculate the resource conversion.
d. Click Submit.
4. Configure the resource conversion formula.
a. Click Resource Conversion Formula.
b. Click New.
c. On the form, fill in the fields.
Forecast Configuration form
Field

Description

Name

Name for the resource forecast configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2275


<!-- page 2276 -->
Field

Description

Type

Type that is set to Resource Conversion Formula.

Formula

Formula to calculate the forecasted number of agents that you need.
In the Related Links section, do the following:
▪ Click Browse Forecast Configuration, select the forecast configuration
to add to the formula and click Add.
▪ Click the Browse Forecast Parameter related link, select the forecast
parameter to add to the formula, and click Add.

Note: FC refers to Forecast Configuration and FP refers to
Forecast Parameter.
d. Click Submit.
5. Associate an assignment group with a resource conversion formula.
You can assign a forecast configuration to multiple assignment groups, but an assignment
group can have only one forecast configuration.
a. Click Group Forecast Configurations.
b. Click New and do the following:
▪ In the Assignment Group field, click the search icon (
you want to associate a forecast configuration.

) and select the group to which

▪ In the Forecast Configuration field, click the search icon (
Conversion Formula.

) and select a Resource

What to do next
Run the Collect historical data for automated forecast
configurations scheduled job. For more information, see scheduled jobs for demand
forecast .
Related topics
Use Demand Forecast
Define the minimum and maximum number of agents to forecast demand
Set the minimum or maximum number of agents required per hour so that you always have the
desired staffing coverage.

Before you begin

Role required: sn_agent_forecast_admin

About this task

When you calculate the number of agents for your staffing needs, you have the option of defining
how many minimum or maximum number of agents you would need by default per hour using the
Math.min and the Math.max functions.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Demand Forecast > Formula
Parameters.
2. Create a formula parameter to set either the minimum or maximum number of agents you need
every hour.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2276


<!-- page 2277 -->
a. Click New.
b. In the Name field, enter a unique name for the parameter.
c. In the Value field, enter the number of agents required when converting resources.
▪ To set the minimum number of agents, enter the lowest number of agents you would
require per hour.
▪ To set the maximum number of agents, enter the highest number of agents you would
require per hour.
d. Click Submit.
3. Create a Resource Conversion formula.
a. Click Resource Conversion Formula.
b. Click New.
c. in the Name field, enter a unique name for the resource conversion formula.
d. Right-click the form header and click Save.
e. In the Formula field, do one of the following:
▪ To create a formula for the minimum number of agents required per hour:
i. Add the Math.max function.
ii. Click Browse Formula Parameters and select the formula you have created to set the
minimum number of agents.
iii. Click Browse Forecast Configuration and select the formula you want to use for the
forecast configuration.
When the resource conversion formula is calculated, the higher of the two values is used
as the lower limit for the minimum number of agents required per hour.
For example, let's assume you need a minimum of two agents per hour and you're
using the following formula: Math.max(([FP:Min Number of Agents]),
(([FC:Chat Interactions Created] * [FP:Average Chat
Duration]) / [FP:Average Agent Work Time Per Day])), where,
▪ You've set the [FP:Min Number of Agents] value to 2.
▪ The output value for this formula [FC:Chat Interactions Created] *
[FP:Average Chat Duration]) / [FP:Average Agent Work Time
Per Day] is 0.
Although the forecast configuration indicates that no agents are required, because you've
set the minimum number of agents to two, that value will be used for resource conversion.
▪ To create a formula for the minimum number of agents required per hour:
i. Add the Math.min function.
ii. Click Browse Formula Parameters and select the formula you have created to set the
maximum number of agents.
iii. Click Browse Forecast Configuration and select the formula you want to use for the
forecast configuration.
When the resource conversion formula is calculated, the lower of the two values is used as
the upper limit for the minimum number of agents required per hour.
For example, let's assume you need a maximum of eight agents per hour and you're
using the following formula: Math.min(([FP:Max Number of Agents]),
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2277


<!-- page 2278 -->
(([FC:Chat Interactions Created] * [FP:Average Chat
Duration]) / [FP:Average Agent Work Time Per Day])), where,
▪ You've set the [FP:Max Number of Agents] value to 8.
▪ The output value for this formula [FC:Chat Interactions Created] *
[FP:Average Chat Duration]) / [FP:Average Agent Work Time
Per Day] is 10.
Although the forecast configuration indicates that 10 agents are required, because
you've set the maximum number of agents to eight, that value will be used for resource
conversion.
f. Click Submit.
Modify forecast parameters to visualize forecast data
Configure and tweak forecast parameters to see how the forecast behaves when you vary the
period length, periods to forecast, or algorithm. You can view the modified forecast on the timeseries visualization.

Before you begin

Role required: sn_agent_forecast.admin and sn_wfo_itsm.manager
The user with these roles must also be a manager of the assignment group that is associated
with the resource conversion formula.

About this task

You can define the start and end dates for which you want to visualize the
forecast data. The start date for a forecast configuration is based on the number
of historical days you want to consider for data visualization. This is set using the

sn_agent_forecast.number_of_historical_days_in_timeseries_chart
property.
The default start date is set to 90 days ago starting from the day before the current day. The end
date is calculated based on the period length and the periods to forecast represented in days.
For example, if the period length is 7 days and the periods to forecast is 5, then the end date is
35 days including the current day.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Click the Schedule icon

.

3. Click Forecasts.
4. Select the forecast model for which you want to view the time-series data.
You can visualize each of the forecast parameters that were created for the forecast model.
5. Click the gear icon

.

6. Click the plus (+) sign.
7. Configure the forecast parameter.
a. From the Period length unit list, select the unit for the length of the period to forecast.
b. In the Period length field, enter the length of a season to forecast.
c. In the Periods to forecast field, enter the number of seasons, which is the period length, for
which you want to forecast.
d. In the Algorithm field, select an algorithm you want to use to calculate the forecast.
e. Click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2278


<!-- page 2279 -->
The forecast is created in Draft state. The forecast is calculated and displays in the forecast
model. You can analyze the forecast with the new forecast parameters before you publish it.
8. To preview a forecast before publishing it, click Preview.
The forecast is calculated using the algorithm and parameters configured in the forecast
parameter. When you create a manual adjustment to predict future resources, Demand
Forecast overlays the adjustment in the time-series chart.
When you

Then the forecast

Unpublish a published forecast

Become inactive.

Preview an inactive forecast para­
meter

Displays for the date range for which the forecast para­
meter was active.

Preview an active forecast

Displays the time-series data for the future time-period.

9. Publish the forecast parameters.
a. To publish a newly created forecast parameter, click Save and then click Publish.
b. To publish an active forecast parameter, click Publish.

Note: You can only have one forecast in Published state, which is used to calculate the
resources.
When the forecast parameter is published:
◦ The state of the record changes to Published.
◦ The Forecast resources for future job runs daily and uses the published forecast
parameters to calculate the agent forecast. The calculation uses the resource conversion
formula to calculate the forecast data from the current point forward. You can view the
updated resources in the team calendar.
◦ Any other forecast parameters that were created would be unpublished and inactive.

What to do next

Create a manual adjustment for a forecast
Create a manual adjustment for a forecast
Adjust forecasts manually to fine-tune them for greater accuracy. Create the adjustment for a
specified time period and analyze how it impacts your forecast.

Before you begin

Role required: sn_agent_forecast.admin and sn_wfo_cfg_itsm.manager
The user with these roles must also be a manager of the assignment group that is associated
with the resource conversion formula.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Click the Schedule icon.
3. Click Forecasts.
4. Select the forecast model for which you want to make a manual adjustment.
5. Click the Manual Adjustments icon.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2279


<!-- page 2280 -->
6. Make a manual adjustment.
a. Click the manual adjustment icon.
b. Fill in the following fields.

Field Name

Description

Name

Unique name for the manual adjustment.

Start Date Time

Date and time when the manual adjustment for the forecast must
start.

End Date Time

Date and time when the manual adjustment for the forecast must
end.

Adjustment Unit

Unit for the manual adjustment.
Available values:
▪ Percentage—adjustment value percentage. For example, if the
forecast data shows incident count and if the adjustment value
is 15, the manual adjustment shows a 15% increase in incident
count than the forecast data.
▪ Number—adjustment value count. For example, if the forecast
data shows incident count and if the adjustment value is 15, the
manual adjustment shows 15 more incidents than the forecast
data.

Adjustment Value

The numeric value for which you want to adjust the forecast. The
value is applied to each group in the Groups [sys_user_groups]
table. The manual adjustment visualization on the time-series
chart displays the data for your groups. For example, let's assume
that the value is 15 and the unit is number. On a given day, if you
have two groups for a forecast model and both have 2 agents each
before you do the manual overlay, when you enter the value as 15,
it is applied to each of the two groups and the total value displays
as 34.
This is calculated as follows:
▪ Two agents for group A + the adjustment value 15 = 17
▪ Two agents for group B + the adjustment value 15 = 17
The total is 34.

c. Click Save.
The manual adjustment is created in Draft state. The manual adjustment is calculated and
displays as a green line in the forecast model. You can analyze or update the forecast with this
manual adjustment before you publish it.
7. Publish the manual adjustment.
a. Click the saved manual adjustment that you want to use for forecasting resources.
b. Click Publish. The state changes to Ready to Publish.
When the Forecast resources for future job is run, it calculates the forecast, checks for
manual adjustments, applies those values if any, and moves it to the Published state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2280


<!-- page 2281 -->
Note:
◦ When you unpublish a forecast, it moves to Draft state. You can delete a forecast that is
in Draft state.
◦ If you want to end a manual adjustment after it has started and before its end date, you
can click End Now.
The forecast will no longer be used in the resource conversion formula.
When the manual adjustment is published:
◦ The state of the record changes to Published.
◦ The adjusted values will be used in the resource conversion formula and the demand
forecast displayed on the calendar.
◦ Any other manual adjustment configurations that were created would be unpublished and
moved to Draft state.
Demand Forecast components in Workforce Optimization for ITSM
Workforce Optimization for ITSM installs roles to administer ITSM Manager Workspace Demand
Forecast, properties to configure default behavior, scheduled jobs to collect data for the
configurations, tables to store data, forecast configurations to collect data for incidents and
interactions and a retention policy to store metric data.

Forecast configurations
Name

Description

Chat Interactions Created

Collects data for chat interactions.

Non P1 Incidents Created

Collects data for all incidents that are not tagged as priority 1.

P1 Incidents Created

Collects data for priority 1 incidents.

Walkup Interactions Created

Collects data for walk up interactions.

Metric retention policy
The WFO Forecast time series metric retention policy is available by default for all forecast
configurations. By default, this retention policy stores data at a one-hour interval for the past
three years.

Formulas to create resource forecast configurations
Name

Formula to create this resource forecast configuration

Chat Interactions to Agent
Conversion

([FC:Chat Interactions Created]
* [FP:Average Chat Duration]) /
[FP:Average Agent Work Time Per Day]

Incident and Interaction Resources

[FC:Incidents Created to Agent
Conversion] + [FC:Chat Interactions
to Agent Conversion] + [FC:Walkup
Interactions to Agent Conversion]

Incidents Created to Agent
Conversion

(([FC:P1 Incidents Created] *
[FP:Average P1 Incident Work Time]) /
[FP:Average Agent Work Time Per Day])

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2281


<!-- page 2282 -->
Name

Formula to create this resource forecast configuration

+ (([FC:Non P1 Incidents Created]
* [FP:Average Non P1 Incident Work
Time]) / [FP:Average Agent Work Time
Per Day])
Walkup Interactions to Agent
Conversion

([FC:Walkup Interactions Created]
* [FP:Average Walkup Duration]) /
[FP:Average Agent Work Time Per Day]

Forecast parameters
Name

Description

Average Agent Work Time Per Day

Average time an agent works in a given day.

Average Chat Duration

Average duration of an agent chat for each incident or
interaction.

Average Non P1 Incident Work Time

Average time an agents spends working on all
incidents that are not categorized as Priority 1.

Average P1 Incident Work Time

Average time an agents spends working on all
incidents that are categorized as Priority 1.

Average Walkup Duration

Average duration an agent spends on a walkup
interaction.

If you create forecast parameters for a forecast configuration, the values set in the configuration
are used instead of the default forecast parameters listed in the forecast properties section. For
information on configuring forecast parameters, see Modify forecast parameters to visualize
forecast data

Forecast properties
Name

sn_agent_forecast.historical_data_points

Description

Example

The hourly historical data For example: 24 hours
points to be used for the x 365 days x 3 years =
forecast.
26280
The maximum allowed
data points is 26280. The
default value is 8760 and
represents the hourly
data points for a one year
time period (24 hours x
365 days x 1 year).

sn_agent_forecast.seasonal_frequency

The seasonal frequency
of a repeated pattern.
The default value is 168.

For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2282


<!-- page 2283 -->
Name

Description

Example

• Daily data pattern =
1*24 = 24
• Weekly data pattern
= 7 * 24 = 168
• Monthly data
pattern = 30 * 24 =
720
sn_agent_forecast.forecast_periods

The number of periods/
seasons to forecast. A
period is the length of a
season.The default value
is 5.

For example:
• If the length of a
season is daily
which is equal to 24
hours (1 day) and
the forecast period
is 30, then the
number of periods
to forecast is equal
to 24 * 30 = 720
hours.
• If the length of a
season is weekly
which is equal to
168 hours (1 week)
and the forecast
period is 5, then the
number of periods
to forecast is equal
to 168 * 5 = 840
hours.

sn_agent_forecast.number_of_historical_days_in_timeseries_chart
The number of historical
days that will be plotted
in the time-series chart in
Manager Workspace.

For example, if the
number is set to
90,then the number of
days is counted from
the current day to 90
days ago.

Roles for Demand Forecast
Role title [name]

Description

Forecast admin
[sn_agent_forecast.admin]

Grants administrative rights to
create, read, update, and delete
(CRUD) forecast configuration
tables.

Forecast user
[sn_agent_forecast.user]

Grants read access to forecast
configuration tables.

Contains roles

• sn_agent_forecast.users
• clotho_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2283


<!-- page 2284 -->
Tables for Demand Forecast
Table

Description

Forecast Configuration
[sn_agent_forecast_configuration]

Define data collection definition
and resource conversion formula
configurations.

Forecast Parameter [sn_agent_forecast_parameter]

Define forecast parameters
required for the formula.

Forecast Configuration group
Associate resource conversion
[sn_agent_forecast_configuration_m2m_sys_user_group] formula with assignment groups.

Forecast configurations available by default
By default, forecast configurations are available for the following groups:
• Deskside Support
• IT Service Desk
• Application Support
• Technical Support

Schedule jobs for Demand Forecast
Name

Collect historical data
for automated forecast
configurations

Collect daily data
for automated forecast
configurations

Description

• On-demand job to collect historical data​
• Collects historical data daily for every hour for the
past three years

• Runs daily at 2 am
• For each table defined in the Data Collection
Definition configuration, it fetches the records from
the previous day for each hour for every group and
stores it in the MetricBase
• You can access the time series for the collected data
using the MetricBase list command on the Group
[sys_user_group] table
• Uses the WFO Forecast retention policy for data
retention

Forecast resources for
future

Calculates the forecast resources for the future based
on the collected data.
• Runs daily at 3 am
• Collects hourly data every day for the formula forecast
configuration
• Stores the data in the Agent Forecast metric in
MetricBase

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2284


