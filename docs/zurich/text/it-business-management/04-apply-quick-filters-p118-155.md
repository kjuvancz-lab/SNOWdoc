# Zurich Strategic Portfolio Management — Apply quick filters

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 118–155 of 2289

Sections: Apply quick filters (p118); Optimize planning with scenario planning (p119); Use Capacity Planning (p129); Manage financials for planning items (p135); Manage portfolio financials (p153)

---

<!-- page 118 -->
You can choose to display the milestone with just its icon or along with its label.

Milestone indicator with label

Milestone indicator

Result

The tracking view of your roadmap is displayed according to your personalization settings. A
sample view of roadmap tracking is shown in the following image.

Apply quick filters for Prioritization and Roadmap data in Portfolio
Planning
Quickly apply filters for data in the Prioritization or Roadmap tabs to help you seamlessly plan
using a consistent data set across all views of the tab.

Before you begin

Role required: sn_align_core.apw_user

About this task

Quick filters help you filter the data shown in the List and Hierarchy views of Prioritization and
Roadmap. These filters are saved as your preferences. This way, you can view the same data
across all views for a tab, even when you log back in later, helping you seamlessly plan, prioritize
and roadmap work.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. Based on the tab you want to work in, select Prioritization, Roadmap, or Capacity Planning.
By default, the data in the Roadmap tab is filtered with the Planning state of Prioritized and
you see only prioritized items.
4. From the portfolio plan header, select Filter and add conditions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

118


<!-- page 119 -->
You can add filters for only those fields that are of the choice or reference type, within the tab.
◦ You can apply filters on only those fields that are available in those views.
◦ The filters are automatically applied and the data shown in the tabs is automatically
refreshed.
◦ The filters set in the Prioritization tab are not applied to the Roadmap tab and vice-versa.
◦ The filters set in to one view are also applied to the other views, within the same tab.

Optimizing planning with scenario planning in Portfolio Planning
As a portfolio manager, optimize your portfolio planning by comparing potential outcomes,
assessing their alignment with strategic goals, and approving the best scenario as your live plan.

Scenario planning items in the Prioritization tab
The Prioritization tab of the Scenario page enables you to add and remove planning items
to/from a scenario and adjust their dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

119


<!-- page 120 -->
Scenario planning items in the Roadmap tab
The Roadmap tab displays a Gantt chart-like view of the planning items in the scenario, showing
their planned start and end dates across the portfolio plan timeline. Using the Roadmap tab, you
can drag the bars representing planning items across the timeline to adjust their dates.

Scenario planning items in Financials tab
The Financials tab of the Scenario page enables you to set custom targets, budget, and
compare the allocated budget against target using the outcomes panel.

Portfolio Manager can simulate multiple scenarios with different budget combinations and
compare their outcomes to arrive at an informed decision to balance the resources and strategic
objectives. Using the financials view in Scenario planning, you can get a simulation mode for the
financial information. Using this view, the strategic planning users such as Portfolio managers,
Program managers, or Portfolio user working on the portfolios, can set a portfolio budget target
for a particular planning cycle, which could be a monthly, quarterly, yearly, or beyond a year up
to 5 years. Using this defined budget, portfolio users can prioritize the planning items within the
portfolio to analyze if the prioritized items can be executed within their portfolio budget, while
reviewing the monetary benefit from the prioritized items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

120


<!-- page 121 -->
Important: Enable the budget allocation property to allocate budget to your planning
items at portfolio-level and configure the budget attributes to allocate budget by expense
type or cost type.
Create multiple scenarios to compare them, and work with your stakeholders to approve an ideal
plan with better monetary benefit returns. Once approved, the approved Scenario will become
your new portfolio plan for the defined planning cycle. For more information to know about the
changes happening in a portfolio after scenario approval, see Approve a scenario.
You can perform financial scenario planning throughout your planning or execution cycle
depending on your organization needs such as at your regular planning cycles, quarterly
reviews, or financial review cycles. Financials in scenario planning helps you to arrive at an
informed decision and customize the portfolio planning to match with your organization needs.

Note:
• Finanicals in scenario planning is supported only for Epics, Projects, and Demands type
of planning items.
• Customers using the Legacy Investment Funding should migrate to new experience to
work on the financial scenario planning.
Personalize your scenario planning financials view using the Time scale and Range filters.
Manage the budget of your planning items by monthly, quarterly, or yearly cadence depending
on the planning cycle of your organization.
Outcomes panel in Scenario planning
The outcomes panel in the simulation indicates the financial information of the portfolio such as
target and budget amounts for Capex and Opex, set budget target for this simulation, utilized and
remaining budget from the target, benefit from the In-plan items, and the actual costs accounting
from the out of plan items. The aggregated data is fetched based on the portfolio timeline range
including the target and budget data.
Representations in outcomes panel for the identification.
Outcomes panel representation
Indication

Definition

Red text for amount without progress bar
indication for Total Simulated Budget

No defined or set target amount for this
scenario.

Red text for amount and red progress bar for
Total Simulated Budget

Total allocated budget for planning items
exceeds the scenario's set target amount.

Red text amount for Capex Budget

Capex Budget allocations exceed the
scenario's Capex target.

Red text amount for Opex Budget

Opex Budget allocations exceed the
scenario's Opex target.

Green text for budget amounts and green
progress bar

Budget allocation for each expense types and
total budget is within the scenario's set target.

Scenario planning features
In scenario planning, you can perform the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

121


<!-- page 122 -->
Feature

Description

Create a scenario

Create a scenario from the current plan, or
another scenario, in a simulated environment
to compare the scenario with the live plan and
other scenarios.

Compare scenarios

Compare scenarios and the live plan side by
side to review tradeoffs and items added or
removed from the plans.

Approve a scenario

Approve the best scenario.

Manage scenarios

View list of scenarios, rename scenarios, and
delete scenarios.

Scenario planning use cases
The following are high-level use cases for scenario planning.
• Fiscal year planning: Megan Burke, Portfolio Manager at ACME Inc, is planning for the next
fiscal year and is required to prioritize planning items and align them with the organizational
strategic goals. Megan creates a scenario for the portfolio plan and then uses the Prioritization
tab to align items with goals. Megan holds discussions with program managers and with the
financial team, creates multiple scenarios, and compares them. Megan approves the optimal
scenario as a well-aligned strategic portfolio plan for the next fiscal year.
• Mid-cycle reprioritization; Changed priorities emerging mid-year require adjustments to the
current portfolio plan. John Doe, the product manager at ACME Inc, creates a scenario and
incorporates the changed priorities. John adjusts the plan based on the program manager's
and financial team's feedback and finalizes the plan.

Create a scenario
Create a scenario from a live plan or another scenario in a simulated environment to compare the
scenario with the live plan and other scenarios.

Before you begin
Role required:

• sn_align_core.apw_user
• sn_align_ws.spw_financial_user - to view and edit financial details.

About this task

Creating a scenario enables you to visualize and anticipate potential outcomes. You can create
a scenario based on the live plan or on another existing scenario. Once you have created one
or more scenarios, you can compare them side by side with the live plan and approve the most
desirable scenario. The scenario you approve becomes the live plan.

Procedure
1. Navigate to Workspaces > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. Select Create scenario.

Note: Before you have created your first scenario, you see the Scenario planning

button on the Scenario page. In such a case, select Scenario planning and then you see
the Create scenario button.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

122


<!-- page 123 -->
a. Enter a name for your scenario in the Scenario name field.
b. Optional: Enter the details of your scenario in the Description field.
c. In the Copy From field, select the Current Plan or the name of an existing scenario based on
which you want to create the scenario.
d. Select Create.
The Scenario planning- [Scenario Name] page appears with the Prioritization tab open. The
Prioritization tab lists all the planning items that you have in the live plan, or in the existing
scenario that you copied the scenario from. The planning item start and end dates are
determined based on the dates specified in the live plan or the actual execution dates.
◦ In Plan toggle: By default, the In Plan toggle is switched on for planning items that have
the planning state as Prioritized or Done and have their start dates within the portfolio plan
timeline. The In Plan toggle is turned off for items that have the status New, In Review, or
Canceled.
◦ Yellow highlights for out of range dates: The planning item dates that are out of range of the
portfolio plan timeline are highlighted with a yellow background. For such items, the In Plan
toggle is turned off.
4. Use the Prioritization tab to include or exclude additional planning items in the scenario.

a. Optional: To exclude a planning item from the scenario, turn off the In Plan toggle.
b. Optional: To include a planning item in the scenario, edit the start and end dates of the item
to fall within the portfolio plan timeline, and then turn on the In Plan toggle.
If you include out-of-timeline items in a scenario, these items remain in the scenario during
the planning and prioritization process. When the scenario is approved, the dates of these
items are updated to align with the scenario dates. However, because these updated dates fall
outside the original portfolio plan timeline, the items are moved out of the live portfolio plan.
5. Use the Roadmap tab to view planning item dependencies and adjust planning item dates:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

123


<!-- page 124 -->
a. Drag the start or end of the planning item bars to change their start or end dates.
b. Drag the planning item bars to shift them in the plan timeline.
c. View the dependencies and milestones of the various planning items.
6. Use the Financials tab view the prioritize, invest, and execute the right items to provide best
returns on investments for your organization.

a. Set target for your portfolio budget.

i. Select the Set Targets (

) button.

ii. In the Set Targets window, set budget for an expense type or a cost type using the inline
edit feature.

Tip: You can change the Time scale and Range to set targets for each fiscal period
at monthly, quarterly, or yearly cadence to meet your organization's planning cycle.
The target set for a higher timescale, it is equally split it between the fiscal periods.
Once the target is set for a scenario, the Target row displays the defined target amount by
fiscal period and budget allocation choices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

124


<!-- page 125 -->
b. Include or exclude planning items in scenario using the In-plan toggle.
c. Add or reduce budget for individual planning items using the inline editing feature.
Changes made to the budget using while creating a scenario are marked with

icon.

What to do next
• Create more scenarios, if necessary.
• Compare scenarios. You can directly compare scenarios from simulation mode by selecting
Compare scenarios from the Scenario actions list.
• Approve a scenario.

Compare scenarios
Compare scenarios side by side to evaluate comprehensive planning, optimize resource usage,
confirm feasibility, and financial information.

Before you begin

Verify that you have created one or more planning scenarios and selected planning items for
execution. For more information, see Create a scenario.
Role required:
• sn_align_core.apw_user
• sn_align_ws.spw_financial_user - to view the financial widgets.

Procedure
1. Navigate to Workspaces > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Create scenario menu, select Compare scenarios.
The Compare scenarios page appears.
4. Select Add Scenario To Compare and select or deselect scenarios to be included in the
comparison.
You can add up to five scenarios to the comparison.
5. Select Compare.
You can also view the Compare Scenario page by selecting Compare Scenarios from the
Scenario Actions menu in the Scenario page. The Compare Scenario page appears with the
scenario open in the Scenario page included in the comparison with the current plan.
The selected scenarios appear side by side on the Compare Scenario page.
6. Compare different aspects of the scenarios such as Budget vs Target, Benefit, Budget
distribution, trade offs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

125


<!-- page 126 -->
Note: Cost and benefit widgets in compare scenarios page reads the live data of InPlan items for which the budget isn’t manually changed while scenario planning.
Visual cues in scenario comparison
Criteria

Description

Removed from this plan

Items that are removed from the plan when
the scenario is approved, are marked with a
red X.

Added to this plan

Items that are added to the plan, when the
scenario is approved, are marked with a
green checkmark.

The following are some indications of the suitability of a scenario for approval:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

126


<!-- page 127 -->
◦ All planning items providing a focused strategy that supports the organization's objectives
effectively.
◦ The trade-off section includes relevant items, demonstrating comprehensive and inclusive
planning that addresses various aspects of the project or initiative.
◦ The scenario is realistic and achievable, considering current constraints and capabilities,
confirming that planned actions can be executed within the given timeframe and budget.
◦ Better benefit from financial planning using the widgets, Budget vs Target to validate the
allocated budget against the set targets, Benefit to identify scenario with better monetary
benefit, and Budget Distribution.
7. Optional: Select the Approve Scenario button relevant to a scenario to approve it.
For more information about approving existing scenarios in the Portfolio Planning Workspace,
see Approve a scenario.

What to do next

Approve a scenario

Approve a scenario
Approve a scenario that aligns with your organizational goals and offers the best business
outcomes to make the scenario your current plan.

Before you begin

Ensure that you have compared the scenarios and selected the one you want to approve. For
more information, see Compare scenarios.
Role required:
• sn_align_ws.scenario_approver
• sn_align_ws.spw_funding_user - to view and approve the financial changes.

About this task

When you approve a scenario:
• Planning items with the In Plan state are updated to the Prioritized state.
• Planning items that you moved out of the plan are changed to the In Review state.
• The approved dates are revised accordingly.
• Changes made to the budget of a planning item is will be approved as the budget.

Procedure
1. Navigate to Workspaces > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Create scenario menu, select Compare scenarios.
The Approve scenario button is also available on the Scenario page. As soon as you have
created a scenario, you can directly approve a scenario without comparing it with the other
scenarios.
4. Select the Approve scenario button relevant to the scenario that you want to approve.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

127


<!-- page 128 -->
While approving a scenario, you can:
◦ Convert the priotitized demands to projects to automatically build a portfolio plan by
selecting the Convert In-plan Demands to Projects toggle.
◦ Delete the remaining scenarios by selecting the Delete other scenarios toggle.
◦ Enter a reason for approving the scenario in the Notes field.
5. Select Approve.

Manage scenarios
Use the Manage scenarios option to view a list of all scenarios, rename scenarios, or delete
scenarios.

Before you begin

Role required:sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. Navigate to Create Scenario > Manage Scenarios..
You can also select Manage Scenarios in the Recent Scenarios menu in the Scenario page.
The Manage scenarios dialog appears with the list of scenarios relevant to the current plan.
4. Do any of the following actions.
Action

Description

Delete a scenario

a. Select the check boxes relevant to the sce­
narios that you want to delete.
b. Select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

128


<!-- page 129 -->
Action

Description

a. Double-click the name field that has the rel­
evant scenario name.
The field becomes editable.

Rename a scenario

b. Edit the scenario name.
c. Press the Enter key.

Using capacity planning in Portfolio Planning
Assess the resource capacity and review existing allocations, which help you to make informed
decisions while working on assigning resources.
Use the manage resource capacity screen to generate resource capacity details.
Use the Capacity Planning screen to view detailed information about the resource capacity
mapping to a portfolio.

Manage resource capacity
Manage resource capacity screen

Using Manage resource capacity, select a time frame and primary attributes to view number of
available resources. Generated resource capacity details are saved. You can regenerate capacity
to view latest changes in the resource availability.
Resource capacity screen helps you to view the following data.
• Resource availability for generated capacity.
• Total number of available resources in a monthly breakdown view.
• Latest date of generating the capacity details.
• Option to regenerate and fetch the latest capacity details from the employee profile mappings.
On the Manage resource capacity screen, you can:
• Filter resources with specific capacity attributes for a required date range to view the number
of available resources.
• Regenerate capacity details to view the latest details from the resource employee profile
mapping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

129


<!-- page 130 -->
Select resource criteria
• Select a primary attribute to automatically view the available groups, roles, or skills from the
resource assignments of the prioritized planning items.
• Switch between Auto-select and Manual-select option to view the allocated resource efforts
for all planning items or to view a custom data, respectively.
• Define resource criteria to view the available groups, roles, or skills from the resource
assignments of the prioritized planning items.

Capacity Planning
Capacity Planning screen displays the resource efforts from the prioritized planning items.
• Comprehensive overview of resource capacity and allocations.
• Current resource capacity allocation.
• Interactive Gantt chat to view prioritized planning items in the bottom tray to analyze and plan
work.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

130


<!-- page 131 -->
Understanding the Capacity Planning screen.
Capacity Planning legend
Color

Description

Yellow (Gantt bar)

Planning item with no resource assignments.

Blue (Gantt bar)

Resource estimates for Planning items are
within the resource capacity.

Red (Cells and Gantt bar)

Overallocation in resource estimates.

Green (Cells)

Resource estimates within the resource
capacity.

Using Capacity Planning, you can:
• View the capacity allocations of prioritized planning items for your current portfolio and better
forecast your future resource requirements.
) to view planning items by their type, state, priority or any by any
• Use the filter option (
required attributes to create capacity plans.

Note: Default filter is set to display prioritized planning items only.
• View the updated resource capacity based on the assigned operational resource assignments.
• View the total resource capacity in the heatmap view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

131


<!-- page 132 -->
• View total resource capacity and total estimates.
• View the efforts for operational work and efforts for estimates outside of portfolio in the
Additional items list.
• Redefine the workforce criteria by selecting Resource criteria (

)

Example: Calculation of Operational Resource Assignment in Capacity Planning
As a Resource Manager, you can create operation resource assignments or migrate existing
operational resource plans of your employees to handle the required meetings, trainings, time off
and so on to meet your work requirements.
Consider a group with capacity of 2 FTE and resource manager creates a Group type operation
resource assignment for 10% of the capacity for training. This operational assignment can be
viewed in the Operational work line item in the top-tray of the Capacity Planning screen. The
value of the Operational work line item will be 0.2, which is 10% of total capacity of the group.
When a resource manager creates a Group type operation resource assignment for time off, this
doesn't update the Operational work line item but reduces the total available capacity.
Consider the same group for which resource manager creates an operation resource assignment
for 25% of the capacity for time off, for a quarter from April to June. The total available capacity
of the group for the quarter April to June will be 1.5 FTE, which is 75% of the total capacity after
reducing the 25% time off.
0.5 FTE, which is 25% of total capacity of the group will be reduced.

Note: The Operational work line item is highlighted in gray color.

Generate resource capacity
Generate and view the total capacity of the resources with primary attributes. Capacity details
helps Portfolio Managers to plan and manage planning items depending on the resource
availability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

132


<!-- page 133 -->
Before you begin
1. Enable planning attributes for capacity planning. For more information, see Enable planning
attributes for capacity planning in Portfolio Planning.
2. Generate employee profiles for resources. For more information, see Generate employee
profiles for resources to work with capacity planning.
Role required: sn_align_ws.spw_capacity_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace.
2. Select the Manage resource capacity option (

).

Note: If planning attributes aren’t enabled for capacity planning, you see an empty state
screen with an option to configure. Contact your admin to enable planning attributes
for capacity planning. For more information, see enable planning attributes for capacity
planning.
3. Use one the following options to view and regenerate the capacity details.
Choice

Description

Use the Resource capacity filters to filter and
view the resource capacity within the select­
ed date range for their primary attributes.
a. Select Start Month and End Month to de­
fine a time frame.
You can select a date range up to 3 years.
b. Select at least one of the primary attributes
from Group, Role, or Skill.
Generate capacity details

c. Select View capacity (

).

d. On the Generate capacity details window,
select Generate.
The resource capacity details for the select­
ed combination of primary attributes and
time frame is displayed.

Note: Capacity generation is an
asynchronous process. You can gener­
ate capacity for multiple combination
of dates and attributes.
a. Select Regenerate capacity (
Regenerate capacity details

Scheduled job

).

b. In the Regenerate capacity window, filter
the date range, if needed, and select Regen­
erate.
Activate a schedule job to automatically gen­
erate the capacity details of your resources
at required cadence. For more information on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

133


<!-- page 134 -->
Choice

Description

how to activate a scheduled job, see Activate
a scheduled job to automatically generate re­
source capacity.

What to do next

Use Capacity Planning to view the resource capacity, resource-to-work mapping and re-prioritize
resource allocations to effective execute your prioritized planning items.

Use Capacity Planning in Portfolio Planning
View and analyze the resource capacity for your portfolio to plan and re-forecast the resource
assignments.

Before you begin

Generate resource capacity using Generate resource capacity.
Role required: sn_align_ws.spw_capacity_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace.
2. Select a plan from Portfolio Plans.
3. Select Planning > Capacity Planning.
4. Define a resource criteria by selecting a primary attribute from the list.
If you select Group, all the available groups from the resource assignments of the prioritized
planning items are automatically displayed in the Auto-select option. You can add or remove
the suggestions to view the resource capacity using the Manual-select option.

Tip: You can always redefine and change the resource criteria to view custom results
using the Resource criteria (

) button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

134


<!-- page 135 -->
5. Select Submit.

Result

The Capacity Planning screen for resource capacity allocation for the selected workforce criteria
is displayed. Based on the workforce criteria selection, the resource capacity is nested by Group,
Skill, and Role.

Managing financials for planning items in Portfolio Planning
Manage budget, cost plans as forecasts, actual expenses as expense lines, generate labor
costs, create financial baselines, and view, analyze, and compare the financial performance of
your planning items at required cadence in Portfolio Planning Workspace.
The comprehensive financials view helps you to understand planned and actual costs, Forecast
(previously EAC - Estimate At Completion), Remaining Estimates (previously ETC - Estimate
To Completion), Actual (previously Actuals to date), and so on, for the selected item. You can
manage cost plans and associate the expense lines and process them to reflect the actuals for a
planning item.
Export the financials data from Costs and benefits or Baseline comparison view as Microsoft
Excel or a CSV file and share it with your stakeholders to review the financial performance of your
planning items and portfolio.

Cost view
Forecast your planned costs, create, and manage cost plans and expense lines to track the
financial performance of your planning items, review the latest costs and actuals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

135


<!-- page 136 -->
In the Cost screen, you can:
• As a Project Manager, you have the enhanced visibility and ability to manage the financial data
across multiple project levels. Cost view of financials shows cost plans and expense lines from
sub-projects, allowing you to track the finances.
• The parent project widgets display the consolidated values of forecasted costs and expenses.
• Identify and manage costs using the Project/Demand column for any sub project or demand
directly from Cost view of the parent planning item.
• Re-forecast all the cost plan values for future fiscal periods by double-clicking to edit the value
in the least time scale view, either by month or by period.
• Manage cost plans for your planning items. For more information, see Add, edit, or delete cost
plans.
• Add or edit expense lines for your planning items to record any planned or unplanned
expenses. For more information, see Add or edit expense lines.
• Generate labor costs for the fiscal period. For more information, see Generate labor costs.
• Create and compare baselines to capture the financial snapshot of your planning items. For
more information, see Create and compare financial baselines for demands and projects.
• Configure widgets to get a high-level overview of the financial data for your planning item.
• All financial details from sub-projects will be aggregated and displayed in the parent project's
cost plans and widgets.

Tip: Cost view gives you enhanced user experience to customize the left pane
columns by using the personalize icon ( ) and by saving user preferences to retain the
customizations made to hide, view, or adjust columns, time scope viewing, and so on.

Multicurrency
Multicurrency feature enables you to manage financials of your planning items in two different
currencies, Functional currency and Investment currency. Functional currency is typically

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

136


<!-- page 137 -->
defined by the admin based as the primary currency which is used for planning, budgeting, and
tracking the financials of your planning items.

Important: Following are the current limitations for multicurrency.
• Multicurrency for cost plans that are bundled with project tasks. This feature is scheduled
to be available starting with the January patch update.
• Financial baselines do not capture investment currency fields. This feature will be
available with the March store release.
Financial users can now perform the following financial activities in Investment currency.
• Ability to select the Investment currency.
• Track the planned and actual expenses.
• Allocate and manage the budget.
• View simple financials data.
Using this feature, you can work on financial reporting at global level and see the real-time
currency conversions of your financial records.
Organizations operation at global or multinational level, the work is planned and financed at
one location and executed at a different location. Each might use a different currency from what
was used in the planning phase, multicurrency makes it easy to manage and track your planning
items using any currency.
You can monitor and track the financials in one currency, and capture the costs in a different
currency.
Using multicurrency, you can see all the costs in the currency you choose for the planning item,
instead of restricting to use Functional currency defined in your locale. For more information
on how to choose investment currency of your planning items, see Configure multicurrency for
planning items.
Financial records and widgets will display the costs based on the currency selection.

Note: Once a cost plan, benefit plan or expense line or an investment budget gets
created, you will not be able to change investment currency. You can change the
investment currency as long as there are no financial records captured against the planning
item.

Display modes
On the financials page for a planning item in Portfolio Planning Workspace, you have Display
Mode drop-down switch between different modes to view different formats of financial
information of your planning items. These views provide the relevant and focused information
which helps project managers and funding users to work on the financial planning.
• Forecast
• Budget vs forecast
• Planned vs actual
• Planned
Users with financial funding role [sn_align_ws.spw.funding_user] will see Budget allocation
option instead of the Budget vs forecast.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

137


<!-- page 138 -->
Display modes value
Mode

Value

Forecast

View Actuals, Remaining estimates, and
Forecast for the entire scope of the planning
items.
Use the time scale to view the actuals for the
past fiscal periods and planned costs for the
current and future fiscal periods.

Budget vs forecast

View the Budget, Actuals, and Variance for
the fiscal periods and Forecast values for the
entire scope of the planning items.
Using this mode, you can:
• Compare the latest forecasts with the
approved budget at different time scales.
• View the budget vs actual for past fiscal
periods and budget vs planned for current
and future fiscal periods at fiscal period
level.

Budget allocation (funding role)

View the Budget, Actuals, and Variance for
the fiscal periods and Forecast values for the
entire scope of the planning items.
Using this mode, funding users can:
• View the latest forecast and enter the
budget that can they be approved to the
work item.
• Analyze the variance for the past fiscal
periods and work on budget allocation for
future fiscal periods.
• Compare latest forecast with approved
budget and revise the budget, if required.

Planned vs actual

Compare the planned costs with actual
expense for the past and current fiscal
periods, and view planned costs for the future
fiscal periods.

Planned

View only planned costs for the full range and
manage the planned costs using the inline
editing feature.

Note:
• If you do not see the Budget allocation or Budget vs forecast display options, enable the
budget allocation property and configure the budget attribute at instance level.
• To work on budget allocation using the Next Experience, Activate a scheduled job to
migrate budget of your planning items.
The last selected view is saved as user preferences.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

138


<!-- page 139 -->
Default display mode and access level for financial users
User role

Default mode

Role-level access

sn_align_ws.spw_funding_user Budget Allocation

Allocate and approve budget,
manage cost plans and
expenses lines.

sn_align_ws.spw_financial_user Forecast

Manage cost plans and
expense lines.

business_stakeholder

View financial data.

Forecast

Baseline view
Create a baseline to capture a snapshot of the financial changes for your planning items. You can
create on-demand baselines or at a cadence using a scheduler job.

Note: Baselines created on the parent project includes the cost plans and expense lines
from all of the child projects to calculate and give you a better breakdown of the financial
performance of the projects and sub-projects.
When you create a financial baseline for a parent project, the financial records of the child
project are also calculated, which helps Project Managers to track the financial health of the
projects at one place.
Compare baselines to compare the difference in costs between latest status against a baseline
or between any two baselines.

Note: Each baseline is tagged with a number based on the order that they’re created.
The Current Financials baseline captures the financials details in real-time and is always
represented with a flag icon (

).

The baselines comparison view helps you to understand the variances between the two
baselines.

Use the widgets when you compare baselines to view:
• Two dedicated widgets for each baseline displaying the EAC.
• Third widget displays the total variance between the EAC values of the selected baselines.
• Fourth widget displays the top three variances contributing to the overall variance by cost type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

139


<!-- page 140 -->
The widgets and the header rows are color-coded to help you identify the selected baselines.

Tip: Switch between different baselines from the comparison view by selecting the name
of a baseline from one of the widgets.
When you compare baselines, you get the list of cost plans with their associated costs types,
EAC at full scope, and a breakdown view of actual expenses and planned costs.
By default, the time scale of the breakdown view is set to Month.
• Use the Time scale option to view the comparison breakdown view at monthly, quarter, and
yearly levels.
• Select Time scope to filter fiscal periods, data in the widgets, and the comparison table.
The widgets and the header rows are color-coded to help you identify the selected baselines.

Tip: Select the name of a baseline from the first or second widget to compare different
baselines.
Let's take an example of the comparison view of two baselines: 2023-10-01, Baseline A, and
Current Financials, Baseline B.

Example: How actuals, planned, and EAC are compared between two baselines
captured at different timestamps
For a selected baseline, based on the creation date, the table shows Actuals values for the past
fiscal periods from the created date and Planned values for the current and future fiscal periods.
Consider a planning item scoped from July 2023 to June 2024. Baseline A is created on
2023-10-01. If you compare the Current Financials baseline in December 2023 to the baseline
captured in October 2023:
1. The baseline comparison view show Actuals vs Actuals columns from July 2023 to September
2023.

2. Planned vs Actuals for October 2023 and November 2023.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

140


<!-- page 141 -->
3. Planned vs Planned from December 2023 to June 2024.

Note: The columns are defined to calculate EAC, which is the sum of Actual costs till the
last fiscal period and Planned costs from current to future fiscal periods.

Budget allocation
Portfolio managers can manage and approve the budget for planning items. The approved
budget helps project managers to plan and meet the expenses to execute work.
Plan and approve the budget for a shorter planning cycle at monthly, quarterly, or yearly level
using the lean budgeting and funding feasibility. Lean budgeting helps Portfolio managers to
track the value in return for the approved budget and to better plan the budget for future fiscal
periods.

Note: If the budget is allocated monthly, the total budget is rolled up to quarterly and
yearly level. Similarly, if the budget is allocated at a quarterly or yearly level, the equal
breakdown happens till monthly level.
For more information on how to allocate, approve, and handle budget for planning items, see,
Manage budget of your planning items in Strategic Planning.

Tip: In the budget allocation view, Portfolio managers review the EAC to understand the

financial projections made by Project managers and use the Copy cost as budget option to
allocate the entire planned cost as budget.
Choose the cost type as the attribute to allocate and approve the budget for individual cost
types such as labor, non-labor.
Project managers can view the approved budget at the required time scale using the Budget vs
forecast option from the display modes. As the work progresses and the actuals are captured,
you can compare the budget and actual costs using the Budget vs forecast mode and reforecast
the planned costs where the actuals are exceeding the budget using the inline edit feature at the
required time scale.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

141


<!-- page 142 -->
Product managers can compare the latest cost with the approved budget by Capex or Opex, cost
types, and for the required time scale at monthly, quarterly, or yearly level. The comparison view
provides insights to Product managers to locate any variance at expense type or cost type, and
at which fiscal period. Product manager can leverage this information to request for additional
budget from the Portfolio manager.
You can migrate the budget of existing active projects and demands items from the Classic UI to
Next Experience. Financials in the Next Experience has new budget data model that facilitates to
store the budget at a detailed level by monthly breakdowns and cost types. You can migrate the
budget for active projects and demands individually or by bulk using the scheduled job.
• Migrate budget of active projects from Classic UI to Next Experience. For more information, see
Migrate budget of active projects to Next Experience.
• Migrate budget of active demands from Classic UI to Next Experience. For more information,
see Migrate budget of active demands to Next Experience.

Note: The migrated budget is captured in the sn_invst_pln_invst_budget table
to enable the lean budgeting for required time scope.

Benefit plans
Monetary benefit plans capture potential benefits accrued while executing a planning item. Nonmonetary benefit plans capture the potential non-financial benefits accrued while executing a
planning item. You can create and manage monetary benefit plans and non-monetary benefit
plans to capture the potential benefits of your planning items.
Instead of switching to and fro from the financials record page to benefit plan tabs, you now have
a seamless experience to manage all the cost plans and benefit plans from the Cost and benefits
view and can leverage the new financials experience with the side panel and grids for quick
forecasting and tracking of monetary benefit plans.

Simple financials
Simple financials gives you the ability to enter the preliminary high-level planned capex, opex,
benefit and so on from the Details page without capturing the costs plans from the Cost view. You
can update the simple financials values as required until you have the planned and actual costs
captured.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

142


<!-- page 143 -->
Using the baseline feature, you can capture these simple financial values in a baseline and
compare them against any existing baseline. You can:
• Reforecast simple financials and compare the by selecting the Current Financials from the list
of baselines.
• Capture the planned and actual expenses as the project progresses and compare any
financial baseline with a simple financials baseline to track the financial performance of the
planning item.

Configure multicurrency for planning items
Select investment currency as an additional currency, which can be different from your functional
currency, to manage financial records of your planning items.

Before you begin
• You can define investment currency for planning items which do not have any financials
records, such as cost plans, expense lines, benefit plans, and actual benefits. To define a
investment currency for existing work, you should delete all the financial records and configure
the investment currency.
• Enable monetary benefit plans for planning items
• Role required: admin

About this task
• Multicurrency for cost plans that are bundled with project tasks. This feature is scheduled to be
available starting with the January patch update.
• Financial baselines do not capture investment currency fields. This feature will be available
with the March store release.

Procedure
1. Navigate to Workspaces > Portfolio Planning and select portfolio plan.
2. Select a planning item from the Planning module.
3. Select the Financials tab.
In the Currency field, the current system currency is displayed. For example, if your Functional
currency is in USD, the field is displayed as USD (Functional).
Planning item type

Procedure

Users will have three set of configurations:
a. Demand currency, or also called as Func­
tional currency which is managed by your
locale.

Demands

b. Define the Investment currency for De­
mand, which is used to track Demand-level
financial records.
c. Investment currency for converted arti­
fact, the Investment currency for any plan­
ning item created from Demand, such as a
Project, Epic, or any other planning item.
Use the following ways to define the invest­
ment currency for Demand and artifacts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

143


<!-- page 144 -->
Planning item type

Procedure

a. Select Currency field, and select the Edit
investment currency option.
Edit investment currency modal is dis­
played with options to select investment
currency.
b. Define the investment currency of you de­
mand using the Investment currency list.
c. Define investment currency for the future
artifact using the Investment currency for
converted artefact list.
a. Select Currency field, and select the Edit
investment currency option.
Other planning items

Edit investment currency modal is dis­
played with options to select investment
currency.
b. Define the investment currency of you de­
mand using the Investment currency list.

4. Select Confirm to save the investment currency selection.

Add, edit, or delete cost plans
Create a cost plan for a required duration to track your planned and actual expenses. Edit cost
plans to adjust your planned expenses and delete any de-scoped forecasts.

Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and open a planning item.
2. Select the Financials tab.
Choice

Description

a. Select New cost plan (

).

A side panel opens to create a cost plan.
b. On the Cost plan form, fill the fields.
To create a cost plan

For a description of the field names, see
Create cost plan form.
c. Select Save to save the cost plan and close
the side panel or Save and add new to save
the cost plan and create a new cost plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

144


<!-- page 145 -->
Choice

Description

The cost plans created for sub projects can
be viewed in the Cost screen of the parent
project.
You can edit a cost plan by one of the follow­
ing ways.

To edit a cost plan

a. Select the name of the cost plan, in the cost
plan side panel, edit the required details
and select Update.
b. Double-click the cell for a future fiscal peri­
od and edit the cost plan value.

Tip: Use Tab key to navigate to next
fiscal period and continue editing.
a. Select the Row context menu (
the cost plan name.

) against

b. Select Delete Row.
To delete a cost plan

c. On the Delete selected cost plans window,
select Delete (
).

Note: Deleted cost plans and the asso­
ciated expense lines cannot be recov­
ered.

Tip: Create a financial baseline immediately after capturing the initial planned costs
to have a snapshot of your planned costs. Use this baseline to compare it against the
baselines from later dates, as the work progresses, to identify the variance between initial
planned costs and actual expenses.
This helps you to plan for the future expenses and re-forecast the planned costs.

Manage budget of your planning items in Portfolio Planning
Allocate, manage, and approve budget for your planning items. Lean budgeting enables you to
allocate budget for short planning cycles for different fiscal periods such as monthly, quarterly, or
yearly breakdown level rather than allocating the budget to the complete duration of the planning
item.

Before you begin
• As an Admin, enable the property to work on budgeting. For more information, see Enable
financial budget allocation for planning items in Portfolio Planning.
• As an Admin, configure the attribute to allocate and approve budget by cost type or expense
type. For more information, see Configure budget attribute at instance-level to allocate budget.
• Role required: it_portfolio_manager

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and open a planning item.
2. Select the Financials tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

145


<!-- page 146 -->
3. Enable the Budget allocation toggle (

).

4. You can manage the budget by one of the following ways for the selected time scale at
monthly, quarterly, or yearly level.
◦ Double-click each cell in the Budget column to manually enter the value.
◦ Select Copy cost as budget from the Budget column options to copy the EAC as budget.
You can always reforecast the budget for each cost type using the in-grid editing feature even
if the EAC is copied as budget.

Note: Unapproved budget values are indicated with

icon.

5. Select Approve budget (
).
Approve budget confirmation window is displayed. The Create a financial baseline for this
budget approval option is enabled by default which captures the latest budget and financial
estimates.

Tip: The financial baseline created while approving the budget can be compared
with the future baselines once the actual expenses are captured to track financial
performance.
6. On the confirmation window, select Approve (

).

Result

Budget widget is updated to reflect the latest approved budget. Project Manager can view the
approved budget and compare it with the planned costs using the budget vs cost view by cost
type.

Add or edit expense lines
Create or edit expense lines to capture the actuals costs. You can associate the expense lines
with a cost plan or create standalone expense lines to record unplanned expenses.

Before you begin

Role required: sn_align_ws.spw_financial_user

About this task

An expense line is part of the project cost plans that can be associated with a specific source.
You can create multiple expense lines for a cost plan. Only the expense lines that are in the
processed state are considered for roll ups on the work item.
For unplanned expense lines which are not associated to any cost plan, system automatically
creates an cost plan or associates to an existing system generated cost plan of the same
expense type.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and open a planning item.
2. Select the Financials tab.
3. Add an expense line using one of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

146


<!-- page 147 -->
Choice

Description

a. Select the actuals value from a cost plan.
Select a cost plan

Select options

b. In the Expense lines side panel, select
New.
a. Select the options

from a cell.

b. Select Add expense lines.
Select New expense line using the More ac­
tions option.

Select new expense line option

Note: Use this option to record and cal­
culate any unplanned expenses.
4. On the Create expense line form, fill the fields.
For a description of the field names, see Create expense line form.
5. Select Save.

Generate labor costs
Generate labor costs in the Financials view for attribute-based resource assignments based on
the financial attributes configured in the planning attributes page.

Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select a planning
item.
2. Select the Financials tab.
3. Select Generate labor costs (

).

4. Select Generate on the Generate labor costs confirmation window.

Note: Alternatively, you can activate a scheduled job to automatically create baselines
at the required cadence.

Create and compare financial baselines for demands and projects
Create and compare financial baselines to get a snapshot of the project expenses and compare
the planned costs against the actual expenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

147


<!-- page 148 -->
Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select a planning
item.
2. Select Financials from the left menu.
3. Create or compare baselines.
Option

Description

a. Select Create baseline button (

).

Create financial baseline window appears
with the Name field is auto-populated with
current date. You can edit this field to name
your baseline.

Create a baseline

b. In the Description field, enter a brief de­
scription to identify this baseline and select
Save.
A baseline is created capturing the planned
costs and expense is captured.

Note: You can activate a scheduled
job to automatically create financial
baselines.
a. Select the Baselines (
) tab to view the
list of existing baselines.
Compare baselines

b. Select any two baselines and select the
Compare baselines (
) button.
Comparison view of the selected baselines is
displayed. For more details, see Using base­
line comparison view.

Tip: You can migrate existing financials baselines of your projects or demands from
Classic UI to Financials in Next Experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

148


<!-- page 149 -->
For more information on how to migrate financial baselines of demands, see Migrate financial
baselines of demands to Next Experience.
For more information on how to migrate financial baselines of projects, see Migrate financial
baselines of projects to Next Experience.

Create monetary benefit plans for your planning items in Portfolio Planning
Create and manage monetary benefit plans to capture the potential benefits while executing
your planning items.

Before you begin
• Enable monetary benefit plans for planning items
• Add monetary and non-monetary benefit plans related lists
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select a planning
item.
2. From the list of portfolio plans, select a portfolio plan.
3. From the Prioritization or Roadmap tab, select the planning item to create a monetary benefit
plan.
The full details page of the planning item is displayed.
4. Create a monetary benefit plan using one of the following options.
Option

Procedure

Using Monetary benefit plan related list

a. Select the Monetary Benefit Plans related
list.
b. Select New.
a. Select the Financials tab.

Using finanicals record page

b. Select New monetary benefit plan using
the More actions option.

5. On the Benefit Plan form, fill the fields.
For a description of the field names, see Benefit Plan form.
6. Select Save.

Result

The newly created monetary benefit plan appears in the finanicals record page and in the
monetary benefit plans related list.

What to do next
• Edit monetary benefit plan.
• Capture actual monetary benefits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

149


<!-- page 150 -->
Edit monetary benefit plan
Edit a planned monetary benefit plan to revise the benefits, dates, offset, and so on, to maintain
the updated financial records as your work progresses.

Before you begin
• Create monetary benefit plans for your planning items in Portfolio Planning
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select portfolio plan.
2. From the Prioritization or Roadmap tab, select the planning item for which you want to edit a
monetary benefit plan.
The full details page of the planning item is displayed.
3. Update a monetary benefit plan using one of the following options.
Option

Procedure

a. Select the Monetary Benefit Plans related
list.
Using Monetary benefit plan related list

b. Select the name of a required benefit plan.
c. In the Details tab, edit the required fields
and select Save.
a. Select the Financials tab.

Using finanicals record page

b. Select the name of a required benefit plan.
c. In the Edit monetary benefit plan side-pan­
el, edit the required fields and select Up­
date.

Capture actual monetary benefits
Capture the actual benefit from the planned benefits to measure revenue and calculate the
profits.

Before you begin
• Create monetary benefit plans for your planning items in Portfolio Planning
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select portfolio plan.
2. From the list of portfolio plans, select a portfolio plan.
3. From the Prioritization or Roadmap tab, select the planning item for which you want to capture
actual monetary benefits.
The full details page of the planning item is displayed.
4. Capture actual monetary benefits using one of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

150


<!-- page 151 -->
Option

Procedure

a. Select the Monetary Benefit Plans related
list.
Using Monetary benefit plan related list

b. Select name of the required benefit plan
and select the Monetary Benefit Plan
Breakdowns list to view the monetary bene­
fit plans breakdown.
c. Select the value from the Entered benefit
field.
a. Select the Financials tab.

Using finanicals record page

b. Select the options
from the required
cell of a monetary benefit plan row.
c. Select Add actual benefits.
Monetary Benefit Plan Breakdown side-pan­
el is displayed.

5. Optional: You can change the previously captured planned benefit from the Entered benefit
field.
6. Enter the actuals benefits resulted from the work execution in the Actual benefit field and
select Save.

Manage non-monetary benefit plans for your planning items in Portfolio
Planning
Create and manage monetary benefit plans to capture the potential benefits while executing
your planning items.

Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select portfolio plan.
2. Select a planning item from the Planning module.
3. Select the Non-monetary Benefit Plans related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

151


<!-- page 152 -->
4. On the Benefit Plan form, fill the fields.
For a description of the field names, see Non-monetary benefit plans form.
5. Select Save.

Export financials as Excel or CSV file
Export the costs or baseline comparison data of your planning items to easily share them with
your stakeholders.

Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select a planning
item.
2. Select the Financials tab.
3. Select the Export option (

).

4. In the Export side panel, select Excel or CSV from the File type list and select the Export

button (

).

The financials data is download as an Excel or CSV file with name_fin_mmddyy naming
convention. The breakdown of the naming convention:
a. name - fetches the first 10 characters from the name of the planning item.
b. fin - denotes that the file has financial data.
c. mmddyy - system date format when you're exporting this data.
For example, if you're downloading financials data for a planning item named Documentation
on January 26, 2024, then the file name reads documentat_fin_012624.

Note: You can export financials data from Cost view and Baselines comparison view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

152


<!-- page 153 -->
Managing portfolio financials in Portfolio Planning
View the financial breakdown of estimates, approved costs, benefits, and actuals and so on for
portfolio financials.
As a portfolio user, you can view the rolled up financial values of top-level demands and projects.
You can view the costs by expense type or cost type. Using the Financials view at portfolio level,
you can view different financial fields such as Budget (approved budget for planning items),
Forecast, Variance (difference between the approved budget and latest forecast), Actuals,
and the Remaining Estimates for Capex, Opex, Total, and Benefits for each planning item. This
information can be used to track the financials status of the planning items and take an informed
decision on which planning items to consider while working on the next planning cycle and track
the to avoid overspending.
Using the portfolio financials, portfolio managers can:
• Track the financial performance and status of planning items.
• Arrive at an informed decision by analyzing the estimated cost and benefits of a planning item
while planning and prioritizing for the next Portfolio cycle.
• View the financials based on the expense type or cost type depending on the budget attribute
configuration.
• Avoid overspending on planning items by comparing the approved budget with the latest
forecast and actuals.

Important: New and existing customers need to configure the portfolio financials to view
the financials of your planning items at portfolio level. For more information, see Configure
portfolio financials in Portfolio Planning.
The portfolio financials view supports Demands and Projects with Fiscal Calendar type
configuration only.
Portfolio financials grouped by Budget status with expense type as the budget
attribute

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

153


<!-- page 154 -->
Portfolio financials grouped by Planning status with cost type as the budget
attribute

Note: Group header row displays the rolled up values for Budget, Forecast, Variance,
Actuals, and Remaining estimate of all the planning items in the group.
The default view of portfolio financials is set to display the planning items grouped by their
budget approval status. Budget approved grouping lists the planning items which have the
budget allocated and approved. Approval pending grouping lists the planning items which do
not have any budget or if the requested budget is not approved.

Note: Portfolio financials view is not yet compatible with Investment Funding. This view
may not show the right budget values allocated to planning items from Investment Funding
application. This will be add as a future enhancement.
In the left-grid, planning item details such as name, rank, planning state, planning item type,
approved start date, total planned cost, total actual costs, total planned benefits and ROI for the
full planning item duration.
In the right-grid, financial attributes of the planning items such as, Budget, Forecast, Variance,
Actuals, and Remaining Estimates for Capex, Opex, Total, and Benefits portfolio for the portfolio
timeline or breakdowns by year, quarter, month, or period.

Tip: You can select the name of a planning item from the left-grid to directly access the
financials record page of that planning item.
You can export the portfolio financials details to Excel or CSV using the Export option (

).

Customize your financials view
Customize the portfolio financials to view and access the required parameters helping you in
better planning your portfolio and planning items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

154


<!-- page 155 -->
• You can get a more detailed and granular view of the financials at monthly, quarterly, and yearly
view by defining Timescale and Range. Use time scale to select a fiscal period and filter the
range within the time scale to view the financials for any specific months, quarters, or years.

Time scale and range parameters
Time scale

Description and range

Fiscal Month

Portfolio financials view by monthly
breakdown.
You can select up to 12 months.

Fiscal Quarter

Portfolio financials view by quarterly
breakdown.
You can select up to 4 quarters.

Fiscal Year

Portfolio financials view by yearly breakdown.
You can select up to 5 years period.

Plan Timeline

Portfolio financial breakdown for the entire
portfolio timeline.

• Personalize grouping and columns in the grids.
Configure the columns and groupings in the right-grid using Personalize option (
custom view.

) to build a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


