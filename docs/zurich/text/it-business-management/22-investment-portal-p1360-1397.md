# Zurich Strategic Portfolio Management — Investment Portal / Resource Management Workspace

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1360–1397 of 2289

Sections: Investment Portal (p1360); Resource Management Workspace (p1366)

---

<!-- page 1360 -->
• View and print the status reports available for a project.
• Create a status report.
• Save time when creating a status report by copying fields from existing status reports of the
project.

Procedure
1. Open the required project in project workspace.
2. Click the Status Report tab.
The most recent status report created for the project is displayed.
3. To create a status report, click Create new button in the top right.
4. To copy an existing status report:
a. Select a status report from the choice list that you want to copy.
b. Click Copy from the choice list next to Create new.
The option copies the selected status report including all fields into the new report.
c. Click Save.
5. Select a status report from the choice list to view the contents of a status report available for
the project.
The reports are listed in the choice list by their creation date.
6. To print a status report, click the print icon (

) in the top right.

Investment Portal
Completing projects and demands on time within budget is a challenge. Investment Portal gives
you a comprehensive view of project and demand financials, deadlines, and other important
metrics in an intuitive user interface that makes project and demand management more efficient.
Tracking and managing your investments (both projects and demands) and then creating
investment reports and sharing them through email is time consuming and inefficient. To
generate a report you must obtain the status of projects and demands from project and demand
managers, produce the report, and then email it.
With Investment Portal you can create an investment board through filter definition, and share
it with other stakeholders. You can save time on new investments by creating, cloning, or
modifying boards as needed. Filtering makes it easy to surface information on the fly and for
reporting.
Here are a few examples showing how Investment Portal can make managing and reporting more
efficient:
• If you are launching an application store, you can monitor overall program progress and
surface projects that are creating bottlenecks.
• For a new business application you can review and edit the investment roadmap for the next
few weeks, months, or years.
• For a key strategic initiative, you can review what was accomplished in the previous year and
plan for the next eighteen months.
Investment Portal is divided into the following sections:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
Banner icons
You can edit, copy, delete, bookmark, and share your investment board with other
members and groups using the banner icons on the header of Investment Portal.
See Track your key investments for more information.
Investment widgets
You can view important metrics like total cost, actual cost, and budget with
investment widgets that can be configured.

Key tabs
You can track important aspects of your projects and demands in one location using
the following tabs.
• Overview: A high-level summary of your projects and demands. The information
in the grid is based on the project and demand form fields.
• Timeline: Key milestones in a Gantt view. Gantt view provides an overview of
projects using graphical elements such as lines and bars to show dependencies
and lengths of tasks.
The Work Breakdown Structure (WBS) in the tab displays only milestones and key
milestones.
• Financials: A detailed breakdown of project and demand costs in yearly, monthly,
and quarterly formats, and based on cost plans associated to your projects and
demands.
The tab is displayed only to the user who has the it_project_manager role.

Note:
Investment Portal’s loading time directly depends on number of demands or projects and
their related entities like cost plans and breakdowns, that match with the defined query.
Typically, the board's performance is optimal with approximately 50 projects or demands,
with each project containing 10 to 15 cost plans.
The application doesn't restrict the number of records being fetched. So, users are
recommended to define the query in such a way that optimal number of records are fetched
to ensure that the performance is not affected.

View all your investment boards in one location
Display all your important investment boards in a single location using the My Investment views
page.
When you open the Investment Portal module, you start in the My Investments Views page where
you can:
• Create investment boards using filter conditions.
• View widgets on an investment board.
• Search for an investment board by the name or owner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
• View boards in different color bands based on the applied filter, such as portfolio or program.
For example, the green color band on the card, in the following screen shot, indicates that the
projects and demands are filtered by a portfolio.
• Drill down an investment board to review its projects and demands in terms of cost, schedule,
and scope.

Tabs
Access investment boards more quickly by using tabs.
• Recent: Recently accessed investment boards.
• Bookmarked: Bookmarked investment boards.
• Created by me: Investment boards you own.
• Shared to me: Investment boards that are shared with you.

Investment board
Key details of an investment board include:
• Row 1: Name, owner, and type of the board.
• Row 2: Some out-of-box investment metrics. The number of metrics displayed in this row is
fixed, but you can configure which metrics are displayed,
Example of an investment board

Related topics
Investment Portal

Create an investment board
View the projects and demands that are important to you by creating a personalized investment
board using filter criteria you define.

Before you begin

Role required: it_project_manager, it_project_user, or sn_ppm_finance_read

Procedure
1. Navigate to All > Project > Investment Portal.
2. On the My Investment Views page, select New.
3. In the Create new window, fill in the fields
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
For more information, see Investment board form.

Note: Using Tags as a filter criteria might not fetch all the required tabs to work on
investments.
4. Select Create to create the form.

Result

Once your investment board is created, it opens up in the Investment Portal page.
Note: By default, the investment board contains those widgets that have Include by
default check box selected. You can add or remove widgets from your investment board by
using Widget Configuration.
Related topics
Investment Portal

Track your key investments
Track and analyze the cost, schedule, and scope of your investments in one place using
Investment Portal.

Before you begin

Role required: it_project_manager or it_project_user

Procedure
1. Navigate to All > Project > Investment Portal.
2. From the My Investment Views page, create an investment report and navigate to Investment
Portal.
3. Use the following banner icons.
Icon

Description

Home

Return to the My Investment Views page.
Select another board to view its details on In­
vestment Portal.

Save

Save your board preferences.

Bookmark

Add the board to the Bookmarked tab on the
My Investment Views page.

Edit

Edit filter criteria of the board to further refine
your list. This option is available to you only if
you are the owner of the board.

Copy

Copy the filter criteria of the board to create
another investment board.

Delete

Delete the board if it is no longer needed.
This option is available to you only if you are
the owner of the board.

Users/Groups

Share your board with default preferences
and settings to other users or groups. This

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
Icon

Description

option is available only to the owner of the
board.
To share the board with other users:
a. Click the User list.
b. Click Add members.
To share the board with other groups:
a. Click the Groups list.
b. Click Add groups.

Note: When you share your board with
a group, the only people who can view it
are users with the roles it_project_user
or it_project_manager.
Configure widgets on the investment board.
You can:
◦ Show or hide widgets on the header.
Widget Configuration

◦ Select widgets from the list to display.
Click Save to save the widget configuration
on the board.

4. Perform the following actions in the Overview, Timeline, and Financials tabs.
Option

Action

To segre­
gate data Drag the column heading to this loca­
based on
a group- tion
level col­ both the Overview and Financials tabs.
umn

. This option is available in

To view
Right-click the name of the project and select View Project. This option is avail­
details of
able in the Overview tab only.
a project
To view
details
of a de­
mand

Right-click the name of the demand and select View Demand. This option is avail­
able in the Timeline tab only.

To view
details
of a cost
plan

Right-click the name of the cost plan and select View Cost Plan. This option is
available in the Financials tab only.

To view
Plan­
ning tab
on the

Right-click the name of the project and select View Planning Console. This op­
tion is available in the Timeline tab only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
Option

Action

Project
Work­
bench
To sort
records

Select the name of the column header. This option is available in both the
Overview and Financials tabs.

To pin or
apply fil­
ter on a
column

Use the Menu icon over the column. This option is available in both the Overview
and Financials tabs.

To view
details of
the grid
in a year­ Select theYear/Quarter/Month option, which is available in both the Timeline
ly, quar­
and Financials tabs.
terly, and
monthly
format
Select the Configuration

icon.

a. Select Add column.
b. In the Add column window, fill in the fields:
i. In Name, specify a name for the column.
To add a
column
in any
tab

ii. In Select Column Type, the Demand/Project value is selected by default.

Note: You have an option to choose between Cost Plan and De­

mand/Project in the Select Column Type field in the Financial tab.
iii. In Demand column, specify the column to be rendered from the Demand ta­
ble.
iv. In Project column, specify the column to be rendered from the Project table.
v. In Cost Plan, specify the value to be rendered. This option appears only in
the Financial tab.

a. Select the Configuration
icon.
To hide a
column b. Deselect the check box of the column to be hidden.
from any
Note: You can view a CSM column in an Investment Portal board, but you
tab
cannot add such columns in the board.
To reset
to the de­ a. Select the Configuration
fault grid
b. Select Reset to defaults.
layout

icon.

To gen­
erate an
excel re­

icon.

a. Select the Configuration
b. Select Export to excel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
Option

Action

port of
the in­
vestment
board
Related topics
Investment Portal

Configure your investment metrics as widgets
Configure investment metrics based on your business requirements. These metrics appear as
widgets on the Investment Portal page.

Before you begin

Role required: pps_admin

Procedure
1. Navigate to All > Project Administration > Investment Portal Widgets.
2. Select New.
3. On the form, fill in the fields.
For more information, see Portal board widget form.
4. Select Submit.
Related topics
Investment Portal

Resource Management Workspace
®

The ServiceNow Resource Management Workspace helps Resource Managers have a
centralized view of all work across all resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
Get started

Explore

Learn the key features and
business value of Resource
Management Workspace

Configure

Install the application,
dependent
applications or plugins

Use

Plan and allocate
resources across
planning items

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Resource Management Workspace
Learn about the features, functionalities, and business value that the Resource Management
Workspace provides.
This provides a centralized view of the resource allocation and requests. As a Resource manager,
you get a dedicated workspace to view the team's allocation and breakdown of the work
assigned to the resources.
Resource Management Workspace provides a centralized view of the resource allocations and
resource requests. This workspace eases resource management problems and is designed to
cover a wider set of use cases.

Features and benefits
Feature

Benefit

Persistent card view

Create focused view to view and work on
resource allocations.

Resource allocation view

Breakdown view of resource allocations at
weekly or monthly level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
Feature

Benefit

Allocate the unassigned work

Filter the unassigned tasks to view and
allocate the work.

Integration with Microsoft Teams

Effortlessly collaborate with the task owner for
additional insights.

Approve work for resources

Move the assigned work status to Approved,
Unapproved, or Pending to allocate the
prioritized work.

Iconography

Identify overallocated resources and reassign
to maintain allocations within the resource
bandwidth.

Heatmap modals

Breakdown view of the assigned work and
efforts.

Configure Resource Management Workspace
Configure Resource Management Workspace.
Install Resource Management Workspace
Install the Resource Management Workspace application from the ServiceNow Store.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Resource Management Workspace application using the filter criteria and search bar.
You can search for the application by its name or ID (sn_rm_ws). If you cannot find an
application, you may have to request it from ServiceNow store .
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
If your application requires other applications, install them first if they are not already installed.
Installing your application also automatically installs the dependent applications or plugins if
they are not installed already.
5. If you want to install demo data, select Load demo data.
Demo data includes sample records that describe application features for common use cases.
Load demo data when you first install the application on a development or test instance.

Note: If you don't install the demo data for a store application during installation, you
cannot request it later.
6. Click Install.

Result

The Resource Management Workspace application is installed in your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


<!-- page 1369 -->
Define custom statuses for resource assignments
Define and assign custom statuses for resource assignments to mark the assignments based on
your organization requirements.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the Label field and open the Resource Assignment
[sn_plng_att_core_resource_assignment] table.
3. Select the Show List Related Link.
4. Open any resource assignment from the list.
5. Right-click on the Resource status label and select Show Choice List.

6. Select a status field to open the record.
7. Enter the custom status label in the Label field and enter the value in the Value field.

Tip: Following the naming convention (capitals) displays a consistent format in the UI.
8. Right-click on the header and select Insert and stay.

Important: Selecting Save or Update overwrites the selected resource status in Step
4.

Use resource assignments
The Resource Management Workspace is presented as a new approach to assigning resources
to outcomes. Resource Management Workspace integrates with Project Workspace, Strategic
Planning, and Portfolio Planning enabling the portfolio stakeholders to create resource
assignments for their work.

Advantages and benefits of Resource Management Workspace
• Assigning resources to outcomes: facilitates the process of allocating people to achieve
specific outcomes for a task.
• Planning attributes: acts as a common currency between capacity planning, resource
assignments, and financials.
• Diversified handling: manage the inevitable changes to support your organization and priority
changes during your planning cycle.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
• Granular allocation: split or move an assignment to effectively handle the granular changes for
your work.
• Allocation spread: toggle between the monthly or weekly view of resource allocation which
caters to various planning and reporting needs.
• Grouping of assignments: group the resource board view using primary attributes such as
group, role, or skill to reassign any existing work to a different user.
• Enhanced insights: get a deeper, informative, and more insightful details into the allocation
details using the heatmap view.
• Better integration: prevent errors and ensure better practices by locking down resource
assignments with recorded actuals, preventing modifications or deletions to maintain historical
work data.
• Clear alerts: notify a stakeholder or a resource user using the alert icons which indicate any
over allocations or change in assignment status.
• Streamline communication: capture the required or additional information in the notes to
establish a seamless communication between resource manager and resource requester.
Using Resource Management Workspace
Create custom resource board views of persistent portfolios to view the current resource
allocation and resource requests for all of your resources and work.
Resource assignments from different planning workspaces are pulled into this dedicated view
for Resource Managers to give you an overall work view. Resource Managers can access the
dashboard to view the assignment details at high level and create resource cards to build
persistent portfolios and view the resource allocations.
Quickly create multiple portfolios using resource cards and navigate between these cards to
work on the resource requests. Use the advanced condition builder to customize these portfolios
based on the teams, attributes, groups, and so on, to view the resource allocation.

Tip: Save the filter query and the conditions that you build to revisit and work on the
resource allocations.

Overview dashboard
Resource Management Workspace overview dashboard provides a high-level interactive
resource assignment details that help Resource managers to focus on where to prioritize
the efforts, identify conflicts, and review the upcoming or pending assignments. Using this
dashboard, Resource managers can view the data around their resources and work for efficient
resource forecast planning.
The Overview dashboard is crafted to reduce the effort of navigate between different resource
boards to view the unassigned work, pend activities, and prioritize day-today tasks.

Note: When you navigate to Resource Management Workspace, the Overview dashboard
is the landing page. You can navigate to resource cards using the side navigation menu.
You can edit the dashboard based on:
• Primary attributes and date range selection.
• Add and edit widgets to the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
The interactive dashboard creates a resource board for any selected data helping you to
directly access the customized board view from the dashboard. For example, if you select the
Unassigned tasks widget, this creates and navigates you to a resource board view with the list of
unassigned tasks from the widget.
On the board view, you can get the drill down view of all the assigned assignments to the users.
The timeline range in the board view matches with the date range of the dashboard.
By accessing these custom boards, Resource managers can assign and approve the
assignments in reduced turn-around time, and enhancing productivity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
Dashboard widget details
Widget title

Description

Resources over allocated

Number of over-allocated users.

Resources under utilized

Number of users with available bandwidth.

Unassigned assignment requests

Number of unassigned tasks.

Pending resource requests

Total number of requests in Pending state.

Upcoming pending assignments

Number of assignments starting by next
month.
There are two views for this widget. A pie chart
and a list view.
Selecting Pie chart navigates you to the
resource board view.
Selecting the table values.
• Start date - opens resource assignment
record view.
• Resource - opens to resource details page.
• Task - opens project task details in record
view.
• Top task - opens the top task details in
record view.
Select View all to see the simple list view of
assignments.

Assignments ending soon

Number of assignments ending from current
date to next month.

Ready for review

Number of assignments that are in ready for
review state.

Overdue assignments

Number of assignments with past end dates.

Unapproved assignments

Number of unapproved assignments.

Utilization percentage

Average of the utilization % of the users based
on the selected primary attributes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


<!-- page 1373 -->
Dashboard widget details (continued)
Widget title

Description

Example: You can select a primary group
to view the average utilization % of the
entire group. This helps Project Managers to
better plan the resource requests. Resource
Managers can use this data while approving
the assignments.
Assignments status

Breakdown view of the resource assignments
based on the status.

Total efforts

Bar chart displaying the monthly breakdown
view of allocated hours vs capacity. Select the
chart to get the drill down view of the resource
allocations in the resource board.

Total resource work by type

Displays the allocated hours based on the task
type.
Example: Operation work, Project Task, and so
on.

Role allocation

Bar chart displaying monthly breakdown view
of the total number of allocated hours based
on the user roles. Select the chart to get the
drill down view of the resource allocations in
the resource board.

Resource board
Using this intuitive workspace, Resource Managers can:
• View the number of tasks assigned to a resource.
• Understand the type or state of the assignment, and track the changes made to assignments.

Indicator

Description

Indicates that the resource allocation is
within the available bandwidth.
Indicates that the resource is over allocated
for the available bandwidth.
Indicates the work assignment is made for a
group.
Indicates changes to start or end date,
allocated hours, and so on, to the approved
resource assignments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Indicator

Description

Note: When these changes are
made, the status of the assignment is
moved to pending, indicating resource
manager about the review required for
the changes made. Once the changes
are reviewed and the assignment is
either approved or unapproved, this
icon is no longer displayed.
• Understand of the status of the assigned tasks rolled up to resource level using the Resource
status column.
• View the primary attributes such as Group, Role, and Skill of each resource in the top tray.
These come in handy while working on reassigning a task to different user with the same
primary attributes.
• View the priority and state of the project, demand, or epic in the Priority and State columns in
the resource board and allocate resources to priority or high-risk planning items.
• View the actual hours vs allocated hours for a task.
Enable the Show actuals toggle (
) from the settings side panel ( ) to view
the efforts captured for a task via time cards. Approved time cards are reflected in the resource
board view as actual hours.
• Get insights about the resource allocations using the new heatmap modal.
• View or hide requested work in the lower tray using Unassigned tasks toggle.
• Filter unassigned work to view the custom requests.
• Edit the task effort for any group allocations and approve it in the top-tray using the inline
editing feature.

Note: If you edit the allocations for any approved group assignment, a confirmation
window appears. Once approved, the state is changed to Pending.
• Assign the unassigned tasks.
• Approve or unapprove the assigned tasks.
• Split a resource assignment into two for one resource at the required date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
Once you access these resource cards, you get a similar view as the following example with
extensive

insights.

Tip: You can filter out or add required columns in the top and bottom tray of the resource
board view using Column config (

) settings.

Personalize your resource board view
You can customize the resource board to personalize your view. These user preferences are
saved to give you the same view every time.
• View or hide unassigned tasks
Use the Unassigned tasks (
tasks in the bottom tray.

) toggle to view or hide the unassigned

The Unassigned tasks view, in the bottom tray, facilitates you to build a custom filter condition
to view unassigned requests with details such as duration, breakdown view of requested
efforts, requested work item and its parent item, owner or requester of the task. Use the filter
condition builder to get a custom or focused view of the unassigned tasks.

• Change effort type
Switch between Hours, FTE, or Person Days effort types to view resource allocations based on
the required effort type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
• Group By
Customize the view of your resource boards using the Group By feature to regroup the
resources depending on your organization needs. You can group by Primary Group, Primary
Role, Primary Skill, Owner, or Project.
• View or hide columns
Use the column config option (
the resource board.

) to view or hide any columns on the top tray or bottom tray of

Data grid filtering
Quick filters help you filter and build a personalized view to narrow down datasets instantly
without refreshing the page or running complex queries on your resource board. You can filter
lists, reference fields, strings, dates, and boolean values.

Resource allocations and heatmap view
The resource allocation view in the top tray provides you with a nested view of the assigned work
items rolling up to resource level and the resource allocation breakdown view based on the timeframe (weekly or monthly) and by work efforts (hours, FTE, or person days).
Select the arrow ( ) icon to get details at the individual task level (epics, demands, and so on)
assigned to the resources. This helps you to get a breakdown view to understand:
• Work assigned to a specific resource.
• The amount of time a resource is allocated to an individual task.

Tip: Switch between different efforts such as hours, FTE, or person days to view a
resource allocation heatmap based on the selected effort type.
You can edit the resource assignments using the inline editing feature in the top-tray.
The Resource status column helps you to easily identify any Pending (
work items assigned to a resource.

) or Unapproved (

)

Note: The status of the assigned work is rolled up to the resource level and the resource
card level. If there are any pending or unassigned work items in the top tray, the rolled up
status at resource level and card level shows Pending.
Define custom statuses to calculate and view resource capacity in the allocation heatmap modal.
Allocation heatmap modal gives you an overview of the resource utilization to identify the over
allocated and the available resources. The allocations are color-coded to display the availability
of the resources and help you to identify the availability of the resource for the filtered time frame.
The new heatmap modal gives you the following insights for a resource such as the assigned
tasks with their respective project owner, resource status, efforts for each task, total utilization
percentage for the approved tasks, and the remaining capacity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
Allocation heatmap breakdown

From the preceding example, you can see the breakdown of the approved work items along with
the rolled up efforts, Utilization percentage, and the Remaining capacity for the month of January
2025. The approved work is within the resource capacity as the remaining capacity is 120 hours.
A Resource manager can use these insights to decide and allocate the pending work items to
another resource with available effort.

Important: Resource efforts calculations are driven by the
com.snc.resource_management.exclude_status_from_capacity
property. Admin can configure this property to calculate efforts for certain defined resource
assignments only. For more information, see Resource Management properties.
Using the com.snc.resource_management.exclude_status_from_capacity
property, Resources managers can customize to view the resource assignments with a specific
state in their workspace and what to view in the total allocation modal. For example, you can view
resource assignments in either Approved, Unapproved, and Pending resource assignments, or
the ones in Approved and Pending states only.
Once the property is set up, work items in a specific states to show up in the full capacity and full
allocation rollup of a resource. The new allocation modal displays the allocation breakdown and
the rollup values of the work items for the configured states.
When you group a resource board using the Group by option, the heatmap allocation modal for a
group gives the following insights.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
For example, when you group a resource board by Primary Group to view the allocation heatmap
modal of a group for January 2025, the following modal is displayed. This modal gives insights
into the total overall allocation of different types of Resource statuses.

Note: The efforts in the allocation modal are displayed in Hours.
Group resources on resource board
The resource board provides a comprehensive list of resources, which are fetched depending on
various resource attribute types, projects, and work items. You can group these resources to gain
an accurate perspective on specific attributes, owner, or the parent items associated with the
projects. You can group the resources by Primary Group, Primary Role, Primary Skill, Owner of
the task, or Parent Item of the work.
If you group the resource board by Primary Group, you see the list of primary groups that the
resources are associated with and a drop-down of the list of resources in that group and the work
item they're working on. In this view, you also get the rolled up values of the efforts at resource
level and group level. The rolled up values can be viewed at a monthly or weekly breakdown.
Resource Managers can use this information to plan the resources and manage assignments.

Tip: Grouping the resources based on the primary attributes helps Resource Managers to
easily reassign the work as the primary attributes should match to reassign work. For more
information on how to reassign a work, see Reassign or unassign work using Resource
Management Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
Create a resource card
Create a custom resource card to view resources and unassigned tasks, and work on resource
mapping for your persistent and focused portfolios.

Before you begin

Role required: resource_user, resource_manager, it_project_manager

Procedure
1. Navigate to Workspaces > Resource Management Workspace.
2. Select the Resource cards icon (

) from the menu.

3. Select the New Resource Card button (

).

4. Enter the following details.
Field

Description

Unique name for the filter card.
Name

Name the resource card inline with the pur­
pose and filter condition to easily identify and
access your view.
◦ Resource - filter and view resources by
their primary planning attributes.

Filter by

◦ Work type - filter and view resources work­
ing on a demand, project, or an epic and
their respective details.

Start Date

Select the start date in the required date
range to view resources.

End Date

Select the end date in the required date
range to view resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
Field

Description

Description

Enter a description explaining your resource
card view.

By default, the date range is set to six months from today's date. Maximum date range is 3
years from the selected start date.
5. Select Next.
6. Create filter condition to view a custom set of resources.
The default condition is set to show all active users.

Tip: Save a filter condition using the Save filter option (

) and name the filter to easily
identify it later. Next time you create a resource card, you can select one of your saved
filters from the Use existing filter list and customize it further.
7. Select Confirm.

Note: You can edit the card details and filter condition using the edit icon (

) on the

resource board.

Result

A resource board view with the list of resources matching the filter condition with their work
allocations, projects they're working on, and the assignment status is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
What to do next

Enable the Unassigned tasks toggle and build a filter condition to view unassigned tasks in the
Unassigned tasks bottom tray.
For more information on how to filter and view unassigned work, and handle resource
assignments, see View, assign, and approve unassigned work using Resource Management
Workspace.
Create resource assignments and operation resource assignments in Resource Management
Workspace
Create and assign resource assignments and operation resource assignments from Resource
Management Workspace.

Before you begin

Role required: resource_user, resource_manager, It_project_manager

Procedure
1. Navigate to Workspaces > Resource Management Workspace.
2. Select the Resource cards icon (

) from the menu and open a resource card.

3. Create resource assignments using one of the following options.
Option

Procedure

a. Select New or select New Resource As­
signment from the more actions list.
Create a resource assignment

b. On the New Resource Assignment form, fill
in the fields.
For a description of the field names, see
New Resource Assignment form.
a. Select New operational Assignment from
the more actions list.

Create operational resource assignment

b. On the New Operational Assignment form,
fill in the fields.
For a description of the field names, see
New Operational Assignment form.

4. Select Submit.

Result

Resource assignment is created. You can filter and view this assignment in the lower tray of
Unassigned tasks.
If an assignment is made for a resource from the resource board and if it's within the selected
date range, the assignment shows up nested under the selected resource in real-time.
View, assign, and approve unassigned work using Resource Management Workspace
Filter the unassigned work to view priority requests and assign them to resources. Quickly
connect with the requester via Microsoft Teams to get additional insights and approve the
assigned work using the inline editing feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
About this task

The assign logic provides you with the flexibility and control for users when assigning work to
resources. It addresses the following goals:
• Efficiency: Quickly allocate unassigned tasks to available resources.
• Personalization: Enables users to configure how effort is distributed—either automatically or
manually.
• Transparency: Get a preview of the real-time breakdown of effort allocation before assigning
the work to resources.
• Flexibility: Manual distribution supports custom selection of resources, which helps Resource
managers manage work allocations based on the availability and remaining capacity of the
resources.
• Fairness: Distributes work equally among the resources maintaining a balanced work.

Before you begin
• Create an active employee definition
Resource Management Workspace.

for resources to view their allocation details on the

• Create a resource card.
• Role required: resource_user, resource_manager

Procedure
1. Navigate to Workspaces > Resource Management Workspace
2. Select the Resource cards icon (

) from the menu and open a resource card.

) to view the unassigned work
3. Enable the Unassigned tasks toggle (
requests in the lower tray.
Project Managers create resource requests based on the primary attributes (Group, Skill, or
Role).
4. In the bottom tray, select Filter (
what you want to see.

) to filter the unassigned work and get a custom view of

You can use the attributes such as resource groups, teams, roles, skills, projects, time frame,
and so on, to work with advanced filters.

Tip: Use the condition builder to build a filter and work on priority requests.
Example: This is a condition to filter the unassigned work requests created for a specific user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
5. Select Filter.
The unassigned work matching the filter condition is displayed in the Unassigned tasks tray.

6. In the Unassigned tasks tray, select the Row context menu for any task (
Work.

) and select Assign

7. You can assign work using one of the following ways.
Assign work choices

Auto Assign

Description

The system automatically identifies all re­
sources based on the selected primary attrib­
utes and distributes the work equally among
the resources.
In the Assign resources window, select As­
sign resources automatically from the As­
sign resources list.
Enables you to choose specific resources
and decide how much effort to allocate. There
are two suboptions which you can choose.
a. Select the required resources from the
Select resources list. You can assign efforts
using one of the following suboptions:

Manual Assign

i. Select the Distribute entire efforts equal­
ly option to distribute the entire request­
ed effort equally among the selected
users.
ii. Select the Distribute partial effort equal­
ly option and enter the required efforts in
the field.
b. Partial Effort Equally: Assign only the en­
tered efforts equally among the selected re­
sources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
Note: Remaining efforts after equally distributing the work among the users is retained
in the Unassigned tasks tray. Resource managers can again allocate these efforts.
8. Select the Preview button to see the real-time allocations before assigning the work.
9. Select the Assign button to assign work to the resources.
The assigned work is reflected in the top tray nested by resource view and will be in Pending
state (
).
10. Expand a resource row using the chevron icon (

) to view assigned tasks.

11. Double-click in the Resource status column and select Approve to confirm the assigned work
so the resource can start working.
While assigning the work, you can easily identify if a resource is available (
(

) or overutilized

), even for the future periods, using the iconography.

12. You can change the status of any assigned assignments using one of the following options.
Choice

Description

Approved

Approve the assigned work to confirm the
work.

Unapproved

Unapprove any efforts that don't required
work due to a change of business need or pri­
ority planning.

Pending

Move approved or unapproved tasks to pend­
ing to reprioritize the work requests.

13. Optional: You can select the owner's name to collaborate with them over Microsoft Teams to
get additional insights regarding the work.

Result

The assigned work items are Approved ( ) or Unapproved (
assignments is rolled up to the resource level.

) and the status of the work

Move a resource assignment
Move a resource assignment to a different start and end dates depending on the availability of
the resource.

Before you begin

Role required: resource_user, resource_manager

About this task
• The resource assignment dates honor the task dates. The start and end dates of the resource
assignments should be within the task start and end dates.
• When a resource assignment is moved beyond the task dates, the allocations outside the
dates are cleared.
• You cannot move a resource assignment if actual efforts are captured for the work.
Use the Show actuals toggle (
) from the settings (
efforts captured for an assignment via time cards.

) side panel to view the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
Procedure
1. Navigate to Workspace > Resource Management Workspace.
2. Select the Resource cards icon ( ) from the menu and open a resource card.
Alternatively, you can access a resource board by accessing a widget from the overview
dashboard.
3. Select the chevron icon (

) for drill down view of the tasks assigned to resources.

4. In the top tray, select the row context menu (

) for the required task and select Move.

5. In the move assignment modal, you can either enter or select the new start date using the date
picker modal from the New start date field.
6. Optional: Change the assignment status using the New status list.
7. Select Confirm.

Example: Moving a resource assignment
Let's consider a resource assignment for Website Overhaul task is assigned to Grace Lee. The
task duration is from August 01, 2025 to August 31, 2025. The assignment duration is from August
01, 2025 to August 20, 2025. Now, when you move the assignment start date to August 15, 2025;
the new assignment dates will honor the task dates and will auto-assign the work from August
15, 2025 to August 31, 2025. The remaining efforts of the resource are cleared and the cleared
capacity is shown as available.
Reassign or unassign work using Resource Management Workspace
Reassign or unassign any assigned work from the Resource Management Workspace. You can
group the resource board by primary attributes to identify the resources with same primary
attributes.

Before you begin
• When you reassign work, the primary attributes of both the resource should match. For more
information about mapping primary attributes to resources, see Map primary attributes to
resources.
• You can reassign a work item for the period for which actual hours are not captured.
• You cannot reassign a work item if it has associated actual hours captured for the entire
duration.
• You cannot unassign a work item if it has any associated actual hours captured.
• You cannot unassign an assignment if it has any associated actual hours captured.
• You cannot reassign or unassign group resource assignments.
Role required: resource_user, resource_manager

Procedure
1. Navigate to Workspace > Resource Management Workspace
2. Select the Resource cards icon (
3. Select the chevron icon (

) from the menu and open a resource card.

) to expand the resource view in the top tray.

4. To reassign any assigned work:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
a. Select the row context menu (

) for the required work item.

b. Select Reassign work.

Tip: Group the resource board by the primary attributes to drag and drop the resource
assignments to another resource to completely reassign work.
c. On the Reassign work window, enter the name of the resource in the User field to whom you
want to reassign the work and duration using the Start month and End month date picker.

5. Select Update.

Note: Use the reassign feature to assign a partial or fraction of a task among resources
without overlapping the assignment dates.
The selected work item will be reassigned to the selected resource.
6. To unassign any assigned work:
a. Select the row context menu (

) for the required work item.

b. Select Unassign work.
The selected work item will be moved to Unassigned task tray.

Result

The reassigned tasks are assigned to the selected resource and unassigned tasks are moved to
the Unassigned tasks tray.

Example: Reassigning work
Consider a development task spanning from January 1, 2024 to September 30, 2024 which is
assigned to Tom, a developer who has the following primary attributes.
• Primary Group - Development
• Primary Skill - Java
• Primary Role - Java Developer 1
Tom has actual hours captured from January 1, 2024 through March 31, 2024 and will be
unavailable for next 2 months.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
As a resource manager, you can either reassign this task in it's entirety starting from April 1, 2024
till September 30, 2024 to Raj, who has the same primary attributes. Or reassign the task from
April 1, 2024 to May 31, 2024 to Raj, leaving the rest of the assignment to Tom.
The actual hours captured by Tom are retained even though the task is reassigned. Raj can
capture the actuals hours for the assigned period after completing the work.

What to do next

You can allocate the unassigned work and approve the reassigned work. For more information,
see View, assign, and approve unassigned work using Resource Management Workspace.
Split resource assignments using Resource Management Workspace
Splitting a resource assignment at a specific date creates a resource assignment for the same
user.

Before you begin
• When you split a resource assignment, a new assignment is created from the selected date.
Both the assignments are assigned to the same user retaining the state of the assignment.
• When you split a resource assignment, a new assignment is created from the selected date.
Both the assignments are assigned to the same user with Approved state.
• If a resource assignment has actuals captured for a certain duration, you can split the work
only at the dates where there are no actuals captured.
• Role required: resource_user, resource_manager

Procedure
1. Navigate to Workspace > Resource Management Workspace.
2. Select the Resource cards icon (
3. Select the chevron icon (

) from the menu and open a resource card.

) to expand the resource view in the top tray.

4. In the top tray, select the row context menu ( ) for the required work item and select Split.
Split modal appears providing you with the insights related to the task such as name of the
task, name of the resource, start date, and end date.
5. On the Split modal, select a date to split the resource assignment using the date picker.
6. Select Split.

Result

The resource assignment is split at the selected date and a copy of the resource assignment with
new dates are displayed under the assignments of the selected resource.

Example: Split resource assignment
Consider a resource assignment named Implement GenAI in docs assigned to Abel
Tuter from July 16 through December 02. If you split the resource assignment at September 09,
there will be two resource assignments with the same name and state assigned to Abel Tuter.
One resource assignment ranges from July 16 to September 09, and the other assignment
ranges from September 10 to December 02.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
Here, you can see an overlap of efforts for Implement GenAI in docs in month of
September because the split is happening from September 10.
Manage resource allocations in Resource Management Workspace
Manage resource allocations to change efforts, start and end dates, extend and so on to adjust
resources based on their availability and the priority of the tasks.

Before you begin

Role required: resource_user

Procedure
1. Navigate to All > Workspaces > Resource Management Workspace.
2. Select the Resource cards icon (
3. Select the chevron icon (

) from the menu and open a resource card.

) to expand the resource view in the top tray.

4. Edit the following allocation details in the resource board drill-down view.
Choice

Description

Manage the Start date, End date, Task efforts,
and Resource status.

Manage the assigned task details using in­
line editing

Example: For a task which is assigned from
August to November, you can move the start
date to September, freeing up the alloca­
tions of that users for August. To adjust any
changes to the priority, you can change back
the Start date to August. Once changed, the
efforts for August will be empty and you can
enter the required efforts in the right grid us­
ing the inline editing feature.
Extend the duration of non-child assignments
to extend the resource allocation for the re­
quired duration.
a. In the top tray, select the row context menu

Extend a resource allocation

( ) of a non-child assignment and select
Extend.
b. In the Extend Assignment window, select
the new end date and the required efforts.
c. Select Extend.
Entered duration for the selected task and
time is allocated.

Effort type view

Use the inline editing feature to change the
effort for any assigned task. The edited val­
ues will honor the effort type selection in the
board view.
After adjusting the allocation efforts, you
can change the view to FTE, Person Days, or

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
Choice

Description

Hours. The changed allocation efforts will re­
flect the respective selected value.
View the group assignment details and their
statuses in the Group Assignment window to
manage the efforts and values. Select the as­
signed efforts value for any child task in the
top tray to view Group Assignment window.
Edit child assignments details in the Group
Assignment modal

In this window, you can view the Group, Task,
Parent item, Start date, End date, Resource
status, and the assigned users for this group
type assignment.
Using this window, you can directly change
the dates, effort value, and status to directly
approve the assigned work.

Export resource portfolio view to Excel or CSV format
Export your resource portfolio view in Resource Management Workspace as Microsoft Excel
or CSV format to review or share the resource status with stakeholders, even if they don't have
access to your instance.

Before you begin

Role required: resource_user, resource_manager, it_project_manager

Procedure
1. Navigate to Workspace > Resource Management Workspace and open a resource
card.
2. Select the More Actions menu (

) and select Export.

3. In the Export resource board window, select a required format from the File type list to export
the resource portfolio.
◦ Excel - Exports the resource portfolio in Microsoft Excel format.
◦ CSV - Exports the resource portfolio in CSV format.
4. Select the Export (

) button.

Result

The resource portfolio view is exported with export_file as the file name in the selected
format.
Manage resource assignments from Project Workspace
Optimize project execution by assigning resources to tasks within the Project Workspace. You
can create resource assignments for any project or project task, specifying the tasks to be
performed and the resources to be allocated. Use the Resource Management application to
allocate and manage your resources in the Project Workspace.

Resource assignments
Resource assignment is a process of allocating a resource or group of resources to a project
task. When a resource assignment is initiated, a resource plan is auto-generated in the back-end
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
of the project management system. This resource plan details the information of how resources
would be allocated throughout the project. Resource assignments are approved by the resource
manager to make sure that the allocation aligns with the overall resource strategy, considering
factors such as availability, skills, and project priorities. Resource assignments remain dynamic
and can be edited throughout the project life cycle. Resources can be assigned based on
defined attributes such as skills, expertise, or other criteria relevant to the project or task.

Note:
Resource efforts calculations are driven by the
com.snc.resource_management.exclude_status_from_capacity
property. Admin can configure this property to calculate efforts for certain defined resource
assignments only. For more information, see Resource Management properties.
Edit the child resource assignments directly using the inline editing from the resource
assignment pane.
Using Resource Management, you can create, plan, track, and monitor resource assignments
at a project or task level in the Project Workspace. With Resource Management in Project
Workspace, you can:
• Create an attribute-based resource assignment.
• Change the resource assignment dates, resources, efforts, and proposed allocations at any
level of the project.
• View resource allocations using new heatmap modal. The allocations are color-coded to
display the availability of the resources.
• View the primary attributes such as Group, Role, and Skill of each resource in the resource
assignment pane. They are useful when you work on reassigning a task to a different user with
the same primary attributes.
• Switch between Hours, FTE, or Person Days effort types to view resource allocations.

Important: Resource efforts calculations are driven by the
com.snc.resource_management.exclude_status_from_capacity
property. Admin can configure this property to calculate efforts for certain defined resource
assignments only. For more information, see Resource Management properties.

Key features
With resource assignments, you can:
• Determine the resource engagement timing and allocate resources for specified durations,
contributing to the creation of a timeline for task completion.
• Align task execution with the project plan, ensuring tasks are carried out in accordance with
specified timelines and resource requirements.
• Initiate an approval process that is conducted by a resource manager and make sure it aligns
with project targets and resource availability.

Key benefits
Using Resource Management, you can create, plan, track, and monitor resource assignments
at a project or task level in the Project Workspace. With Resource Management in Project
Workspace, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
• Create an attribute-based resource assignment.
• Change the resource assignment dates, resources, efforts, and proposed allocations at any
level of the project.
• View resource allocations using new heatmap modal. The allocations are color-coded to
display the availability of the resources.
• View the primary attributes such as Group, Role, and Skill of each resource in the resource
assignment pane. They are useful when you work on reassigning a task to a different user with
the same primary attributes.
• Switch between Hours, FTE, or Person Days effort types to view resource allocations.
Create resource assignments using Project Workspace
Create an attribute-based resource assignment in the Project Workspace application for any
project or project task.

Before you begin

After a resource assignment is created, resources are allocated to the project and approved by
the Resource Manager. You can edit the assignment throughout the project life cycle.
Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.

Note: If the sn_pw.enable_resource_planning property is set to true, then

the Resource assignment toggle button and resource assignment pane are displayed
in Project Workspace. The default value is false. You must have the pps_admin role to
enable this property.
3. From the Planning pane, double-click the Resource assignees field for a project task.
You can assign the resources from both planning and resource assignment pane.
4. From the resource assignee list, select a user or group and press Enter.
When you create a resource assignment, the user or group allocation is based on the selected
effort type. For example, when you add a user and the effort type is selected as hours, the
allocations are displayed in hours.
A resource assignment record is created and auto-saved. The resource assignment form autopopulates the project or task information.
5. Optional: From the resource assignment pane, create a resource assignment for a project or
task by selecting Add resource.
You can create a resource assignment for a project from the resource assignment pane only.
6. Select the expense type of the assignment based on the work as Opex or Capex.
A resource can use this information while capturing efforts using the time sheet portal. Once
the time sheet is approved, an expense line is created for the project capturing the expense as
capex or opex, based on the selected expense type.
7. View the resource allocations in the heatmap by enabling the Allocation heatmap toggle
button.
You can switch from the week view to the month view based on your requirement.

What to do next

Update a resource assignment from Project Workspace
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
Related topics
Delete a resource assignment from Project Workspace
Update the resource allocation in a heatmap
Realign resource assignment to project task
Update resource assignment using Project Workspace
Update a resource assignment that is associated with a project or project task.

Before you begin

Role required: it_project_manager
In resource assignments, any changes made to the status of group resource assignment roll
down to all associated child resource assignments status. Similarly, any changes made to the
status of child resource assignments automatically roll up to the corresponding group resource
assignment status.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.
3. On the resource assignment pane, double-click any cell to edit the entire row.
4. Edit the desired field, and select anywhere on the data grid to save the details.
The resource assignment is updated in the resource assignment pane.

Note: When a resource is added on an empty resource assignment, which has more
than one Full-time equivalent (FTE) effort, then an additional row is created automatically
and the resource assignment is auto-updated in both the rows.
Extend, edit, or delete the resource assignments using the row context menu in resource
assignment pane.
Delete a resource assignment using Project Workspace
Delete a resource assignment from Project Workspace. Deleting an assignment also deletes all
associated resource allocations.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Enable the Resource assignments toggle to view the resource assignment pane.
3. From the resource assignment pane, create a resource assignment for a project or task by
selecting Add resource.
Update resource assignments using Project Workspace
Use the allocation heatmap capability in Project Workspace to view and update the resource
allocation.

Before you begin

Role required: it_project_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
About this task

The Allocation heatmap toggle button provides a detailed breakdown of the allocation of an
individual resource. The allocation heatmap represents the total utilization of a resource for a
week or month. By default, allocation information is displayed for the week. This information
helps project managers to plan their resources effectively at the project or task level.
®

Integrate your ServiceNow instance with your organization's Microsoft Teams to enable
collaboration of your projects and resource allocations in Microsoft Teams. With the Microsoft
Teams integration, you can communicate with the project team members and share real-time
updates on the project and resource allocation status. For more information, see Setting up PPM
collaboration for Microsoft Teams.

Procedure
1. Create resource assignments using Project Workspace.
2. View the resource allocations in the heatmap by enabling the Allocation heatmap toggle
button.
You can switch from the week view to the month view based on your requirement.
3. Edit the desired field and select anywhere on the data grid to save the details.
Work allocation is based on capacity. The allocations are color-coded to display the availability
of the resources as shown here. These colors help to identify the availability of the resource for
a particular task.

4. Edit the resource allocation window by selecting the allocation hours cell.

Enable the Show actuals toggle to view the actuals of each resource. The actuals can't be
edited from Project Workspace.
5. From the resource allocation window, view and track the assigned Project, Owner,Task, and
Task effort of a resource.
The resource allocation is made according to the schedule of the resource, provided that the
resource has a schedule.
The Allocation heatmap modal provides the Resource status, Remaining capacity, and
Utilization columns to support resource managers in evaluating task efforts.
6. Send a direct message to the project owner on Microsoft Teams by selecting the Project
Owner field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
Note: The Project Owner field can only be selected if your ServiceNow® instance is
integrated with your organization's Microsoft Teams. Resource assignments on demands
are visible in the allocation window both before and after they become projects.
Related topics
Create resource assignments using Project Workspace
Realign resource assignment to project task using Project Workspace
Realign or synchronize the resource assignment dates with the project task dates. This
synchronization helps to schedule and align the resource assignments with the timeline of
project task.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Workspaces > Project Workspace and open a project.
2. From the project planning pane, double-click the Planned start date or Actual start date of a
project task.
3. Edit the field and select Ok.
4. From the project task row, select the row context menu and then select Realign assignments
to task.
Alternatively, use the Resources not synced icon
to synchronize the resource assignments
dates with the project dates at a project level. Realign assignments to task related link is
available to perform the same action while using forms.

Result

The resource assignments dates are synchronized with the project task dates.
Related topics
Resource assignments in Project Workspace
Project Workspace reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Resource Management Workspace references
Reference fields and form details for Resource Management Workspace.
New Resource Assignment form
Fill in the following fields to create a resource assignment using Resource Management
Workspace.
New Resource Assignment form
Field

Description

Assignment type

Select an assignment type from the list.
• User - to create a resource assignment for a
user.
• Group - to crate a resource assignment for a
group.

Resource

Name of the resource.
This field is disabled for Group assignment.

Group

Name of the group to create resource
assignment.
If a resource is selected, the primary group
name is populated by default.

Role

Primary role for the employee.
• If a resource is selected, the primary role is
populated by default.
• This field is disabled for Group assignment.

Skill

Primary skill of the resource.
• If a resource is selected, the primary role is
populated by default.
• This field is disabled for Group assignment.

Effort type

Select the effort type to request a resource.
• Hours - to request a resource or group by
hourly basis.
• FTE - to request a resource or group by FTE.
By default, one FTE is 8 hours.
• Person days - to request a resource or group
by Person days.

Effort

Enter the required effort count.

Name

Enter a custom name for resource assignment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
New Resource Assignment form (continued)
Field

Description

Task

Select the task from the list to associate the
resource assignment.

Start date

Select the start date of the assignment using
the calendar palette.

End date

Select the end date of the assignment using
the calendar palette.

Resource status

Select the state of the resource assignment.
• Pending
• Approved
• Unapproved
• Unassigned

Rate override

Select this option to override the resource rate
to match with your organization requirements.

Resource rate

Select the required currency and enter the
resource rate.

Ready for review

Select an option from the list so that the
resource manager can review the request for
allocation.
• Yes - if the resource assignment request is
finalized and ready for resource manager's
review for allocation.
• No - if the resource assignment details are
still being updated.

Notes

Enter details about the assignment to help
resource manager or project manager with
insights and additional information.

New Operational Assignment form
Fill in the following fields to create a operational assignment using Resource Management
Workspace.
New Operational Assignment form
Field

Description

Resource

Name of the resource.

Group

Name of the group to create resource
assignment.
If a resource is selected, the primary group
name is populated by default.

Role

Primary role for the employee.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
New Operational Assignment form (continued)
Field

Description

If a resource is selected, the primary role is
populated by default.
Skill

Primary skill of the resource.
If a resource is selected, the primary role is
populated by default.

Effort type

Select the effort type to request a resource.
• Hours - to request a resource on hourly
basis.
• % Capacity - to request a certain percentage
of capacity towards operational work.

Effort

Enter the required effort count.

Name

Enter a custom name for resource assignment.

Operational work type

Select the kind of operational work from the
list.
• KTLO
• Admin
• Meeting
• Training
• Out of office
• External labor
• Time off
• Appointment
• Phone call

Rate model

Select existing rate model to calculate planned
and actual resource costs.

Start date

Select the start date of the assignment using
the calendar palette.

End date

Select the end date of the assignment using
the calendar palette.

Resource status

Select the state of the resource assignment.
• Pending
• Approved
• Unapproved
• Unassigned

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


