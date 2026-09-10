# Zurich Strategic Portfolio Management — Program Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1536–1551 of 2289

Sections: Program Management (p1536)

---

<!-- page 1536 -->
5. Review cost and resource-related information in the Cost (Budget vs. Actual) and Resource
(Allocated vs. Actual) charts.
◦ View the comparison of actual costs from all selected projects in the portfolio with the
planned cost shown in the Cost (Budget vs. Actual) chart. The actual cost for projects is
derived from the expense lines.

Note: The Cost (Budget vs. Actual) graph is not available for multi-year type
planning.
◦ You can view only Capex or Opex or both by selecting the respective option from the list.
◦ Check how the allocated resources are being used by viewing the comparison of actual
resource time spent on all project tasks with the resource hours allocated to execute the
selected projects and demands in the portfolio shown in the Resource (Allocated vs.
Actual) chart. The actual time spent is taken from processed time cards for the projects.
6. Track the risks, issues, decisions, actions, and the project change requests across all selected
projects in the portfolio by going to the Risks, Issues, Decisions, Actions, and Changes tabs.

Portfolio Dashboard
Portfolio Dashboard provides a central location to a portfolio manager to generate different
graphical reports of the portfolios.
From Madrid release onward, the portfolio manager dashboard has been deprecated and
replaced with the PMO dashboard. Use the PMO dashboard to gain insights about your
portfolios. For more information, see PMO Dashboard.
Access the Portfolio Dashboard
View different graphical reports on the PMO Dashboard.

Before you begin

Role required: it_portfolio_manager

Procedure
Navigate to Project > Portfolios > Portfolio Dashboard.
The PMO Dashboard is displayed.

Program Management
A program helps you to logically group related projects or demands under a single entity. The
®
ServiceNow Program Management application helps you to manage related projects and
demands in coordinated way which is not possible when projects and demands are managed
independently.
The it_program_manager role is essential to be able to manage programs. The Program
Management application provides the following capabilities to the program manager:
• Create a program by adding related projects and demands.
• Create tasks specific to the program. These tasks are essential for completion of the program
but are outside the scope of projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
• Define key milestones, anticipated risks, and issues for the program.
• Monitor the progress and status and of all the projects and demand that are part of the
program. Program manager can track the costs, resources, and schedules.
When you create a program, consider:
• A program can be part of a portfolio or can be a generic standalone program that is not part of
any portfolio.
• A program cannot be part of multiple portfolios.
• A project or demand cannot be part of multiple programs.
• You can have projects and demands that can directly be part of a portfolio and not part of a
program.
The following diagram illustrates how you can implement programs.
Program implementation

Basics of Program Management
When you create a program, you can add multiple projects or demands to it. If you have created
cost plans for the projects and demands, certain values are rolled up from the cost breakdown
of program. At the same time, the risk and issues of the projects and demands are also included
with the program. The following diagram illustrates how information in the program is related to
the projects and demands that are part of the program.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
Information population in program

Project workbench provides graphical charts to view and monitor the progress of the program
and the projects and demands that are part of it. You can also view the progress of a program,
projects, and demands against a timeline with the details of milestones and key milestones.
The project manager dashboard provides a central location to a program manager to generate
different graphical reports of programs and the program financials.

Create a program to manage projects and demands
Create a program to manage related projects and demands. Define the duration, estimated cost,
benefits, and ROI to the organization.

Before you begin

Role required: it_program_manager

Procedure
1. Navigate to All > Project > Programs > Create New.
2. On the Program form, fill in the fields.
Program form
Field

Description

Program
Name

Name of the program.

Program
manager

Program manager assigned to the program.

Number

System-generated number with a configurable prefix.

Portfolio

Portfolio to which the program belongs.
If you do not select a portfolio for the program, the program becomes a global
program. You can associate the projects and demands in a global program with
any portfolio.

Priority

Priority associated with the program.

Status

Status of the program. This information rolls up from the status of all the projects
that are part of this program.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Field

Description

State

Current state of the program.
Default states: Pending, Open, Work in Progress, Closed Complete, Closed
Incomplete, Closed Skipped.

Note: Set the state of the program to Closed manually. The program
state does not roll up to a Closed state when program tasks, projects, and
demands move to Closed state.
Phase

Current phase of the program such as Initiating, Planning, and Executing.

Business
Unit

The business unit to which this program belongs.

Investment Investment type of the program.
Type
The default available options are Cost Reduction, End User Experience, Legal
and Regulatory, Revenue Generating, Service Sustaining, and Strategic
Enabler.
Impacted
Business
Units

Business units of the organization that this program affects.

Strategies

Strategic objectives of the organization that the program fulfills. A program can
fulfill multiple strategic objectives.

Note: Leave this field empty if the program does not fulfill any strategic
objective.
Goals

Goals associated to the selected strategy. A program can fulfill multiple goals.
If you do not select a strategy, then the Goals list displays all goals in the
system.

Note: Leave this field empty if there are no goals associated with the
program.
Description Detailed description of the program.
Dates section of the Program form
Field

Description

Planned start date

Intended program start date. If the start date
of associated program tasks, projects, and
demands is earlier than the program start
date, the start date is adjusted to an earlier
date.
Removal of a demand or project from the
program does not affect the planned start
date of the program.

Planned end date

Intended program end date. The end date
extends based on the end date of the
program tasks, projects, and demands.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
Field

Description

Removal of a demand or project from the
program does not impact the planned start
date of the program.
You can adjust the program end date
manually, based on the start and end date
of the associated program tasks, projects, or
demands.

Note: If a demand with end date later
than the program end date is added, the
Planned end date field becomes read
only.
Planned duration

Expected duration of this program. The
planned duration changes based on the
changes in planned start or end date of the
program.

Actual start date

Date on which the program actually starts.

Actual end date

Date on which the program actually ends.

Actual duration

Actual duration of the program from program
start to program closure.

Financials section of the Program form
Field

Description

Total planned cost

Estimated cost of the program.
If there is operational expenditure and capital
expenditure associated to the program,
then planned cost is sum of operational
expenditure and capital expenditure, which is
in functional currency.

Planned capital

Capital expenditure (Capex) for the program.
If there are no cost plans associated to
the program, the Capital expense field is
editable. Select a currency type and enter a
value.

Planned operating

Operational expenditure (Opex) for the
program. If there are no cost plans associated
to the program, the Operational expense
field is editable. Select a currency type and
enter a value.

Budget cost

Budgeted cost for this program.

Actual cost

Actual cost of the program.
The value rolls up from the cost plan
breakdowns from projects and demands in
the program.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
Field

Description

Planned benefit

Planned benefit value for the program.
This value rolls up from the benefit plan
breakdowns of the program.
You can also enter the value manually. Select
a currency from the Currency Type list and
enter a value.

Planned returns

Planned returns is based on the difference
between planned benefit and planned cost.

Planned ROI%

The result is derived from the values in the
Planned return and Planned cost fields.
The formula is: planned return / planned cost
x 100.

Score

The program score is based on the individual
scores of the following attributes: risk score,
value score, and size score, which in turn
are calculated based on risk, planning ROI%,
and estimated cost attributes (on a program)
respectively.

Note: You can configure the formula
for score calculation.
Risk

Risk associated with the program.

3. Click Submit.

What to do next

Use the following related links and lists:
Program form related links
Field

Description

PMO
Dashboard

Access the PMO dashboard to view comprehensive reports of the projects and
demands in the program.

Program
Budget

Allows you to allocate the budget to the program.

Program
Workbench

Access the Program workbench to view details of the projects, demands, and
program tasks associated with the program.

Status
Report

View the most recent program status report or create a new program status
report.

Program form related lists
Field

Description

Program Tasks

View the list of all associated program tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
Program form related lists (continued)
Field

Description

To create a new program task, click the New
button. For more information, see Create a
program task.
Projects

View the list of projects included in the
program.
To create a new project, click New. For more
information, see Define a project.
To add existing project to the program, click
Edit.

Demands

View the list of demands included in the
program.
To create a new demand, click New. For more
information, see Create a demand.
To add existing demand to the program, click
Edit.

Risks

View the list of risks associated with the
projects and demands of the program or the
program itself.
To create a new risk, click New.

Issues

View the list of issues associated with the
projects and demands of the program or the
program itself.
To create a new issue, click New.

Cost plans

View the list of all cost plans for projects and
demands that are part of the program.

Benefit Plans

View the list of all benefit plans for projects
and demands that are part of the program.

Program Budget

View the program budget according to fiscal
years. Click the amounts in the list to revise
them.

Program Status Reports

View the list of status reports for the program.
To generate a new status report, click New. For
more information, see Create a program status
report.

Create a program task
You can create program tasks from the Program form related lists.

Before you begin

Role required: it_program_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
About this task
Procedure
1. Navigate to Project > Programs > All.
2. Select the program from the list.
3. In the Program Tasks related list, click New.
4. Fill out the form fields (see table).
There are a few fields that are populated after the task is created.
5. Click Submit.

Result

The new task appears in the Program Task related list on the Program form.
Program Task form
Field

Description

Short
description

[Required] A brief description of the program task.

Number

A system generated number with a configurable prefix.

State

The current state of the program. The states include: Pending, Open, Work in
Progress, Closed Complete, Closed Incomplete, Closed Skipped.

Planned start The estimated date and time for the program task to start.
date
Planned end
date

The estimated date and time for the program task to end.

Planned
duration

The estimated length of time (from start time to end time) of the program task.

Assigned to

The user assigned to the program task.

Milestone

A milestone is a program task with a duration of zero (0). Use milestones to mark
key dates in your program, such as key decision points or approvals.

Key
milestone

You can define a milestone as a key milestone to track the program progress.
For example, you can create key milestone for completion of deliverables such
as a program plan. A key milestone is visible on the program timeline.

Description

A detailed description of the program task.

Additional
comments
(Customer
visible)

Enter information that you want the users to see.

Work notes

Enter work notes about the milestones, impediments, or changes as the
program progresses.

Note: Users with the business stakeholder role for PPM can view this
field. For more information, see Business stakeholder role for PPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


<!-- page 1544 -->
Fields populated and updated after the task is created
Field

Description

Actual
start
date

The date that this program started. This date is populated after you update the
program state to Work in Progress.

Actual
The date that this program ended. This date is populated after you update the
end date program state to Closed Complete.
Actual
The actual duration of the program from program start to program closure. As with
duration planned duration, the actual duration shows total program time.
Allocate budget to a program
Set the budget of a program according to the fiscal years.

Before you begin

Role required: it_portfolio_manager

Procedure
1. Open the program form.
2. In the related links, click Program Budget.
The Program Budget dialog box opens.
3. Select the year for which you want to set the budget for the program.
4. Enter the amounts for Capex Budget and Opex Budget.
The Total Budget is updated with the sum of capex and opex amounts.
5. Click OK.

Result

The program budget for the selected year appears in the Program Budget related list. You can
click the amounts in the list to revise them.
Create a program status report
Create a program status report periodically to view a status rollup of the projects in the program.
When you create a status report, the status for different aspects of the program is rolled up from
the project status reports of all projects.

Before you begin

Ensure that the Show on Program Status Report option in the Project form for all the projects
that you want to include in the status report is selected.
Role required: it_program_manager

Procedure
1. Navigate to Project > Programs > All.
2. In the program list, open a program record.
3. In the Program Status Reports related list, click New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1544


<!-- page 1545 -->
Note:
Changing the status for any aspect in the Program Status Report form also updates the
corresponding fields in the Program form.
Program Status Report form
Field

Description

Program

Name of the program.

Status Date Date until which you want to generate the status report.
Default value is the current date.
Number

System-generated ID number for the status report with a configurable prefix.

Read-only fields rolled up from the Program form
Field

Description

State

Current state of the program such as
Pending, Open, or Work in Progress.

Percent complete

Percentage of the program completed.

Planned start date

Planned start date of the program.

Planned end date

Planned end date of the program.

Actual start date

Actual start date of the program.

Actual end date

Actual end date of the program.

Planned cost

Estimated cost of the program.

Actual cost

Actual cost of the program.

Overall Status section of the Program Status Report form
Field

Description

Overall health

Overall health of the program rolled up from
the latest status report of each project in the
program. The status is indicated using red,
green, and yellow colors as the default.

Executive Summary

Brief summary and analysis of the program.

Comments

Comments about the overall status.

Last Week's Achievements

Description of key tasks completed or any
significant progress in the program in the last
week.

Key Activities planned

Next planned activities for the program.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1545


<!-- page 1546 -->
Schedule section of the Program Status Report form
Field

Description

Schedule

Status of the program schedule rolled up
from the latest project status report of each
project in the program. The status is indicated
using red, green, and yellow colors by default.

Comments on Schedule

Information related to the program schedule.

Cost section of the Program Status Report form
Field

Description

Cost

Status of the program cost rolled-up from the
latest project status report of each project
in the program. The status is indicated using
red, green, and yellow colors by default.

Comments on cost

Information related to the program cost.

Resources section of the Program Status Report form
Field

Description

Resources

Status of resources rolled-up from the latest
project status report of each project in the
program. The status is indicated using red,
green, and yellow colors by default.

Comments on Resources

Additional information related to program
resources.

Scope section of the Program Status Report form
Field

Description

Scope

Status of the program scope rolled up from
the latest project status report of each project
in the program. The status is indicated using
red, green, and yellow colors by default.

Comments on Scope

Information related to the program scope.

5. Optional: Select a different status color to override the rolled-up color for various aspects of
the program or select None if you do not want the status of an aspect to appear in the program
status report.
(Optional) Selecting None displays a grey X icon (
status report.

) for that program aspect on the program

The override color that you set is not retained from one report to next. When the next program
status report is generated, it takes the color from the associated projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1546


<!-- page 1547 -->
6. Click Submit.
7. Optional: Print a program status report by clicking the print icon (
Status Report tab.

) in the header of the

View program status reports
Program status reports provide the up-to-date at-a-glance progress of all the projects in the
program in several categories.

Before you begin

Role required: it_program_manager

About this task

Use the Program Status Report related list to view the program status reports created for the
program. If no report is listed, create a program status report.

Procedure
1. Navigate to Project > Programs > All.
2. In the program list, open a program record.
3. Click the Status Reports related link.
4. Select a status report from the top-left corner of the page to view its contents.
5. Review the program status in the report.
Program status report
Section

Description

Overview Provides general overview information about the program:
◦ Program Name: Name of the program.
◦ Program Manager: The program manager.
◦ Portfolio: The portfolio to which the program belongs.
◦ Business Unit: The business unit to which the program belongs.
◦ Investment Type: Investment type of the program.
◦ Impacted BU: Business units of the organization that this program affects.
◦ State: Current state of the program.
◦ Phase: Current phase of the program, for example, Initiating, Planning, and
Executing.
◦ % Complete: Percentage of the program completed.
◦ Planned Start Date: Planned start date of the program.
◦ Planned End Date: Planned end date of the program.
◦ Planned Cost: Estimated cost of the program.
◦ Actual Start Date: Actual start date of the program.
◦ Actual End Date: Actual end date of the program.
◦ Actual Cost: Actual cost of the program.
This information rolls up from the Program form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1547


<!-- page 1548 -->
Section

Description

Summary Information about the overall health of the program from the most recent status
entered by the program manager for the project.
◦ Executive Summary: Brief summary and analysis of the program.
◦ Last Week's Achievements: Progress of the program in the previous week.
◦ Key Activities Planned: Next planned activities for the program.
Current
Status

Status of program related to overall health, schedule, cost, resources, and scope
that is rolled up from the latest project status reports of all projects in the program.
If there are multiple project status reports for each of these projects, the values
from the latest project status report of each project are aggregated and rolled up
to the program status. For more information, see Program Status Report form.
Different colors indicate the status of above aspects. The rolled-up color for the
final status is in the order red, yellow, and green by default. If there are projects in
red, yellow, and green, then the program status is red. If there are projects only in
yellow and green, then the program status is yellow.
The following image illustrates the color codes for the program status rolled up

from the project.

Note: A grey X icon (

) for any program aspect means that the program
manager has excluded that aspect from the status report.
Project
KPI

Status of the Key Performance Indicators for overall health, schedule, cost,
resources, and scope for each project in the program. Only projects for which the
Show on Program Status Report option in the project form is selected are listed.
The value of these KPIs roll up and are shown in the Current Status section of the
program status report.

Note: A grey X icon (

) next to any project KPI means that the project
manager has excluded that aspect from the status report.

6. Optional: If you need a printed copy of the report, click the print icon (
Status Report tab.

) in the header of

Program workbench
The program workbench is a central location for viewing details of a program and the projects
and demands that are part of the program.
The program manager role can use the program workbench to view and monitor the progress of
the program and the projects and demands. Program workbench provides information for only
tracking the program.
You can track the progress of demands and projects, and monitor the status of cost, resource,
schedule, and scope for the selected fiscal period for the program.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1548


<!-- page 1549 -->
Note:
• Program workbench is based on Service Portal which means that you can configure,
customize, and extend it as per your requirements and organizational workflow. For more
information, see Service Portal
documentation.
• Program workbench does not support mobile device.
The program workbench comprises of the following components:
Fiscal period: A choice list on the top-right to select the fiscal year for which you monitor the
program.
Timeline View: Shows a list of all the selected demands and projects that are part of the
program, and a Gantt chart of all projects and demands over time.
You can:
• configure the colors of the program items in Gantt chart with Dashboard Configuration settings.
• select the zoom level in Gantt chart calender to Auto Fit. The Gantt view fits in one page to
view entire timeline in one go without using the scrollbar.
• review the external dependencies between projects in a program. For more information on
reviewing external dependencies, see Review external dependencies between projects in a
portfolio.
• click the show/hide icon (

) to show or hide columns.

Note:
• A demand is included in the timeline view only if the Expected Start and Due Date fields
are populated and if the demand is in qualified or approved state.
• Admin can customize which columns appear in the column filter list when the show/hide
columns icon (

) is clicked in the timeline view.

Project KPI: The tab displays the most recent status of project KPIs such as overall health,
schedule, cost, resources, and scope of all the projects in the program. This information is
populated from the most recent status report created for the projects.
You can:
• click the name of a project in the tab to open the latest status report created for the project.
• point to a status indicator for a project KPI to view the comments entered for the KPI for that
project.
Cost (Planned vs. Actual): The chart displays the actual costs from all projects in the program
compared to the approved budget. The actual cost for projects is derived from the expense lines.

Note: An expense line can be created manually for a project when a specific expense is
incurred. For example, if hardware is procured for a project, an expense line can be created
for the amount spent on procuring the hardware. If you receive an item using ServiceNow
Procurement, an expense line is created automatically. For resource hours, the expense
lines are created automatically when the time cards for the project are approved.
The display settings for the chart can be modified by selecting any of the following from the
choice list:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1549


<!-- page 1550 -->
• Capex: Displays the cost chart for capital expense only.
• Opex: Displays the cost chart for operating expense only.
• All: Displays the cost chart for both capital and operating expenses.
Resource (Allocated vs. Actual): The chart displays the actual resource time spent on all project
tasks versus the resource hours allocated to execute the projects and demands in the program.
The actual time spent is taken from processed time cards for the projects.
Program Workbench Example 1

Program Workbench Example 2

Access the program workbench
When you access the program workbench, it displays a list of all the programs.

Before you begin

Role required: it_program_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1550


<!-- page 1551 -->
About this task

You can access the program workbench in one of the following ways.

Procedure
1. Click the Program Workbench related link on the Program form.
2. Navigate to Project > Programs > Workbench and click the configuration icon (
) and select
the colors for projects, tasks, programs, and so on.
The workbench uses these colors to display the items in the program in the Gantt chart in
timeline view.

3. Click the program that you want to open.
The programs that are displayed in the workbench depend on how you launched the program
workbench.
◦ All programs are available in the workbench using the navigation menu option.
◦ Only the associated program displays using the program form.

Program Dashboard
The PMO dashboard provides a central location to a program manager to generate different
graphical reports.
From Madrid release onward, the program manager dashboard has been deprecated and
replaced with the PMO dashboard. Use the PMO dashboard to gain insights about your
programs. For more information, see PMO Dashboard.
Access the Program Dashboard
View different graphical reports for your programs on the PMO Dashboard.

Before you begin

Role required: it_program_manager

Procedure
Navigate to Projects > Programs > Program Dashboard.
The PMO Dashboard is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1551


