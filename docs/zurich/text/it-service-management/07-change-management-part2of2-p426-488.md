# Zurich IT Service Management — Change Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 426–488 of 3857 | Part 2 of 2

Sections: Change Management (p276); Explore (p276); Configure (p284); Use (p381); Use agentic AI (p450); Reference (p451)

---

<!-- page 426 -->
Field

Description

The allotted time can be adjusted for agenda
items before or during the meeting.
Complete Pre-approved Changes

Check box to mark each pre-approved
change request as Complete in the CAB
meeting agenda.

Note: Pre-approved changes are
automatically marked as complete so
that approvers do not have to review
them. The pre-approved changes are
visible in the CAB Workbench, and can
be discussed if necessary.

3. From Related Links, you can perform any of the following tasks.

Link

Description

Refresh
Agenda Items

The agenda items for the CAB meeting are refreshed. If you added or
updated attendees, a confirmation message asks if the meeting request
must be resent to these attendees.

Send meeting
request to
attendees

Click to manually resend the meeting request to the list of attendees.

Go to this
Click to open the meeting in the CAB workbench. This link is available only
meeting in CAB when it is time for the CAB to begin.
Workbench
Share notes

Share notes captured in the Meeting Notes field to the list of meeting
attendees. Share Notes is only visible when the meeting is In Progress or
Complete.

4. From related lists, you can perform any of the following tasks.

Related list Description

Agenda
Items

Manually add agenda items. In the Allotted Time field, the CAB manager can
override the default time for any agenda item.

Attendees Manually add attendees to a CAB meeting.
5. Click Update to save your changes.
Related topics
OR conditions
Send CAB meeting request to attendees
You can send CAB meeting invitations to attendees for each CAB meeting.

Before you begin

Role required: sn_change_cab.cab_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

426


<!-- page 427 -->
About this task

You can send meeting invitations from a CAB meeting only.

Procedure
1. Navigate to the CAB meeting for which you want to send out invitations using one of the
following steps.
Option

Open from the CAB meeting list

Description

a. Navigate to Change > Change Advisory
Board > All CAB meetings.
b. Select and open the CAB meeting to modi­
fy.
a. Navigate to Change > Change Advisory
Board > All CAB definitions.

Open from the CAB definition list

b. Select and open the CAB definition to send
out the meeting request.
c. Select and open the specific CAB meeting
to modify.

2. Click the Send meeting request to attendees related link.
The CAB meeting invitation is sent to all listed attendees.
CAB meeting attendance using the CAB workbench
As an itil user, you can attend a Change Advisory Board (CAB) meeting, view the agenda items,
and the change schedule. If you are an approver, you can approve a change request.
View the details of a CAB meeting and its agenda by navigating to Change > Change Advisory
Board > CAB Workbench. From the calendar, you can view the CAB meeting schedule for a day,
week, or month. To view details of a meeting, click the meeting and then click Open in the pop-up
window.

Note: If the system property

sn_change_cab.com.snc.change_management.cab.use_sow_meeting
is set to true and you have the sn_sow.sow_user role, the CAB meeting opens in the CAB
Workbench in Service Operations Workspace. If it is set to false, the meeting opens in the
Core UI. For more information, see Change Management properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

427


<!-- page 428 -->
CAB Workbench

The following components describe the different activities that you can perform in the interface:
CAB workbench
Level

Description

1

View the timer that displays the total elapsed time, the meeting name, and the
scheduled date and time of the meeting. The timer count starts from zero. The
color code in the timer changes based on the overall percentage of time elapsed
from the total duration of the meeting:
• 0% - 50%: Green
• 50% - 70%: Yellow
• 75% - 100%: Orange
• > 100%: Red
The text below the meeting name displays the total time allotted for the meeting.

2

View the current agenda item. The timer displays the amount of time spent
discussing the current meeting agenda item. The form area displays the details
of the current agenda item that you have selected. When the current agenda item
changes, the details on the form and the calendar change accordingly. If you
select an agenda item that is not the current agenda item, the form area displays
the details of the selected agenda item. The form area does not display details
of the current agenda item even when the current agenda item is changed to the
next agenda item.

Note: If you are one of the approvers for the agenda item, the Approve and
Reject buttons appear below the timer.

You can click Approve or Reject as appropriate, enter your comments in the
Confirmation pop-up window, and click Approve or Reject.
3

Filter the agenda items that you want to view and click Notify me to receive a
notification before the agenda item starts. Click the Pending Agenda Items list,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

428


<!-- page 429 -->
CAB workbench (continued)
Level

Description

and select the All Agenda Items, My Agenda Items, or Approved Agenda Items
option. The list of agenda items appears under the filter condition list, in the order
that the items appear in the agenda.
4

• Meeting Notes: Displays the document note entered by the host of the
meeting.
• Attendees: Displays the list of attendees and also indicates whether the
attendees are currently connected to the meeting.
• Conference Information: Displays any content that was stored in the
Conference Information field from the related CAB meeting record.

5

View the details of a current change in the form view or in the calendar view.
Show form: Click the show form icon ( ) to display change details in the form
view. The Change, Planning, and Schedule tabs provide information about the
change request meeting, planning, and scheduling.
Show calendar: Click the show calendar icon (
) to display change details
on the calendar form. You can select the day or the month that you want to view
details of a change for. In a day view, you can click the settings icon (

) and then

click the configuration icon ( ) to set relevant filter conditions. If you turn on any
of the configuration filter conditions, the related change records are displayed.
The change records appear in the time slot of the day that the current change
implementation is planned for. In the configuration settings, you can view other
potential conflicts. The conflicts can be other change requests that are scheduled
for implementation by the same assignee, assignment group, or for the same
configuration item.
The day and month view of the calendar displays the Blackout Schedule time,
Maintenance Window, and the agenda item that is in progress. In the day view,
the specific time slot of the planned blackout and maintenance window is
highlighted. In the calendar view, the entire day is highlighted.

Note: For standard change proposals, the Change, Proposal, and Change
Request Values tabs provide information on change request meeting,
proposal, and change request values. The show form (
calendar (

) and the show

) icons do not appear for standard change proposals.

Add new CAB meeting agenda items
You can add an agenda item to your CAB meeting to customize the agenda and make the
meeting more effective.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

429


<!-- page 430 -->
Procedure
1. Navigate to All > Change > Change Advisory Board > All CAB Meetings.
2. Click the CAB meeting record that you want to add an agenda item to.
3. On the Agenda Items context menu, click New.
4. On the form, fill in the fields.
CAB Agenda Item form
Field

Description

Meeting

Name of the meeting that you selected to add
the agenda item.

Task

Lookup list to select the change request or
standard change proposal.

Note: The standard change proposal
is available for selection only from
Zurich .
Order

Order that the agenda items will be reviewed
during the CAB meeting.

Notification recipients

Recipients to receive the notification about
the new agenda item.

Short description

Short description of the task.

Work notes

Detailed description of the task.

State

Current state of the agenda item.

Decision

Status of the agenda item.

Allotted Time

Allotted time for the agenda item in the
meeting.

Elapsed Time

Time already spent on the agenda item.

5. Click Submit.
CAB meeting management using the CAB workbench
As a Change Advisory Board (CAB) manager, you can view and manage details of a CAB meeting
and its agenda items through the CAB workbench.
You can view the details of a CAB meeting and its agenda by navigating to Change > Change
Advisory Board > CAB Workbench. The calendar offers a view of your CAB meeting schedules
for the day, week, or month. To view your meeting details, click the meeting and then click Open
in the pop-up calendar. To start a meeting, click Start meeting.

Note: If you click the first agenda item for the first time, a Confirmation window appears. If
you want to start the meeting, click Yes, otherwise, click No.

Watch this six-minute video to learn more about CAB meeting management. This video provides
an overview of planning and scheduling within the CAB Workbench module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

430


<!-- page 431 -->
Start CAB meeting

The details of the change request meeting appear.
CAB workbench

The following table describes the CAB workbench components:
CAB workbench
Level

Description

1

You can view the timer that displays the total elapsed time, the meeting name,
and the scheduled date and time of the meeting. The timer count starts from zero.
The color code in the timer changes based on the overall percentage elapsed
from the total duration of the meeting:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

431


<!-- page 432 -->
CAB workbench (continued)
Level

Description

• 0% - 50%: Green
• 50% - 70%: Yellow
• 75% - 100%: Orange
• < 100%: Red
The text below the meeting name displays the total time allotted for the meeting.
2

• Click Pause to pause an agenda item.
• Click Next if you want to skip an agenda item.

Note: The agenda item is added in the list of All Agenda Items list.
• Click Restore if you again want the agenda item back in the Pending Agenda
Items list.

Note: The agenda item is added to the end of the Pending Agenda
Items list.

• Click Promote to move the agenda item to the top of the list.
• Click Demote to append the current agenda item in the Pending Agenda Items
list so that you can discuss the agenda item later.

Note: The timer displays the amount of time spent discussing the
current meeting agenda item.
• Click End meeting to end a meeting.
3

You can filter the agenda items that you want to view.
• Click the Pending Agenda Items list, and select the All Agenda Items, My
Agenda Items, or Approved Agenda Items option.

Note: The list of agenda items appears under the filter condition list, in
the order that the items appear in the agenda.
• Click Promote if you want an agenda item to appear at the top of the agenda
item list.
4

You can take meeting notes whether you are a host or a delegate. You can view
the list of attendees and conference information.
• Meeting Notes: Enables the CAB manager and delegates to document notes
for the overall meeting. The notes captured in the widget can be shared from
the widget. The widget emails the contents to the list of attendees, which are
automatically saved to the corresponding Meeting Notes field in the CAB
Meeting record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

432


<!-- page 433 -->
CAB workbench (continued)
Level

Description

Any notes specific to a change request can be added directly to the change
request. To add a note, use the editable view of the form under the edit icon
in the upper left of the form widget.

Note: The agenda decisions made by the CAB and change approvers,
such as whether the agenda item is approved or rejected or when CAB
manager skips to another agenda item without making a decision,
are automatically captured in the meeting notes widget. The agenda
decisions are stored in the Meeting Notes field in the related CAB
Meeting record.
• Attendees: Displays the list of attendees and indicates if the attendees are
currently connected to the meeting via the green Presence icon. The list also
displays the attendee's response to the meeting invitation such as Accept,
Tentative, Decline, or No response.
• Conference Information: Displays any content that was stored in the
Conference Information field on the related CAB Meeting record.

5

You can view the details of a current change in the form view or in the calendar
view.

Show form: Click the show form icon
to display change details in the form
view. The Change, Planning, and Schedule tab provide information about the
change request meeting, planning, and scheduling. You can edit the form view,
by using the edit icon

.

To customize the view, click the list contextual menu
and then click View
> cab_workbench. On the Change Request form, right-click and navigate to
Configure > Form Layout. On the Configuring Change Request form, you can
add fields and sections that you want to display in the form view.
Show calendar: Click the show calendar icon
to display current change
details on the calendar form. You can select the day or the month that you
want to view meeting details for. In the day view, click the settings icon

and

then click the configuration icon
to set relevant filter conditions. If you turn
on any of the configuration filter conditions, the related change records are
displayed. The change records appear in the time slot of the day that the current
change implementation is planned for. In the configuration settings, you can view
other potential conflicts. The conflicts can be other change requests that are
scheduled for implementation by the same assignee, assignment group, or for
the same configuration item.
The day and month view of the calendar displays the Blackout Schedule time,
Maintenance Window, and the agenda item that is in progress. In the day view,
the specific time slot of the planned blackout and maintenance window is
highlighted. In the calendar view, the entire day is highlighted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

433


<!-- page 434 -->
Mobile experience for Change Management
Manage your change tasks from anywhere using the Mobile Agent mobile application. With this
mobile application, you can stay connected and access the information in real time to complete
your tasks.
As an ITSM agent or technician, you can use Mobile Agent when connected online to
accomplish the following task:
• Access the change tasks assigned to you or to your group.
• Add comments or work notes or reassign the change tasks.
• Receive push notifications for change tasks assigned or commented on.
• Approve or reject change requests, requests, and requested items.
Watch this three-minute video to learn about the Mobile Agent for managing change tasks. This
video demonstrates using the ServiceNow Agent mobile app for managing change tasks.
Download the Mobile Agent mobile application
Access Mobile Agent on your mobile device to manage your change tasks.

Before you begin

Role required: itil or sn_change_write

About this task

The Mobile Agent mobile application runs on the Mobile App Builder mobile platform. Activate
the ITSM Mobile Experience (com.sn_itsm_mobile) plugin to enable the ITSM mobile application
on your device.

Procedure
1. In your mobile device, go to Apple App store if you are on an iOS platform or Google Play Store
if you are on an Android platform.
2. Search for ServiceNow Agent.
3. Download and install the ServiceNow Agent application.
Get started with Change Management mobile tasks
Access Mobile Agent on your mobile device to manage change tasks.

Before you begin

Download ServiceNow Agent on an iOS platform from the Apple App Store or on an Android
platform from Google Play Store. For more information, see Download the Mobile Agent mobile
application.
Role required: itil or sn_change_write

Procedure
1. Open Mobile Agent and tap the plus icon (+).
2. Add a ServiceNow instance by tapping the plus icon (+) and then entering the instance
address.
You do not need to include service-now.com at the end of the instance name.
3. Tap Change tasks to get started with managing your change tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

434


<!-- page 435 -->
View change tasks
You can view the state, risk, and the schedule of the change tasks in the Mobile Agent mobile
application.

Before you begin

Role required: itil or sn_change_write

Procedure
1. Tap My Work tab.
2. Tap Change tasks to open the list of change tasks.
3. Tap the change task for a detailed view.
4. Tap any field with right arrow to view its details.
Add comments to your change tasks
You can add comments to a change task from the Mobile Agent mobile application. For example,
to add an insight about the change task or a discussion regarding the change task.

Before you begin

Role required: itil or sn_change_write

Procedure
1. Tap Change Tasks to open the list of change tasks.
2. Tap the change task to open the detailed view.
3. Tap Add comment to add your worknotes.
Resolve or close a change task
When you implement the change task, you can close the task from the Mobile Agent mobile
application.

Before you begin

Role required: itil or sn_change_write

Procedure
1. Tap My Work tab.
2. Tap Change tasks to open the list of change tasks.
3. From the list of change tasks, swipe left the change task that you want to close.
4. Tap Close task.

Legacy: Change Management Platform Analytics Solutions
Platform Analytics Solutions and in-form analytics contain preconfigured dashboards. These
dashboards contain actionable data visualizations that help you improve your business
processes and practices.

Platform Analytics Solutions
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

435


<!-- page 436 -->
To enable the solutions for Change Management, an admin can navigate to Performance
Analytics > Guided Setup. Click Get Started then scroll to the section for Change Management.
The guided setup takes you through the entire setup and configuration process.

Inactive dashboards
Some dashboards in this content pack are inactive when installed. Complete configuration and
run data collection jobs before you activate these dashboards. You can activate dashboards in
Dashboard Properties, accessible from the context menu. You have to assign an owner to the
dashboard to activate it.
Related topics
Activate your Performance Analytics subscription
Legacy: Change Premium dashboard
This dashboard uses Workbench widgets and other advanced Platform Analytics features to give
you all the information about the Change process in one place.

Important:
Starting in Xanadu release, the Change premium dashboard is deprecated. Users can use
Change dashboard to view the information about the Change process in one place.

End user and roles
End user and goal

Required role

Change Manager - Needs to break down the
trends in change request resolution over time
to spot areas that need attention

itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

436


<!-- page 437 -->
Indicators
Number of open changes
The number of changes open at the end of the collection date. This calculation is
the number of changes opened on or before the collection date and not closed by
that date.
Average age of open changes
[[Summed age of open changes]] / [[Number of open changes]] / 24
Average re-assignment of open changes
[[Summed re-assignment of open changes]] / [[Number of open changes]]
Average age of last update
The average length of time since the last update made to a change.
Number of new changes
The number of new changes with a registration date on the data collection date.
Change backlog growth
The number of closed changes subtracted from the number of new changes.
Number of closed changes
The number of changes with a close date on the data collection date.
% of urgent changes
Percentage of urgent changes. Is a formula: Number of new changes classified as
urgent / Number of new changes * 100
Average close time of changes
The average length of time in hours between when a change request is opened and
closed.
Average implementation time of closed changes
The average length of time in hours between when a change request enters the
Implementation state and when it is closed
Number of reassigned open changes
The number of changes with a reassignment count of 1 or higher
Number of unsuccessful changes
The number of closed changes with a Close Code of "Unsuccessful"
The following indicators are not displayed on the dashboard but are used in formulas:
• Summed age of open changes
• Summed age of updated since of open changes
• Summed duration of closed changes
• Summed implementation time closed changes
• Summed re-assignment of open changes

Breakdowns
• Age
• Category
• Priority
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

437


<!-- page 438 -->
• Risk
• State
• Assignment Group
• Type

Data visualizations
Title

Type

Description

Changes Opened Today

Single Score

Number of active changes
opened on the day the
dashboard is viewed.

Unassigned Changes

Single Score

Number of active changes that
don't have an assignee.

Overdue Changes

Single Score

Number of changes that are
in one of the following states:
New, Assess, Authorize, or
Scheduled and for which the
planned start date is before
the current date.

Changes On Hold

Single Score

Number of changes with the
status On hold.

Conflicting Changes

Single Score

Number of changes with the
status Conflict.

Rejected Changes

Single Score

Number of changes for
which the approval status is
Rejected.

Open Changes - Grouped

Horizontal Bar

Open changes grouped by
Priority

Upcoming Changes (30 days)
- Grouped

Horizontal Bar

Active changes for which the
planned start date is in the
past 30 days and for which
the state is Scheduled.

Open Changes by Risk and
Priority

Heatmap

Active changes sorted by
risk on the Y-axis and priority
on the X-axis. Cells are
highlighted from white for low
scores to dark blue for high
scores.

Upcoming Changes (30 days)
by Risk and Priority

Heatmap

Changes Opened per Month
by Type

Column

All closed reports opened
in the current calendar year.
Grouped by type and trended
by month opened.

Closed Changes per Month

Line

Number of closed changes
per month expressed on a line
chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

438


<!-- page 439 -->
Legacy: Change Management dashboard
Use this dashboard to see the trends in change request resolution over time across different
change request risks, ages, and priorities. Break down change requests over time according to
the assignment groups you manage.

Important:
Starting in Xanadu release, the Change dashboard is deprecated. Users can use Change
dashboard to view, and track the open changes.

End user and roles
End user and goal

Required role

Change Manager - Needs to break down the
trends in change request resolution over time
to spot areas that need attention

itil

Change Management dashboard indicators
Number of open changes
The number of changes open at the end of the collection date. The number of
changes opened on or before the collection date and no close date or a close date
after collection date.
Number of new changes
The number of new changes with a registration date on the data collection date.
Number of new emergency changes
The number of new changes where type=emergency
Change backlog growth
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

439


<!-- page 440 -->
The number of closed changes subtracted from the number of new changes.
Number of closed changes
The number of changes with a close date on the data collection date.
Average age of open changes
The average amount of time a change has been open.
% of urgent changes
Percentage of urgent changes. Is a formula: Number of new changes classified as
urgent / Number of new changes * 100
Average close time of changes
The average amount of time it has taken to close a change
The following indicators do not appear on the dashboard but are used in formulas:
• Summed age of open changes
• Summed duration of closed changes

Breakdowns
• Priority
• Age
• Assignment Group
• Risk
• Stage
• Type
Legacy: Open Changes Reports dashboard
Use this dashboard to get an overview of the current status of open reports.

Important:
Starting in Xanadu release, the Change dashboard is deprecated. Users can use Change
dashboard to view, and track the open changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

440


<!-- page 441 -->
Open Changes List tab

Open Changes Pivot tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

441


<!-- page 442 -->
Open Changes Heatmap tab

Data visualizations
Title

Type

Description

PA.Source: Open changes List

List

A list report of the unclosed
changes opened on or before
the current date. Columns
include Number, Short
description, Category, Priority,
State, Assignment group and
Assigned to.

PA.Source: Open changes
- MPivot - Priority/State/
Category

Pivot

Report that shows unclosed
changes opened on or
before the current date.
The visualization shows
changes by Priority, State, and
Category.

PA.Source: Open changes Heatmap - Priority/Category

Heatmap

Heatmap report that shows
unclosed changes opened
on or before the current date.
Larger values are highlighted
in darker colors.

Legacy: Open Changes State Monitor dashboard
This workbench dashboard enables you to view and assess all open changes separated into
status brackets: New, Assessed, Authorized, Scheduled, Implemented, and Reviewed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

442


<!-- page 443 -->
Important:
Starting in Xanadu release, the Change dashboard is deprecated. Users can use Change
dashboard to view, and track the open changes.
Open Changes State Monitor tab

Indicators
Number of open changes
The number of changes open at the end of the collection date. This calculation is
the number of changes opened on or before the collection date and not closed by
that date.
Average age of open changes
[[Summed age of open changes]] / [[Number of open changes]] / 24
Average re-assignment of open changes
[[Summed reassignment of open changes]] / [[Number of open changes]]
Average age of last update
The average length of time since the last update made to a change.

Breakdowns
• Priority
• Risk
• Age
• Assignment Group
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

443


<!-- page 444 -->
Legacy: Age of Open Changes Monitor dashboard
This workbench dashboard enables you to view and assess all open changes separated into age
brackets: less than one day, from 1-5 days, from 6-30 days, from 31-90 days, and over 90 days.

Important:
Starting in Xanadu release, the Change dashboard is deprecated. Users can use Change
dashboard to view, and track the open changes.
Age of Open Changes Monitor tab

End user and roles
End user and goal

Required role

Change Manager - Needs to break down the
trends in change request resolution over time
to spot areas that need attention

itil

Indicators
Number of open changes
The number of changes open at the end of the collection date. This calculation is
the number of changes opened on or before the collection date and not closed by
that date.
Average age of open changes
[[Summed age of open changes]] / [[Number of open changes]] / 24
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

444


<!-- page 445 -->
Average re-assignment of open changes
[[Summed re-assignment of open changes]] / [[Number of open changes]]
Average age of last update
The average length of time since the last update made to a change.

Breakdowns
• Priority
• Risk
• Assignment Group
• State
Legacy: Change Velocity dashboard
Use this dashboard to track the average duration of change requests in the last 30 days.

Important:
Starting in Xanadu release, the Change dashboard is deprecated. Users can use Change
dashboard to view, and track the open changes.
The Change Velocity dashboard is divided into the following tabs for effective usage. The
®
ServiceNow Performance Analytics capability in the Change Velocity dashboard provides the
following benefits:
• The Current Pipeline tab provides insights into current change activity. The Historical Pipeline
tab provides details on trends and patterns associated with the change management process
flow. The Process KPIs tab represents a modern set of Change KPIs that are used to evaluate
the change process.
Change Velocity dashboard view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

445


<!-- page 446 -->
• The Process Optimization tab provides change activity assessments that are based on the
state model. This capability is available only with an ITSM Enterprise subscription. For more
information, see Process Mining .
Process Optimization view

End user and roles
End user and goal

Required role

Change manager - Monitors the success and
velocity of change request in the organization
at the organization, team, and individual level.

change_manager

Note: To access the Process Optimization tab, the change manager must be part of the
Change Assignment group.

Change Velocity dashboard indicators
Change Velocity
Average amount of time that changes have been waiting for approval in the last 30
days. To generate this data on the dashboard, you must run the Change velocity
historical data collection job. For information on how to run this job see, Collect
historical data .
Top Change Success Performers
Performance of assignment groups in processing the change request with the
highest performer on the top. For information on how the performance score is
calculated, see Success Score Calculation.
Average age of open changes
Average amount of time that the change request has been open.
Average close time of changes
Average amount of time that it has taken to close the change request.
Average implementation time of closed changes
Average amount of time between the start and close date of the change request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

446


<!-- page 447 -->
Data visualizations
Title

Type

Awaiting Cab Approval

Single score (

)

Number of changes awaiting
CAB approval.

High Risk Changes

Single score (

)

Number of high risk changes
starting today.

Awaiting Approvals

Single score (

)

Number of changes awaiting
approval.

Model Breakdown

Type Breakdown

Open Changes by Category
Change Pipeline

Change Success

Description

Pie (

)

Pie (

)

Pie (

)

Changes categorized based
on the change model over the
last 30 days.
Changes categorized based
on the change type in the last
30 days.
Number of open changes from
each category.

Vertical bar (

Pie (

)

Number of changes
categorized based on their
state.
Number of changes
categorized based on their
close code over the last 30
days.

)

Change Risk

Vertical bar (

High Risk Change List

List (

) ()

List of high risk changes
starting today.

Highest Change Activity

Line (

)

Top 10 configuration items
associated with changes in
the last 3 months.

Change Success

Line (

)

Changes that are successful,
unsuccessful, and successful
with issues expressed on a
line chart.

Change Risk

Line (

)

Changes categorized based
on the severity of risk.

Change Volume

Line (

)

Volume of changes in the last
6 months.

Unsuccessful Changes

List (

Emergency Changes

Line (

)

Number of changes
categorized based on the risk
values.

Number of unsuccessful
changes in the last 7 days.

)
)

Number of emergency
changes over the last 90 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

447


<!-- page 448 -->
Title

Type

Description

Change Related Incidents

Line (

)

Number of closed incidents in
last 90 days where they have
related changes.

Unauthorized Changes

Line (

)

Number of unauthorized
changes over the last 90 days.

Active Changes > 7 days

Single score (

Number of active changes that
were created more than seven
days ago.

)

Change Management troubleshooting properties
Use the Change Management troubleshooting properties and change the value of the properties
to get additional logging details for the feature.
The following properties are available for further configuration. To list them, enter
sys_properties.list in the navigator text box.

Name

Description

change.conflict.log

The logging property that controls logging
level displayed for Change Management
while detecting the change conflicts.
• Type: choice list
• Default value: notice

com.snc.change_management.cab.log

The logging property that controls the
logging level displayed for Change
Management when using the CAB
functionality.
• Type: choice list
• Default value: info

com.snc.change_management.core.log

The logging property that controls
level logging displayed for Change
Management .
• Type: choice list
• Default value: warn

com.snc.change_management.policy.approval.log The debug logging property that provides
the detailed logging information of the
workflow activity when using Change
Approval Policies.
Type: choice list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

448


<!-- page 449 -->
Manage the workspace configuration for a Change request in Service
Operations Workspace
Utilize the new table-based configuration to align with the Service Operations Workspace
Dynamic Overview Pages with the change process of your organization.
These configuration options allow users to define how the Dynamic Overview pages render
throughout the change life cycle. This includes configuration options for overview pages,
contextual sidebar and activity stream behavior for each state.

Note: To create a custom section, add new change overview cards. For information on
modifying the layout and formatting of the sections, see UI Builder tutorial

.

With this you can configure the following components in the workspace configuration:
• Control the display of the cards in the contextual side panel
• Control the order of the cards to be displayed in the Overview pages
• Control the display of activity stream bar in the Overview pages
• Configure the journal fields
Show the activity stream bar
Show the activity stream bar for a for a change request in Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Change > Workspace Configuration > Overview Container.
2. Select a state.
3. On the Change Overview Container form for the selected state, enable Display action bar.
4. Right-click on the form header and select Save.
The action bar is shown on the Service Operations Workspace at the bottom of the screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

449


<!-- page 450 -->
Configure the order of the cards in Overview section
Configure the order of the cards that display in the Overview section for a change request in
Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Change > Workspace Configuration > Overview Card.
2. Right-click on Chg overview container column, and select Group By Chg overview container.
3. Select a state.
4. In the Change Overview Cards section, modify the order of the overview cards using Display
order.
5. Right-click on the form header, and select Save.
Configure the journal field of a change request
You can configure if the Work notes or Additional comments sections to display for a change
request.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Change > Workspace Configuration > Overview Journal Field.
2. Select a Chg overview card.
3. In the Change Overview Fields section, to delete select the journal field, and select Delete
from Actions on selected rows.
4. Right-click on the header and select Save.

Agentic AI in change management
Use the ITSM change management agentic workflows to manage and complete tasks
autonomously.

Agentic workflows for the change management application

Important:
To access the change request agentic workflows, make sure that you install the following
applications:
1. Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
2. Change Management application. For more information, see Configuring Change
Management.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM Agentic AI applications, see Use agentic AI in Now Assist for
IT Service Management (ITSM).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

450


<!-- page 451 -->
Agentic workflow name

Description

Available AI agents

Assess conflicts for a change
request

Runs conflict detection
for change requests and
assesses conflicts, identifies
affected CIs and impacted
services

Change conflict assessor AI
agent

Assess quality of a Change
Request

Assesses information quality
for new change requests by
analyzing closed change
requests with matching
descriptions.

Change quality assessor AI
agent

Explain SLA

Provides insight into priority
SLAs, task assignment, and
frequency of pause and
resume events of SLA for an
incident, problem, case, or
change request.

Explain SLA

Schedule a change

Schedule change requests
by identifying the available
schedule slots.

Schedule Change Request AI
agent

Suggest configuration items
for a change request

Recommends configuration
items during change creation.

Change CI suggestion AI
agent

Create outages for a change
request

Associates outages with a
change request quickly.

Change outage assistant AI
agent

Create standard change
request

Creates a standard, normal, or Standard change template
emergency change request in recommender AI agent
a conversational way.

Create standard change
template proposal

Creates a change template
proposal record based on
similar change requests.

Standard change template
proposal AI agent

Reference section for Change Management
Reference sections provide additional information about components installed with Change
Management.

Configuring maintenance schedules - Best practices
Maintenance schedules define the periods during which a Configuration Item or change can be
implemented.
These schedules are incorporated into the conflict detection process for change requests. If
a change request doesn't adhere to the relevant maintenance schedule, a conflict record is
generated for the change request.
There are two ways to define Maintenance schedules for Conflict Detection:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

451


<!-- page 452 -->
• Configure maintenance schedule. This path is enabled through the
change.conflict.currentwindow system property.
• Create maintenance schedule using Schedules table [cmn_schedule]. This method can be
enabled using the change.conflict.ci_maint_sched system property.

Note: These system properties can be configured on the Conflict properties.
Maintenance schedule using schedule maintenance form
All Maintenance Schedules defined through this method are processed based on the condition
field, which must be evaluated to determine its applicability to the change request, the primary
CI, or the associated Affected CIs (if they are executed in Advanced mode).
It should be noted that the presence of multiple Maintenance Schedules extends the time
required to determine their relevance, and this duration increases with each Affected CI.
If a generic schedule is applicable to numerous CIs or change requests, you must define a
maintenance schedule using Configure maintenance schedule.
However, if your schedules are tailored to a limited number of CIs, you must consider creating
maintenance schedule using schedules table.

Maintenance schedule using schedules table
This method is designed where individual CIs or small groups of CIs must follow a specific
schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

452


<!-- page 453 -->
In such cases, the maintenance schedule should be set in the Schedule table (cmn_schedule)
instead of the maintenance schedule table. This approach prevents the need for conflict
detection to process the schedule twice using maintenance form and the schedule table.
Unlike the maintenance schedule record, the schedule record lacks a condition or an Applies to
field, as it is intended to be directly associated with a CI. After defining the schedule record, the
Type must be set as maintenance to link to a CI. To attach this schedule to a CI, it should be
referenced in the Maintenance schedule field on the CI record; if this field is not visible, it must
be added to the form.

Change Management properties
Administrators can use change properties to configure Change Management behavior.
Navigate to Change > Administration > Change Properties to view and edit these properties.
Change Management properties
Name

Description

glide.approval_engine.change_task

Change request tasks approval engine.
• Type: choice list
• Default value: process_guide

glide.ui.risk_calculate_rule

Change risk calculation method. Business rul
• Type: choice list
• Default value: ui_action

For more information, see Risk Calculator prop
com.snc.change_request.enable_copy

Enable copy change feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

453


<!-- page 454 -->
Change Management properties (continued)
Name

Description

• Type: true | false
• Default value: true
com.snc.change_request.copy.attributes

List of attributes (comma-separated) that are c
• Type: string

• Default value:
category,cmdb_ci,priority,risk,impact,type,a
com.snc.change_request.copy.rl.change_task.attributes

List of attributes (comma-separated) from the
• Type: string

• Default value: cmdb_ci,priority,assignment_
com.snc.change_request.copy.rl.task_ci.attributes

List of attributes (comma-separated) from the
• Type: string
• Default value: ci_item

com.snc.change_request.attach.enable_copy

Copy attachments from the originating chang
• Type: true | false
• Default value: true

com.snc.change_request.copy.rl.task_cmdb_ci_service.attributes List of attributes (comma-separated) from Imp
• Type: string
• Default value: cmdb_ci_service
com.snc.task.refresh_impacted_services

List of all the Task types where Refresh Impac
• Type: string
• Default value: incident, change_request

change.refresh_impacted.include_affected_cis

Lists the impacted CIs or Services with any se

Note: This requires any business servic
services to application services
com.snc.change_management.enforce_data_requirements

. For in

Enforce change request process data require
includes, updates made through the change r
see Change Management API

In the User Interface, when this property is tru
already exist.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

454


<!-- page 455 -->
Change Management properties (continued)
Name

Description

• Type: true | false
• Default value: true
com.snc.task.populate_service_offering

Populates the service offering related list from
• Type: true | false
• Default value: false

com.snc.change_request.enable_unauthorized

Enables the creation of unauthorized change
• Type: true | false
• Default value: false

com.snc.change_request.event.state_updated.enabled

Generates the sn_change.state.updat
• Type: true | false
• Default value: false

com.snc.change_request.event.state_updated.states

Enter the change request state field values, ea
when any of the state value changes, for exam
event for all state changes. For more informat

Note: For this property to take effect, pro
true.

Change Management properties for Discovery integration
If your organization is subscribed to Discovery , integration with Discovery is automatically
enabled. With this integration, any configuration item (CI) with an IP address that is part of a
change request process can be maintained automatically. When Discovery is activated, the
following three new properties become available.

Name

Description

com.snc.change_request.auto.discovery

Trigger Discovery for the Affected CIs
automatically, manually or not at all.
• Type: Choice list
• Values: Off, Both, Automatic, Manual
• Default value: Off

com.snc.change_request.disco.auto.state

Defines which Change Request states Discovery
will be automatically triggered.
• Type: String
• Default value: Review

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

455


<!-- page 456 -->
Name

Description

com.snc.change_request.disco.manual.state Defines which Change Request states allow
Discovery to be manually triggered.
• Type: String
• Default value: Implement, Review

Change Management properties available from sys_properties table
The following properties are available for further configuration. To list them, enter
sys_properties.list in the navigator text box and filter for com.snc.change_.

Name

Description

com.snc.change_request.copy.related_lists

Related lists (comma-separated) that will
copied from the originating change.
• Type: string

• Default value:
task_ci,task_cmdb_ci_service,change_
com.snc.change_request.rl.change_task.attach.enable_copy

Copy attachments from originating chang
task.
• Type: true | false
• Default value: true

com.snc.change_management.policy.approval.log

The debug logging property that provide
the detailed logging information of the
workflow activity when using Change
Approval Policies.
Type: choice list

sn_change_cab.com.snc.change_management.cab.use_sow_meeting Controls opening of a CAB meeting
from the CAB Meeting calendar in the
CAB Workbench in Service Operations
Workspace.

Note: Users must have the
sn_sow.sow_user role to open CAB
meetings in SOW.
• Type: true | false
• Default value: false, for upgrade
customers; true for new customers.
• true: CAB meetings open in the CAB
Meeting workbench in SOW.
• false: CAB meetings open in the Core

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

456


<!-- page 457 -->
Analyze change request risk and impact rating
After you create a change request, you can assess and analyze the risk and impact rating for the
change request. You can review any conflicts that are detected by reviewing the change request.
Analyze the risk of change and review detected conflicts in the following ways.
Risk conditions and calculation
Change Management features provide ways to calculate and assess the risk of change requests,
and to identify and resolve conflicts.
Risk assessment and calculation assists you with understanding the urgency and impact
of change requests. Conflict detection assists you with scheduling change requests for the
least impact to stakeholders. This features minimize the risk and cost of rapid changes in your
environment.
Risk Calculator property
The Best Practice - Change Risk Calculator plugin enables dynamic calculations of the risk and
impact of a change. The administrator specifies how and when risk and impact rules are applied.
The Best Practice- Change Risk Calculator plugin bundles some risk calculations using
configuration item (CI) attributes and time measures.
A change management system property determines the risk calculation method. In Change >
Administration > Risk Properties, the administrator selects one of the following methods.
Change Risk calculation method
Option

Description

UI Action Enables users to click the Calculate Risk related link to check condition rules on
demand.
This UI action applies matching conditions according to their order. Each time a rule
is applied, an alert is displayed confirming the new values for risk and impact.
The Calculate Risk related link appears on the Change Request form only if the
following statements are true.
• There are risk and impact conditions that apply to the current change record.
• The user has the admin or the itil role.
Business Enables conditions to be evaluated and applied dynamically through a business rule
Rule
on the Change Request table.
The conditions are evaluated before a change request record is inserted or updated.
Users with the admin or the itil role or both can execute this business rule.

Note: The Run Risk Calculation business rule replaces the

Calculate Risk business rule when the Change Management - Risk
Assessment plugin is activated.
None

Disables the processing of risk and impact rules.

Add or modify risk and impact conditions
You can define risk calculation rules on which the risk and impact of a change are calculated.
Best Practice - Change Risk Calculator is activated by default in the base system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

457


<!-- page 458 -->
Before you begin

Role required: itil_admin or admin

About this task

Risk Conditions are run against the change request based on their Order field from lowest
to highest. The first Risk Condition that matches the change request record is applied. All
subsequent risk conditions are then ignored whether they match or not. A risk calculation rule is
defined with two elements.
• Conditions that can evaluate to true or false. You can use a condition builder or write a
script.
• Risk and Impact field value settings when the conditions evaluate to true.

Procedure
1. Navigate to All > Change > Administration > Risk Conditions.
2. Click New, or click the risk condition to modify.
You can also edit risk conditions from within the Change Request form by opening the form
context menu and clicking Edit Risk Conditions.
3. Complete or update the form, as appropriate.

Field

Description

Name

Enter a descriptive name for the rule

Risk

Select a value for one of these fields. The selection determines which field to
update based on this risk calculation.

Impact
Active

Select the check box to use the rule.

Order

Enter the order in which this risk calculation is evaluated. Rules with lower
numbers are evaluated first. If there are two or more rules with differing orders,
the rule with the lowest order is evaluated and the others are ignored.

Use
advanced
condition

Select the check box to enter a script instead of using the condition builder.

Use script
values

Select the check box to hide the Risk and Impact fields. The script specifies the
risk and impact values.

Description Enter a description of how this risk calculation is applied.
4. Specify the rule based on your selected rule method.
Choice

Action

Condition

Use the condition builder to add conditions. It
is hidden if you selected Use advanced condi­
tion.

Use advanced conditions

Write the script in the Advanced condition
field using standard business rule syntax. The
condition must set the global variable answer
to true or false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

458


<!-- page 459 -->
Choice

Use script values

Action

Write the script in the Script values field.
Specify the Risk and Impact values in the
script.
The conditions are set using either the condi­
tion builder or an advanced condition script.

Example
In the following example, the Advanced condition script first determines whether the CI is a
business service. If so, the script identifies whether the Business criticality value is 1 - most
critical or 2 - somewhat critical. If it does, it sets the global variable answer to true.

When the Advanced condition script returns true, the script in the Script values field sets
the change request Impact and Risk values based on the Business criticality value.
Risk assessment
There are two methods to calculate the risk of a change. The Best Practice - Change Risk
Calculator is activated in the base system by default. Change Management - Risk Assessment is
optional.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

459


<!-- page 460 -->
• Change Risk Calculator uses predefined properties and conditions to calculate a risk value.
• Change Management - Risk Assessment uses information provided by the end user to assess
a risk value.
The two methods can be used individually or together, depending on your requirements. If the
methods are used together, the highest risk value from both methods is always selected.
Risk assessment and calculation

Note: If both Risk Assessment and Risk Calculator are active but you want to use only one
method, remove conditions for the method you do not want to use.
If you activate Change Management - Risk Assessment, the administrator can add the Task
Assessment > Task related list to the change request form, if necessary. The related list displays
risk assessments associated with the change request.
Related topics
Perform risk assessment
Define risk assessments
Change Management - Risk Assessment provides a flexible way to capture information from
the end user to calculate the risk of the associated change request. You can define the risk
assessment questions, thresholds, and conditions that calculate risk for any change request.

Before you begin

Role required: itil_admin
Change Management - Risk Assessment must be activated.

About this task

You can use a series of questions to capture the risk of a change. A different assessment of the
questionnaire can be defined on the change record. The assessment uses a weighted score
approach for each question. The composite weighted score derived from the answer of the end
user is used to calculate risk. This score is based on the thresholds associated with the risk
assessment.
Change Risk Assessment is an application built on Survey and Assessment V2 architecture.
While it's possible to configure multiple metric categories on this architecture, it is better not to
do so to avoid errors.
You can configure multiple change Risk Assessment definitions each with one Metric Category,
where the Metric Category filter is identical to the filter of the change Risk Assessment condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

460


<!-- page 461 -->
Procedure
1. Navigate to All > Change > Administration > Risk Assessments.
2. Click New.
3. Complete the form, as appropriate.

Field

Input value

Name

Name for the risk assessment. This name is displayed
to the end user.

State

The state of the assessment: Draft or Published.

Description

Description of the risk assessment.

Condition

Conditions which determines if a risk assessment is
attached to the change. Typically, the first attachment
that matches the conditions gets attached during
evaluation. Therefore, ensure that the conditions result
in the correct assessments being attached especially
when defining multiple questionnaires.

Note: Ensure that the conditions are simple
and mutually exclusive so that the assessment
conditions are easy to understand and maintain.

4. Click the form context menu and select Save.
The page refreshes with the Assessment Categories and Assessment Thresholds related
lists. The Assessment Categories related list enables you to define the questions that the end
user answers to assess the risk of a change request.
5. Complete the following steps to create an assessment question.
a. In the Assessment Categories related list, click New.
b. Complete the form, as appropriate.
Metric category
Field

Description

Name

Name of the assessment category.

Create Stakeholders

If selected, automatically creates stakeholders for all
assessable records linked to this category.

Weight

Value that represents importance of this category
relative to other categories. The weight is multiplied to
the score of the answer to calculate the weighted score.

Filter

Only assessable records that meet filter conditions are
evaluated by metrics in this category.

Description

Description of the assessment category.

c. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

461


<!-- page 462 -->
d. Open the assessment category.
e. In the related list, click Assessment Metrics.
f. Complete the form, as appropriate.
Assessment metrics
Field

Description

Name

Name of the assessment metric.

Category

The category of the assessment metric.

Method

The method of gathering data for this metric.

Weight

Value that represents importance of this metric relative
to other metrics. The weight is multiplied to the score of
the answer to calculate the weighted score.

Order

Order of the question in the assessment.

Active

If selected, the metric is activated to be used for
assessments and result calculations.

Mandatory

If selected, makes a field mandatory in an assessment.

General
Question

Question that is displayed on the assessment.

Description

Tool tip text for the assessment.

Depends on

The condition that determines whether the metric is
shown to the user or not.

Allow Additional Information

If selected, a text box appears for the user to enter
additional information for the question.

Field Type
Data type

The data type of the answer that is given by a user for a
question.

Note: Depending on the data type that you select,
additional fields may appear.

g. Click Submit.
h. In the Assessment Threshold related list, click New.
i. Complete the form, as appropriate.
Change risk assessment threshold
Field

Description

Risk Assessment

The assessment name for which assessment threshold is
applied.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

462


<!-- page 463 -->
Field

Description

Risk

Risk value applied on the change request.

Note: Risk value can be overridden by risk
conditions.
Application

The name of the application that contains the record.

Score greater than

The threshold against which the composite score is
compared and evaluated.

j. Click Submit.

Note: You can create or edit the assessment questionnaire through the Assessment
Designer module or by clicking Edit in Assessment Designer related link.

For example, after you define the risk assessment, this is how the risk assessment score is
calculated and set.
◦ asmt_metric_result stores the score set.
◦ The weight is calculated as sum (asmt_metric_result.normalized_value)
where asmt_metric_result.normalized_value = actual_value *
weight.
◦ The risk calculated as sum(actual_value * weight) > threshold. For
example, If the result is 7 and moderate threshold is 6 risk is moderate.
Perform risk assessment
You can perform risk assessment of existing change requests after the risk assessment criteria
are defined. After assessing the risk, you can view the risk assessment responses in the change
request.

Before you begin

Role required: itil, sn_change_write, or admin

About this task

Verify that the Risk Assessment related list is configured on the Change Request form. If it is not
configured, an administrator can add the Task Assessment > Task related list.
The Risk Assessment related link is available only when the change request meets the risk
assessment condition and risk assessment category condition, the change request type is
Normal or Emergency, and the State is New, Assess, or Authorized. On clicking the Risk
Assessment related link, the Change Risk Assessment form appears if you have not assessed
the risk for this change request before. When you submit the form, these three things appear at
the top of the change request form:
• Risk assessment evaluated: The estimation of risk after it is assessed against the Change Risk
Assessment form and the criteria set for assessment for the change request.
• Risk Condition applied: The result of the risk calculated against pre-defined risk conditions.
• Risk set to: The final weight of risk based on risk assessment and risk calculation.

Note: If you have filled the Change Risk Assessment form earlier but clicked Risk

Assessment related list again, a pop-up window appears informing that you have already
completed the risk assessment for the change request and confirms whether you want
to edit the existing risk assessment. Click Yes to fill the Change Risk Assessment form
again. Click No to use the existing risk assessment to calculate risk.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

463


<!-- page 464 -->
Procedure
1. Open a change request.
2. Click the Risk Assessment related link.
3. Answer the questions and click Submit.
After submitting the risk assessment, click the Risk Calculation related link to calculate the
risk. The result of risk assessment, risk calculation, and the value that appears in the Risk field
of the change request form appears.
Risk calculation results

Users with survey_admin or survey_reader role can navigate to Legacy Surveys > Survey
Responses and filter by Instance. Survey instances are individual assessments distinguished
by the date and time when they are taken.
Related topics
Risk assessment
Migrate to legacy change risk assessments
Users can migrate legacy change risk assessments to versions compatible with the new Change
Risk Assessment table schema and logic.

Before you begin

Few points to remember:
• Customers with Change Management - Risk Assessment [Legacy]
(com.snc.change.risk_assessment) plugin already installed on their instances
should only follow this task.
• The Change Management - Risk Assessment [Legacy]
(com.snc.change.risk_assessment) plugin cannot be installed for customers who
are on Kingston and later releases.
• Migration guidance and best practice suggests that the migration should be performed on a
development instance and not on a production instance.
• The development instance must have the new Change Management - Risk Assessment
[com.snc.change_management.risk_assessment] plugin installed.
• All migration work must be captured in an update set, moved to a test instance, and then
tested before moving them to a production instance.
Role required: itil_admin

About this task

The following legacy risk assessment components are migrated:
• Risk assessment definition, questions, and question choices.
• For multiple assessment conditions, the migration might result in the following one or more
than one risk assessment records:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

464


<!-- page 465 -->
◦ If all the multiple assessment conditions are on the same table, then the migration results in
only one risk assessment.
◦ If the multiple assessment conditions are on different tables, then the migration creates as
many risk assessments as they pertain to different tables.

Procedure
1. Create an update set and set it as the current set.
For more information, see Create and select an update set as the current set

.

2. Navigate to Change > Risk Assessment (legacy).
3. Open the legacy risk assessment that you want to migrate to a change risk assessment.
4. Click the Migrate to Risk Assessment related link.
5. Click OK.
6. Repeat steps 4-5 for all the legacy risk assessment to be migrated.

What to do next

After all the legacy risk assessments are migrated, reach out to the support team to run the
following scripts:
disable_legacy_change_risk_assessment.js
Capture the results in the update set created and later mark the update set as closed complete.
For more information, see Mark an update set complete .

Note: The given procedure is a suggested practice. Alternatively, you can capture
each migrated Change Risk Assessment in their own update set. You can also capture
the results of disabling of the Change Management - Risk Assessment [Legacy] using
disable_legacy_change_risk_assessment.js in a separate update set.
Migrated risk assessment components
When you migrate a change risk assessment, the system maps records from legacy risk
assessment to the new risk assessment tables.
To create a functional risk assessment on the assessment framework, the system converts risk
assessment records to the most logical equivalent assessment risk records. This may mean
multiple assessment risk records are created from one legacy risk record.
Migrated components
Risk assessment components

Change risk assessment components

Assessment Main [assessment_main]

Change Risk Assessment [change_risk_asmt]

Assessment Question [assessment_question]

Assessment category [asmt_metric_category]
Assessment Metric [asmt_metric]

Assessment Question Choice
[assessment_question_choice]

Assessment metric definition
[asmt_metric_definition]

Risk Assessment Thresholds
[risk_assessment_threshold]

Assessment Thresholds
[change_risk_asmt_threshold]

Assessment Conditions
[assessment_conditions]

This is included in Change
Management - Risk Assessment
[com.snc.change.risk_assessment].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

465


<!-- page 466 -->
Success Probability definitions
Success Probability definition is a configuration that defines the probability and the matching
conditions of a change request.
By default, the success probability definition is defined for Change Success Score, Change
Model Success, and Calculated.
The order field determines the execution order of the definitions, the order with least value is
given higher precedence.
The default values are created for Change Model Success, Change Success Score, and
Calculated irrespective of the probability selected on the success probability definition.
Change manager can modify the existing records in the table. The Success Score Validations
business rule validates if any record is created with the allowed minimum and maximum values
for Change Model Success and Change Success Score.
When Change Model Success or Change Success Score is set as probability on the Success
probability definition, the corresponding related list is visible on the Success probability
definition record, however, when Calculated is set all the three related lists are visible on the
record.
The “Greater than or equal to” field of Change Model Success and Change Success Score
related list determines the Success Probability that must be returned by the Success probability
definition.
For example, if the Probability is set to Calculated on the record, and if Change Model Success
evaluates to High and Change Success Score evaluates to Moderate, the success Probability
definition returns High as the Success Probability.

You can edit the value in the Calculated success probability column for each combination of
Change model success and Change success score. When you modify the choices for success
probability on a change request, you must click Refresh probability mappings under Related
Links to update the combinations of related records for Change Model Success, Change
Success Score, and Calculated probabilities. You can also update the multiple records by
executing Refresh probability mappings on the list.

Note:
Success probability plugin supports domain separation. The sn_chg_probability_success,
sn_chg_probability_model_success, and sn_chg_probability_calculated_lookup tables
are process separated when you install the domain separation plugin.

Calculated Risk Score
Risk lookup table is to get the risk value corresponding to the success probability value and
impact value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

466


<!-- page 467 -->
sn_chg_probability_risk_lookup table is used to fetch the data to calculate the risk value of the
change request.
By default, there are nine records with all the possible mappings for Impact and Success
Probability along with their corresponding risk values.
Change manager can add new records and delete existing records in the table. The Check
impact and probability combination business rule validates the duplicate mapping entries.
Navigate to All > Change > Administration > Calculated Risk Score.
All the risk calculating engines calculate their corresponding risk value, the system picks the
highest risk and defines the risk for the Change. You can modify the Risk values irrespective of
the values defined for Impact and Success probability.
You can view the success probability definition that has set the success probability on the
change request by accessing the sn_chg_probability_details table. This table can be accessed
by the users who has read access to the change requests.
On the change request form, in the Related Links, click Calculate risk. The risk engines
calculate the risk for the Change. Click the icon against the Risk field to view the risk set for the
Change.
Click the icon against Calculated Risk Score to find which type of success probability definition
is responsible to set the risk for the change. There are three types of calculated risk score:
• Calculated (Impact + Success Probability)
• Calculated (Impact + Change Success Score)
• Calculated (Impact + Change Model Success)
• Not set: When the risk is not evaluated

Note:
Risk lookup supports domain separation. The sn_chg_probability_risk_lookup table is
process separated when you install the domain separation plugin.

Change management integrations
You can integrate Change Management with other ServiceNow applications such as Discovery,
Software Asset Management, and Hardware Asset Management.
The following topics provides information about integration of different applications with Change
Management, prerequisites, and way to enable functionality of those integrated applications.
Change Management integration with ITOM Visibility
If your organization is subscribed to ITOM Discovery or ITOM Visibility, integration with these
ITOM products is automatically enabled. With this integration, any configuration item (CI) with
an IP address that is part of a change request process can be maintained automatically. Change
request fulfillers can also manually request the discovery process for a CI.

Enabling integration
Depending on subscriptions purchased by your organization, you must install and configure the
following plugins:
• For ITOM Discovery - the Discovery plugin (com.snc.discovery)
• For ITOM Visibility - the Discovery plugin (com.snc.discovery) and Service Mapping plugin
(com.snc.service-mapping)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

467


<!-- page 468 -->
Integration with ITOM Discovery
When Discovery is activated, Change Management exposes three new properties within the
Change Properties module (Change Management > Administration > Change Properties):
Change Management properties for Discovery
Property

Description

Configures how discovery is triggered for
Affected CIs (automatically, manually or off)

Determines whether to trigger discovery for
the affected CIs automatically, manually, both,
or not at all.
Type: Choice list
Values: Off, Both, Automatic, Manual
Default value: Off

Note: If the property below is set to
Both, and you trigger discovery manually,
then the automatic discovery will not be
triggered for that change request.
List of Change Request states (commaseparated) where discovery can be triggered
manually

Defines the change request state values
to allow discovery to be manually initiated.
For these defined state values, the Initiate
Discovery related link is available.
Type: String
Default value: Implement, Review

Note: If there are multiple languages
used on the instance, then this property
needs to be set to the internal state value
for Review.
List of Change Request states (commaseparated) where discovery triggers
automatically. E.g. when the Change Request's
state changes to Review

Defines the change request state values for
which discovery is automatically triggered.
Discovery initiates when transitioning to the
state values listed.
Type: String
Default values: Review

Note: If there are multiple languages
used on the instance, then this property
needs to be set to the internal state value
for Review.

Note: For the last two properties in the above table, if there are multiple languages used
on the instance, then the property needs to be set to the internal value, which is 0, for
Review.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

468


<!-- page 469 -->
In addition to the new properties, the Discovery State and the Discovery last updated fields get
added to the Affected CI related list. Discovery State provides one of five status values and a
corresponding icon to reflect that status:
• In Progress
• Completed Successfully
• Completed w/Warning
• Completed w/Error
• Cancelled
The Discovery State value is presented as a link to the corresponding Discovery log file. The
Discovery last updated field contains a date and time stamp indicating the last time Discovery
was executed.
If you have opted to manually initiate the Discovery module, or opted for both manual and
automatic initiation, then the Initiate Discovery related link appears in the Related Links section
when the state of the change request matches one of the defined states in the property. When
Discovery is triggered, the values in the Discovery State and the Discovery last updated fields
change.
Change management integration with discovery

Integration with ITOM Visibility
You can view the changes in the context of application services. Service maps available in
Service Mapping show changes to an application service as a whole and to the individual
configuration items (CIs) comprising the service.
If the ServiceNow AI Platform is configured to validate changes, all changes are evaluated and
rendered as valid or not. If a change is valid, its change record on the service instance map is
marked as approved. For more information about configuring the platform for change validation,
see Managing proposed changes .
The type of change mark depends on the nature of changes that it represents:
Light gray balloon (

)

Unapproved change that does not influence the service instance behavior. For
example, a change in a network path or adding a node to a cluster.
Dark gray balloon (

)

Unapproved change that changes the service instance behavior.
Green balloon (

)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

469


<!-- page 470 -->
An approved change in deployments where the ServiceNow AI Platform is
configured to validate changes.
Double balloon (

)

Multiple separate changes that happened a short time from each other.
Related topics
Discovery
View the change history of application services
View the change history of application services in Agent Workspace
Change Management integration with Software Asset Management
The Change Management integration with Software Asset Management (SAM) displays the
projected licensing cost implication of a change.
This integration focuses on the projected license cost change when a change is proposed to
one or more configuration item (CI) processor resources (CPU or CPU Core) running software
licensed by the processor.
This integration requires the Software Asset Management Professional (com.snc.samp) and
Change Management - License Change Projections (com.sn_samp_change) plugins.

Note: You need to request the activation of the Change management – License Change
Projections plugin (com.sn_samp_change) through the HI Service Portal.
When a change request is in the New state, users can propose a change to the CPU or CPU
Cores of a CI using Propose Change or Mass Update CI. Those proposed changes are captured
in an XML field that is then passed to Software Asset Management when the change request
transitions into its first approval state. Once Software Asset Management performs the projected
licensing cost change, those results are displayed in a new form section called License change
projection.
The License change projection form section displays the license projection change summary for
every CI in scope for the change. The left side of the section displays fields relaying the current
spend, projected spend, the spend change, and the number of impacted installations. On the
right is a bar graph providing a visual representation of that information.
For a more detailed breakdown of the license change projections, a related list can be added to
the Change Request form called CI Projection Summary. This related list provides a CI-by-CI
breakdown of the license change projection summary information and provides easy access to
the Software Asset Management CI Project Summary record and additional data.
Related topics
Managing proposed changes
Mass Update CI
Change Management integration with Hardware Asset Management
The Change Management integration with Hardware Asset Management helps in determining
the asset action that must be performed on the configuration item (CI) that is associated with a
hardware asset. Using this capability, change implementers can quickly update asset records
directly from change and the Asset Manager can see current state on all assets that were
updated by the change request.
This integration requires the Hardware Asset Management Professional (com.sn_hamp) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

470


<!-- page 471 -->
Note: You must request the activation of the Hardware Asset Management Professional
®

(com.sn_hamp) plugin from the ServiceNow application store.
When the configuration items listed in the Affected CIs related list have an asset associated,
then the Asset action field is populated.
You can choose an Asset action for the CI, from the Affected CI related list. This Asset action
field provides three possible actions that can be selected which triggers an event.
• Deploy: When this action is selected, the sn_hamp.asset.deploy event is triggered.
• Update/Repair: No event is triggered for this action.
• Retire: When this action is selected, the sn_hamp.asset.retire event is triggered.

Note: The Asset action column can be added to the Affected CI related list if not already
available.
When a change request is in the Implement state, the proposed asset action triggers the
corresponding event. When the workflow is complete, the asset action updates the asset and the
related records and progresses to the Review state.

Note: If the asset action is not selected, then the change request will not progress to the
Review state.

For more information, see Hardware Asset Management

Domain separation and Change Management
Domain separation is supported in Change Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Domain separation in Change Management overview
Change Management provides a systematic approach to controlling the life cycle of all changes,
facilitating beneficial changes with minimum disruption to IT services.

How domain separation works in Change Management
Change management involves the management of change requests. A change request allows
you to implement a controlled process for the addition, modification, or removal of approved
and supported configuration items (CIs). The request records the detailed information about
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

471


<!-- page 472 -->
the change, such as the reason for the change, the priority, the risk, the type of change, and the
change category.
• A change request is an extension of a Task. Records are created in the domain of users
creating the task they have in session.
• All change properties are global, meaning they are the same for every application that uses
the [sys_properties]table properties. The table is not domain separated so any changes made
impact all domains.
Domain separated tables
Change Request [change_request].
Use case
An ITIL user in the Acme domain logs in and creates a change request. The change request is
created in the domain that the user has selected.

How domain separation works in Change Advisory Board (CAB) Workbench
• CAB meetings synchronize with the CAB Definition table if the meeting was generated via a
definition, or the meeting was created manually and has the CAB Definition field populated.
• CAB Meetings are created in the domain of the user if the meeting is created manually without
an associated CAB definition.
• Meeting records are not supported if in a different domain from the associated definition.
• All other CAB records have their domain master set to the associated CAB Meeting record.
Domain separated tables
• CAB Definition [cab_definition]
• CAB Meeting [cab_meeting]
Domain tables (linked to domain of its associated cab_meeting)
• CAB Attendee [cab_attendee]
• CAB Agenda Item [cab_agenda_item]
• CAB Runtime State [cab_runtime_state]
Use cases

• A CAB manager creates a new CAB definition and generates 20 meetings while in the ACME
domain. The result: Both the definition and meetings are created within the ACME domain.
• A CAB manager creates an ad-hoc CAB meeting from the related list on the CAB definition
form. Result: The meeting is created in the domain of the CAB meeting.
• All other use cases behave in the same way as when domain separation is not enabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

472


<!-- page 473 -->
How domain separation works in Change Schedules (New feature)
• Change Schedule definitions encapsulate all the configuration options and related records
used to display a given Change Schedule.
• Records are created in the domain of the current user.
• Ancillary records are created in the domain of the Change Schedule definition.
Domain separated tables
• Change Schedule Definition [chg_soc_definition]
• Related Definition [chg_soc_definition_child]
• Style Rule [chg_soc_definition_style_rule]
• Style Rule [chg_soc_style_rule]
• Style Rule [chg_soc_def_child_style_rule]
Use cases
An ITIL user in the ACME domain logs in and navigates to the Change Schedule landing page.
The user can view the Change Schedules in both their current or global domain.
Related topics
Domain separation for service providers

Tutorial: add a new change management state
This tutorial provides an example of adding a new state to the existing state model.

Before you begin

Role required: script_include_admin, ui_policy_admin, ui_action_admin, or admin

About this task

Consider the following scenario:
Based on your organization's requirements, you must add a new state, Complete, between the
existing Implement and Review states. You must also add the ability to decide if the Review
state is needed.
Perform the following steps:

Procedure
Open the Change Request form.
Create a new choice
Create a new choice for the change request state.

Before you begin

Role required: admin

Procedure
1. Open the Change Request form.
2. Right-click the State field label and select Configure Choices.
The Configuring State Choices slushbucket opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

473


<!-- page 474 -->
3. Enter the following information and click Add.

Field

Description

New item text

Enter Complete.

Numeric value

Enter -6.

Apply to table

Set to Change Request

The new state appears in the Selected slushbucket on the form.
4. Use the up and down arrows to move the new state between Implement and Review states.

5. Click Save.
The new choice is created and the Change Request form reopens.
Create a custom field
Create a custom choice field to indicate whether a change request must go through the Review
state.

Before you begin

Role required: admin

Procedure
1. Open the Change Request form.
2. Complete the following steps to create a new field on the Change Request form.
a. Open the form context menu and select Configure > Form Layout.
b. Enter the following values in the Create new field section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

474


<!-- page 475 -->
Field

Value

Name

Needs Review

Type

Choice

c. Click Add to add the new field to the slushbucket.
The new field appears at the bottom of the Selected slushbucket.
a. Use the up and down arrows next to the slushbucket to move the new field next to the
Assigned to field.

b. Click Save.
The Change Request form reopens with the Needs review field below the Assigned to field.
3. Complete the following steps to configure the choices for the Needs review field.
a. Right-click the Needs review field label and select Configure choices.
b. In the Enter new item field, add Yes and No choices and click Add.
The choices appear in the Selected list.
c. Click Save.
The Change Request form reopens. The Needs review choice list contains theYes and No
choices.
4. Optional: If the value in the Needs review field is Yes, No, or blank, configure the default by
completing the following steps.
a. Right-click the Needs review field label and select Configure Dictionary.
b. In the Choice List Specification section, select Dropdown with – None –as the default
Choice.
c. Click Update.
The Change Request form reopens. The Needs review field displays –- None --.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

475


<!-- page 476 -->
Add a UI policy
Add a UI policy to display the Needs review field for Normal change requests when it reaches
the Complete state.

Before you begin

Role required: admin

Procedure
1. Open the Change Request form.
2. Open the form context menu and select Configure > UI Policies.
3. Click New.
4. Enter the following values on the UI Policy form.

Field

Value

Table

Change Request

Short description

Show “Needs review” field

Conditions

[Type] [is] [Normal]
[State] [is one of] [Review, Complete, Closed]

5. Open the form context menu and select Save to create the UI Policy record and stay on the
form.
The UI Policy Actions related list appears.
6. Click New in the UI Policy Actions related list.
7. Enter the following values.

Field

Value

Field name

Needs review

Mandatory

True

Visible

True

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

476


<!-- page 477 -->
8. Click Submit to create the UI Policy action and return to the UI Policy form.

Create an ACL
Create an access control rule (ACL) to prevent the Needs review field from being modified after it
has been set.

Before you begin

Role required: admin with elevated security

About this task

The newly created UI Policy makes the Needs review field mandatory when a change request
reaches the Complete state.
The subsequent configuration of the state model ensures that a value is required in the Needs
review field before the change request can be saved in the Complete state. To prevent the
Needs review value from being changed after it has been set, create a new access control level
record (ACL) to make the field read-only.

Procedure
1. Open the Change Request form.
2. Open the form context menu and select Configure > Security Rules.
3. Elevate your security role in the user menu that opens when you click your name in the header.
Only administrators with elevated security roles can add ACLs.
4. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

477


<!-- page 478 -->
5. Enter the following values.

Field

Value

Type

Record

Operation

Write

Name (first part)

Change Request

Name (second part)

Needs review

Condition

[State] [is] [Implement]

6. Click Submit.
Update the state handler script include
Update the ChangeRequestStateHandler script include with the new Complete state.

Before you begin

Role required: admin

About this task
The ChangeRequestStateHandler script include defines the states available for the
Change Request state model.

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Open the ChangeRequestStateHandler script include and modify the script as follows.
a. Add the following line to the top of the script in the Constants section:
ChangeRequestStateHandler.COMPLETE = "complete";

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

478


<!-- page 479 -->
b. Add the following line as the last line of the function in the Initialize function:
this.STATE_NAMES["-6"] = ChangeRequestStateHandler.COMPLETE;

3. Click Update.
Update the state model script include
Update the ChangeRequestStateModel_normal script include to add new functions for
the Complete state.

Before you begin

Role required: admin

About this task
You update the ChangeRequestStateModel_normal with the following configuration.
• Add new canMove and moving functions for the Complete state. These functions can return
a value of true since there are no special conditions for or extra actions to perform when
moving to the Complete state.
• Modify the definition of the existing object for the Implement state to ensure that the next state
is Complete.
• Add an object for the Complete state, which defines Review and Closed as the next two
states.

Note: The canMove functions for the transition to these states from Complete checks
the Needs review custom field to determine the correct next state.

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Open the ChangeRequestStateModel_normal script include and modify the script as
follows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

479


<!-- page 480 -->
a. Add the following line at the end of the script include but before the line that starts with type:
toComplete_moving: function() {
return true;
},
toComplete_canMove: function() {
return true;
},

b. Modify the existing implement object to toComplete:
implement: {
nextState: [ "complete" ],
complete: {
moving: function() {
return this.toComplete_moving();
},
canMove: function() {
return this.toComplete_canMove();
}
},
canceled: {
moving: function() {
return this.toCanceled_moving();
},
canMove: function() {
return this.toCanceled_canMove();
}
}
},
3. Add the following new state object for complete.
complete: {
nextState : [ "review", "closed" ],
review : {
moving : function() {
return this.toReview_moving();
},
canMove : function() {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

480


<!-- page 481 -->
if
(this._gr.getValue("u_needs_review") == "Yes")
return true;
return false;
}
},
closed : {
moving : function() {
return this.toClosed_moving();
},
canMove : function() {
if
(this._gr.getValue("u_needs_review") == "No")
return true;
return false;
}
},
canceled : {
moving : function() {
return this.toCanceled_moving();
},
canMove : function() {
return this.toCanceled_canMove();
}
}
},
4. Click Update.
Create a UI action
Create a UI action to display a button on a change request for the Complete state.

Before you begin

Role required: admin

About this task

The UI action must contain a condition that uses the state model script include to decide when
the Complete button is displayed on the Change Request form. In this case, the Complete
button is displayed only when the change has reached the Implement state.

Procedure
1. Open the Change Request form.
2. Open the form context menu and select Configure > UI Actions.
3. Locate and open the existing Implement UI action.
4. Open the form context menu and click Insert and Stay to create a duplicate record.
5. Modify the following fields with new values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

481


<!-- page 482 -->
Field

Values

Name

Complete.

Action name

state_model_move_to_complete.

Hint

Progresses change to Complete state.

Onclick

moveToComplete();.

Condition

gs.hasRole('itil') && new
ChangeRequestStateHandler(current).isNext("complete")

Script

Update function, state name, and state value.
function moveToComplete(){
var ga = new
GlideAjax("ChangeRequestStat
eHandlerAjax");
ga.addParam("sysparm_name",
"getStateValue");
ga.addParam("sysparm_state_n
ame", "complete");
ga.getXMLAnswer(function(sta
teValue) {
g_form.setValue("state",
stateValue);
gsftSubmit(null,
g_form.getFormElement(),
"state_model_move_to_complet
e");
});
}
if (typeof window
== 'undefined')
setRedirect();
function
setRedirect() {
current.update();
action.setRedirectURL(curren
t);
}
.

6. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

482


<!-- page 483 -->
Create a process flow record
Create and add a process flow record for the Complete state. The process flow formatter
displays at the top of the Change Request form.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System UI > Process Flow.
2. Open the Normal Change – Implement state record.
3. Open the form context menu and click Insert and Stay to create a duplicate record.
4. Modify the following fields with new values.

Field

Values

Name

Normal Change – Complete State

Label

Complete

Order

550

Condition

[State] [is] [Complete]

5. Click Update.
Update the change request workflow
Update the change request workflow to reflect the addition of the Complete state.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

483


<!-- page 484 -->
About this task

The Change Request – Normal workflow for the Normal type change request must be updated to
progress the change request to Complete instead of Review.
In case of a change request of type Normal, in the Assess state, any user from the Assignment
group can approve the change request. When the value of Risk is Moderate or High, a CAB
approval is initiated in the Authorization state. In case the Risk is Low, an approval from the CAB
team is not required. Instead, the manager of the assignment group can approve the change
request.

Note: If the manager of the assignment group also happens to be the user who had

approved the change request in the Assess state, the Authorize state is skipped and the
state of the change request is set to Scheduled.
The functionality is available only for the new customers.

Procedure
1. Navigate to All > Workflow > Workflow Editor.
2. Select Change Request – Normal from the list of workflows.
3. Select the Checkout option from the Context menu to create a new version of this workflow.
4. Open the Set Values activity that transitions to the End activity and modify the following fields.

Field

Value

Name

Move to Complete

Set these values

State = Complete

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

484


<!-- page 485 -->
5. Click Update.
6. Open the Wait for conditions activity that transitions to the End activity and modify the
following fields.

Field

Value

Name

Change moves to Complete

Set these values

[State] [is] [Complete]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

485


<!-- page 486 -->
7. Click Update.
8. Open the Workflow Actions menu and click Publish.

Change flows
The Change Management Change flows provide a library of reusable actions and end-to-end
implementations of the Change models provided in the base system.
Starting with the Yokohama release, the new base system flows replace the existing workflows for
Change Management. However, you can continue to create custom workflows or use the existing
ones. To migrate your existing workflows to flows, check the new base system flows available in
Workflow Studio for guidance. For any new requirements, use flows.
®

You can use ServiceNow Workflow Studio to create, operate, and troubleshoot flows. Workflow
Studio is a single interface that provides:
• Natural language descriptions.
• Runtime information.
• Consolidated configuration.
The provided flows are read-only to ensure that they can be upgraded. To change the behavior
of these flows, make a copy of the read-only flow, and contact Support to deactivate the readonly flow. Deactivating the read-only flow ensures that the copied flow is the only version that is
triggered.
If you need to activate the change flows in the base system, you must contact the support to log
a case to activate the change flows.
By default, these Change flows are provided:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

486


<!-- page 487 -->
Default Change flows
Flow

Description

Change - Cloud Infrastructure - Authorize

Process cloud infrastructure changes for
approvals.

Change - Emergency - Authorize

Process an emergency change that is in
authorize state and is not on hold.

Change - Emergency - Implement

Process an emergency change that is in the
implement state.

Change - Emergency - Review

Process an emergency change in the review
state.

Change - Normal - Assess

Process a normal change that is in the assess
state and is not on hold.

Change - Normal - Authorize

Process a normal change that is in the
authorize state and is not on hold.

Change - Normal - Implement

Process a normal change that is in the
implement state.

Change - Standard

Process a standard change.

Change - Standard - Implement

Process a standard change that is in the
implement state.

Change - Standard - Proposal

Propose a new standard change template.
Handles approvals from draft to published
state.

Change - Unauthorized - Authorize

Process an unauthorized change for
approvals.

Change - Unauthorized - Review

Review an unauthorized change.

Change Management Workflow Studio actions
Use Workflow Studio actions as building blocks to handle the Change models and types. The
flow actions are available under the ITSM spoke in Workflow Studio.
Change Management flow actions
Action

Description

Apply Change Approval Policy

Controls the approval process for a change
request by creating user and group approvals
according to a change approval policy record.
Multiple actions can be used in a flow, where
each action references the same or different
Change approval policies.

Cancel Change Tasks from Flow

Cancels all related pending and open change
tasks that are created from a flow.

Check Change for User Approval

Checks if the specified user has already
approved the change request.

Disregard change approvals

Sets all related pending approvals to no longer
required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

487


<!-- page 488 -->
Change Management flow actions (continued)
Action

Evaluate Change Model

Description

Evaluates the Change Model associated with
this change request against the current state
of the Change Request.
Evaluating the change model evaluates all
applicable conditions, determines if the state
should be changed and changes it if one
matches.

ITSM Enhanced Security Features for Change Management
Help prevent unauthorized access to change-related tables using deny-unless ACLs. A denyunless authentication ACL restricts access for a non-authenticated user.
The enhanced security model implements deny-unless ACLs to restrict access for a nonauthenticated user, such as a public role user. Without access, the user can't perform any actions
on change-related tables, including reading, writing, deleting, or creating. This ensures that only
authorized or approved user roles can access the change tables. For more information on denyunless ACLs, see Deny-Unless ACL .
This model is applicable on the following change-related tables after installing the ITSM
Enhanced Security Features (com.snc.itsm.enhanced_security) plugin:

Table

Description

Change request

The change request table is extended from the
Task [task] table. It inherits all the fields, rules,
and policies from the Task table.

[change_request]
Change task
[change_task]

The change task table is a child of the task
[task] table and inherits all the change request
task details.

Note: For new or zboot instances, the ITSM Enhanced Security Features
(com.snc.itsm.enhanced_security) plugin is automatically installed.
The ITSM Enhanced Security Features (com.snc.itsm.enhanced_security) plugin can be installed
and activated by an admin via a support request. Existing or upgrade users must test and
evaluate the results in their non-production instance and then install the plugin and implement
the security change in their production instance. For more information, see Activate ITSM
Enhanced Security Features for Change Management.
Activate ITSM Enhanced Security Features for Change Management
Prevent unauthorized access to change-related tables using deny-unless ACLs by activating the
ITSM Enhanced Security Features (com.snc.itsm.enhanced_security) plugin.

Before you begin

Role required: admin

Note: An admin can install and activate this plugin via support request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

488


