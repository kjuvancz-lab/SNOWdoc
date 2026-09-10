# Zurich Strategic Portfolio Management — Portfolio Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1480–1535 of 2289

Sections: Portfolio Management (p1480)

---

<!-- page 1480 -->
Diagnostics Scripts form fields (continued)
Field

Description

Description

Details of the diagnostic script. The
description enables the user to understand
the functions of the script.

Diagnostic script

The actual code for the diagnostic script.

Diagnostics form
Use the Diagnostic form to create a diagnostics scan and map diagnostic feature with diagnostic
and fix scripts.
Diagnostics form fields
Field

Description

Name

Name of the diagnostic scan. This name
appears in the application to which this
diagnostic scan belongs.

Active

Option for activating the diagnostic scan.

Order

The order in which this diagnostic scan
appears in the application.

Feature

Search for and select the diagnostic feature
with which you want to associate this
diagnostic scan.

Roles

Move desired roles to the Selected list. The
users with the selected roles can access the
diagnostic scan.

Description

Details of the diagnostic scan. The description
is displayed in the application to which the
diagnostic scan belongs. It enables the user to
understand the diagnostic scans.

Portfolio Management
®

With the ServiceNow Portfolio Management application, you can create portfolios which are
collections of related programs, projects, and demands. You can then perform financial planning
and monitor the status and progress of these portfolios.
Watch this four-minute video to learn about the portfolio structure, creating a portfolio and
program, setting up a stakeholder registry, and the portfolio workbench. Information about the
portfolio structure, creating a portfolio and program, setting up a stakeholder registry, and the
portfolio workbench.
You must have the it_portfolio_manager role to manage a portfolio. The Portfolio Management
application provides these capabilities to the portfolio manager:
• Create a portfolio by adding related programs, projects, and demands.
• Perform annual portfolio planning by selecting demands, projects, and programs.
• Track the progress and status of all the programs, projects, and demands that are part of the
portfolio. You can track the costs, resources, schedules, risks, and issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
The following diagram provides an overview of Portfolio Management.
Overview of Portfolio Management

Features
Portfolio Management also provides the following features:
Portfolio workbench
The portfolio workbench provides a central location to view and monitor the
progress of the program, the projects, and demands that are part of the portfolio.
You can also perform annual portfolio planning, create budget and forecast plans
for the portfolio.
Annual planning for the portfolio
The annual planning wizard is available in the portfolio workbench. The annual
planning process comprises these steps:
1. Determine the overall cost requirements for the portfolio and set the target.
2. Select the demands and projects for a fiscal year based on the budget target and
resource availability.
3. Create and promote a budget plan.
4. If required, re-promote the budget plan by performing a what-if analysis by adding
or removing projects and demands before the budget is finalized.
Budget forecasting of the portfolio
Using the portfolio workbench, the portfolio managers can re-estimate (forecast) the
portfolio budget for future periods based on the actual cost and changed project
requirements.
Tracking of the portfolio
Once the financial planning is complete, portfolio workbench allows you to track the
progress of a portfolio. This tracking includes the actual amount being spent against
the budget, actual hours spent, risks, and issues.
Portfolio Manager dashboard
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
The Portfolio Manager dashboard provides a central location to generate different
graphical reports of the portfolio and portfolio financials.

Scenario-based Portfolio Planning
Install the Scenario Planning for PPM application from ServiceNow Store to help the portfolio
managers do a scenario-based portfolio planning with different combinations of demands and
projects. You can Compare multiple scenarios in a portfolio and fund only those demands and
projects that add financial value to the organization.

Create a portfolio
Create a portfolio to manage related programs, projects, and demands.

Before you begin
• Create demands, programs, and projects to include as part of the portfolio.
• Role required: it_portfolio_manager or admin

Procedure
1. Navigate to All > Project > Portfolios > Create New.
You can also navigate to Project > Portfolios > Workbench, and click Create new.
2. Enter a unique Name that summarizes the programs, projects, and demands included in this
portfolio.
3. Enter a Description for the portfolio that adequately explains the various programs, projects,
and demands attached to it.
4. Enter the name of the Portfolio Manager.
5. Click Create Portfolio.

Result

The portfolio is created and the form reopens with additional fields, related links, and related
lists.

What to do next

Fill in the following related links and lists to complete the portfolio:
Portfolio form Related links
Field

Description

Demand
Link to open Demand Workbench.
Workbench
Portfolio
Target

Link to open the Portfolio Target dialog box for you to enter the CAPEX and OPEX
target for each fiscal year. This target amount is split equally among the fiscal
periods.
The portfolio target is included in the Portfolio Target related list.

Portfolio
Link to open Portfolio Workbench.
Workbench
Portfolio
Planning

Link to open Portfolio Planning Workbench for scenario planning. This related
link is available when Scenario Planning for PPM is installed in your instance. For
more information, see Scenario Planning for PPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
Portfolio form Related lists
Field

Description

Demands

List of demands that are part of the portfolio.
To create a demand, click New.
To add existing demands to the portfolio, click
Edit.

Projects

List of projects that are part of the portfolio. To
add existing projects to the portfolio, click Edit.

Programs

List of programs that are part of the portfolio.
To create a program, click New.
To add existing programs to the portfolio, click
Edit.

Risks

List of risks that are part of the portfolio. The
program, project, and demand risks are also
displayed in this list.
To create a risk, click New.

Issues

List of issues that are part of the portfolio. The
portfolio, program, project, and demand issues
are also included in this list.
To create an issue, click New.

Cost Plans

List of cost plans of projects and demands that
are part of the portfolio.

Monetary Benefit Plans

List of monetary benefit plans of projects and
demands that are part of the portfolio.
To create a monetary benefit plan, open the
project or demand record and click New in the
Monetary Benefit Plans related list.

Non-monetary Benefit Plans

List of non-monetary benefit plans of projects
and demands that are part of the portfolio.
To create a non-monetary benefit plan, open
the project or demand record and click New in
the Non-monetary Benefit Plans related list.

Portfolio Target

List of portfolio capital and operational
expense target for different fiscal years. The
values are displayed from the project_funding
table. Set these values in the Set Target stage
of the portfolio workbench. You can create
targets for different financial periods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
Portfolio form Related lists (continued)
Field

Description

Note: The PPS admin can also set the

portfolio target by navigating to Project
Administration > Enter Portfolio Target.
Planning & Budgeting

According to the fiscal years, lists projects and
demands that are part of the portfolio. You can
include or exclude a project or demand from
the portfolio budget plan.
When you select the project or demand in
the Select Project and Demands step of the
portfolio workbench and move to the next
stage, the Planned value changes to true.

Open a portfolio status list
Open the status list of a portfolio to see the projects that are included in it.

Before you begin

Role required: it_portfolio_manager

Procedure
1. Navigate to Project > Portfolios > All.
2. Open a portfolio.
3. Click the Portfolio Status related link.
The list of portfolio status records opens.
4. If necessary, you can select a different project associated with the current portfolio.

Legacy portfolio workbench
The portfolio workbench provides a central location for viewing a list of associated demands and
projects, planning a portfolio, and tracking its progress. Portfolio workbench is deprecated in
the Paris release. Portfolio workbench is still available on instances upgraded from a previous
release but is not available for new instances.

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.
You must have the it_portfolio_manager role to use the portfolio workbench for:
• Portfolio planning: Perform the planning of the portfolio. You can set the targets, select projects
and demands, and create a budget plan in the portfolio.
• Portfolio budget forecasting: As part of financial planning, re-estimate (forecast) the portfolio
budget for future periods based on the actual costs.
• Portfolio tracking: View and monitor the progress of the program and the projects and
demands that are part of the portfolio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
Note:
• Portfolio workbench is based on Service Portal which means that you can configure,
customize, and extend the workbench per your requirements and organizational
workflow. See the Service Portal
documentation for more information.
• Portfolio workbench does not support mobile devices.
In addition to the Portfolio Workbench, starting with New York, you can use the Portfolio Planning
Workbench do a scenario-based portfolio planning. This scenario-based planning enables you
to focus your investment budget and resources on demands and projects that best position your
organization.
Scenario Planning for PPM enables you to identify risks and uncertainties that might occur in the
future and create possible planning scenarios and pursue whichever scenario becomes a reality.
For example, you may have scenario A with all your chosen demands and projects, but you know
that there's a risk that might reduce your team's velocity. You can reduce the velocity in scenario
B and switch to it when the risk that you identified becomes a reality. For more information, see
Scenario Planning for PPM.
The portfolio workbench shows the following sections for an opened portfolio:
• The left section provides the following fields used to plan the portfolio:
◦ Fiscal Year: The list to select the fiscal year you want to perform the planning for.

Note: If there is no fiscal year in the list, generate a fiscal calendar

.

◦ Planning Steps: The steps involved in planning the portfolio.
▪ Shows the completed and the current planning step number.
▪ Checks off the completed planning step.
▪ Highlights the current planning step in the portfolio.
In the portfolio workbench example shown, the portfolio is in Step 2 (Select Demands and
Projects). It has completed through Step 1 (Set Target).
• The middle section shows a list of all the demands and projects that are part of the portfolio
and fall under the selected fiscal year. The green check mark shows the demands and projects
that have been selected for execution for the selected fiscal year.

Note:
◦ Click a demand or a project in this section to open the respective record. You can make
required changes to the project or demand form.
◦ A demand is included only if the Expected Start and Due Date fields are populated
and the demand is in the approved or qualified state.
• The lock in the upper-right section indicates that portfolio planning is not yet complete and
that the tracking action is not enabled. Once the financial planning is complete, the Track
Portfolioaction is enabled for portfolio manager to track the progress of the portfolio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
Portfolio workbench example

Access the legacy Portfolio workbench
When you access the portfolio workbench, the dashboard displays a list of all the portfolios.

Before you begin

Role required: it_portfolio_manager

Procedure
1. Access the portfolio workbench in one of these ways
◦ Click the Portfolio Workbench related link on the Portfolio form.
◦ Navigate to All > Project > Portfolios > Workbench
2. Click the configuration icon ( ) and select the colors for projects, tasks, portfolios, and so on.
The workbench uses these colors to display the items in the portfolio in the Gantt chart in
timeline view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
Dashboard configuration

3. Click the portfolio you want to open.
Legacy- Plan the portfolio
As a portfolio manager, you can perform financial planning for a portfolio for a fiscal year using
the portfolio workbench. Portfolio planning can be completed using either simple or advanced
mode.
The content in this topic is applicable for customers upgrading from a previous release to Zurich.
If you are a new customer, see Scenario Planning for PPM.
On the Portfolio form, you can set the Portfolio Planning field to Advanced or Simple.
Depending on your selection, the portfolio workbench is populated with the planning steps.
The following illustration provides a high-level overview of the planning process in advanced and
simple planning modes.
Planning for portfolio

Portfolio planning in simple mode
If the portfolio is in simple planning mode, you can perform simple financial planning for the
projects and demands in the portfolio. Follow these steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


<!-- page 1488 -->
1. Select the fiscal period and set targets.
2. Select projects and demands.
After you are finished with planning, track the portfolio performance, compare the planned
budgets against the actuals, and review risks and issues.

Portfolio planning in advanced mode
If the portfolio is in advanced planning mode, follow these steps:
1. Select the fiscal year and set targets.
2. Select projects and demands.
3. Create a budget plan.
4. Re-promote a budget plan, if required.
5. Create a forecast plan.
An example portfolio planning flow in advanced mode is shown:
Advanced portfolio planning example

After you are finished with planning, track the portfolio performance, compare the planned
budgets against the actuals, and review risks and issues.

Scenario Planning for PPM
Install the Scenario Planning for PPM application from ServiceNow Store to help the portfolio
managers do a scenario-based portfolio planning with different combinations of demands and
projects. You can Compare multiple scenarios in a portfolio and fund only those demands and
projects that add financial value to the organization.
Legacy- Planning view in portfolio workbench
View all the demands and projects scheduled for the selected fiscal year with their planned cost,
resource requirements, and priorities to finalize them for execution.
These sections are presented in the planning view in the portfolio workbench:

Demands and projects
The demands and projects are presented on two different tabs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
• Bubble Chart tab: Shows all qualified or approved demands planned for the selected fiscal
year. The demands are scored based on attributes such as planned cost, ROI%, and risk, and
are presented in bubble chart format.
The demands that are selected for execution are highlighted with a blue border (

).

The number of selected demands versus the total number of demands are displayed as a
counter in the top-right corner of the chart (

).

Note: The demands may have converted to projects and the projects are in the Work in
Progress state. These demands are not shown in the bubble chart. View these demands
as projects in the timeline view.

• Timeline View tab: Shows a list of all the demands and projects that are part of the portfolio. It
also shows a Gantt chart of all the projects, demands, and programs in the portfolio over time.
All demands selected for execution in the bubble chart are shown as selected in the timeline
view.
As a portfolio manager, you can perform the following actions:
◦ Configure the colors of the portfolio items in the Gantt chart with Dashboard Configuration
settings.
◦ Select the zoom level in the Gantt chart calender to Auto Fit. The Gantt view fits on one page
to view the entire timeline without using the scrollbar.
◦ Select or clear a demand or a project for execution by selecting the check box next to each
demand or project. The number of selected demands, the total number of demands, the
number of selected projects, and the total number of projects are displayed as respective
counters: (

) and (

).

◦ Review or revise the Capex and Opex budget for individual projects and demands directly
by using the Capex Budget and Opex Budget columns, if required.
◦ Review the external dependencies between projects in a portfolio.
◦ Rank demands and projects based on score, currency, numeric attributes, or manual
adjustment. Ranks help in prioritizing demands and projects for their approval and execution
within a portfolio.
By default, the Rank By Score list ranks demands and projects based on system-generated
scores. The list provides the following options:
▪ Rank By Visual Sort: If you want to rank projects and demands based on any currency
or number attribute, such as ROI%, priority, and planned cost, you must first sort by the
required attribute and perform this action to rank by that attribute.
▪ Adjust Rank: If there are gaps in ranks (for example, if some projects are moved to the
next fiscal year or are canceled), you can perform this action to rearrange the projects. For
example, if the ranks are 1, 2, 5, 8, this action adjusts the ranks as 1, 2, 3, and 4.
As a portfolio manager, you can also change a rank by editing the Rank field. When the rank
of a project or demand is changed, the other ranks are automatically adjusted. For example,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
if a number 2 ranked project is ranked as 4, the number 3 ranked project automatically
assumes rank 2, and the number 4 ranked project automatically assumes rank 3.

Note: Rank of an entity is specific to a fiscal year. A project can be ranked as number
3 in FY17, but can be ranked as number 6 in FY18.

Note:
◦ Key milestones appear as overlays on top of the project timeline.
◦ An administrator can customize which columns appear in the column filter list (
the timeline view.

) in

Charts
The charts presented represent different aspects of a portfolio to help you plan the portfolio:
• Cost (Planned vs. Target): Displays the planned costs versus the targets that you entered
in the Set Target step. Use this chart when you select projects and demands for portfolio
planning.
As you select a demand or a project, the cost bar starts filling up, representing the total
planned cost for all selected demands and projects. If the total planned cost of all selected
demands and projects is more than the target budget, then the exception icon (
with the total planned cost.

) is shown

In this widget, you can:
◦ Select a fiscal period in the choice list.
◦ View the planned cost only for Capex, or, Opex, or All.
• Resource Overview and % Utilization: Use these charts when you select projects and
demands for portfolio planning:
◦ Resource Overview tab: Shows the following items in the stacked bar chart. Point to any of
the sections on the bar chart to view its details.
▪ Capacity: The total capacity of all groups or resources requested by selected demands
and projects in the portfolio.
▪ Requested hours: The total number of hours requested by all selected demands and
projects of the portfolio. It does not include requested hours by demands or projects of
other portfolios.
▪ Confirmed hours: The number of hours confirmed across all portfolios for the groups
requested by selected demands and projects.
▪ Allocated hours: The number of hours allocated across all portfolios for the groups
requested by selected demands and projects.
You can modify the settings of the chart by selecting any of the following options:
▪ Hours: Displays the chart in relation to hours and fiscal periods.
▪ FTE: Displays the chart in terms of FTE and fiscal periods.
▪ Person Days: Displays the chart in relation to person days and fiscal periods.
Ideally, the total resource hours (for all quarters) must be less than or equal to the total
capacity of resources. If total hours are more than the capacity of the resources, then you
can either defer a few demands or projects or add more resources to increase the capacity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
Clicking a section of the bar chart that shows allocated, or confirmed, or requested opens
the associated resource plans.
◦ % Utilization tab: Shows the heat map for the percentage of utilization for all the resources
requested by the selected demands and projects in the portfolio. The percentage of
utilization for each resource group or role for a group is calculated as follows:
(Total requested hours by selected demands and projects of
current portfolio + Total confirmed and allocated hours for the
group by selected demands and projects across all portfolios)/
Group capacity
If the percentage of utilization of a group is more than 100%, the portfolio manager can drill
down to see requests for demands or projects. You can then exclude low priority demands or
projects to balance the utilization.
You can modify the display settings of the heat map by selecting either of the following
options:
▪ Group: Displays the heat map for the resource groups requested for the portfolio.
▪ Role: Displays the heat map for the resource roles requested for the portfolio.
Clicking any cell in the heat map drills down to the associated resource plans and shows
where the specific group is being requested. For example:
resource plan drill-down from heat map

UI actions
The following options are available at the top of the planning view in the portfolio workbench:
• Refresh icon ( ): Manually refreshes the cost and resource charts after a demand or a project
is selected or deselected for execution.
• Auto Refresh switch: Clicking the configuration icon (
) displays the Auto Refresh switch.
The switch enables the automatic refresh of cost and resource charts when a demand or a
project is selected or deselected for execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
Planning view example 1

Planning view example 2

Legacy- Select the fiscal year and set targets
The first step in both Simple and Advanced planning for a portfolio is to select the fiscal period
for the data that you want to work with. Next, set the target amounts for both operating and
capital expenses.

Before you begin

On the Portfolio form, set the Portfolio Planning field to Simple or Advanced for the portfolio.
Role required: it_portfolio_manager or it_pps_admin

About this task

Typically, the target amount is provided by the steering committee or the investment committee.
Based on the actual amount spent in the last fiscal year, the target for the planned fiscal year can
be 110% of the amount spent in the last year. The target is the starting point for planning projects
for the next fiscal year.
Note: The PPS admin can also set the portfolio target by navigating to Project
Administration > Enter Portfolio Target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


<!-- page 1493 -->
Procedure
1. Access the legacy Portfolio workbench and open the portfolio that you want to perform the
planning for.
2. In the Fiscal Year choice list, select the year that you want to perform the planning for.
You can perform financial planning for only one fiscal period at a time.
3. In Step 1: Set Target, click Set Target.
4. Enter the amounts for Capex Target and Opex Target.

Note: The budget target defined in the portfolio workbench can also be viewed in ITFM.
5. Click Save.

Result
• The budget target appears in step 1. You can click the target amount to revise the amount.
• The portfolio capital and operational expense target for different fiscal years are updated in the
Portfolio Target related list on the portfolio record.

What to do next

Legacy- Select demands and projects for portfolio planning.
Legacy- Select demands and projects for portfolio planning
After you select the fiscal period and set budget targets, select the demands and projects to
include in budget planning. You can view all the demands and projects lined up for the selected
fiscal year with their planned cost and priorities to finalize them for execution.

Before you begin

Role required: it_portfolio_manager

About this task

In this stage, you can perform a what-if analysis by including or excluding demands or projects
and their planned cost. The planned cost is derived from all the cost plans created for a project
or demand. It is the total of all the costs from all cost plans for a given project or demand in the
fiscal year.

Procedure
1. Click Select Demands and Projects under Step 2 in portfolio workbench.
2. In the planning view of portfolio workbench.
Option

Description

Right-click and select:
◦ View demand to open and view the de­
mand form.
In Bubble Chart

◦ Select for execution to include a demand
in portfolio planning.
◦ Remove to exclude a demand from portfo­
lio planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
Option

Description

In Timeline View

Use the check box next to each project or de­
mand in the list to include or exclude it from
planning.

3. Review these items in the planning view to select the demands and projects to be included or
excluded from planning:
◦ Use the Cost (Planned vs. Target) chart to see planned costs versus the targets that you
entered in the Set Target stage. If planned cost is more than the target cost, an exception
icon (

) appears with the planned cost.

◦ Use the Resource Overview chart to see how many resource hours are requested to
execute the selected demands and projects. Compare that to how many requested
resources have been confirmed/allocated across all portfolios.
◦ Use the % Utilization heat map for all requested resources by the selected demands and
projects in the portfolio.

Note: To bring the planned cost within target budget and resource utilization within
100%, the portfolio manager deselects a few low priority demands or projects. These
deselected demands and projects can be moved over to a different fiscal period.
4. Review or revise the capex and opex budget for individual projects and demands directly
using Capex Budget and Opex Budget columns, if required.
Click the filter icon (
they are not visible.

) in timeline view and add Capex Budget and Opex Budget columns if

5. Once you have finalized the demands and projects, click Confirm.
6. On the Confirm dialog box, you can select the two check boxes to perform additional actions
on the selected demands and projects.
Select the first check box either to only approve the selected demands or to convert them to
projects. The check box differs depending on whether the project property Create project(s)
on confirming demands from portfolio workbench is set to true or false:
◦ If the project property is true, then the check box is Convert all the selected demands to
projects and selecting it approved and converts the selected demands to projects.
◦ If the project property is false, then the check box is Approve all the selected demands to
projects and selecting it only approves the selected demands.
Select the second check box Confirm resources for selected projects and demands to
confirm the resources for selected demands and projects.
7. Click OK on the Confirm dialog box.

Result

Based on the check boxes selected on the Confirm dialog box, the following actions are
performed:
• Selected demands are either approved and converted to projects or only approved.
• The resources are confirmed for selected demands and projects. All associated resource
plans move from Requested state to Confirmed state.

What to do next

Legacy- Create and promote a budget plan if Portfolio Planning is set to Advanced.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
Legacy- Change planned start date of a demand or project through Portfolio Workbench
Balance the cost and resources by changing the start date of a demand or a project and shifting
it to a different fiscal period.

Before you begin

The demands and projects are open in the timeline view of portfolio workbench.
Role required: it_portfolio_manager

Procedure
1. Click Select Demands and Projects under Step 2 in portfolio workbench.
2. In the timeline view, click the filter icon (
visible.

), and add the Planned start date column if it is not

3. To change the planned start date of a demand, double-click the value under the Planned start
date column and pick a new date.
4. To change the planned start date of a project, perform the following actions.
a. Right-click the project and select the Edit option.
b. On the Project form, right-click the header bar and select the Move project option from the
context menu.
c. In the dialog box, pick a date, and click OK.

Result

Changing the date has the following effects on cost plans and resource plans:
• Cost plans: Cost plan dates are changed with respect to the change in project or demand
date. For example, if a demand is shifted by two months, all the associated cost plans are also
shifted by two months.
• Resource plans: The resource plan dates are changed regarding the change in project or
demand date. The changes in resource plan state are as follows:
◦ Allocated state resource plan: The effects on a resource plan in the Allocated state are:
▪ If the resource plan has a start date in the future, the resource plan is moved back to the
Requested state.
▪ If the resource plan has a start date in past, the resource plan is canceled. The hard
allocations for the past date are retained, and the future hard allocations are deleted. A
new resource plan with new dates is created in the Requested state.
◦ Confirmed state resource plan: The soft allocations are deleted and the plan moves to the
Requested state.
◦ Planning and Requested state resource plans: There is no change in resource plan state.

Note: The project property Change Resource Plan and Cost Plan Start Date with

Demand or Project Start Date Change controls the changes in cost and resource plans
with respect to the change in the start date of a demand or project.
Legacy- Review external dependencies between projects
Review the external dependencies between projects in a portfolio to track projects that are
dependant on each other more closely.

Before you begin

Role required: it_portfolio_manager
Open demands and projects in the timeline view of the portfolio planning workbench.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
About this task

As a portfolio manager, you may want to know the projects which are dependent on each other
so that these projects can be tracked more closely.
For example, project B is dependent on project A (external soft dependency) and you want to
make sure that project A is executed on time so that the schedule of project B is not affected. The
Dependencies column shows that there is an outgoing external dependency from project A and
an incoming external dependency to project B. You can the use the incoming dependency to
determine whether a delay in project A will affect project B.

Procedure
1. Click the show or hide columns in gantt icon ( ) in the timeline view and add the
Dependencies column if it is not visible.
The number of incoming and outgoing external dependencies are displayed, if any.
2. Click the external dependency in Dependencies column for the project.
3. In the Dependencies pop-up dialog, click a tab to review the dependency:
Inbound tab
Tasks that have an incoming dependency from a project are listed.
Outbound tab
Tasks with an outgoing dependency to the project are listed.
External dependencies between projects

4. Click the project number in a tab to open and review the linked project in the planning console
view.
Legacy- Create and promote a budget plan
As part of the PPM Standard (Project Portfolio Management) integration, you can create and
promote a budget plan for a portfolio.

Before you begin
• Role required: it_portfolio_manager
• The Portfolio Planning field for portfolio must be set to Advanced on the Portfolio form.
• The name of the portfolio manager must be set in Portfolio Manager field on Portfolio form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
• The budget period for the selected fiscal period must be open to create and promote a budget
plan for a portfolio.

Note: PPS admin can also open and close the budget period for a fiscal period from
Project Administration > Open/Close Budget Periods.

About this task

The budget plan includes costs from all selected projects and demands. The budget plan
summary is displayed on portfolio workbench and the details can be seen in Financial Planning.
In the advanced planning mode, the creation of a budget plan is mandatory to be able to track
the portfolio.

Procedure
1. Navigate to portfolio workbench and open the portfolio that you want to track.
2. Click Promote Budget Plan under Step 3: Budgeting.

Result
• The budget plan for the portfolio for the selected fiscal year is created and promoted. You can
re-promote the budget plan, if required.
• A budget task with the status Pending Approval is created when the portfolio manager
promotes the budget plan, the first time in the budgeting period. The status of the task is
visible in Portfolio Workbench.

What to do next
• View the status of the budget plan below the budget plan name under Step 3: Budgeting
in portfolio workbench. Click the Status link to view the budget task for the budget plan in
financial planning workbench. The finance reviews the portfolio budget plans in the Planning
Workbench and approves the plan.
• Legacy- Track the portfolio.
• Legacy- Create and promote a forecast plan.
• If the budget plan is finalized and no more changes are expected, the budget period must be
closed.
Related topics
Legacy portfolio workbench
Financial Management - Legacy
Legacy- Financial planning workbench
The financial planning workbench is a central location to manage budget tasks, review, and
approve the promoted plans. Financial planning workbench is deprecated in the Paris release.
Financial planning workbench is still available on instances upgraded from a previous release
but is not available for new instances.

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.
You must have the itfm_plan_analyst role to use the financial planning workbench.
Budget tasks help in streamlining the budget process. It helps finance to converse with budget
owners during the budgeting period.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
With the IT finance analyst role, you can use the workbench to:
• Generate budget task: Create a budget task for every budget owner.
• Publish the budget task: Publish the budget task for the budget owners to start their work on
the plan for the budget period.
• Track the progress of the plan: View and monitor the promoted plans for the budget period.
• Approve the plan: Approve the promoted plan by approving the task.

Note: The planning workbench replaces the budget console that was used in the Jakarta
release. Only the IT finance analyst can use the planning workbench and not the budget
owner.
The financial planning workbench details are as follows:
• The finance analyst can select the year and the budget plan definition. If budgeting period is
open and the plans are not promoted yet, then the analyst has the option to create budget
tasks for the budget owners.
• After the budget tasks are generated, the finance analyst can update the targets and enter
specific instructions in the budget tasks. The budget tasks are published for the budget
owners to work on the plan for the budget period.
• Then the promoted plans for the open budget or forecast period can be seen on the left pane.
A sample of the planning workbench

The right pane of the financial planning workbench provides three types of views:
Task View
View the list of tasks for each planner along with its status. Open a task record to
add a note to the planner and update the state of the task.
Plan View
View the plans that the planners have promoted. Use the grid view to:
• View the data by the columns that you configured in the template.
• Group the columns by any column, for example by cost center or vendor.
• View the budgeted amount, last forecast amount, and the actuals by year, quarter,
or month.
VTB View
View the budget tasks by its state:
Draft
The IT finance analyst has generated the task for a budget period.
Published
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
The IT finance analyst has published the task for the planner to work
on the plan task.
Awaiting Input
The planner promotes the task to the IT finance analyst, but the analyst
updates the task work note for the planner to rework on the budget
amount.
Pending Approval
The planner has submitted the task and waiting for the IT finance
analyst to approve or provide any comments on the plan task.
Approved
The IT finance analyst approves the plan.
The Generate Actuals button enables you to generate actuals for the budget definition data
source to view in the grid.

What to do next
Create a budget period to promote a budget plan.
Legacy- Create a budget period
The budget period controls the promotion of the budget plans. Budget plans created for a fiscal
year can be promoted only if the budget period is open.

Before you begin

Role required: itfm_plan_analyst, admin

Procedure
1. Navigate to All > Financial Planning > Administration > Budget Periods.
2. Click New in the Budget Periods list view.
3. Enter a Budget period from the choice list.
4. Enable the Open check box.
Enabling the check box sets the value to true and opens the budget period for you to promote
the budget plans created for a fiscal year.
5. Click Submit.
Legacy- Forecast period
Forecast periods are similar to budget periods that aim to control the promotion of forecast
plans.
Forecast periods can be created for a closed budget period. Forecast plans can be promoted
only if the forecast fiscal month period is open.

Note:
Only one forecast period can be open at any point in time.
Legacy: Create a budget target
A budget target is an estimated amount of money for a specific fiscal period and budget key
combination for operating and capital expenses. Use budget targets to set up a financial goal for
a budget plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
Before you begin

Role required: itfm_plan_analyst, admin

Procedure
1. Navigate to All > Financial Planning > Financial Planning > Budget Targets.
2. Fill in the form fields (see table).
3. Click Submit.
Budget Target form
Field

Description

Budget Key

The budget key to which this target applies. Select a key.

Fiscal period

The fiscal period year to which this target applies. Select a fiscal period.

Target Currency

The currency in use.

Capital Target

The amount of the target in the currency being used.

Operating Target

The target amount for operating expenses.

Legacy- Generated actuals
Account code, or budget key, expenses are records that show general ledger amounts for a
budget key. The amounts are aggregated for each fiscal period.
The expenses in the Account Code Expenses [itfm_plan_actuals] table are used by the financial
planning workbench for calculations of actual expenses. Normally you do not need to create or
modify data in this table.
Finance analysts can access account code expenses from the Financial Planning > Financial
Planning > Generated Actuals. The expenses are populated when you click Generate Actuals
button on the financial workbench.
Legacy- Use the planning workbench to initiate a budget plan
After you configure the budget process definition, you can initiate a budget. Open the budget
period. Use the financial planning workbench, and select the fiscal period and the budget plan
definition, and generate a budget task.

Before you begin

Role required: itfm_plan_analyst
An IT finance analyst generates a task for each planner. The planner can view the tasks that the
planner owns by navigating to Financial Planning > My Tasks.

Procedure
1. Navigate to Financial Planning > Workbench.
2. Select the budget period for which you are planning from the choice list on the top-right of the
workbench.
You can also create a budget period and open it to make it available for budgeting.
3. Select the budget plan definition from the choice list.
4. Click Generate Task.
If the plan does not exist, and a plan task for the selected fiscal period, then clicking the
Generate Task button creates a plan for each plan key. The plan key associated with the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
planner is considered only while generating the plan. The generated budget task is in Draft
state.
5. Open a budget task record from the budget list to review and update if required.
As an IT finance analyst you can add a note to the planner in the Work notes field.
6. Click Update to save your changes.
7. Click Publish to publish the tasks.
Set a Start date and an End date as a deadline for the plan in the Publish Planning Tasks popup that opens up.
8. Click Create.
9. Click the Plan view.
To hide columns in the view, click the Configuration

icon.

Item columns are rendered from the Budget Definition [itfm_plan_definition] table. Hiding or
displaying an item column does not update the table. Grouped columns cannot be hidden.
10. Click the VTB View.
11. View the budget tasks by its state.
If the planner had promoted the plan, then the plan is in Pending Approval column. If required,
you can review the plan and make a recommendation.
12. To make a recommendation to the budget, click the task in the Pending Approval column.
13. Add a comment in the Add description field.
14. Close the budget task pop-up.
15. Drag the plan to the Awaiting Input column.
After the planner updates and promotes the plan, then the state of the task becomes Pending
Approval.
16. If the planner updates the plan with your recommendation and if the budgeted amount meets
the target, then move the plan to the Approved column.
The budget plan is approved.

What to do next

As a planner you can update and promote your plans to finance.
Legacy- Repromote a budget plan
Repromote the budget plan to reflect the modifications in the portfolio budget that resulted
because of a change in demand or project selection planned cost.

Before you begin
• Role required: it_portfolio_manager
• To repromote a budget plan for a portfolio, the budget period for the selected fiscal period
must be open.

Note: The PPS admin can also open and close the budget period for a fiscal period by
navigating to Project Administration > Open/Close Budget Periods.

About this task

After promoting the portfolio budget plan, as the portfolio manager, you can decide to modify the
budget based on the investment committee suggestions. You can work with project and demand
managers to modify the cost plans for the demand and project to implement the suggested
changes. The budget plan can then be repromoted to reflect the changes in the budget plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Procedure
1. Navigate to portfolio workbench and open the portfolio that you want to track.
2. Click Re-promote Budget Plan under Step 3: Budgeting.

Result

The budget plan is repromoted as the updated budget for the selected fiscal year.

What to do next
• View the status of the budget plan below the budget plan name under Step 3: Budgeting in
the portfolio workbench. To view the budget task for the budget plan in financial planning
workbench, click the Status link.
Budget status

• After the budget plan is re-promoted and no more changes are expected, the budget period
must be closed.
Legacy- View promoted portfolio budget plans in the planning workbench
Use the financial planning workbench to view the portfolio budget plan promoted by portfolio
manager, which is initiated in Project Portfolio Management and converted as a budget plan in
Financial Management.

Before you begin

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.

Role required: itfm_plan_analyst
You require Project Portfolio Suite with Financials [com.snc.financial_planning_pmo] plugin to
perform portfolio budgeting and forecasting.

About this task

In Project Portfolio Management, portfolio managers use portfolio workbench to plan and
promote the portfolio annual budget plan.

Note: The budget period or forecast period must be open to promote the portfolio plan.
A budget task with the status Pending Approval is created when the portfolio manager promotes
the budget plan, the first time in the budgeting period. The status of the task is visible in Portfolio
Workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
Portfolio Workbench

The finance reviews the portfolio budget plans in the Planning Workbench and approves the
plan.
The planning process between the portfolio managers and the IT finance is entirely automated.
The plan promoted in the Portfolio Workbench is available in the Planning Workbench. Finance
approves the plan by approving the task, or sends it back to portfolio manager indicating
the status as Awaiting Input. The portfolio managers reworks on the IT finance review
recommendations and promotes the plan.

Note: The planning workbench replaces the budget console that was used in the Jakarta
release.

Procedure
1. Navigate to All > Financial Planning > Workbench.
2. From the choice list at the top-right of the workbench, select the budget period for which you
are doing the planning.
You can also create a budget period and open it to make it available for budgeting.
3. From the choice list, select the Portfolio Budget Planning definition.

Note: The budget tasks originating from the Portfolio Workbench are initially in the
Pending Approval state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
Portfolio budget plans

4. To view the promoted budget amount or last forecast amount, click Plan View.
5. Open a budget task record from the budget tasks list.
You can also do this task in the VTB View of the workbench.
As an IT finance analyst, you approve the promoted plan details or send it back to the portfolio
manager by adding a note in the Work notes field and update the State field to Awaiting
Input.
Forecasting
The same process applies even for the forecasting period. The plan view shows the last
promoted column which is the last promoted forecast plan from portfolio manager. The
forecast amount contains actuals until the forecasting month and forecast for remaining period
by the portfolio manager.
Cost plan Actuals
The actuals column in plan view is based on the cost plan actuals which is generated
based on approved expense lines and actuals from timecards from Project
Portfolio Management. If you notice a discrepancy in actuals amounts, regenerate
actuals from Generate Actuals available at the top right corner of workbench.

Legacy- Portfolio budget object configuration
The planned cost of cost plans in portfolio when promoted by portfolio managers are converted
to budget plans. The base system has a seeded read-only budget definition Portfolio Budget
Planning Process used for the promotion of portfolio.

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
Budget Planning Process

The granularity of the promoted budget object is defined in the Define Structure step of the
Portfolio Budget Planning Process budget definition. By default, the granularity of Project
Definition is Portfolio, Project or Demand (Portfolio Task), and Account Number.
Structure step

If your organization needs more attributes (such as cost center and cost plan name) in the
promoted portfolio budget object, you can define the additional mappings in the cost plan data
source. Set up by dot walking the required attribute from the cost plan object. After the mapping
is done, select the attribute in Define Structure of Portfolio Budget Planning Process and save it.
The promoted budget would include the selected attribute with Portfolio, Project or Demand
(Portfolio Task), and Account Number. This attribute would also be visible in Portfolio
Workbench.

Note: GL Account Number is automatically considered as one of the template columns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
Planning Data Field Source

Additional columns in Workbench
While reviewing the promoted portfolios, you can pull the additional dot walked columns to
workbench for visibility. Use the Portfolio Budget Planning Process Define structure to pull in
the additional dot walked column, such as Portfolio Manager, and save the configuration. Once
saved, the column is visible on the workbench.
Additional columns

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
Define Structure

Plan View

Legacy- Forecast the budget for portfolio
As a project or portfolio manager, you can forecast the future costs of projects and portfolios
based on the actual cost and changed project requirements. Budget forecast is deprecated in
the Paris release. Budget forecast is still available on instances upgraded from a previous release
but is not available for new instances.

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.
After budget planning and approval, during the project execution, as the project manager, you
can re-estimate (forecast) the planned costs for future periods. This forecast is based on the
actual cost incurred and other changes in projects. The forecasted project costs get rolled-up to
the portfolio and, as the portfolio manager, you can create the forecast plan for the portfolio.
An example of the quarterly forecasting process for the April quarter is shown:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Budget forecasting

When the forecast period is open for a given period:
• As the project manager:
◦ review actual cost for current and past periods and edit the estimated cost for the forecast
period and all future periods. For example, if the forecast period is open for April 2016, the
estimated cost for April and future months can be edited.

Note: As the project manager, you cannot edit the costs for past periods. For
example, in this case, the cost for months prior to April cannot be edited.
◦ forecast (re-estimate) the cost plans for the projects, when required. The forecasted project
costs are rolled-up to the portfolio.
• As the portfolio manager:
◦ review the re-estimated costs for all the projects in a portfolio in the portfolio workbench.
◦ decide to include new projects or exclude a few projects using portfolio planning view when
the budget target changes during the fiscal year.
◦ create the forecast plan for the portfolio with changed project estimates, and submits the
plan to the investment committee for review.
◦ update the forecast plan for the portfolio based on feedback from the investment committee
and repromotes it.
As the portfolio manager, you can also view budgeted, actual, and forecasted cost for the
projects in the ITFM Planning Workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
Note:
• The forecast period for the fiscal period must be open to create the forecast plan for a
portfolio. For example, open the forecast period for FY17: Apr to create a forecast plan
in April. The PPS admin can open the forecast period for a fiscal period by navigating to
Project Administration > Open/Close Forecast Periods.
• The budget period for a fiscal period must be closed to open a forecast period for the
corresponding fiscal period. The PPS admin can close the budget period for a fiscal
period by navigating to Project Administration > Open/Close Budget Periods.
• Only one forecast period can be open at a time.
Legacy- Create and promote a forecast plan
As a portfolio manager, you can re-estimate (forecast) the portfolio budget for future periods
based on the actual cost and changed project requirements.

Before you begin

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.
• Role required: it_portfolio_manager
• The Portfolio Planning field for the portfolio must be set to Advanced on the Portfolio form.
• The forecast period for the fiscal period must be open to create the forecast plan for a portfolio.
For example, the forecast period for FY17: Apr must be open to create a forecast plan in April.
The PPS admin can open the forecast period for a fiscal period by navigating to Project
Administration > Open/Close Forecast Periods.
• The budget period for a fiscal period must be closed to open a forecast period for the
corresponding fiscal period. The PPS admin can close the budget period for a fiscal period by
navigating to Project Administration > Open/Close Budget Periods.
• Only one forecast period can be open at a time.

Procedure
1. Navigate to portfolio workbench and open the portfolio that you want to track.
2. Click Promote Forecast Plan under Step 4: Forecasting.

Result
• The forecast plan for the portfolio is created and promoted for the selected forecast period.
You can re-promote the forecast plan, if required.
• A task with the status Pending Approval is created when the portfolio manager promotes the
forecast plan. The status of the task is visible in Portfolio Workbench.

What to do next
• To view the task for the forecast plan, click the Status link. The finance reviews the portfolio
forecast plans in the Planning Workbench and approves the plan.
• To view a list of all the promoted forecast plans for the portfolio, click the All Promoted
Forecast Plans link under step 4: Forecasting. The promoted forecast plans are listed for all
forecast periods.
• After the forecast plan is finalized and no further changes are expected, the forecast period
must be closed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Legacy- Repromote a forecast plan
If the portfolio forecasted cost has been modified, as the portfolio manager, you can repromote
the forecast plan to reflect the changes reflected in the forecast plan.

Before you begin

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.

• Role required: it_portfolio_manager
• To repromote a forecast plan for a portfolio, the forecast period for the selected fiscal period
must be open.

Note: The PPS admin can also open and close the forecast period for a fiscal period by
navigating to Project Administration > Open/Close Forecast Periods.

About this task

After creating the portfolio forecast plan, the investment committee reviews the plan. You can
decide to modify the forecast plan for the demand and project to implement the changes
suggested by the investment committee. The forecast plan can then be repromoted to reflect the
changes in the forecast plan.

Procedure
1. Navigate to portfolio workbench and open the portfolio that you want to track.
2. Click Re-promote Forecast Plan under Step 4: Forecasting.

Result

The forecast plan is repromoted as the updated plan for the selected forecast period.

What to do next
• To view a list of all the promoted forecast plans for the portfolio, click All Promoted Forecast
Plans link under step 4: Forecasting. The promoted forecast plans are listed for all forecast
periods.
• After the forecast plan is re-promoted and no more changes are expected, the forecast period
must be closed.
Legacy- Track the portfolio
After you complete financial planning, you can start tracking the progress of the portfolio. The
portfolio tracking view displays only the selected demands and projects in the portfolio.

Before you begin

Role required: it_portfolio_manager

About this task

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.

Once the financial planning is complete, the Track Portfolio action in the portfolio workbench is
enabled to start tracking the progress of the portfolio.
Watch this three-minute video to learn more about tracking your portfolio.
https://www.youtube.com/embed/t7A61MtVFws

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Procedure
1. Navigate to portfolio workbench, and open the portfolio that you want to track.
2. In the Fiscal Year choice list, select the fiscal year and click Track Portfolio.
3. In the timeline view, right-click a project or a demand and select:
◦ Edit to edit the project or the demand.
◦ Planning Console to open the project planning console. The option is available only for
projects.
◦ Status Report to open the most recent project status report. The option is available only for
projects.
4. In the timeline view, review the external dependencies between projects in a portfolio.
5. On the Project KPI tab, view the most recent status such as overall health, schedule, cost,
resources, and scope of all selected projects in the portfolio.
6. Review these charts:
◦ Cost (Planned vs. Actual) to track the actual costs from all selected projects in the portfolio
compared to the planned cost.
◦ Resource (Allocated vs. Actual) to track the actual resource time spent on all project tasks
versus the resource hours allocated to execute the selected projects and demands in the
portfolio.
7. To see the risks, issues, and the project change requests across all selected projects in the
portfolio, use the Risks, Issues, and Changes tabs.

What to do next

Legacy- Forecast the budget for portfolio.
Legacy- Tracking view in portfolio workbench
Once the financial planning is complete, the Track Portfolio option in portfolio workbench is
enabled. You can track the progress of demands and projects, and monitor the status of cost,
resource, schedule, and scope for the selected fiscal period for the portfolio.

Note: The content in this topic is applicable for customers upgrading from a previous
release to Zurich. If you are a new customer, see Scenario Planning for PPM.
The portfolio workbench comprises the following components in tracking view:
Timeline View: The tab displays a list of the selected demands and projects that are part of the
portfolio, and a Gantt chart over time.
On the Timeline View tab, you can:
• configure the colors of the portfolio items in the Gantt chart with Dashboard Configuration
settings.
• select the zoom level in the Gantt chart calender to Auto Fit. The Gantt view fits in one page to
view entire timeline without using the scrollbar.
• review the external dependencies between projects in a portfolio.

Note: The admin can customize which columns appear in the column filter list (

) in the

timeline view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Project KPI: The tab displays the most recent status of project KPIs such as overall health,
schedule, cost, resources, and scope of all the selected projects in the portfolio. This information
is populated from the most recent status report created for the projects.
You can:
• click the name of a project on the tab to open the latest status report created for the project.
• point to a status indicator for a project KPI to view the comments entered for the KPI for that
project.
Cost (Planned vs. Actual): The chart displays the actual costs from all selected projects in the
portfolio compared to the planned cost. The actual cost for projects is derived from the expense
lines.

Note: An expense line can be created manually for a project when a specific expense is
incurred. For example, if hardware is procured for a project, an expense line can be created
for the amount spent on procuring the hardware. If you receive an item using ServiceNow
Procurement, an expense line is created automatically. For resource hours, the expense
lines are created automatically when the time cards for the project are approved.
The display settings for the chart can be modified by selecting any of the following from the
choice list:
• Capex: Displays the cost chart for capital expense only.
• Opex: Displays the cost chart for operating expense only.
• All: Displays the cost chart for both capital and operating expenses.
Resource (Allocated vs. Actual): The chart displays the actual resource time spent on all project
tasks versus the resource hours allocated to execute the selected projects and demands in the
portfolio. The actual time spent is taken from processed time cards for the projects.
Risks, Issues, and Changes: The tabs provide the following information:
• Risks: Displays risks concerning all the selected demands and projects in portfolio and their
probability. This information is populated from the risks that are part of demands and projects
associated with the portfolio.
• Issues: Displays all issues across all selected projects in the portfolio and their priority. This
information is populated from the issues that are reported for the projects in a portfolio.
• Changes: Displays all project change requests across all selected projects in the portfolio and
their priority. This information is populated from the change requests created for the projects in
a portfolio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
Portfolio tracking timeline view example 1

Portfolio tracking KPI view example 2

Actual project costs
Actual project costs come after you create expense lines for cost plans or after human resources
use time cards to create expense lines.
The system captures actual project costs from expense lines:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
• Expense lines from cost plans: You can create expense lines from a cost plan. Allows you to
specify the amount and date when the expense was incurred. The actual amount incurred is
included in the cost plan after the expense line is processed.
• Expense lines from timecards: Human resources can record time for project work by using
time cards. When time cards are approved, the system generates expense lines. After the
expense lines are processed, the actual costs are recorded for the project. If you provide a
resource plan when creating time cards, the cost plan name is derived from resource plan and
cost is captured against the resource plan. If you do not provide a resource plan, the cost is
captured against the project.
View actual project costs
When you are using Project Portfolio Management with Financials, you can view actual project
costs on cost plans and projects.

Before you begin

Role required: it_project_manager

About this task

An expense line has to be processed to be considered for actual cost. The actual cost is
recorded against the creation date of the expense line, not the processed date. The expense
lines are created only for approved time cards.
Actual costs for projects also roll up to portfolios in the same way.

Procedure
1. Navigate to Project > Projects > All.
2. Open the project for which you want to view the actual costs.
3. Click the Cost Plans related list.

Scenario Planning for PPM
The Scenario Planning for PPM application provides a central location for portfolio managers to
create and track the roadmap for project execution for a given fiscal year. Optimize your budget
and resource usage by creating and comparing different scenarios for your project and demand
roadmap or resources.
A scenario is a collection of demands and projects that serves as a planning instance for the
selected fiscal year to support funding decisions.
Eligible demands and projects in the portfolio are collected into a default or existing scenario
of the planning cycle. You use the default or existing scenario as a basis to create additional
scenarios. A demand or project can belong to more than one scenario in the current planning
cycle but it cannot belong to more than one portfolio. For more information, see Create planning
scenarios.

Impact on portfolio planning using Portfolio Workbench
Portfolio Workbench does not support a scenario-based portfolio planning. You can plan your
portfolio in simple or advanced planning modes. In advanced mode, you can repromote budget
plan and create a forecast plan. Starting with the Paris release, the Portfolio Workbench has
been deprecated for new customers. For more information, see Portfolio Workbench.
With scenario-based planning, you can create multiple scenarios, compare them, and confirm or
reconfirm a scenario.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
If you are using the Portfolio Workbench for portfolio planning and want to switch to a scenariobased planning, note the following points:
• After installing Scenario Planning for PPM, remove the Portfolio Workbench module and
related link from the Portfolio form. The de-activation of Portfolio Workbench is required to
avoid conflicts with two methods of planning and data corruption. For more information, see
Enable or disable an application menu or module .
• Use the Portfolio Planning related link or the Portfolio Planning Workbench module to navigate
to Portfolio Planning Workbench.
• All your existing selections of demands and projects for a portfolio appear as a default
scenario when you open the Portfolio Planning Workbench. For more information, see Create
planning scenarios.

Features
The Scenario Planning for PPM provides the following capabilities to portfolio managers:
• Plan your portfolio based on resource capacity for a single year or multiple years.
• Break down your multiple year portfolio planning in smaller planning windows for continuous
tracking and planning adjustment.
• Allocate budget to demands and projects in your portfolio from Investment Funding.
• Create scenario-based plans for portfolios.
• Apply filters to refine your list of selected demands and projects in your portfolio.
• Experiment with different combinations of demands and projects in planning scenarios.
• View details of demands and projects that are not aligned with your strategic goals.
• Edit the way demands and projects are funded for each scenario.
• Compare different scenarios to assess outcomes of various project and demand
combinations.
• Confirm a planning scenario that best aligns with your organizational objectives as your current
portfolio plan.
• Override a previously confirmed planning scenario based on changing priorities and
environment.
• View budget details such as actual and planned costs, projects, and demands not aligned to
goals and strategies, and actual costs for the projects.
• View resource utilization and allocation.
• View demands and projects with over-allocated resources.
Install Scenario Planning for PPM
Install the Scenario Planning for PPM application from ServiceNow Store applications. Visit the
ServiceNow Store
website to view all the available apps and for information about submitting
requests to the store. For cumulative release notes information for all released apps, see the
ServiceNow Store version history release notes .

Before you begin

Complete the following setup checklist for a smooth installation and configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
Setup checklist
Setup tasks

Description

Verify that the PPM Standard plugin
(com.snc.financial_planning_pmo) is
activated.

Navigate to Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

Verify that the Investment Funding for PPM
Navigate to Subscription Management
(com.snc.investment_planning_pmo) plugin is > Subscriptions in your instance. The
activated.
list displays the subscriptions that your
organization has purchased.
Note: This plugin needs to be activated
only when you want to retrieve the target
amount for a portfolio for annual type of
planning from Investment Funding.
Role required: admin

About this task

Activate the PPM Standard plugin (com.snc.financial_planning_pmo) in your ServiceNow
instance before you install Scenario Planning for PPM. For more information see, Activate PPM
Standard (Project Portfolio Management).

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
You can search for the application by its name (Scenario Planning for PPM) or ID
(sn_pw_scenario). If you cannot find an application, you may have to request it from
ServiceNow store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If there are any plugins or applications that need to be installed, you must
install them before you can install Scenario Planning for PPM.
5. Optional: If demo data is available and you want to install it, click Load demo data.
(Optional) Demo data comprises sample records that describe application features for
common use cases. Load demo data when you first install the application on a development or
test instance.

Important: If you don't load the demo data during installation, it's unavailable to load
later.
6. Click Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
Related topics
List of plugins (Zurich)
Components installed with Scenario Planning for PPM
Several types of components are installed with the installation of the Scenario Planning for PPM
application, including tables and demo data.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Tables installed with Scenario Planning for PPM
Table

Description

Portfolio Scenario

Stores portfolio planning scenario
information such as name of the
scenario, state of the scenario, fiscal
year, and name of the portfolio to
which the scenario belongs.

[sn_pw_scenario_pm_portfolio_scenario]

Portfolio Scenario Funding
[sn_pw_scenario_pm_portfolio_scenario_funding]

Stores the funding information about
the portfolio planning scenarios.
The funding information includes
the name of the scenario, operating
budget, capital budget, total budget,
and whether a demand or project is
selected for execution.

Scenario Planning Configuration

Stores the portfolio planning
configuration information such as
[sn_pw_scenario_pm_portfolio_scenario_configuration] planning type and scope.
Portfolio Planning Window
[sn_pw_scenario_pm_planning_window]

Stores the planning window
information of a portfolio for multiyear and resource capacity-based
planning.

Annual and multi-year resource capacity-based planning
Plan your portfolios using scenarios for a single fiscal year or multiple years after analyzing
utilization of resources against available capacity. Include demands and projects in all portfolios
or a single portfolio to evaluate, prioritize, and select demands and projects that match your
business objectives.
Plan your portfolio and select demands and projects that you want to execute within the target
budget. Create scenarios to analyze your portfolio's alignment with the organization's business
objectives. The Scenario Planning for PPM application enables you to evaluate multiple sets of
forecast scenarios and analyze investments consistently.

Annual financial and resource capacity-based planning
Plan your portfolio for a single fiscal year. You can select all your portfolios or a single portfolio
for planning. After selecting your portfolio, you can create multiple scenarios to evaluate
the demands and projects based on total cost, resource usage and capacity, and strategic
objectives.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
In the annual planning, you create scenarios with different combinations of demands and
projects from a specific portfolio or all portfolios for a specific financial year. Based on your
selection of demands and projects, analyze the resource allocation for the selected demands
and projects derived from the associated resource plans. After analyzing the resource availability
and capacity, modify your selection of demands and projects in different scenarios and confirm a
scenario that maximizes your returns and add financial value to the organization.

Important: The default configuration is Annual Financial and Resource Capacity Based
Planning and single selected portfolio for new installation or upgrade. You can change the
planning configuration to plan for multiple years and all portfolios.

Investment funding integration
Integrate Scenario Planning for PPM with Investment Funding to retrieve the target amount for
a portfolio or all portfolios from a top-level investment fund for annual financial and resource
capacity-based planning. If you are planning for a single portfolio, the target amount of that
portfolio is retrieved from the New Fund column for that portfolio investment and fiscal period in
a top-level investment. If you are planning for all portfolios, you can configure the funding entity
for which the organization must be funded, and then the investment planner can add funds for
that particular entity in a top-level investment. For example, if your organization is a business
unit, you can enable that business unit as the funding entity, and all the funds allocated to that
business unit are set as the target for your organization.

Note: When you upgrade Scenario Planning for PPM to 2.3.0 or later version, the legacy
Investment Funding must be upgraded to ServiceNow Store for the integration to work.
For detailed instructions on upgrading from legacy Investment Funding to the ServiceNow
Store application, see Upgrading legacy Investment Funding to Store application.

Multi-year, resource capacity-based planning
Multi-year planning enables you to plan your portfolio using a planning window ranging from
three to 24 months. If your portfolio consists of demands and projects spanning more than one
year or if you are planning for a longer duration, you can plan your portfolio in smaller planning
windows. The multi-year planning enables you to analyze resource usage for different demands
and projects during the selected planning window and adjust your priorities to accommodate
any changes to budget, resources, or business environment.
In the multi-year planning, you create scenarios similar to the annual planning, but for a specified
planning window for a specific portfolio or all portfolios. Based on your selection of demands and
projects, analyze the resource allocation for the selected planning window. After analyzing the
resource availability and capacity, modify your selection of demands and projects in different
scenarios and confirm a scenario that maximizes your returns and add financial value to the
organization.
Configure the scenario planning type and scope
Configure the scenario planning type and select the scope of portfolios to determine the way
you want to plan and work on your portfolios. You can also specify using Investment Funding for
funding demands and projects in your portfolios.

Before you begin

Important: Modifying the planning type and scope deletes all your existing scenarios
and confirmed plans.

Role required: it_pps_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


<!-- page 1519 -->
About this task

The option to use Investment Funding for funding your portfolios is available only when you
activate the Investment Funding plugin.

Procedure
1. Navigate to All > Project > Portfolios > Configure Planning.
2. Open the scenario planning configuration record.
3. Configure the planning type and scope.
Planning type

If you want to plan for a single fiscal year
and single portfolio

If you want to plan for a single fiscal year
and all portfolios

Steps

a. Select Annual Financial and Resource Ca­
pacity Based Planning from the Planning
Type list.
b. Select Single Selected Portfolio from the
Planning Scope list.
a. Select Annual Financial and Resource Ca­
pacity Based Planning from the Planning
Type list.
b. Select All Portfolios from the Planning
Scope list.
a. Select Multi-Year Resource Capacity
Based Planning from the Planning Type list.
b. Select Single Selected Portfolio from the
Planning Scope list.

If you want to plan for multiple years and sin­ c. Select your default planning duration from
gle portfolio
the Default Planning Window list.
When you select a planning window, all the
demands and projects falling within the se­
lected duration appear on the Portfolio Plan­
ning Workbench.
a. Select Multi-Year Resource Capacity
Based Planning from the Planning Type list.
If you want to plan for multiple years and all b. Select All Portfolios from the Planning
portfolios
Scope list.
c. Select your default planning duration from
the Default Planning Window list.
4. Optional: If you want to enable selection of demands and projects that are in completed or
inactive state, select Allow Selection of Completed Projects.
5. Optional: If you want to retrieve the target amount from Investment Funding, select
Investment Funding Integration.

Note: This option is available only when the Investment Funding for PPM
(com.snc.investment_planning_pmo) plugin is active and planning type is selected as
Annual Financial and Resource Capacity Based Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
◦ If the planning scope is Single Selected Portfolio, the target amount of that portfolio
is retrieved from the New Fund column for the selected portfolio investment. For more
information, see Allocate funds to an investment.
◦ If the planning scope is All Portfolios, specify a source to retrieve the target amount.
a. Select a funding entity from the Funding Entity list from which your demands and projects
will be funded.
b. Select the transaction table for the selected funding entity from the Funding Record list.
6. Click Update.

Result

The scenario planning configuration is updated and all scenario plans and confirmed plans are
deleted. The configuration changes also updates the Portfolio Planning Workbench to enable
you to do scenario planning based on the updated planning type and scope.
Impact of modifying the scenario planning type and scope
Modifying the planning type and scope impacts the demands and project selection in your
planning scenarios and portfolio planning. You can change the planning type and scope at any
time during portfolio planning.

Changing the planning type
Changing the planning type affects your portfolio planning regardless of whether the portfolio
has any confirmed plan or planning scenarios in it at the time of this change.
From annual financial planning to multi-year, resource capacity based planning
This change in the planning type has the following impact on your confirmed plans
and planning scenarios:
• Deletes all scenarios and scenario funding records.
• A default scenario is created with the current month as starting month and a
default of 3-month planning window.
From multi-year, resource capacity based planning to annual financial planning
This change in the planning type has the following impact on your confirmed plans
and planning scenarios:
• Deletes all scenarios and scenario funding records.
• If you were previously using annual planning, the target budget is retrieved. If not,
the current fiscal year is set as default and you must set the target budget.

Changing the planning window
Changing the planning window effects all the users involved in planning and has the following
impact on your portfolio planning:
• The new planning window applies to all scenarios and the confirmed plan of every portfolio.
• A demand or project outside of the selected planning window cannot be selected or
deselected. However, the value of Planned check box for the project or demand will not
change. These demands and projects continue to be related to the scenario.
• When you confirm a scenario, only the demands and projects that fall in the planning window
are confirmed, the demands and projects outside the planning window are not confirmed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
Changing the planning scope
Changing the planning scope from a single selected portfolio to all portfolios has the following
impact on your confirmed plans and planning scenarios:
• In case of annual planning, creates a portfolio planning record in the Tracking state if a
confirmed plan exists for any of the portfolios.
• In case of annual planning, creates a confirmed plan for all the fiscal years with at least one
confirmed plan for any of the portfolios.
• In case of multi-year planning, your confirmed plans for the portfolios are retained.
• Deletes all existing scenarios and scenario funding records.
Set target budget for a fiscal year
When planning for a portfolio or all portfolios, start by selecting the fiscal period for the demands
and projects that you want to work with. You then set the target amounts for both operating and
capital expenses of portfolios when Scenario Planning is not integrated with Investment Funding.

Before you begin

Role required: it_portfolio_manager or it_pps_admin

About this task

Internal groups typically provide the target amount for a fiscal year. The target for the planned
fiscal year can be 110% of the amount spent in the last year based on actual expenditure. The
target is the starting point for planning projects for the next fiscal year.
Note: The PPS admin can set the portfolio target by navigating to Project Administration
> Enter Portfolio Target.
If Scenario Planning is integrated with Investment Funding, the target amount is retrieved from
the top investment fund allocated for a single portfolio or all portfolios.
For information on how to configure the investment funding settings for a single portfolio or all
portfolios, see Configure the scenario planning type and scope.
For information on creating a top level investment and allocating funds, see the Create a toplevel investment topic.

Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

Steps

a. Navigate to Project > Portfolios > Portfolio
Planning Workbench.
From application navigator

b. From the Portfolio choice list, select the
portfolio that you want to perform the plan­
ning for.
a. Navigate to Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
2. In the Portfolio Planning Workbench Fiscal Year choice list, select the year that you want to
perform the planning for.
You can perform financial planning for only one fiscal period at a time.
3. Set or update the target budget amount.
◦ If you are planning for the selected fiscal year for the first time, click Set Target.
◦ If you have already set the target budget amount for the selected fiscal year and you want to
change the amount, click Edit Target.
4. In the Set Target dialog box, enter the amounts for Capex Target and Opex Target.
5. Click Save.

Result

The portfolio capital and operational expense target for different fiscal years are updated in the
Portfolio Target related list on the portfolio record.

What to do next

Start creating scenarios for portfolio planning. For more information, see Create planning
scenarios.
Create planning scenarios
Create planning scenarios with different combinations of projects and demands in your portfolio.
Experiment with different scenarios to plan your budget expenditure for a fiscal year.

Before you begin

Ensure that you have set the target budget for the fiscal year for which you want to create a
planning scenario for annual type of planning. For more information, see Set target budget for a
fiscal year. Setting of target is not required for multi-year resource capacity type of planning.
Role required: it_portfolio_manager

About this task

You can create up to four planning scenarios with different combinations of projects and
demands for execution. For example, you might create a scenario A and select all the projects
and demands with your standard resource allocation. If you’re aware that a risk might affect the
business outcome, you can create a scenario B with a reduced number of projects and demands
to see whether that strategy might mitigate or avoid the risk. For more information about defining
scenarios, see Scenario Planning for PPM.

Procedure
1. Navigate to the Portfolio Planning Workbench from either of two starting points.
Location

Steps

a. Navigate to Project > Portfolios > Portfolio
Planning Workbench.
From application navigator

b. From the Portfolio choice list, select the
portfolio that you want to perform the plan­
ning for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
Location

Steps

a. Navigate to Project > Portfolios > All.
b. Open the portfolio that you want to perform
the planning for.

From the portfolio list

c. In the Portfolio form, click the Portfolio Plan­
ning related link.
2. In the Planning Portfolio Workbench, create a scenario for annual financial and resource
capacity based planning or multi-year resource capacity based planning.
◦ For annual planning, perform the following steps:
a. Select the fiscal year for which you want to create a planning scenario.
b. Click the Start Planning button on the Welcome page.
A default planning scenario is created with all active demands and projects for the selected
fiscal year.

Note: If a portfolio plan exists for the selected fiscal year, the Portfolio Planning
Workbench displays it as the current plan.
c. Click the create scenario icon (

).

d. In the Create Scenario dialog box, enter a name and short description for the scenario.
e. In the Copy Data From list, select the source for copying data.
The available options are:
▪ None: Creates a scenario with no projects or demands selected.
▪ Ongoing projects funded last year: Creates a scenario using projects funded during the
previous year and continuing in the current year selected. This option is available only if
an existing approved plan for the previous year exists. This is the default option when you
create an initial scenario for a given fiscal year.
▪ A list of other scenarios: Creates a scenario using projects and demands selected from
another existing scenario. This option is available if other scenarios exist for the same
portfolio for the same fiscal year.
▪ Confirmed Plan: Creates a scenario with projects and demands selected from the existing
approved plan. This option is available only if a confirmed plan exists for the current fiscal
year.
f. Click Save.
◦ For multi-year planning, a default plan is automatically created with the current month as
the starting month, and the planning window period as configured in the Scenario Planning
Configuration page. To create a new scenario, perform the following steps:
a. Click the create scenario icon (

).

b. In the Create Scenario dialog box, enter a name and short description for the scenario.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
c. In the Copy Data From list, select the source for copying data.
The available options are:
▪ None: Creates a scenario with no projects or demands selected.
▪ Ongoing projects funded last year: Creates a scenario using projects funded during the
previous year and continuing in the current year selected. This option is available only if
an existing approved plan for the previous year exists. This is the default option when you
create an initial scenario for a given fiscal year.
▪ A list of other scenarios: Creates a scenario using projects and demands selected from
another existing scenario. This option is available if other scenarios exist for the same
portfolio for the same fiscal year.
▪ Confirmed Plan: Creates a scenario with projects and demands selected from the existing
approved plan. This option is available only if a confirmed plan exists for the current fiscal
year.
d. Click Save.

Result

The planning scenario is created and displayed in a new tab.

What to do next

Select projects and demands for execution in the planning scenario.
Select demands and projects for portfolio planning
After you create a planning scenario, select the demands and projects to include in budget
planning. You can view all the demands and projects for the selected fiscal year or planning
window with their planned cost and priorities to finalize them for execution.

Before you begin

You should have at least one planning scenario. For more information, see Create planning
scenarios.
Role required: it_portfolio_manager

About this task

You can perform a what-if analysis by including or excluding demands or projects and their
planned cost for annual type of planning. The planned cost is derived from all the cost plans
created for a project or demand. It is the total of all the costs from all cost plans for a given
project or demand in the fiscal year or planning window.
You can perform a what-if analysis by including or excluding demands or projects and their
planned cost, budget, and utilization for multi-year resource capacity type of planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

Steps

a. Navigate to All > Project > Portfolios > Port­
folio Planning Workbench.
From application navigator

b. From the Portfolio choice list, select the
portfolio that you want to perform the plan­
ning for.
a. Navigate to All > Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

2. In the Portfolio Planning Workbench, click the scenario for which you want to include or
exclude demands and projects.
The projects and demands from the selected portfolio appear on the Timeline View.
3. Optional: Compare and evaluate the relative standing of demands using the Bubble Chart
tab.
(Optional) Right-click a demand and select Select for execution from the context menu to
include a demand in portfolio planning. For more information, see Demand workbench bubble
chart. You can search for specific demands by applying filters using the Filter(

) icon.

Note: The Bubble Chart tab is not available for Multi-year Resource Capacity Based
Planning configuration.
4. Include or exclude demands and projects from planning in the Timeline View tab by selecting
or clearing the check boxes next to each project or demand.
You can search for specific demands and projects in the timeline by applying filters using the
Filter(
) icon.
The number of selected project and demands is updated in the Selected Items section of the
Overview tab.
5. Optional: Review the external dependencies between the selected projects in your portfolio.
For more information, see Review external dependencies between projects.
6. Review the information in the Overview section on the right, and the Resources tab to evaluate
and adjust your selection of the demands and projects to be included in the plan.
Review the following sections in the Overview tab:
◦ Total budget versus the targets that you entered in the Set Target stage in the Budget vs.
Target section for annual type planning. If the total budget is more than the target cost, an
exception icon (
) is shown with the total planned cost.
◦ Total planned cost for all the projects and demands for multi-year type planning in the Total
Planned Cost section.
◦ Potential benefit amount that would accrue on execution of the selected demands and
projects in the Benefit Amount section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
Note: For multi-year resource capacity type planning, the total value of planned cost
and benefit for the entire duration of the projects or demands is displayed irrespective
of the selected planning window.
◦ Strategic alignment of your portfolio by viewing the number of demands and projects that
are not associated with any organizational strategy or goal in the Unaligned section.
◦ Number of assignment groups where, for any quarter of the selected fiscal year, the number
of requested hours is greater than the total hours capacity in the Overallocated Groups
section.
◦ Review how much in actuals have been spent on the projects selected for execution and the
rest of the projects in your portfolio in the Actuals section.

Note: For multi-year resource capacity type planning, the actuals value is displayed in
the widget without the selected and unselected project actual legends.
The following image shows an example of how the portfolio information is displayed in the
Overview section for annual type planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
The following image shows an example of how the portfolio information is displayed in the
Overview section for multi-year type planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
Review the following sections of the Resources tab:
View percentage of utilization for all the resources requested by the selected demands and
projects of the portfolio in a heat map. You can view the percentage utilization of all resource
groups or overallocated resource groups in months or quarters.

Tip: Click any cell in the heat map to view the project or demand associated with the
selected resource group.
The following image shows an example of how the resource information is displayed in the
heat map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
Tip: To bring the planned cost within the target budget and the resource utilization
within 100%, consider deselecting a few low-priority demands or projects. Deselected
demands and projects could then be moved over to a different fiscal period
7. Optional: Review the capex and opex budget for individual projects and demands directly
using Capex Budget and Opex Budget columns and revise it if necessary.

Note: Click the Show or hide columns (

) in the Timeline View tab and add the Capex
Budget and Opex Budget columns if these columns are not visible.
8. Optional: Update the name and short description by clicking the edit icon (
the modifications.
9. Optional: Delete the scenario by clicking the delete icon (

) and making

).

10. Optional: Convert the selected scenario to become the current plan by clicking Confirm.
11. Optional: Create more planning scenarios to compare them.
12. Optional: Manually refresh the cost and resource widgets after a demand or a project is
selected or cleared for execution by clicking the Refresh icon

).

What to do next

Compare planning scenarios to analyze different combinations of projects and demands and
select a scenario that best aligns with your organizational goals. For more information, see
Compare planning scenarios.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
Review external dependencies between projects
Review the external dependencies between projects in a portfolio to track projects that are
dependant on each other more closely.

Before you begin

Role required: it_portfolio_manager
Open demands and projects in the timeline view of the Portfolio Planning Workbench.

About this task

As a portfolio manager, you may want to know the projects which are dependent on each other
so that these projects can be tracked more closely.
For example, project B is dependent on project A (external soft dependency) and you want to
make sure that project A is executed on time so that the schedule of project B is not affected. The
Dependencies column shows that there is an outgoing external dependency from project A and
an incoming external dependency to project B. You can the use the incoming dependency to
determine whether a delay in project A will affect project B.

Procedure
) in the timeline view and add the
1. Click the show or hide columns in gantt icon (
Dependencies column if it is not visible.
The number of incoming and outgoing external dependencies are displayed, if any.
2. Click the external dependency in Dependencies column for the project.
3. In the Dependencies pop-up dialog, click a tab to review the dependency:
Inbound tab
Tasks that have an incoming dependency from a project are listed.
Outbound tab
Tasks with an outgoing dependency to the project are listed.
Example of external dependencies between projects

4. Click the project number in a tab to open and review the linked project in the planning console
view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
Rank demands and projects
Rank demands and projects to prioritize demands and projects for their approval and execution
within a portfolio.

Before you begin

Role required: it_portfolio_manager

About this task

By default, the Rank By Score list ranks demands and projects based on system-generated
scores. Rank of a demand or project is specific to a fiscal year. A project can be ranked as third in
FY17 but ranked sixth in FY18.

Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

From application navigator

Steps

a. Navigate to Project > Portfolios > Portfolio
Planning Workbench.
b. From the Portfolio list, select the portfolio
that you want to perform the planning for.
a. Navigate to Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

2. Optional: Adjust the rank automatically or manually.
Action

Steps

a. Go to the Timeline View tab of the Plan tab
of the Portfolio Planning Workbench.
b. Sort the projects and demands by the cur­
rency or number attribute such as ROI%, pri­
ority, and planned cost by which you want
to rank the projects and demands.
Adjust the rank automatically

c. Click Adjust Rank to fill gaps in ranks if
some projects are moved to the next fiscal
year or canceled.
For example, if the ranks after moving or
canceling some projects are 1, 2, and 5, this
action adjusts the ranks as 1, 2, and 3.
d. Click Rank By Visual Sort to rank projects
and demands based on the attribute you
chose.

Adjust the ranks manually

a. Go to the Timeline View tab of the Plan tab
of the Portfolio Planning Workbench.
b. Edit the Rank field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Action

Steps

When you change the rank of a project or
demand, the ranks of other projects or de­
mands adjust automatically. For example,
if the rank for a project ranked as number
2 changes to number 4, the project ranked
number 3 automatically assumes rank 2.

Example:

The following table explains manual adjustment of ranks.

Scenario for edit rank

Rank update

Rank before manual edit Rank after manual edit

If initial rank is 0 or
blank and other ranks
are present, then after
edit, the successive
ranks get incremented
by 1.

• Initial rank: 0

• Task_1: 0

• Task_2: 1

• Edited rank: 2

• Task_2: 1

• Task_1: 2

• Task_3: 2

• Task_3: 3

• Task_4: 3

• Task_4: 4

If initial rank > edited
rank, then after edit,
the successive ranks
get incremented by 1.

• Initial rank: 4

• Task_1: 1

• Task_4: 1

• Edited rank: 1

• Task_2: 2

• Task_1: 2

• Task_3: 3

• Task_2: 3

• Task_4: 4

• Task_3: 4

If initial rank < edited
rank and there is no
gap in rank sequence,
then after edit, the
previous ranks get
decremented by 1.

• Initial rank: 1

• Task_1: 1

• Task_2: 1

• Edited rank: 3

• Task_2: 2

• Task_3: 2

• Task_3: 3

• Task_1: 3

• Task_4: 4

• Task_4: 4

If initial rank < edited
rank and there is a
gap in rank sequence,
then after edit, the
successive ranks get
incremented by 1.

• Initial rank: 1

• Task_1: 1

• Task_2: 2

• Edited rank: 4

• Task_2: 2

• Task_1: 4

• Task_3: 4

• Task_3: 5

• Task_4: 5

• Task_4: 6

Compare planning scenarios
Compare various planning scenarios with your current or default plan to assess different
combinations of projects and demands in your portfolio for execution. You can perform a what-if
analysis and determine the planning scenario that optimally achieves the target budget and uses
your resources.

Before you begin

Ensure that you have created up to four planning scenarios and selected projects and demands
for execution. For more information, see Create planning scenarios and Select demands and
projects for portfolio planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
Role required: it_portfolio_manager

Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

From application navigator

Steps

a. Navigate to Project > Portfolios > Portfolio
Planning Workbench.
b. From the Portfolio list, select the portfolio
that you want to perform the planning for.
a. Navigate to Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

2. In the Plan tab of the Portfolio Planning Workbench, click Compare Scenarios.
The Compare Scenarios page displays all the planning scenarios.
3. Compare different aspects of the scenarios such as costs, number of projects and demands,
benefit amount, and actuals for the selected projects and demands.
4. Compare the variance between the scenarios for costs, number of projects and demands,
benefit amount, actuals for the selected projects and demands, and so on.
The variance value for different fields is displayed in red or green color. For example, if the
planned cost of a scenario is greater than the planned cost of the confirmed plan, the planned
cost variance is displayed in red. Or if the benefit amount of a scenario is greater than the
benefit amount of the confirmed plan, the benefit amount variance is displayed in green.

What to do next

Confirm a scenario that best aligns with your organizational objectives, optimally achieves your
target budget, and uses your resources. For more information see, Confirm a planning scenario.
Confirm a planning scenario
Select and confirm a scenario to allocate budget and resources for executing the selected
demands and projects in a fiscal year.

Before you begin

Ensure that you have created up to four planning scenarios and selected projects and demands
for execution. For more information, see Create planning scenarios and Select demands and
projects for portfolio planning.
Role required: it_portfolio_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

From application navigator

Steps

a. Navigate to Project > Portfolios > Portfolio
Planning Workbench.
b. From the Portfolio list, select the portfolio
that you want to perform the planning for.
a. Navigate to Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

2. In the Project Planning Workbench, confirm a scenario as your current plan for the fiscal year
using one of the following options:
◦ Select a scenario and click Confirm.
◦ Click Compare Scenarios and, in the Compare Scenarios page, click Confirm Scenario.
◦ If you are overriding an already confirmed plan , click Override.
3. In the Confirm dialog box, set additional options to be performed on the selected demands
and projects after the planning scenario is saved.

Note: When a confirmed plan exists, the name of the dialog box is Override Selection
rather than Confirm.
◦ If the project property Create project(s) on confirming demands from portfolio workbench
is set to false, you can choose to approve all the selected demands after the save by
selecting Approve all selected demands (if not approved already).
◦ If the project property Create project(s) on confirming demands from portfolio workbench
is set to true, you can choose to convert the selected demands to projects after the save by
selecting Convert all the selected demands to projects.
◦ Confirm the resources for selected demands and projects by selecting Confirm resources
for selected demands or projects.
◦ If the confirmed and allocated resource plans associated with the demands and projects
that are newly unselected do not have any actual hours associated with them, then select
Unconfirm the resources for the unselected demands and projects (only those resources
where there is no actual hours/cost captured will be unconfirmed) to change the state
of such resource plans to requested. If the confirmed and allocated resource plans have
actuals associated with them, a notification is send to the project or demand managers
specifying that they need to manually release such resources.
◦ Delete all the unconfirmed working scenarios after confirmation of the selected scenario by
selecting Delete all working scenarios. This option is selected by default.
4. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Result

Budget is allocated to selected demands and projects. The remaining demands and projects are
removed from execution. However, resources already confirmed for the unselected demands and
projects are not removed automatically.
Track the progress of a portfolio
After confirming a scenario to complete planning of your portfolio, track the progress of the
portfolio. You can also monitor the status of cost, resource, schedule, and scope for the selected
fiscal period or planning window for the portfolio.

Before you begin

Role required: it_portfolio_manager

Procedure
1. Navigate to Portfolio Planning Workbench from either of two starting points.
Location

Steps

a. Navigate to All > Project > Portfolios > Port­
folio Planning Workbench.
From application navigator

b. From the Portfolio choice list, select the
portfolio that you want to perform the plan­
ning for.
a. Navigate to All > Project > Portfolios > All.

From the portfolio list

b. Open the portfolio that you want to perform
the planning for.
c. In the Portfolio form, click the Portfolio Plan­
ning related link.

2. In the Portfolio Planning Workbench, click the Track tab.
The status of projects and demands is displayed in the Timeline View tab with a Gantt chart
over time and a KPIs tab.
3. Track the progress of your portfolio by reviewing the status of key parameters in the Timeline
View tab.
◦ Details such as planned and actual costs, variance, planned and end dates, and priorities for
the selected demands and projects.
◦ Identify the projects that are dependent on each other by viewing external dependencies
between projects in a portfolio. For more information, see Review external dependencies
between projects.
◦ Track the current status of an individual project by viewing the latest project status report by
selecting the Status Report option.
◦ Track the progress of project tasks in an individual project in your portfolio using the
Planning Console option. This option is available in the context menu for a project.
4. Check status information such as the overall health, schedule, cost, resources, and scope of
all selected projects in the portfolio in the Project KPIs tab.
The most recent status report created for a project populates this information. Point to a status
indicator to view comments entered by the project manager for that KPI.

Note: A grey X icon (

) next to any project KPI indicates that the project manager has
not entered any comments for that aspect in the status report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


