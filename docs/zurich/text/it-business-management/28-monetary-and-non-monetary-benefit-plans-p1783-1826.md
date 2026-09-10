# Zurich Strategic Portfolio Management — Monetary and non-monetary benefit plans / Strategic spend tracking

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1783–1826 of 2289

Sections: Monetary and non-monetary benefit plans (p1783); Strategic spend tracking (p1783); Analytics and reporting (p1792); Reference (p1805)

---

<!-- page 1783 -->
Monetary and non-monetary benefit plans
Benefit plans capture the potential benefits accrued by the work item when the work item is
executed. You can create benefit plans to specify the estimated benefits in a category for a fiscal
period.
Monetary and non-monetary benefit plans capture the financial and non-financial benefits
respectively. You can also associate monetary and non-monetary benefit plans with each other,
so that you can capture the potential benefits (financial and non-financial) accrued by the work
item for the hybrid benefit plans.

Benefit Plans in Project Management
• Create a monetary benefit plan for a project
• Create a non-monetary benefit plan for a project
• Associate monetary and non-monetary benefit plans of a project

Benefit Plans in Demand Management
• Create a monetary benefit plan for a demand
• Create a non-monetary benefit plan for a demand
• Associate monetary and non-monetary benefit plans of a demand

Benefit Plans in Agile Development 2.0
• Create a monetary benefit plan for an agile development epic
• Create a non-monetary benefit plan for an agile development epic
• Associate monetary and non-monetary benefit plans of an agile development epic

Benefit Plans in Scaled Agile Framework (SAFe)
• Create a monetary benefit plan for an SAFe epic
• Create a non-monetary benefit plan for an SAFe epic
• Associate monetary and non-monetary benefit plans of an SAFe epic

Strategic Spend Tracking for PPM
Strategic Spend Tracking for PPM enables project or demand managers to evaluate the strategic
value of organization’s projects and demands. You can identify the purpose and benefits of
executing demands and projects and how they contribute to achieving company's strategies and
goals.
Strategic Spend Tracking for PPM enables demand and project managers to determine how and
where funding is being spent during the execution of a demand or project.
Organizations generally determine and approve investment budgets that represent the funds
allocated to achieve their goals. Strategic Spend Tracking for PPM focuses on allocating your
investment budget through demands and projects, and tracking the expenditure to achieve your
organizational goals.
Each demand and project contributes to achieving one or multiple organizational goals. You can
use the Strategic Spend Tracking for PPM to perform the following tasks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1783


<!-- page 1784 -->
• Associate multiple strategies and goals with a demand or project.
• Allocate a percentage of the demand or project's total cost and benefits towards achieving one
or more strategies and goals.
• Generate strategy and goal allocation breakdowns for a demand or project for the fiscal year.
• View the roll up of strategy and goal breakdowns from different demands and projects in the
strategy and goal record.
• Use the Strategic Spend Tracking for PPM dashboard to view how the planned costs, actuals
costs, and benefits for projects aligned to the organization's goals and strategies trend over
time in order to accurately understand the financial performance of your organization.

Install Strategic Spend Tracking for PPM
Install the Strategic Spend Tracking for PPM application from ServiceNow Store applications.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Before you begin

Complete the following setup checklist for a smooth installation and configuration.
Setup checklist
Setup tasks

Description

Verify that PPM Standard plugin
(com.snc.financial_planning_pmo) is
activated.

Navigate to Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

Role required: admin

About this task

Activate the PPM Standard plugin (com.snc.financial_planning_pmo) in your ServiceNow
instance before you install Strategic Spend Tracking for PPM. For more information see, Activate
PPM Standard (Project Portfolio Management).

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find an application, you may
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1784


<!-- page 1785 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Related topics
List of plugins (Zurich)
Components installed with Strategic Spend Tracking for PPM
Several types of components are installed with activation of Strategic Spend Tracking for PPM,
including tables and scheduled jobs.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Scheduled jobs installed
Scheduled job

Description

PPM Strategic Spend Tracking - Generate
Generates breakdown of strategy and goal
Strategy/Goal Allocation Breakdowns for Projects allocation for the associated projects and
and Demands
demands.
PPM Strategic Spend Tracking - Update projects
and Demands with strategy and goal allocations

Updates strategy and goal allocations for
the associated projects and demands.

Tables installed
Table

Description

BO Job Execution Log

Stores information about execution of the
scheduled jobs such as time of execution and
tasks there were included.

[sn_ppm_sst_run_log]
Goal Allocation
[sn_ppm_sst_task_goal]

Goal Allocation Breakdown
[sn_ppm_sst_goal_allocation_breakdown]

Strategy Allocation
[sn_ppm_sst_task_strategy]

Stores goal allocation details for a project or
demand. The details include project or demand
number, strategy name, % allocated towards
the strategy, budget, planned cost, actual cost,
and benefit amount.
Stores goal breakdown details for a project
or demand. The details include fiscal year,
strategy allocation amount, cost details
(planned and actual), and capex and opex
amounts (planned and actual).
Stores strategy allocation details for a project or
demand. The details include project or demand
number, strategy name, % allocated towards
the strategy, budget, planned cost, actual cost,
and benefit amount.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1785


<!-- page 1786 -->
Table

Description

Strategy Allocation Breakdown

Stores strategy breakdown details for a project
or demand. The details include fiscal year,
[sn_ppm_sst_strategy_allocation_breakdown] strategy allocation amount, cost details
(planned and actual), and capex and opex
amounts (planned and actual).

Allocate or modify the strategy and goal percentage for a project
Allocate the percentage of a project's total cost, benefit, and budget to help achieve the strategic
objectives that the project fulfills. You can also view the breakdown of the project's financial data
based on the allocated percentage.

Before you begin

You should have an existing project.
Execute the following scheduled jobs:
• PPM Strategic Spend Tracking - Update projects and demands with

strategy and goal allocations

• PPM Strategic Spend Tracking - Generate Strategy/Goal Allocation

Breakdowns for Projects and Demands

Role required: it_project_manager

Procedure
1. Navigate to Project > Projects > All.
2. Select the project to which you want to add or update allocation percentages.
3. In the Business Case tab, add or update the strategies and goals with which the project is
associated.
For more information, see the Business Case field descriptions in the Create a project
documentation topic.
4. Click Save.
The selected strategies and goals appear in the Strategy Allocations and Goal Allocations
related lists.
5. Update strategy and goal allocations.
a. In the Strategy Allocations related list, click the % Allocation field and enter the percentage
that this project contributes towards the selected organizational strategy.
b. In the Goal Allocations related list, click the % Allocation field and enter the percentage that
this project contributes towards the selected organizational goal.

Note: The sum of strategy or goal allocations for a project must not exceed 100%.
6. Click the Recalculate Strategy and Goal Allocation related link to update cost field values in
the allocation tabs.
7. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1786


<!-- page 1787 -->
8. Optional: In the Strategy or Goal Allocations related list, click the preview icon (
click Open Record to view the breakdown of the strategy or goal allocation.

), and then

9. Optional: View the trends for planned costs, actual costs, and benefits over time using the
Strategic Spend Tracking for PPM dashboard.

Allocate or modify the strategy and goal percentage for a demand
Allocate the percentage of a demand's total cost, benefit, and budget towards achievement of
strategic objectives that the demand fulfills. You can also view the breakdown of the demand's
financial data based on the allocated percentage.

Before you begin

You should have an existing demand.
Execute the following scheduled jobs:
• PPM Strategic Spend Tracking - Update projects and demands with

strategy and goal allocations

• PPM Strategic Spend Tracking - Generate Strategy/Goal Allocation

Breakdowns for Projects and Demands

Role required: it_demand_manager

Procedure
1. Navigate to Demand > Demands > All.
2. Select the demand to which you want to add or update allocation percentages.
3. In the Business Case tab, add or update the strategies and goals with which the demand is
associated.
For more information, see the Business Case field descriptions in the Demand form
documentation topic.
4. Click Save.x
The selected strategies and goals appear in the Strategy Allocations and Goal Allocations
related lists.
5. Update strategy and goal allocations.
a. In the Strategy Allocations related list, click the % Allocation field and enter the percentage
that this demand contributes towards the selected organizational strategy.
b. In the Goal Allocations related list, click the % Allocation field and enter the percentage that
this demand contributes towards the selected organizational goal.

Note: The sum of strategy or goal allocations for a demand must not exceed 100%.
6. Click the Recalculate Strategy and Goal Allocation related link to update cost field values in
the allocation tabs.
7. Click Update.
8. Optional: In the Strategy or Goal Allocations related list, click the preview icon (
click Open Record to view the breakdown of the strategy or goal allocation.

), and then

9. Optional: View the trends for planned costs, actual costs, and benefits over time using the
Strategic Spend Tracking for PPM dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1787


<!-- page 1788 -->
Strategic Spend Tracking for PPM dashboard
The Strategic Spend Tracking for PPM dashboard provides comprehensive visualization to the
business planners to help them understand how the planned costs, actual costs, and benefits
for projects aligned to the organization's goals and strategies trend over time. It helps you to
accurately understand the financial performance of your organization.

Note: Starting with version 1.1.0, the Strategic Spend Tracking for PPM dashboard is

available in the Next experience UI Framework which can be accessed by navigating to All
> Strategic Spend Tracking for PPM > Analytics.
You can analyze the total expenses, and drill down to what is contributing to the cost, and which
departments and business units are spending.
Strategy Overview tab

Strategy Detail tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1788


<!-- page 1789 -->
Goal Overview tab

Goal Detail tab

End user and roles
End user and goal

Required role

Business Planner: Needs visibility into
business_planner
strategies and goals for projects and demands
in the organization.

Indicators
The dashboard contains the following indicators for strategies:
Projects
Comparison of aligned and unaligned projects for strategies.
Aligned Projects
Count of the projects aligned to strategies.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1789


<!-- page 1790 -->
Unaligned Projects
Count of the projects not aligned to strategies.
Planned Cost
Comparison of aligned and unaligned planned cost for strategies.
Planned Cost - Aligned Projects
Total planned cost for all projects aligned to strategies.
Planned Cost - Unaligned Projects
Total planned cost for all projects not aligned to strategies.
Total Benefit
Comparison of aligned and unaligned benefit amount for strategies.
Total Benefit - Aligned Projects
Total benefit amount for all projects aligned to strategies.
Total Benefit - Unaligned Projects
Total benefit amount for all projects not aligned to strategies.
Actuals
Comparison of aligned and unaligned actual cost for strategies.
Actuals - Aligned Projects
Total actual cost for all projects aligned to strategies.
Actuals - Unaligned Projects
Total actual cost for all projects not aligned to strategies.
The dashboard contains the following indicators for goals:
Projects
Comparison of aligned and unaligned projects for goals.
Aligned Projects
Count of the projects aligned to goals.
Unaligned Projects
Count of the projects not aligned to goals.
Planned Cost
Comparison of aligned and unaligned planned cost for goals.
Planned Cost - Aligned Projects
Total planned cost for all projects aligned to goals.
Planned Cost - Unaligned Projects
Total planned cost for all projects not aligned to goals.
Total Benefit
Comparison of aligned and unaligned benefit amount for goals.
Total Benefit - Aligned Projects
Total benefit amount for all projects aligned to goals.
Total Benefit - Unaligned Projects
Total benefit amount for all projects not aligned to goals.
Actuals
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1790


<!-- page 1791 -->
Comparison of aligned and unaligned actual cost for goals.
Actuals - Aligned Projects
Total actual cost for all projects aligned to goals.
Actuals - Unaligned Projects
Total actual cost for all projects not aligned to goals.

Breakdowns
The dashboard includes the following breakdowns:
• Strategy
• Goal
• Project Cost
• Project Benefit
• Actuals

Data visualizations
The dashboard includes the following visualizations for strategies:

Title

Type

Description

Bar chart

Comparison of total planned
and actual costs for all
projects grouped by fiscal
period for strategies.

Bar chart

Comparison of total planned
and actual benefits for all
projects grouped by fiscal
period for strategies.

Project Cost

Project Benefit

Project Distribution

Breakdown of the distribution
of projects by strategy.
Pie chart

Planned Cost Distribution

Breakdown of the distribution
of planned cost of projects by
strategy.
Pie chart

Planned Benefit Distribution

Breakdown of the distribution
of planned benefit of projects
by strategy.
Pie chart

The dashboard includes the following visualizations for goals:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1791


<!-- page 1792 -->
Title

Type

Description

Bar chart

Comparison of total planned
and actual costs for all
projects grouped by fiscal
period for goals.

Bar chart

Comparison of total planned
and actual benefits for all
projects grouped by fiscal
period for goals.

Project Cost

Project Benefit

Project Distribution

Breakdown of the distribution
of projects by goals.
Pie chart

Planned Cost Distribution

Breakdown of the distribution
of planned cost of projects by
goals.
Pie chart

Planned Benefit Distribution

Breakdown of the distribution
of planned benefit of projects
by goals.
Pie chart

Project Portfolio Management Platform Analytics Solutions
Platform Analytics Solutions contain preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution for Project Portfolio Management, log in as an admin and navigate to
Performance Analytics > Guided Setup. Click Get Started, then scroll to the section for PPM
Standard Dashboards. The guided setup takes you through the entire setup and configuration
process.
Alternatively, activate the Performance Analytics – Content Pack – PPM Standard plugin
(com.snc.pa.pmo_dashboards).
Activation of com.snc.pa.pmo_dashboards plugin also activates the following plugins:
• PPM Standard (com.snc.financial_planning_pmo)
• Performance Analytics – Content Pack – Project Portfolio Suite Dashboards
(com.snc.pps_dashboards)
Access the PMO dashboard using either of the following navigation links:
• Project > Portfolios > Portfolio Dashboard.
• Project > Programs > Program Dashboard.
• Self-Service > Dashboards. Search for PMO Dashboard using the search field.
• Time Sheets > Time Sheet Portal > Time Sheet Dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1792


<!-- page 1793 -->
The dashboard displays the data based on the navigation link used to open it.

Domain separation and 'Run As' user
In some solutions, System Administrator is the Run As user for data collection jobs in the
Platform Analytics Solutions. In other solutions, the Run As user for data collection jobs is left
blank. Verify that the Run As user exists on the instance, and that this user has the appropriate
level of access. An inappropriate Run As user can cause errors or limit the data that is collected.
This setting only has an effect if domain separation is enabled.

Older version of this solution
This solution replaces the Project Portfolio Suite (com.snc.pa.ppm) Solution. If you activated an
earlier version of the solution and then upgraded your instance, you still have and can still use
the earlier solution. You can also activate the newer version without losing data from existing
indicators and breakdowns. If you activate the newer version, run a historical data collection job
to populate new indicators and breakdowns for the Time Sheet dashboard.
Related topics
Activate your Performance Analytics subscription

PMO dashboard
The PMO dashboard provides comprehensive reports to the portfolio and program managers.
The dashboard uses Platform Analytics to provide a trend of historical data as well as regular
reports. It gives an overview of your investments, provides a pipeline view of upcoming intake
and a calendar view of upcoming dates.

Note: The PMO dashboard is available in the next experience UI framework which can
be accessed through Analytics Portfolio. In the next experience, these features are not
supported:
• Pipeline details pane in the Pipeline tab.
• Highlight based on list and View all records link in the Calender tab.

PMO dashboard in Next experience UI
This animation shows all of the data visualizations in the PMO dashboard tab by tab. They are
described in the Data Visualizations section of this topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1793


<!-- page 1794 -->
End user and roles
End user and goal

Required role

Portfolio manager: Needs visibility into
programs, projects, and demands in their
portfolio and actions that should be taken.

it_portfolio_manager

Program manager: Needs visibility into
projects and demands in their programs and
actions that should be taken.

it_program_manager

Project manager: Has access to the
dashboards.

it_project_manager

Indicators
The Summary, Pipeline, and Project Health tabs in the dashboard contain widgets with the
following indicators. The data for projects is collected from the [pm_project] table, the data for
demands is collected from the [dmn_demand] table, and the data for ideas is collected from the
[idea] table.
PPM – Number of Active Projects
Count of active projects. Projects are considered active where actual end date is
<after today> or <empty>.

Note: If the Actual End Date for a project is in the future but the project is in
Closed state, the reports still pick up the project as active.
PPM – Allocated Hours less than Planned Hours
Count of active projects that have resource plans where the allocated hours is less
than the planned hours.
PPM – Active Projects in Open, Pending, Work in Progress state
Count of active projects in Open, Pending, or Work in Progress state.
PPM – Number of Active Red Projects
Count of active projects that have an overall red status.
PPM – Total age of Open Project
Total age of all active projects in days. It is the difference between the planned start
date of the active project and the date when the indicator score is collected. The
indicator is used to calculate the average age of open projects.
PPM – Planned Cost
Total planned cost for all the active projects.
PPM – Actual Cost
Total actual cost for all the active projects.
PPM – Number of Active Projects with negative ROI
Count of active projects with a negative Return on Investment.
PPM – Estimate at Completion
Total estimated cost at completion for all active projects.
PPM – Number of Projects with High Risks
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1794


<!-- page 1795 -->
Count of active projects that have a Risk in Pending state and Probability as
Absolute or High.
PPM – Number of Projects with Critical Issues
Count of active projects that have an Issue with state Open or Work in Progress and
priority as Critical.
PPM – Number of Projects with Missed Milestones
Count of active projects that have a milestone with planned end date due before
today.
PPM – Number of Active Overdue Projects
Count of active projects that have Planned end date before today.
PPM – Unallocated Resources
Count of projects in state Work in Progress that have resource plans in Planning,
Requested, or Confirmed state.
PPM – Allocated Hours less than Actual Hours
Count of active projects that have resource plans where the actual hours is greater
than the allocated hours.
PPM – Planned Benefits
Total planned benefit for all active projects.
PPM – Actual Benefits
Total actual benefit for all active projects.
PPM – Number of Projects with critical Change Requests
Count of active projects that have a Project Change Request with state as Open and
priority as Critical.
PPM – Number of Total Demands this Month
Count of demands in the given month with state other than Draft.
PPM – Number of Demands with Projects this Month
Count of demands that are converted to projects in the given month.
PPM – Open Demands Submitted, Screening, Qualified or Approved
Count of demands in Submitted, Screening, Qualified, or Approved state.
PPM – Total Age of Open Demand in Submitted, Screening, Qualified, Approved state
Total age (in days) of active demands in Submitted, Screening, Qualified, or
Approved state. It is the difference between the creation date of the demand and
the date when the indicator score is collected. The indicator is used to calculate the
average age of open demands.
PPM – Total Age of Demand to Project this Month
Total age (in days) of all demands that are converted to projects in the given month.
It is sum of the difference between the creation date of demands and the creation
date of corresponding projects. The indicator is used to calculate the average age of
Demand to Project.
PPM – Number of Open Ideas
Count of ideas in Submitted state and no Demand associated.
PPM – Total Age of Open Idea
Total number of days an idea is in state Submitted before conversion to demand.
PPM – Number of Total Ideas this Month
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1795


<!-- page 1796 -->
Count of ideas other than Draft state and created in the given month.
PPM – Number of Ideas with Demands this Month
Count of ideas converted to demands in the given month.
The dashboard also uses the following formula indicators. The formula indicators are based on
few of the preceding indicators.
PPM – Average age open project
Average number of days a project is in state Pending, Open, or Work in
Progress. The indicator is calculated using the PPM – Total Age of Open Project
and PPM – Number of Active Projects indicators.
PPM – Percentage of Ideas to Demands last 12 months
Percentage of ideas converted to demands in last 12 months.
PPM – Average age Demand to Project last 12 months
Average number of days before a demand has been converted to a project.
PPM – Percentage of Demand to Project last 12 months
Percentage of demands converted to projects in last 12 months.
PPM – Average age open demand
Average number of days a demand is in state Submitted, Screen, Qualified, or
Approved and has not been converted to project.
PPM – Average age open idea
Average number of days an idea is in state Submitted before conversion to demand.
PPM – Portfolio Health
Percentage of portfolio health based on active projects in overall red status, active
projects that are overdue, and active projects with critical issues.

Breakdowns
• Business Unit
• Demand Category
• Demand Manager
• Demand State
• Demand Type
• Department
• Impact
• Portfolio
• Portfolio Manager
• Priority
• Program
• Program Manager
• T-Shirt Size
• Execution Type
• Investment Class
• Investment Type
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1796


<!-- page 1797 -->
• Project Manager
• Project Phase
• Project State
• Project Status
• Overall Health

Data visualizations
The dashboard includes the following visualizations:

Title

Type

Benefit Plans by Category

Description

Breakdown of the number of
benefit plans in each category
for active projects.
Pie chart

Projects Planned Benefits by
Category (Monetary)

Horizontal bar chart

Projects by Business Unit

Total planned financial
benefits in each category for
active projects.

Breakdown of the number
of active projects in each
business unit.
Pie chart

Projects by Investment Type

Breakdown of the number of
active projects grouped by
investment type.
Pie chart

Projects by Investment Class

Breakdown of the number of
active projects grouped by
investment class.
Pie chart

Projects by Priority

Horizontal bar chart

Hours by Project Time
Category
Line chart

Active Demands
Single score

Breakdown of the number of
active projects grouped by
priority.

Trend of total hours reported
in time cards for each Project
Time Category. The trend is
displayed from the beginning
of last quarter until the end of
next quarter.
Number of demands in
Submitted, Screened,
Qualified, and Approved state
with no project associated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1797


<!-- page 1798 -->
Title

Type

Demands – No Manager
Single score
Demands – No Business Case

Description

Number of active demands
with no associated demand
manager.
Number of active demands
with no business case.

Single score
Demands – No Planned Cost

Number of active demands
with zero total planned cost.
Single score

Demands – No Start Date

Number of active demands
with no start date.
Single score

Demands – No Investment
Class
Single score
Demands – No Budget Cost
Single score
Demands – No Due Date

Number of active demands
with no associated investment
class.
Number of active demands
with zero capital and zero
operating budget.
Number of active demands
with no due date.

Single score
Demands – No Investment
Type
Single score
Demands – No Financial
Benefits
Single score
Demands – No Portfolio

Number of active demands
with no associated investment
type.
Number of active demands
with no or zero financial
benefit.
Number of active demands
with no associated portfolio.

Single score
Demands – No Program

Number of active demands
with no associated program.
Single score

Demands – No ROI

Number of active demands
with no Return on Investment.
Single score

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1798


<!-- page 1799 -->
Title

Type

Active Projects
Single score
Projects – No Manager
Single score
Projects – No Business Case

Description

Number of projects with actual
end date <after today> or
<empty>.
Number of active projects
with no associated project
manager.
Number of active projects with
no business case.

Single score
Projects – No Planned Cost

Number of active projects with
zero total planned cost.
Single score

Projects – No Task

Number of active projects with
no associated project tasks.
Single score

Projects – No Investment
Class
Single score
Projects – No Budget Cost

Number of active projects with
no associated investment
class.
Number of active projects with
zero budget cost.

Single score
Projects – No Description

Number of active projects that
have no description.
Single score

Projects – No Investment Type
Single score
Projects – No Planned Benefit

Number of active projects with
no associated investment
type.
Number of active projects with
zero planned benefit.

Single score
Projects – No Portfolio

Number of active projects with
no associated portfolio.
Single score

Projects – No Program

Number of active projects with
no associated program.
Single score

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1799


<!-- page 1800 -->
Title

Type

Projects – No ROI
Single score
Planned vs Budget vs Actual
Cost

Description

Number of active projects
with no planned Return on
Investment.

Bar chart

Comparison of total planned,
budget, and actual costs for
active projects grouped by
fiscal period.

Step line chart

Monthly trends of total
allocated and actual hours
for resource plans associated
with active projects.

Bar chart

Comparison of total planned
and actual financial benefits
for active projects grouped by
fiscal period.

Bar chart

Comparison of total planned
and actual non-financial
benefits for active projects
grouped by fiscal period.

Bar chart

Comparison of total planned
and actual financial benefits in
each benefit plan category for
active projects.

Allocated vs Actual Hours

Monetary Planned vs Actual
Benefits

Non-monetary Planned vs
Actual Benefits

Monetary Planned vs Actual
Benefits by Category

Project Completion Calendar

Calender view of planned
end dates of projects, project
tasks, and milestones.
Calendar

Analytics Time sheet
The Analytics Time sheet provides comprehensive time sheet activities and reports to the time
card approvers and time card users. The dashboard uses Performance Analytics to provide a
trend of historical data and regular reports. It gives an overview of the time sheet activities of
resources, time sheet approval and rejection rate, over-allocated and under-allocated resource
counts.

Important: Starting with Zurich release, Time Sheet Dashboard is renamed to Analytics
Time sheet for new customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1800


<!-- page 1801 -->
Overview tab

Delinquent Activity tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1801


<!-- page 1802 -->
Analysis tab

End user and roles
End user and goal

Required role

Portfolio manager: Needs visibility into time
sheet activities of resources and actions that
should be taken.

it_portfolio_manager

Program manager: Needs visibility into time
sheet activities of resources and actions that
should be taken.

it_program_manager

Project manager: Has access to the
dashboards.

it_project_manager

Time card approver: Needs visibility into time
sheet activities of resources and actions that
should be taken.

timecard_approver

Business stakeholder for PPM: Needs visibility sn_ppm_read
into time sheet activities of resources and
actions that should be taken.

Indicators
The Overview, Delinquent Activity, and Analysis tabs in the dashboard contain widgets with the
following indicators. The data for time sheets and time cards is collected from the [time_sheet]
table and the data for users is collected from the [users] table.
PPM – Active Time Sheet Users
Count of active users with the timecard_user role.
PPM – % Late This Year
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1802


<!-- page 1803 -->
Percentage of time sheets late this year.
PPM – % Late This Week
Percentage of time sheets late this week.
PPM – % Late This Quarter
Percentage of time sheets late this quarter.
PPM – % Late This Month
Percentage of time sheets late this month.
PPM – Late Time Sheets This Month
Count of late time sheets this month. The indicator includes time sheets of the
current month until the past week that are not in the Approved or Processed state.
PPM – Late Time Sheets This Quarter
Count of late time sheets this quarter. The indicator includes time sheets of the
current quarter until the past week that are not in the Approved or Processed state.
PPM – Late Time Sheets This Week
Count of late time sheets this week. The indicator includes time sheet of the past
week that are not in the Approved or Processed state.
PPM – Late Time Sheets This Year
Count of late time sheets this year. The indicator includes time sheets of the current
year until the past week that are not in the Approved or Processed state.
PPM – Total Time Sheets Last Week
Total number of time sheets for the past week.
PPM – Total Time Sheets This Month
Total number of time sheets for the weeks in the current month.
PPM – Total Time Sheets This Quarter
Total number of time sheets for the weeks in the current quarter.
PPM – Total Time Sheets This Year
Total number of time sheets for the weeks in the current year.
PPM – Time Sheets Approved This Week
Count of time sheets approved this week. The indicator includes time sheets in the
Approved or Processed state.
PPM – Time Sheets Missing This Week
Count of users with the timecard_user role who did not submit time sheet for the
current week.
PPM – Time Sheets Pending This Week
Count of time sheets pending this week. The indicator includes time sheets for the
current week in the Pending state.
PPM – Time Sheets Recalled This Week
Count of time sheets recalled this week. The indicator includes time sheets for the
current week in the Recalled state.
PPM – Time Sheets Rejected This Week
Count of time sheets rejected this week. The indicator includes time sheets for the
current week in the Rejected state.
PPM – Time Sheets Submitted This Week
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1803


<!-- page 1804 -->
Count of time sheets submitted this week. The indicator includes time sheets for the
current week in the Submitted state.

Breakdowns
• User
• Manager
• Department
• Cost Center
• Portfolio
• Program
• Project

Data visualizations
Title

Type

Rejected
Single score
Late
Single score
Pending Approvals
Single score
By State

Description

Number of time cards that are
in the Rejected state for the
last 30 days.
Number of time cards that
were submitted late in the last
30 days.
Number of time cards that
have approval pending in the
last 30 days.
Number of time cards in the
last 30 days, grouped by their
state.

Bar chart
By Category

Heat map
By Resource

Breakdown of time spent
(hours) by a resource
across different project time
categories in the last 30 days.
The list of time cards
submitted by a resource in 30
days.

List
Total Hours

Total time (hours) spent on by
different categories.
Bar chart

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1804


<!-- page 1805 -->
Title

Type

Description

Total Hours by Week Starts On Time series line

Weekly trend of the total time
(hours) spent on different
categories over a period of
time.

Time Sheets Over 40 Hours

Count of time sheets over
40 hours indicating overallocated resources.
Bar chart

Allocated vs Actual Hours

This report does not refresh
when you select portfolio,
program, or project.

Time series step

Time Cards By Expense Type

Monthly trend comparing the
total allocated hours versus
actual hours for all time card
users.
Time cards grouped by
expense types: Capital
Expense (Capex) and
Operating Expense (Opex).

Bar chart

Project Portfolio Management reference
Reference topics provide information about domain separation, quick start tests, business
stakeholder role access, and others related to Project Portfolio Management.

Components installed with Project Portfolio Management (PPM) Standard
Several components are installed with the activation of the PPM Standard plugin.
Demo data is available with PPM Standard. The demo data provides sample projects, demands,
programs, portfolios, expense lines. The demo data also provides sample cost plans and budget
plans for the sample projects and demands.
Plugins installed with PPM Standard (Project Portfolio Management)
Multiple plugins are installed with activation of PPM Standard plugin, if they are not already
active.

PPM Standard plugins
PPM Standard adds the following plugins.

Plugin Name

Description

Project Portfolio Suite

Activates an integrated set of applications for
project portfolio management and IT software
development.

[com.snc.project_portfolio_suite]
Financial Planning
[com.snc.financial_planning]

Enables financial analysts to assemble spending
data, build cost models, and generate reports to
show how funds are being allocated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1805


<!-- page 1806 -->
Plugin Name

Description

Rate Model

Delivers date-effective hourly rates for a specific set
of criteria coming from the project, demand, or time
card being processed.

[com.snc.rate_model]
Ideation with PPM

Enables your organization to collect new ideas,
collaborate on ideas, and identify great ideas
[com.snc.ppm_innovation_management] for implementation. Convert selected ideas to
demands, stories, projects, and epics.

Project Portfolio Suite plugins
Project Portfolio Suite adds the following plugins.

Plugin Name

Description

Demand Management

Enables capturing the demands and provide tools to
screen, assess and prioritize them.

[com.snc.demand_management]
Project Management

Enables planning, organizing and managing projects
and resources in order to setup, execute, and complete a
[com.snc.project_management_v3] project faster and easier.
Resource Management

Enables resource requesters and resource managers to
plan, organize, and manage resources for both planned
and operational work.

[com.snc.resource_management]

Demand management plugins
Demand management adds the following plugins.

Plugin Name

Description

Process Flow Formatter

Summarize multiple pieces of information about a process
and display the stages graphically at the top of a form.

[com.snc.process_flow_formatter]
Assessment
[com.snc.assessment_core]
Timeline Visualization
[com.snc.timeline_visualization]

Evaluate, score, and rank records from tables in the system.
Evaluate results using unique graphical views designed to
highlight key performance information.
Provide a high-level graphical representation of your
strategic and operational activities for your organization
such as incidents, problems, changes, and projects.

Project management plugins
Project management adds the following plugins.

Plugin Name

Description

Checklist

Checklists for tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1806


<!-- page 1807 -->
Plugin Name

Description

[com.glide.ui.checklist]
Cost Management
[com.snc.cost_management]
Process Flow Formatter
[com.snc.process_flow_formatter]
Skills Management
[com.snc.skills_management]
Timeline Visualization

Enables the definition and tracking of configuration item
costs. Uses rate cards with CIs, contracts, and projects.
Displays the different stages in a linear process flow across
the top of a record.
Enables an administrator to assign configured
competencies, called skills, to groups or individual users.
Enables graphical representation of activities over time.

[com.snc.timeline_visualization]
Time card management
[com.snc.time_card]

Enables the creation of linear timelines for any activity that
is bounded by two dates, such as the actual start and end
dates on a project task.

Resource management plugins
Project management adds the following plugins.

Plugin Name

Description

Cost Management

Enables the definition and tracking of configuration item
costs. Uses rate cards with CIs, contracts, and projects.

[com.snc.cost_management]
Process Flow Formatter
[com.snc.process_flow_formatter]

Displays the different stages in a linear process flow across
the top of a record.

Tables installed with PPM Standard (Project Portfolio Management)
Tables are added with activation of PPM Standard plugin.

PPM Standard tables
PPM Standard adds the following tables.

Table

Description

Cost Plan

Cost plan for the resources required for the project.

[cost_plan]
Cost Plan Breakdown
[cost_plan_breakdown]

Cost breakdown of resources based on project,
program, or portfolio. These records are rollups of all
costs. Project task cost plans are not rolled up to the
project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1807


<!-- page 1808 -->
Table

Description

Cost Type Definition

Definitions of cost types, which specify either an
operating expense or capital expense, and can link
accounts in the General Ledger [itfm_gl_accounts]
table. The General Ledger table is installed with the
Financial Management application.

[resource_type_definition]

Project Funding

Project or demand target and budget expense values
for both capital and operating expenses. The records
in this table are for a single fiscal year.

[project_funding]
Benefit Plan

Benefit plan for the potential benefits that the project
or demand can accrue.

[benefit_plan]
Benefit Breakdown

Benefit breakdown for the project or demand. These
records are rollups of all benefits.

[benefit_plan_breakdown]
Budget Reference Rates

The exchange rates that budgets use.

[itfm_fx_rate]
Import and map project codes from ERP systems to
SPM.

Inbound Actuals Configuration
[sn_invst_pln_inbound_actuals_config]
Incoming Expense Lines

Import expense lines from ERP systems to SPM.

[sn_invst_pln_inbound_actuals]

Project Portfolio Suite tables
Project Portfolio Suite adds the following tables.

Table

Description

Project Stakeholder

Stores all stakeholders who are associated with one or more
projects.

[pm_m2m_project_stakeholder]
Project Time Card Exception
[project_timecard_exception]
Project Time Category

Stores time card information such as Week starts on, User,
Project, and State of the time cards.
Stores project sub-categories created for time cards.

[project_time_category]
Time Sheet Exception
[time_sheet_exception]

Stores time sheet information such as Week starts on, User,
and State of the time sheets.

Demand management tables
Demand management adds the following tables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1808


<!-- page 1809 -->
Table

Description

Demand

Stores all demands.

[dmn_demand]
Decision

Stores all decisions.

[dmn_decision]
Stakeholder Register

Stores all stakeholders.

[dmn_stakeholder_register]
Requirement

Stores all requirements.

[dmn_requirement]
Demand Stakeholder
[dmn_m2m_demand_stakeholder]
Demand Stage Config
[dmn_stage_config]
Idea

Stores all stakeholders who are associated with one or
more demands.
Stores the images displayed in the demand stage pop-up
window.
Stores all ideas.

[idea]

Project management tables
Project management adds the following tables.

Table

Description

Goal

Project goals.

[goal]
Issue

Project issues.

[issue]
Personalize Workbench
[workbench_config_user]
Portfolio

Configuration settings for each user that utilizes the
workbench.
Portfolios.

[pm_portfolio]
Portfolio Project

Portfolio projects.

[pm_portfolio_project]
Portfolio Project Goal

Portfolio project goals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1809


<!-- page 1810 -->
Table

Description

[pm_portfolio_goal]
Portfolio Project Issue

Portfolio project issues.

[pm_portfolio_issue]
Portfolio Project Relationships
[pm_m2m_portfolio_project]
Portfolio Project Risk

All relationships between a portfolio and each
project in the portfolio.
Portfolio project risks.

[pm_portfolio_risk]
Project

All projects.

[pm_project]
Project Task

All tasks used in projects.

[pm_project_task]
Project Task Link
[pm_project_task_link]
Project Template

All records for linked changes (installed with the v3
plugin).
Project templates.

[project_template]
Project Template Configuration

Configuration settings for project templates.

[project_template_config]
Project Template Task

Tasks in project templates.

[project_template_task]
Risk

Project risks.

[risk]
Project Change Request

Project change requests.

[project_change_request]
Status Report

Project status reports.

[project_status]
Teamspace
[pm_app_config]
Planned task Relationship
[planned_task_rel_planned_task]

All teamspaces, which refer to the tables that are
created for the teamspaces. See Installed with
teamspaces for a list of teamspace tables.
Predecessor and successor tasks in a dependent
relationship, including task lag values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1810


<!-- page 1811 -->
Table

Description

Baseline

All baselines.

[planned_task_baseline]
Baseline Item

All tasks that are part of baselines.

[planned_task_baseline_item]
Task Relationship

Predecessor and successor tasks in a dependent
relationship.

[task_rel_task]
Planned task Recalculation Exclusions

Defines tables that are excluded from recalculation
(start and end dates). For example, the table is used
[planned_task_recalculation_exclusions] for all sub tables under planned_task to exclude
tables from being recalculated.
This table allows you to configure the tables from
which you would not like to perform the recalculation
from.

Program management tables
Program management adds the following tables.

Table

Description

Program Task

All the tasks in program

[pm_program_task]
Program

All programs

[pm_program]

Resource management tables
Resource management adds the following tables.

Table

Description

Group Resource Roles

Stores the resource roles for the groups with pps_resource_role.
The roles in this table are populated from the User Resource Role
[user_has_resource_role] table of the users that are part of a group.

group_has_resource_role

The table is read-only.
Requested Allocation Daily

Stores day-level breakdown for requested allocations.

[requested_allocation_daily]

The table is read-only.

Resource Allocation

Allocations for resources.

[resource_allocation]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1811


<!-- page 1812 -->
Table

Description

Resource Allocation Daily

On a day-to-day basis, stores the events that are created through a resource
plan. Also stores:

[resource_allocation_daily]

• User created calendar events as records.
• Actual hours that a user has spent on a task, project, or any other type of
activity, such as meeting or admin work.

Resource Aggregate Daily
[resource_aggregate_daily]

On a day-to-day basis, stores aggregated values, such as capacity, allocated
hours in a project, confirmed hours in a project, non-project time, actual
hours, and availability of every user.
This table is not enabled by default. To generate daily
aggregates and store them in this table, create the

com.snc.resource_management.generate_daily_aggregates
property and set the value to true.
Resource Aggregate Weekly
[resource_aggregate_weekly]

On a weekly basis, stores aggregated values, such as capacity, allocated
hours in a project, confirmed hours in a project, non-project time,
actual hours, and availability of every user. The values in the table are
asynchronously updated on every insert/update/delete to the Resource
Allocation Daily [resource_allocation_daily] table.

Resource Aggregate Monthly

On a monthly basis, stores aggregated values, such as capacity, allocated
hours in a project, confirmed hours in a project, non-project time,
[resource_aggregate_monthly] actual hours, and availability of every user. The values in the table are
asynchronously updated on every insert/update/delete to the Resource
Allocation Daily [resource_allocation_daily] table.
Requested Allocation

Allocations for resource plans.

[requested_allocation]
Resource Event

Stores events that are created for a user.

[resource_event]
Resource Event Color

The colors that the application displays for each event type.

[resource_event_color]
Resource Plan
[resource_plan]
Resource Plan Logs
[resource_plan_logs]
Resource Report

All resource plans. These columns were added for Helsinki: top_task,
program, portfolio.
Stores errors and warning that might occur during the resource allocation for
a resource plan.
Resource reports that you can generate and save.

[resource_report]
Resource Report Chart

This table is not used.

[resource_report_chart]
Resource Report Daily

Daily resource reports that you can generate and save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1812


<!-- page 1813 -->
Table

Description

[resource_report_daily]
Resource Report Export

Saves JPG and PNG exports of resource management reports.

[resource_report_export]
Resource Report Monthly

Monthly resource reports that you can generate and save.

[resource_report_monthly]
Resource Role

Stores project specific roles.

[resource_role]
User Resource Role

Stores the resource roles for a user.

[user_has_resource_role]
User Calendar Event

Stores events that are created in the calendar of a user.

[user_calendar_event]
User Schedule

Stores the schedule for a user.

[user_has_schedule]

Innovation management tables
Innovation Management adds the following tables.

Table

Description

Idea
[im_idea_core]

Default table which stores all the information
related to the Idea portal. Extends the Task
table.

Idea Category

Stores the list of static idea categories.

[im_category]
Idea Category Configuration
[im_category_config]

Idea Categories
[im_m2m_idea_category]
Idea Module
[im_module]

Stores idea category definition information
such as the table to use, field name, and
hierarchy of the idea category. Also stores
mapping information between idea categories
table and the Idea module.
Stores mapping information between idea
categories and ideas.
Configuration for the Idea portal such as
module name, module id, and idea table to
use. Create a separate table for each Idea
module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1813


<!-- page 1814 -->
Time card management tables
Time card management adds the following tables.

Table

Description

Time Card

Stores time logged by the user against a category such as a task, meeting,
or training.

[time_card]
Time Sheet

Groups all time cards for the user for a week.

[time_sheet]
Time Sheet Policy Stores all time sheet policies.
time_sheet_policy
Time Card Daily

Stores the time logged in a time card on daily basis.

[time_card_daily]

Rate model tables
Rate model add the following tables.

Table

Description

Rate Model

Stores rate model definition.

[rate_model]
Rate Model Entity
[rate_model_entity]
Rate Model Entity Attribute

List of entities from which the attributes can be
selected.
List of attributes in the entities.

[rate_model_entity_attribute]
Rate Model Line

Stores rate line values.

[rate_model_line]
Rate Model Line Attribute
[rate_model_line_attribute]
Rate Line Import Set
[imp_rate_model_line]

Stores rate line attributes that are added from
the entities.
Stores import sets that you imported into the
instance.

Roles installed with PPM Standard (Project Portfolio Management)
Roles are added with activation of PPM Standard plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1814


<!-- page 1815 -->
Project Portfolio Suite roles
Project Portfolio Suite adds the following roles.

Role title [name]

Description

Portfolio manager

Has access to all portfolios. Has the same
access permissions as a project user and a
[it_portfolio_manager] demand user. Also has budget owner role
is added as part of Financial Management.

Contains roles

• it_demand_user
• it_project_manager
• it_project_user
• portfolio_manager
• it_demand_manager
• it_project_portfolio_user

PPS admin
[it_pps_admin]

Can view and modify the preferences,
configurations, and settings for projects,
demands, programs, portfolios, resources,
time cards, agile development, and
timeline visualization.

• it_program_manager
• it_portfolio_manager
• it_project_manager
• it_demand_manager
• pps_admin
• timeline_admin
• rate_model_admin

Demand management roles
Demand management adds the following roles.

Role title [name]

Description

Contains roles

Demand manager

Can access all the modules of the Demand
Management application.

• it_project_user

[it_demand_manager]

• resource_user
• timeline_user
• demand_manager
• it_demand_user
• rate_model_user

Demand user
[it_demand_user]

Can access the Demand and Stakeholders
modules of the Demand Management
application.

• demand_user
• pps_resource

Project management roles
Project management adds the following roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1815


<!-- page 1816 -->
Role title [name]

Description

Contains roles

Portfolio user

User who can view IT Portfolio Project
records.

project_portfolio_user

[it_project_portfolio_user]
Project user

Can only view Project form fields. Can
modify additional fields on the Project
Task form, such as Time constraint and
State.

[it_project_user]
Project manager

Has configuration access right to
all Project Management application
features and functionality.

[it_project_manager]

• it_project_portfolio_user
• project_user

• resource_user
• it_demand_manager
• it_project_user
• project_manager
The project_manager
role also contains the
timecard_approver role.
• timeline_user
• rate_model_user

Program management roles
Program management adds the following roles.

Role title [name]

Description

Program manager

Program managers have access to all programs.

[it_program_manager]

Contains roles

• resource_user
• it_project user
• program_manager
• it_demand_user

Resource management roles
Resource management adds the following roles.

Role title [name]

Description

Resource manager

Users with this role can:

[resource_manager]

• Review resource plans, confirm, and allocate
resources to tasks.
• Create skills and view them in the User Skills list.
• Read schedules.

Contains roles

• resource_user
• timecard_approver
• skill_admin
• rate_model_user

• Create a group of type pps_resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1816


<!-- page 1817 -->
Role title [name]

Description

Contains roles

• Add users to or remove them from any groups.
• Update group name, group email, parent,
description, manager, average daily FTE hours/
hours per person day, and hourly rate.
Resource user
[resource_user]

PPS resource
[pps_resource]

Users with this role can create resource plans and
request resources. Project managers are typically
given this role. Resource users cannot make
changes to plans in the Confirmed or Allocated
state.
Only users with the PPS Resource role are
considered for resource planning, and only users
or groups with the PPS resource role appear in
resource plans.

None

None

Innovation management roles
Innovation Management adds the following roles:

Role title [name]

Description

Idea admin

Contains roles

idea_manager

• Creates idea module.

[idea_admin]

• Defines idea categories.
• Configures mapping of idea categories with
idea module.
• Manages ideas and creates tasks such as
story, epic, feature, project, or demand from
an idea.

Idea manager

Manages ideas and creates tasks such as
project or demand from an idea.

[idea_manager]
Idea manager professional
[idea_manager_professional]

None

Manages ideas and creates tasks such as story, None
epic, feature, project, or demand from an idea.

Time card management roles
Time card management adds the following roles.

Role title [name]

Description

Time card admin

Has write access to all time cards.

[timecard_admin]
Time card approver

Contains roles

• timecard_user
• timecard_approver

Approves or rejects time cards for time card users. timecard_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1817


<!-- page 1818 -->
Role title [name]

Description

Contains roles

Creates time cards for self.

None

[timecard_approver]
Time card user
[timecard_user]

Rate model roles
Role title [name]

Description

Rate model admin

Manages rate models and
rate lines. Has all privileges
within rate model, including
configuring attributes, export
and import of rate lines, and
administration.

[it_rate_model_admin]

Rate model user

Contains roles

• rate_model_user
• import_set_loader
• import_transformer
• import_admin

View rate model and rate lines. None

[rate_model_user]

Business stakeholder role for PPM
For PPM users, the Business Stakeholder (com.snc.business_stakeholder) plugin contains
the business stakeholder roles for Enterprise Architecture (formerly APM), ITFM, and PPM.
Users with this role can read records of the tables that are used to retrieve data for reports and
dashboards and can approve demands and timecards. You can assign this role to any user who
is a business stakeholder.

Upgrade information
If you have upgraded, the business stakeholder role for PPM is available only when you activate
Read only roles for PPM Standard plugin (com.snc.pmo_read_roles).
If you are a new customer, the Read only roles for PPM Standard plugin
(com.snc.pmo_read_roles) is activated on zBoot. However, the business stakeholder role for PPM
is available only when you install the PPM Standard plugin.

Demand and Timecard approver roles
The Read only roles for PPM Standard plugin (com.snc.pmo_read_roles) installs the
sn_ppm_read role. The sn_ppm_read role provides read-only access to the Portfolio, Program,
and Timecard dashboards along with the Resources report to the assigned users. The
sn_ppm_read role also contains the timecard_approver and demand_approver roles, which
allow the assigned users to approve demands and timecards. Commenting is enabled, when a
business stakeholder role is added as collaborator in demands.

PPM tables accessible to users with the business stakeholder role
Users with the business stakeholder role for PPM can access the following tables that store
the data to load the widgets in the Portfolio dashboard, Program dashboard, and Time Sheet
dashboard, and Resource reports:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1818


<!-- page 1819 -->
PPM tables
Label

Table name

Action

project_action

Decision

dmn_decision

Demand

dmn_demand

Demand Task

dmn_demand_task

Fiscal period

fiscal_period

Idea

im_idea_core

Issue

issue

Program

pm_program

Project

pm_project

Project Task

pm_project_task

Program Task

pm_program_task

Project Time Card Exception

project_timecard_exception

Requirement

dmn_requirement

Resource Aggregate Daily

resource_aggregate_daily

Resource Aggregate Monthly

resource_aggregate_monthly

Resource Aggregate Weekly

resource_aggregate_weekly

Resource Plan

resource_plan

Risk

risk

Status Report

project_status

Time Card

time_card

Time Sheet

time_sheet

Time Sheet Exception

time_sheet_exception

Domain separation and Project Portfolio Management
Domain separation is supported in Project Portfolio Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level - Basic*
• There is business logic to ensure data goes into the proper domain for the application’s
service provider use cases.
• In the application, the user interface, cache keys, reporting, rollups, aggregations, and so on,
all consider domain at run time.
• The owner of the instance needs to be able to set up the application to function normally
across multiple tenants.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1819


<!-- page 1820 -->
Use case: As a service provider when I use chat to respond to a tenant-customer’s message, the
client must be able to see my response.

How domain separation works in Project Portfolio Management
Project Portfolio Management is domain separation-compliant with the following limitations:
• All PPM entities such as ideas, project, demand, resource plan, and allocations are expected
to be in the same domain. A project entity having tasks or resources from multiple domains is
not supported.
• A parent entity and all child entities, such as a project record and its project tasks, are
expected to be in the same domain.
• When you change the domain of a parent record, for example a project record, the domain of
the child records are not changed.
• Only users belonging to the same domain, parent domain, or the top domain have the visibility
into PPM entities of a domain.
• All system properties are in the global domain and are not specific to a domain. Planning
console settings, however, are still domain-specific.
Related topics
Domain separation for service providers

Quick start tests for Project Portfolio Management
Validate that Project Portfolio Management still works after you make any configuration change
such as applying an upgrade or developing an application. Copy and customize these quick start
tests to pass when using your instance-specific data.
Project Portfolio Management quick start tests require activating the PPM Standard - ATF Tests
plugin (com.snc.financial_planning_pmo.atf).
PMO: Financial Tests for verifying cost rollups and demand to project conversion test suite
Test

Description

Release version

PMO: Verify cost plan roll
up to project/demand and
program

Validate the total planned
cost rollup from project and
demand to program.

Madrid

PMO: Verify cost plan roll up
to project/demand, program
and portfolio

Validate the total planned
cost rollup from project and
demand to portfolio.

Madrid

PMO: Verify financials of
Validate the financial tab fields Madrid
Project created from Demand - of a project created from a
Simple Financials
demand.
PMO: Verify financials of
Project created from Demand
- With budget, cost plans,
benefit plans

Validate the budget, cost plan, Madrid
and benefit plan of a project
created from a demand.

PMO: Verify ETC/EAC at cost
plan breakdown and project
level

Validate the EAC and ETC
Tokyo
values at cost plan breakdown
and project level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1820


<!-- page 1821 -->
PMO: Innovation Management Tests for verifying idea life cycle
Test

Description

Validate state changes of Idea Validate that the state of idea
is changed when an idea is
accepted, rejected, or any
other task is created from an
idea.

Release version

San Diego

PMO: Project Management tests for validating basic life cycle and project rollups test suite
Test

Description

Validate PPM Cycle
from Ideation to
demand to project
closure

Validate the flow of creating an idea, converting the idea to
a demand, and then converting the demand to a project.

Release
version

Madrid

Note: This test fails if the PPM Standard
Multicurrency (com.snc.ppm_multicurrency) plugin is
active.

Validation of State
and Date Rollup for
Automatic Project

Validate the date and state rollup from tasks for a project of
type Automatic.

Madrid

Validation of State and
Date rollup for Manual
Project

Validate the date and state rollup from tasks for a project of
type Manual.

Madrid

Validation of project
Validate the project percent complete when all the tasks are Orlando
percent complete when closed as Closed Incomplete.
all tasks are Closed
Incomplete
Validate Project is not
Validate the project percent complete is not 100% when at
100 percent complete
least one of the tasks is closed as Closed Incomplete or
if it has atleast one task Closed Skipped with task % complete less than 100%.
as closed incomplete
Validate waterfall
project does not show
Agile Planning Board

Orlando

Validate that the waterfall projects cannot use the following: Orlando
• Add stories or epics
• Add agile phase
• Access Agile board from the project

Validate dates are
rolled up from existing
projects to program

Validate that the start and end dates of the project are
rolled up to the program to which the project belongs.

Paris

Validate dates are
rolled up from new
projects to program

Validate that the start and end dates of a new project are
rolled up to the program to which the project belongs.

Paris

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1821


<!-- page 1822 -->
PMO: Project Management tests for validating basic life cycle and project rollups test suite
(continued)
Release
version

Test

Description

Add projects and
demands with risks or
issues to program

Validate that the projects and demands with risks or issue
records associated with them are added to the program.

Paris

Add projects and
demands with benefit
plans to program

Validate that the projects and demands with benefit plans
associated with them are added to the program.

Paris

Add projects and
demands with cost
plans to program

Validate that the projects and demands with cost plans
associated with them are added to the program.

Paris

Validate program dates
on addition of existing
demands

Validate that the start and end date of the program are
adjusted on addition of an existing demand.

Paris

Validate program dates
on addition of new
demands

Validate that the start and end date of the program are
adjusted on addition of a new demand.

Paris

Validate program state
rollup

Validate that the program state is rolled up from state of all
the projects in the program.

Paris

Verify Demand task due Validate that the Due date field is empty for a new demand
date column field value task.
empty

Rome

Verify baseline is
Validate that a project and demand baseline is created
created on Project &
when a demand is converted to a project.
Demand when demand
is converted to project

Rome

Verify timecard
financial appears on
Demand when time
card submitted against
demand task

Validate that the actual cost of the demand is updated
when a time card is processed for a demand task.

Rome

Validate demand
approved date

Validate that the approved dates for demand and the
project created from the demand are the same.

Tokyo

Validate project
preference "close
project milestone tasks
when they change to
work state"

Validate that the milestone tasks are closed when their
state is changed to Work in Progress after setting the
project preference to "close project milestone tasks when
they change to work state".

Tokyo

Validate project
preference "Enable
move project for WIP
projects"

Validate that the project start date is changed appropriately Tokyo
for a project in WIP state when the project start date is
changed after setting the project preference to "Enable
move project for WIP projects".

Validate project
preference "Rollup

Validate that the start date of a project task does not roll up
to the project when the project planned dates are different

Tokyo

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1822


<!-- page 1823 -->
PMO: Project Management tests for validating basic life cycle and project rollups test suite
(continued)
Release
version

Test

Description

project start date from
tasks"

than the project task start date after deselecting the project
preference "Rollup project start date from tasks".

Child Test Suite: Validation of Move Project Action
Test

Description

Release version

Validate Planned start date
of a project can be shifted by
using the Move project action

Validate that the Planned start Orlando
date of a project in Planning
or Open state can be updated
to a later or earlier date than
the current planned start date
using the Move project related
link.

Validate Move Project is
disabled when Project is
selected for execution

Validate that the Move Project
option is not available if the
Project is in Execution phase.

Validate Move Project
functionality with sprint dates
populated for an agile phase

Validate that the sprint start
Orlando
and end dates are cleared
when the project is moved
using the Move Project related
link.

Orlando

Note: This
test is available
only when Agile
Development 2.0 plugin
(com.snc.sdlc.agile.2.0)
is activated.
Validate Move Project
functionality with external
dependencies and related
entities

Validate that the external
Orlando
dependencies and related
entities are also shifted and
redrawn when the project is
moved using the Move Project
related link.

Validate Move Project
functionality with different
project states

Validate that the Move Project
does not work when the
project is in Work In Progress
or Closed Complete state.

Orlando

Child Test Suite: Verify RIDAC flow of a Project
Test

Description

Release version

Verify RIDAC flow for Risk

Validate the RIDAC flow for a
risk associated with a project.

Quebec

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1823


<!-- page 1824 -->
Child Test Suite: Verify RIDAC flow of a Project (continued)
Test

Description

Release version

Verify RIDAC flow for Issue

Validate the RIDAC flow for
an issue associated with a
project.

Quebec

Verify RIDAC flow for Decision

Validate the RIDAC flow for
a decision associated with a
project.

Quebec

Verify RIDAC flow for Action

Validate the RIDAC flow for
an action associated with a
project.

Quebec

Verify changes in fields of risk
form

Validate that any change
is the Risk form fields
such as Risk rank, Risk
value, and Probability is
updated successfully upon
submission.

Quebec

Child Test Suite: Verify RIDAC flow of a Demand
Test

Description

Release version

Verify RIDAC flow for Risk

Validate the RIDAC flow
for a risk associated with a
demand.

Quebec

Verify RIDAC flow for Issue

Validate the RIDAC flow for
an issue associated with a
demand.

Quebec

Verify RIDAC flow for Decision

Validate the RIDAC flow for
a decision associated with a
demand.

Quebec

Verify RIDAC flow for Action

Validate the RIDAC flow for
an action associated with a
demand.

Quebec

Verify changes in fields of risk
form

Validate that any change
is the Risk form fields
such as Risk rank, Risk
value, and Probability is
updated successfully upon
submission.

Quebec

PMO: Resource Management tests for verifying the resource plan flows test suite
Test

Description

Verify user
resource plan flow

Validate that the resource plan of a project can be moved to
canceled state from planned state.

Release
version

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1824


<!-- page 1825 -->
PMO: Resource Management tests for verifying the resource plan flows test suite
(continued)
Test

Description

Release
version

from Planned to
Canceled state
Verify group
resource plan flow
from Planned to
Complete state

Validate that the resource plan of a project can be moved to
complete state from planned state.

Madrid

Verify role resource Validate that the resource plan of a project can be moved to
plan flow from
allocated state from planned state.
Planned to
Allocated state

Madrid

Verify aggregated
cost of all resource
plans roll up to the
corresponding
project or demand
fields

Validate that the aggregated cost of all resource plans on a
project or demand roll up to the Planned Cost and Allocated
Cost fields and the Resource Cost section of respective
projects and demands.

Orlando

Verify Copy
Resource plan
option

Validate that the Copy Resource plan option creates an exact
copy of the source resource plan in the Planning state

Orlando

Verify resource
Validate that the aggregated cost of all resource plans on
plan aggregate roll a project or demand roll up to the total planned cost of the
up from project/
associated program.
demand to program

Orlando

Verify records on
completion of a
resource plan

Orlando

Validate the changes in a resource plan on completion:
• The state of the resource plan is updated to Completed.
• If the completion date is earlier than the resource plan end
date, the end date of the resource plan is updated with the
completion date. If the completion date entered is later than
the resource plan end date, the resource plan end date is
retained.
• All the requested and allocation records for the resource
plan for the period after the completion date are deleted.
If there are any actual hours logged against an allocation,
that allocation is not deleted. For those allocation records,
the allocated hours become zero and the actual hours are
retained.
• The available and allocated hours for resources are updated
in the aggregate tables.

Verify records on
completion of a
resource plan with

Validate the following on completion of a resource plan with
Planned Duration as allocation type:

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1825


<!-- page 1826 -->
PMO: Resource Management tests for verifying the resource plan flows test suite
(continued)
Test

Description

Planned Duration
as allocation type

• The state of the resource plan is updated to Completed.

Release
version

• Allocations are not deleted.
• End date of the allocation is updated to the completion date.

Verify the RP replan Validate that when a cancelled resource plan is re-planned, the
Capability
state of the resource plan changes to Planning.

Orlando

Verify whether
change in resource
plan is reflected in
corresponding cost
plan

Validate that when a resource plan is updated, the
Paris
corresponding cost plan is updated accordingly. For example, if
the total planned cost is 500 USD, and the planned hours is 10,
and you change the planned hours to 20, the total planned cost
is updated to 1000 USD.

Resource-Test the
default population
of resource plan
start & end date

Validate the following on creating a user or group resource plan
from the related list of a demand:

Paris

• If a demand is created without a start date and end date, the
user or group resource plan has task as demand and no start
and end date.
• If a demand is created with a start date and end date, the user
resource plan has task as demand and the start date and end
date as added for the demand.

Validate that
actual hours
in operational
resource plan and
time card are equal

Validate that when a time card category is mapped with an
operational work type, on submitting the time card for the
operational resource plan associated with that work type, the
actual hours in the resource plan and the time card are equal.

Quebec

Verify Resource
plan auto
population for
Operational plans

Validate that the operational resource plans associated with
a time card are automatically retrieved on the time card when
time is logged.

Rome

Verify resource
plan auto
population for
non-operational
resource plans

Validate that the resource plans associated with a project,
project task, or demand for a time card are automatically
retrieved on the time card when time is logged.

Rome

Related topics
Quick start tests

Related lists added for financials
PPM Standard adds several related lists to both the Project and Portfolio forms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1826


