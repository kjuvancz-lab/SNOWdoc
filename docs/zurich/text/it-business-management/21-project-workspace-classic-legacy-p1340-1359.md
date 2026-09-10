# Zurich Strategic Portfolio Management — Project workspace classic - Legacy

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1340–1359 of 2289

Sections: Project workspace classic - Legacy (p1340)

---

<!-- page 1340 -->
Resource assignment form (continued)
Field

Description

Note: If the resource assignment is for a user or group, then the
assignment is created in the Pending state.
If the assignment is attribute-based, then the assignment is created in the
Unassigned state.
Employee
Type

Type of employee. For example, internal or external resources.

Allocation
status

Status of the resource allocation. This field is automatically set to Allocated.

Task

Task to which the assignment applies. If the resource assignment was created
from a project task, the task number appears here.

Top task

Parent task for which the assignment is created.

Resource
allocation

Allocation number of the resource.

Assignment Type of resource assignment.
type
• Group
• User
Allocation
type

Type of allocation.
• Monthly
• Weekly
For example, if you select Monthly, the allocation hours are split evenly for the
month and if you select Weekly, the allocation hours are split evenly for the week.

Offset

Difference between actual or planned start date of project or task and resource
assignment start date.

Project workspace classic - Legacy
Define, plan, track, and monitor your projects from a single location. View status reports and KPIs
to take further actions for the project.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Projects in the My Projects Space page
The project workspace overview page — My Projects Space — displays projects as cards based
on filter criteria. A maximum of the 200 most recently updated projects appear on the page.
Clicking a card opens the project in the project workspace. You can configure the information
that is displayed on a card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
Project cards on the My Projects Space page

The components of the workspace are:

Banner icons
The following banner icons are available in project workspace:
Home
The home icon (
Space page.

) enables you to return to the list of project cards on My Projects

Project choice list
The choice list displays the projects that you can select to open in project
workspace. The projects in the choice list appear based on the filter criteria applied
in My Projects Space page.
Project checklist
The checklist icon ( ) helps you to build the checklist of activities that must be
completed in a project.

Tabs in the project workspace
The project workspace comprises of the following tabs described at a high level:
Analytics
The Analytics tab provides analytics on project aspects such as open risks, open
issues, and delayed milestones.
Details
The Details tab opens the project form and enables you to define important aspects
of the project.
Planning
The Planning tab opens the project in the planning console. The tab also enables
you to navigate to Project workbench and track your project in the workbench.
Resources
The Resources tab enables you to find resources, and create and manage the
resources plans for the project and project tasks. The tab is available only to a
project manager.
Financials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
The Financials tab displays breakdowns of cost components of a project: planned
cost, estimated returns, allocated budget, cost plans, and benefit plans. You can
create baselines and compare baselines from this tab to track changes occurring
during execution of project or demand.
Status Report
The Status Report tab displays the project status reports.
Project workspace example

Access the classic Project Workspace
Open the project workspace to display all your projects at a single location.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_user or it_project_manager

Procedure
1. Navigate to All > Project > Projects > Project Workspace to open My Projects Space page.
2. In the My Projects Space page, add filter criteria to display the required projects as cards.

Note: You can configure the information which is displayed on a card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1342


<!-- page 1343 -->
3. Click a project to open it in project workspace.
4. Click the required tab in project workspace to work in it.

Configure parameters displayed on project cards in classic Project Workspace
Configure the parameters that are displayed on a project card in My Projects Space page of
classic Project Workspace. A card shows the project summary so that project managers can
quickly gauge project status and health by looking at the card.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_pps_admin

About this task

The project workspace overview page My Projects Space displays the projects as cards based
on the filter criteria. The cards have a color band at the top. The color of the band is based on the
Status field in the respective project record. Each card further displays the following information
about the project in three rows:
• Row 1 displays project name, state, project manager name, and important project dates. The
displayed project dates are based on the current state of the project:
◦ If the project state is Pending or Open, planned start date and planned end date are
displayed.
◦ If the project state is Work in Progress, actual start date and planned end date are displayed.
◦ If the project state is Closed, actual start date and actual end date are displayed.
• Row 2 displays Status, Percent complete, and Phase columns from project [pm_project] table.
The number of displayed columns in this row is fixed to 3, but the columns to be displayed can
be configured in [pm_home_page_config] table.
• Row 3 displays the following project information based on the current state of the project.
◦ Open risks, open issues, actions, and overdue tasks of the project under Updates heading.
◦ Date and short description of the last missed milestone task under Last missed milestone
heading.
The parameters displayed are derived from the records in [pm_home_page_card] table. In
[pm_home_page_card] table, each project state is assigned some parameters to be displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1343


<!-- page 1344 -->
Project card example

You can configure the information which is displayed in row 2 and row3 on a card.

Procedure
1. Navigate to All > Project Administration > Project Workspace.
2. Select a table for which you want to change the card configuration, for example, select
Project[pm_project].
3. Set the display columns for row 2 of the card in PM Home Page Configuration
[pm_home_page_config] table.
a. Select the columns to be displayed in Column-1, Column-2, and Column-3 fields.
b. Click Update.
The selected columns appear in row 2 of the project cards.
4. Set the parameters for row 3 of the card in PM Home Page Card [pm_home_page_card] table.
In [pm_home_page_card] table, each project state is assigned the parameters that are
required to be displayed on a project card in third row.
a. Click New in PM Home Page Card related list.
b. On the form, fill in the fields.
PM Home Page Card form
Field

Description

Order

Position at which the parameter appears in row 3 of the card.

State

Project state for which the parameter needs to be added.

Value

Section to be displayed for the selected state in row 3 such as Updates and Last
missed milestone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1344


<!-- page 1345 -->
Field

Description

Content JSON field to add the parameters to be displayed under the selected section for
the selected state.
The following screenshot shows a JSON example of adding Risks, Issues, Actions, and
Overdue tasks parameters under Updates heading for Open state.
Example JSON for Row 3 configuration

c. Click Submit.

Note: Use the same steps to change a display parameter assigned to a state.
The parameter is added or updated for the selected state. It appears under selected section in
row 3 on the project cards for the state it was added.

View project analytics in classic Project Workspace
View the summary of a project in Analytics tab of classic Project Workspace.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_user

About this task

The Analytics tab is a PA dashboard which displays preconfigured widgets and reports to
track the progress on various aspects of a project such as open risks, actual cost, and delayed
milestones. The information in the reports is rolled up from the project form fields. For information
about various widgets and reports for different project types, see Project analytics widgets and
reports

Procedure
1. Open the required project in Project Workspace.
2. Click the Analytics tab to display its contents.
3. Review the displayed reports and take necessary actions, if required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
Project analytics widgets and reports
Widgets and reports that provide information for the project summary in the Analytics tab of the
project workspace for Agile, Waterfall, and Hybrid projects.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Project widgets and reports
Widgets and reports provide information that enables you to view and track the progress of your
Agile, Waterfall, and Hybrid project.

Note: You must have the Agile Development 2.0 plugin installed to view the widgets and
reports for your Agile and Hybrid projects.
Your system administrator can configure the widgets and reports in the dashboard to display
project information on the Analytics tab. The following dashboards are available:

Project Execution Type

Dashboard Displayed

Description

Hybrid

Project Summary – Hybrid

Contains reports and widgets
for hybrid projects.

Agile

Project Summary – Scrum

Contains reports and widgets
for agile projects.

Waterfall

Project Summary – Waterfall

Contains reports and widgets
for waterfall projects.

Note: This dashboard
was previously known
as Project Manager
Summary Dashboard.

The project execution type determines the dashboard displayed on the Analytics tab.
You can also embed a custom dashboard in the Analytics tab. Your system admin can
modify the PMViewDataUtils script include and configure the variable value for the
dashboards_tabs in the getDashboardUrl method. As a result, you can view the custom
dashboard in Project Analytics. For example:
var dashboards_tabs =
{
waterfall: {
dashboard_sysId:
'5d4959dd878003008b9b3a0548cb0bd0',
tab_sysId:
'1d99d5dd878003008b9b3a0548cb0bbd'
},
hybrid: {
dashboard_sysId:
'96dc46c78700330047d84c2c59cb0bf1',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
tab_sysId:
'520d4ac78700330047d84c2c59cb0bab'
},
agile: {
dashboard_sysId:
'f3dd4ec78700330047d84c2c59cb0b93&tab',
tab_sysId:
'52fd8ec78700330047d84c2c59cb0bae'
},
any_other_executionType: {
dashboard_sysId:
'custom_dashboard_sys_id',
tab_sysId:
'custom_dashboard_tab_sys_id'
},
};
The following widgets and reports for all project types are provided in the Analytics tab to help
the project manager analyze the project.
Widgets and reports for Agile project
Name

Description

Stories Missing Acceptance Criteria

Number of stories in the project without
acceptance criteria information.

Stories Missing Points

Number of stories in the project with the
Points field blank.

Stories Acceptance Overdue

Number of stories in the project that are not
in the Completed or Cancelled state after the
sprint end.

Team-wise Sprint Status

Track the sprint-wise status of various scrum
teams across the release. Click the team name
to view sprint details.

Stories by State

Donut chart showing the number of stories in
different stages of development such as Draft,
Ready, and WIP. Click the appropriate state to
view details of the stories.

Progress by Points

Track the progress of the project based on
points. You can group and stack stories based
on any combination of Epic, Assignment
group, and State.

Progress by Stories

Track the progress of the project based on the
number of stories. You can group and stack
stories based on Epic, Assignment group, and
state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


<!-- page 1348 -->
Widgets and reports for Waterfall and Hybrid project
Name

Description

Issues

Number of issues in the Pending, Open,
and Work In Progress states included in the
project.

Actions

Number of action items in the Pending, Open,
and Work In Progress states for the project.

Change Requests

Number of change requests in the Pending,
Open, and Work In Progress states for the
project.

Stories by State

Pie chart showing the number of stories in
different stages of development such as Draft,
Ready, and WIP. Click the appropriate state to
view the details for the stories.

Note: This widget is applicable for
Hybrid projects only.
Tasks by State

Donut chart showing the number of project
tasks in different stages of development such
as Pending, Open, Work In Progress, and
Closed Complete. Click the appropriate state
to view the task details.

Project Member Allocation Details (Hrs)

Stacked bar chart showing allocated and
actual hours of the resources assigned to the
project.

Project Member Allocation Details — Monthly
(Hrs)

Pivot chart showing the monthly allocated and
actual hours for the resources assigned to the
project.

Task Assignments

Track the state of various project tasks across
the release based on the assigned users or
group. Click the user or group name to view
the details of the assigned tasks.

Resource Plans by State

Donut chart showing the number of resource
plans grouped according to their current state.

Overdue Tasks and Milestones

List of overdue project tasks and milestones,
which are the tasks that satisfy either of
the following conditions in the Project Task
[pm_project_task] table:
• The value of the Planned start date is
before today's date and the State value is
Open or Pending.
• The value of the Shadow field is set to false.

Upcoming Tasks (next 2 weeks) with no
assignee

List of unassigned Open or Pending project
tasks that are planned to start 14 days from the
current date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
Common widgets
Name

Description

Phase

Current state of the project such as Initiating
or Planning.

Status

Color indicator that signifies the status of the
project.

Percent Complete

Percentage of the project that has been
completed.

Time Elapsed

Amount of time that has passed while working
on the project from the actual start date to the
planned end date.
If the project is in the Open or Pending state,
then the time elapsed is calculated based on
the Planned start date and the current date.

Risks

Number of risks in the Pending, Achieved, and
Not Achieved states concerning the project.

Cost Trend Analysis

Line graph showing a comparison between
the planned costs and actual costs on a
monthly basis.

Monetary Benefit Trend Analysis

Line graph showing a trend of planned
financial benefits on a monthly basis.

Non-monetary Benefit Plans

Breakdown of the number of non-monetary
benefit plans for active projects along with its
associated benefit plans.

Non-monetary Planned vs Actual Benefits

Comparison of total planned and actual nonfinancial benefits for active projects grouped
by fiscal period.

Confirmed vs Allocated vs Actual Hours

Comparison of total confirmed, allocated, and
actual hours for the project.

Time Cards — Pending Approval

Time cards for the selected project that are
submitted but not yet approved.

Time Card — Exception Report

List of users who did not submit their time
cards for the selected project, and time cards
that are not yet approved for the selected
project. The exception report is generated for
users who are assigned to a task in progress,
or hard-allocated to the project or task.

Define a project in classic Project Workspace
Define important aspects of the selected project such as duration, estimated cost, and the net
value to the organization in classic Project Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_user

About this task

The Details tab in project workspace displays the project form for the selected project.

Procedure
1. Open the required project in Project Workspace.
2. Click the Details tab to display the project form.
3. Edit the project record as required.

Plan a project using planning console in classic Project Workspace
Perform the project planning such as create project schedule, make resource assignments,
create baselines, and view critical path, using planning console in the classic Project Workspace.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_user or it_project_manager

About this task

The Planning tab in project workspace displays the selected project in planning console.

Procedure
1. Open the required project in project workspace.
2. Click the Planning tab to display the project in planning console.

Note: If project workbench is already open in Planning tab, click the Project
Workbench selection arrow on the banner and select Planning Console.

3. Plan the project using planning console features such as WBS hierarchy and Gantt chart.
You can also perform several tasks on the planning console that you can perform on lists and
forms, such as creating project tasks.

Track a project using project workbench in classic Project Workspace
As a project manager, track and manage a project in Project Workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_manager

About this task

You can use the Planning tab in project workspace to displays the selected project in project
workbench.

Procedure
1. Open the required project in project workspace.
2. Click the Planning tab.
3. To display the project in project workbench, click the Planning Console selection arrow on the
banner and select Project Workbench.
4. Track and manage all aspects of the project using project workbench.

Create and manage resource plans for a project in classic Project Workspace
As a resource requester, find the availability of the resources, and create and manage the
resource plans for the project and project tasks in the project workspace.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_manager

About this task

The Resources tab in project workspace shows the resource plans for the selected project in an
editable grid view. The tab consists of the following sections:
Resource grid
It is the top section on the page that enables you to:
• Create resource plans for the project or its tasks. You can create a resource plan
at a group, role, or user level.
• View and manage all the resource plans for the open project and its tasks in one
place.
• View resource allocations for each resource plan in a grid view.
Use the grid view in the tab to:
• Edit the planned and allocated hours inline without opening the record in a form.
• Group, hide, or show columns as per your requirement.
• Hide cancelled or completed resource plans.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
• Request, confirm, or allocate a resource plan.
• Move a resource plan and its allocations to a future date for a group, role, or user
resource plan.
• Replace a user with another user for a group, role, or user resource plan to
accommodate situations like a user taking leave during a project.
• Request extension of an allocated resource plan.
• Shift allocation of a user to a future date for a group or role resource plan.
• Identify the resource plans created with specific members preference by viewing
the Resource plan created with specific members icon (
plans.

) next to the resource

Resource Finder
The section is available at the bottom of the page. The section is hidden by default.
It can be made visible by clicking the resource finder icon (
the page. It enables you to:

) in the top right of

• Search the resources and view their availability. You can search the resources by
group, role, or user.
• Add resource plans for the searched resources to the project and its tasks.
• Search for resources and view their availability and utilization. You can search
resources by group, role, or user.
• Add or confirm resource plans for the current resources.
• Configure the Actuals column using Detailed View.
• Filter resources in the Resource Finder by available, overallocated, or all
resources.
• Identify resources that are created as specific members for a resource plan
by viewing the Member specified in the resource plan icon (
resources.

) next to the

• View the Resource Availability and Resource Capacity grids by clicking on a
capacity or availability column.
You can view the user and resource allocation details in a pop-up window by
selecting the User and Allocated Hours columns respectively in the Resource
Availability grid.
When you select a resource plan in the resource grid section, the availability details of that
resource are displayed in the resource finder section. For example, if a group resource plan
is selected, the availability details of the group and its members are displayed in the Finder
section. When you change the selection, the finder is automatically updated based on the
current selection.

Procedure
1. Open the required project in project workspace.
2. Click the Resources tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
◦ To create a resource plan, click New.
◦ To view the allocations in weekly or monthly format in the grid, click Week or Month button.
The selected option changes the grid view in both the resource grid and resource finder
sections.
The time duration in the grid is displayed based on the earliest start date of the project or
resource plans, and the last end date of the project or resource plans.
◦ To view the allocations in hours, FTE, or person days format in the grid, click Hours, FTE,
or Person Days option in the list. The selected option changes the grid view in both the
resource grid section and resource finder section.
◦ To search the resources and create a resource plan for them, click the resource finder icon (
).
◦ To show or hide certain columns from the grid view, click the configuration icon ( ). Hiding
or displaying an item column does not update the table. Grouped columns cannot be
hidden.
◦ To view the resource allocations at user level, expand a resource plan in the grid. The user
level allocations are listed only for Group and Role resource plans.
◦ To edit the planned and allocated hours inline in the grid, double-click a row. You can
update the planned hours for future period for resource plans in Requested, Confirmed, and
Allocated state.
◦ To view and update resource plan details in a form, click the information icon (
beginning of the resource plan row.

) in the

◦ To request a resource plan in the Actions column, click the actions icon (
Request.

) and select

◦ To delete a resource plan in the Actions column, click the actions icon (
Delete.

) and select

◦ To request all the resource plans created for the project in the Actions column, click the
actions icon ( ) in the project row and select Request All. The icon is enabled when at
least one of the listed resource plans for the project is in the Planning or Rejected state.

View forecasts and manage financial plans for a project in classic Project
Workspace
Use the Financials tab in Project Workspace to capture the costs and benefits of a project.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_manager

About this task

The Financials tab provides a detailed breakdown of the cost components of a project. The total
planned cost, budget cost, actual cost, and planned returns with their breakdowns are displayed
in the form of read-only cards, while the cost plans, benefit plans, and their breakdowns are
provided in an editable grid view. Using the grid view, you can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
• Group the plan level columns; configure, sort, expand, collapse, and freeze both the plan level
and breakdown columns.
• Inline edit the breakdown values of a cost plan or benefit plan without opening the plan in a
form. Inline edit is available only in the Monthly view.
• Create a cost plan and benefit plan for the project.

Procedure
1. Open the required project in project workspace.
2. Click the Financials tab.
3. To create a cost plan:
a. Select Cost Plans from the list.
b. Click New.
4. To create a monetary benefit plan:
a. Select Monetary Benefit Plans from the list.
b. Click New.
5. To view the project costs and financial breakdown summary of a project for the selected fiscal
year, select Overview from the list.
The Overview tab gives the financial summary for Planned Cost, Actual Cost, Variance
(Planned vs Actual cost), Estimate At Completion, and Estimate To Completion.

Note: If a project has a sub-project with a cost plan, the financials overview breakdown
view is not enabled by default. To enable this view, a user with the it_pps_admin role
should set the value of the com.snc.project.rollup.cost property to true.
◦ You can manage the financial summary view on the Overview tab.
a. Navigate to All > System Definitions > Script Includes.
b. Search for and select the PmOverviewTabConsts script.
c. Rearrange or remove the code from the Script and click Update.
You can drag the headers and drop them at the required position to rearrange the financial
summary columns on the Overview tab. This arrangement resets after the current session
ends or expires.
◦ The admin can configure the level at which the financials overview data is displayed for the
fiscal year in the Project related properties page by navigating to Project Administration
> Settings > Preferences - Project. If no value is specified, by default, the financials are
displayed at the quarterly breakdown.
6. Optional: Review additional fields, view plan details, or reorganize the comparative data on
the form.
◦ To create a baseline or compare the available baselines, click the baseline information icon
(

) and then select Create New Baseline or Compare Baselines option, respectively.

In the Financial Baseline comparison screen, the top two rows show all the values in either
functional currency or project currency. To display the values in project currency, click the
configuration icon (

) and toggle the Show Widgets in Project Currency view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
The Financial Baseline Details pane indicates the Functional Currency and the Project
Currency that has been selected.
The Financial Baseline grid shows the Functional cost, Cost in Project currency, Actuals, and
Actuals in Project Currency. You can view the Project currency at the grid level. This view is
helpful when there are cost plans of sub-projects that are in different project currency.
◦ To view a cost plan or benefit plan details on a form, click the information icon (
in the Name column of the grid.

) available

◦ To view a cost plan or benefit plan details in yearly, quarterly, or monthly format, click the
Year, Quarter or Month views respectively.
◦ To toggle viewing the widgets in the Financial Summary section, click the widgets icon (
and then select the Show Widgets option.

)

Select an individual widget name to display the widget. Clear the selection to hide the
widget.
The selected field preferences are saved and are available when you reopen the Financial
tab.
◦ To show or hide columns in the grid, click the configuration icon (
names.

) and select the field

You cannot hide the grouped columns. To reset to the default grid column layout, select the
Reset to defaults option.
◦ To view the project costs in project currency, click the configuration icon ( ) and select the
five widgets to show project currency amounts. The widgets are Total Planned Cost in Project
Currency, Budget Cost in Project Currency, Actual Cost in Project Currency, Planned Return
in Project Currency, and Benefit in Project Currency.
You can view both the functional and project currencies in the currency indicator.
In the Financial Summary grid view of the Cost Plans and Benefit Plans tabs, all items
related to project currencies are configured in the column heads such as Cost in project
currency, Project currency, and Total actual cost in project currency.
By default, you can view only the functional currency columns. To view the project currency
columns, click the configuration icon (
boxes in the item columns.

) and select the project currency column check

The aggregated amount in the Cost in project currency field is clear if there are cost plans of
sub-projects with different project currency.
Configure a widget for project financial metrics
Configure a widget to view and track the financial metrics of a project on the Financials tab of the
Project Workspace page.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
Before you begin

Role required: pps_admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. Click New.
3. On the form, fill in the fields.
Widget form
Field

Description

Name

Unique name for the widget.

Scripted

Option for indicating the value on the widget is from a code script.
By default, this option is selected and is read-only.

Show
Label

Option for displaying either the label or the color indicator.

Active

Option for indicating the status of the widget.

If you clear the check box, the Color field appears and you can set the color.

Only active widgets can be shown on the Financials tab of the Project
Workspace.
Parent
widget

Widget that is the parent of the current widget.
The current widget displays in the Child widgets related list of the selected
widget.
You can add a maximum of three child widgets for a parent widget.

Formatter
required
Script

Option for specifying whether a currency formatter is required for the widget.

Code script that returns a requested metric value that is displayed on the
widget.
In the script, use the context and filter objects. The context object contains all of
the project financial fields, such as capex_costs, opex_costs, and budget_cost.
The following sample script returns the Estimate At Completion metric value of a
project to appear on the widget.
var context = JSON.parse(context);
var filter = context.filters;
var now_GR = new GlideRecord('pm_project');
gr.addEncodedQuery(filter['pm_project']);
gr.query();
if(gr.next())

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
Field

Description

gr.getValue('forecast_cost');
Collapse
Short
Description of the widget.
description

What to do next

Associate the widget to the Project table.
Associate a widget to the Project table
After you configure a widget, associate it with the Project table to show the financial data of a
project.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

You should configure a widget before you can associate it with the Project [pm_project] table.
Role required: pps_admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. Open a widget to associate with the Project table.
3. In the Widget associations related list, click New.
4. On the form, fill in the fields.
Widget association form
Field

Description

Association Record to associate to the widget.
ID
To access the relevant records, you must select the Tables [sys_db_objects]
table in the Table name list and the Project [pm_project] table in the Document
list.
Association Table to associate to the widget.
table
You must select Table [sys_db_objects] from the list.
Widget

Unique name of the widget.

Order

Position of the widget in relation to other widgets in the Financials tab of the
Project Workspace.
Widgets appear in numeric order with the smallest number listed first.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
Field

Description

Display on
card

Option to display the widget in the Financials tab.

Include by
default

Option to show the widget by default in the Financials tab.

Request funds for a project in classic Project Workspace
Request funds for your project investment to work on project activities and meet the business
goals.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

You can request funds for your project if the following conditions are true:
• The Investment Funding (com.snc.investment_funding) plugin is activated.
• The funding entity for Project is available and is active.
Role required: it_project_manager

About this task

If you have added cost plans to your project, you can refer the total planned cost displayed on
the column header of each period to determine the amount to request.

Procedure
1. Navigate to All > Project > Projects > Project Workspace.
2. Click a project for which you want to review or manage funds.
3. On the Project Workspace, click the Financials tab.
4. Click the Funds tab.
The Funds list shows funding sources if you have previously requested funds from them for
your project.
5. Click the Add New Source link to select the funding source.
6. In the Select a Source pane, select one or more source investments from the list, and then
click Add Selected.
The specified funding source is added in the Request Funds grid.
7. In the Request Funds grid, specify the amount in the CapEx and OpEx columns under New/
Modify Request of the funding sources from which you want to request funds.
The state of all updated funding sources changes to Draft or Planning, which is indicated by
highlighted cells.
8. Click Request.
9. In the Confirm request dialog box, verify your requests and add a comment if required.
10. Click Request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


<!-- page 1359 -->
Enter actuals spent in a project in classic Project Workspace
Enter actual spends in your project to track the fund utilization.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_manager

About this task

When you spend funds allocated to your project to complete your project activities, record that
amount as actuals to review and track your project finances.

Note: The actuals in the project record, that is calculated from the expense lines, does not
reflect into the actuals of the Funds automatically. Since your actual spends might include
labor costs and other expenses, you should enter it manually against the corresponding
funding source in the Funds list.

Procedure
1. Navigate to All > Project > Projects > Project Workspace.
2. Click a project for which you want to review or manage funds.
3. On the Project Workspace, click the Financials tab.
4. Click the Funds tab.
5. In the Funds list, enter the actual amount spent in the project under the Actual CapEx and
Actual OpEx columns for the corresponding funding source.

Note: If you do not see the Actual CapEx and Actual OpEx columns in the list, select
them from the configuration icon (

).

Result

The entered amount is updated as actuals for the project.

View a project status report in classic Project Workspace
As a project manager, view the project status reports for a project using Status Report tab in
classic Project Workspace.

Important:
Classic Project Workspace is being prepared for future deprecation. It will be hidden and
no longer available for installation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use new
Project Workspace with enhanced UI to help you efficiently manage your projects.

Before you begin

Role required: it_project_manager

About this task

From the Status Report tab, you can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


