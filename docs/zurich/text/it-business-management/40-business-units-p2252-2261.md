# Zurich Strategic Portfolio Management — Business units / Create an enterprise strategy / Create a business unit strategy +1 more

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2252–2261 of 2289

Sections: Business units (p2252); Create an enterprise strategy (p2253); Create a business unit strategy (p2254); Cost Management (p2255); Activate Cost Management (p2256)

---

<!-- page 2252 -->
A business unit is a segment of an enterprise that represents a business function.
View the existing number of business units in your organization. Click to create a
business unit to define its functions.
No. of goals
View the number of goals created to achieve a business plan. You can relate goals
to many enterprise and business unit strategies. Similarly, more than one enterprise
and business unit strategies can be related to more than one goal. Click a goal from
the list to update its status and assign a task to it. You can also create a goal for an
application strategy .
Recent Activity
View the recent goals, strategic objectives, and business units that you had created.

Business units
Business units are parts of your organization that are in charge of certain operations, such as
Finance, HR, IT.
Business units usually comprise departments and are associated with a company. By default,
the Hierarchy of Segments includes a segment for business units, departments, and vendors,
which are companies with the Vendor option selected. With the segment setup, you can allocate
expenses to business units, departments, or vendors, or have expense allocations roll up to
them. You can configure both departments and companies as part of user management.

Create business units
Create a business unit to define your organizational functions. A business unit is also necessary
to set up the top-most segment in the hierarchy to create roll up rules and have expenses roll up
to these business units.

Before you begin

Role required: business_planner

Procedure
1. Navigate to All > Organization > Business Units.
2. Click New.
3. Fill out the fields on the form (see table).
4. Click Save.
Business Unit form
Field

Description

Name

Name of the business unit.

Company

The company, if any, related with this business unit. You can choose any
company, including the ones that don’t have the Vendor field selected.

Business
Unit Head

Person who heads the business unit.

Description A description of the business unit.
Parent

Refers to another business unit. The Parent field makes the business unit as a
hierarchy element.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2252


<!-- page 2253 -->
Field

Description

Hierarchy
level

Number or text to indicate the level of the business unit.

Related list section of the Business Unit form
Field

Description

Departments

Departments that comprise this business
unit. Add as many departments as necessary.

The Departments related list isn’t visible by default. If necessary, you can add the Departments
related list on the business unit record you created. To add the Departments related list:
a. Right-click in the form header, and select Configure > Related Lists.
b. Locate the Departments item in the Available box and move it to the Selected box.
c. Select Save.

Create an enterprise strategy
As a business planner you can manage the business entities such as goals, business units,
business enterprise strategies, and business unit strategies. Create an enterprise strategy to
orient your business plan toward your goal.

Before you begin

Role required: user_admin, business_planner

About this task

To understand how your organizational strategies are performing, see the Strategic Spend
Tracking for PPM dashboard topic. It provides a comprehensive visual to help you understand
how the planned costs, actual costs, and benefits for projects aligned to your organization's
strategies trend over time.

Procedure
1. Navigate to All > Business Planner > Enterprise Strategy.
You can also navigate to Organization > Enterprise Strategy.
2. Click New or open a record.
3. Fill in the form fields.
Enterprise Strategy form
Field

Description

Title

A short title describing the enterprise
strategy.

Number

System assigned enterprise number.

Assigned To

Person to whom the enterprise strategy is
assigned.

From Date

Date from which the enterprise strategy is
valid.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2253


<!-- page 2254 -->
Field

Description

To Date

Date until which the enterprise strategy
remains valid.

Type

Select a type of organization strategy that this
strategy aligns to.

Active

Enable the check box to make the enterprise
strategy active.

Description

Short description about the enterprise
strategy.

4. Click Submit.

What to do next

Use the Business Unit Strategies related list to create a strategy for a business unit and
associate the business unit strategy to the enterprise strategy, to another business unit, or to
another business unit strategy.
Related topics
Allocate or modify the strategy and goal percentage for a project

Create a business unit strategy
Business units are segments of an enterprise that are in charge of certain operations such as
Finance, HR, IT. Each of these business units can have a strategy that aligns with the enterprise
or with another business unit.

Before you begin

Role required: user_admin, business_planner

Procedure
1. Navigate to All > Business Planner > Business Unit Strategy.
You can also navigate to Organization > Business Unit Strategy.
2. Click New or open a record.
3. Fill in the form fields.
Business Unit Strategy form
Field

Description

Title

A short title describing the business unit
strategy.

Number

System assigned business unit number.

Assigned To

Person to whom the business unit strategy is
assigned to.

From Date

Date from which the business unit strategy is
valid.

To Date

Date until which the business unit strategy
remains valid.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2254


<!-- page 2255 -->
Field

Description

Business Unit

The business unit for which the strategy is
being created.

Strategy

Strategic objectives of the organization that
the business unit strategy complies to.

Type

Select a type of organization strategy that this
strategy aligns to.

Active

Enable the check box to make the business
unit strategy active.

Description

Short description about the business unit
strategy.

4. Click Submit.

What to do next

View the strategic objectives that you’ve created in the business planning portal. The records of
business planning strategic objectives give you a clear visibility of the status, to whom they’re
assigned to, the period of validity, and their type.

Cost Management
®

The ServiceNow Cost Management application tracks configuration item costs. The costs can
be allocated to business units and used in reports.
Cost management enables these features:
• Using rate cards.
• Defining configuration item (CI) costs.
• Tracking one-time costs for CIs.
• Processing recurring CI costs to generate expense lines.
• Distributing bulk costs to multiple expense line sources.
• Tracking costs related to tasks and projects.
• Aggregating configuration item costs and charging the total cost to a business service or
application.
• Allocating expense lines to business units with flexible allocation rules.
• Tracking planned and actual budget costs by cost center.
Cost Management Options
Use the following cost management options to plan and control business costs.
• Create rate cards to properly track configuration item, contract, task, and labor costs.
• Create expense lines and expense allocation rules.
• Aggregate configuration item costs and apply the total cost to a business service or application
using relationship paths.
• Create distribution costs and distribution cost rules to divide costs between a group of
records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2255


<!-- page 2256 -->
Activate Cost Management
Activate the Cost Management plugin (com.snc.cost_management) using the admin role.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install.

Note: When domain separation and delegated admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
4. Select Activate.

Note: To load the demo data, select the Load demo data check box.
Components installed with Cost Management
Several components are installed with the Cost Management application.
Demo data is available with Cost Management. The demo data provides sample budgets,
distribution costs, expense allocations, contract rate cards, and rate card costs.

Tables
Cost Management adds the following tables.
Tables
Table

Description

Allocation Unit [allocation_unit]

Tracks capacity and usage for a business service.
Stores reference to business service, total,
allocated, and remaining units of capacity.

Budget [fm_budget]

Tracks planned and total expense allocation
amounts for a collection of cost centers.

Budget Cost Center
[fm_budget_cost_center]

Associates one or more cost centers to a budget.

CI Cost Center Relationship
[fm_cmdb_rel_cc]

Associates a cost center to a business service that
it consumes and the number of units it uses. This
is used to calculate the number of allocated units
to update the allocation unit record.

CI Rate Card [fm_ci_rate_card]

Links configuration items and costs. A
classification can also be defined to allow for
multiple rate cards for a group of CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2256


<!-- page 2257 -->
Tables (continued)
Table

Description

CI Rate Cards
Associates configuration items to a rate card.
[fm_ci_rate_card_cmdb_ci_m2m]
Contract Rate Card
[fm_contract_rate_card]

Provides detailed price information for a contract
and enables you to generate recurring expenses
automatically.

Distribution Cost
[fm_distribution_cost]

Represents costs which can be divided among a
group of records. For example, the cost of power at
a datacenter which can be divided among the CIs
in the datacenter.

Distribution Cost Rule
[fm_distribution_cost_rule]

Determines how the costs are distributed to CIs.

Distribution Units
[fm_distribution_units]

Stores the number of units to associate to
configuration items linked to the current rate card.

Expense Allocation
[fm_expense_allocation]

Associates the value of an expense to a target
reference. The value is generated from an expense
line by processing allocation rules. The target is
the record that is responsible for that expense
amount. Common targets are cost centers,
departments, companies, groups, and users.

Expense Allocation Rule
[fm_expense_allocation_rule]

Determines how to process an expense line
into an expense allocation. The logic starts by
defining a table and condition to run against.
Expenses linked to the selected table will be
evaluated by this rule. If the condition is met, an
allocation of a defined percentage is created
for the reference defined by the allocation field
value. Advanced scripts can also be used to define
custom allocation generation.

Financial Management Log [fm_log]

Logs financial management information for
tracking and to asset with debugging. Extends the
system log table.

Labor Rate Card
[fm_labor_rate_card]

Defines hourly labor rates for expense line
generation based on functional roles.

Rate Card [fm_rate_card]

Associates configuration items to a rate card.

Rate Card
[fm_recurring_rate_card]

Represents a collection of recurring costs.

Rate Card Cost
[fm_ci_rate_card_cost]

Associates a recurring CI cost to a rate card so that
it is applied to all CIs associated with the rate card.

Rate Card Users
[clm_m2m_rate_card_user]

Associates users to a rate card.

Relationship Path
[fm_relationship_path]

Defines the relationship between configuration
items, such as parent records and child records.

Task Rate Card
[fm_task_rate_card]

Stores records that define task costs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2257


<!-- page 2258 -->
User Roles
Cost Management adds the following user roles. A user with the user_admin or admin role can
assign these roles.
User Roles
Role

Financial User
(financial_mgmt_user)

Description

Contains Roles

Financial users participate in financial
processes and have limited access to
functionality.

None

Can read allocation units and expense
allocations. Can create, read, and write rate
cards and expense lines. Can create, read,
write, and delete fixed assets, depreciation,
distribution costs.
Financial Admin
(financial_mgmt_admin) Financial administrators manage financial
processes in the system.

financial_mgmt_user

Can create, write, and delete allocation
units, fixed assets, depreciation, rate cards,
distribution costs, expense lines, and expense
allocations.

Properties
Cost Management adds the following properties.
Properties
Name

Description

com.snc.time_card.default_rate

Sets a default hourly rate to use
if no labor rate cards apply to the
user.

glide.cost_mgmt.calc_actual_cost

Sums all task expense lines and
adds the total to the Work cost
field on the task record when an
expense line is created for any
task with a Type of Planned task.

glide.cost_mgmt.debug

Enables debugging of cost
management processing. All
logging events are recorded in
the Financial Management Log
[fm_log] table. This should
only be enabled during initial
testing or when troubleshooting
because it can generate a large
number of log records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2258


<!-- page 2259 -->
Properties (continued)
Name

Description

glide.cost_mgmt.process_task_cis

Creates expense lines to
affected configuration items
when creating a task expense
line. The default value is false.

glide.cost_mgmt.service_allocation.method Defines if business service to
cost center allocation costs
should be calculated based on
total units or allocated units.

UI Policies
Cost Management adds the following UI policies.
UI Policies
Name

Table

Description

Control flat
rate vs bill
rate fields

[fm_task_rate_card]

Hides the Task rate field and displays
the Default labor rate field on the
Task Rate Cards form if the Use time
worked check box is selected.

Hide if
define
condition
disabled

[fm_ci_rate_card]

Displays the Table and Condition
fields on the CI Rate Cards form if
the Define condition check box is
selected.

Hide parent [fm_relationship_path]
class if all
enabled

Hides the Parent class field on the
Relationship Paths form if the All
parent classes check box is selected.

Hide
recurring
fields for
one time
cost

Hides the End date and Interval fields
on the Distribution Costs form if the
Recurring check box is cleared.

[fm_distribution_cost]

Hide
[fm_relationship_path]
relationship
type if all
enabled

Hides the Relationship type field on
the Relationship Paths form if the All
relationships check box is selected.

Hide Show
Advanced
Field

[fm_distribution_cost_rule]

Hides the Table and Condition fields
on the Distribution Cost Rules form
and displays the Script field if the
Advanced check box is selected.

Hide table
field

[fm_labor_rate_card]

Hides the Table field on the Labor Rate
Cards form at all times.

Modify
[fm_contract_rate_card]
value field
rules on
distribution
method

Changes the Value field from readonly to mandatory on the Contract
Rate Cards form if the Distribute cost
field is set to Allocate and distribute
cost based on value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2259


<!-- page 2260 -->
UI Policies (continued)
Name

Table

Description

Show script [fm_expense_allocation_rule] Displays the Script field on the
field if
Expense Allocation Rules form if the
advanced
Advanced check box is selected.

Client Scripts
Cost Management adds the following client scripts.
Client Scripts
Name

Table

Description

Calculate
Tax Cost Base cost

[fm_rate_card]

On the contract rate card record, calculates
the tax cost and total cost based on changes
to the base cost.

Calculate
Tax Cost Sales tax

[fm_rate_card]

On the contract rate card record, calculates
the total cost if the Sales tax option is
selected.

Calculate
Tax Cost Tax rate

[fm_rate_card]

On the contract rate card record, calculates
the tax cost and total cost based on changes
to the tax rate.

Set Rate
Card End
Date

[fm_contract_rate_card] On the contract rate card record, sets the rate
card end date to the contract end date if the
contract has an end date.

Business rules
Cost Management adds the following business rules.
Business rules
Name

Table

Description

Calculate Totals with Tax

[fm_recurring_rate_card] Updates the Tax rate,
Tax cost, and Total cost
fields when Sales tax,
Base cost, or Tax rate
field values change.

Create expense from
approved time card

[time_card]

Creates an expense
line after a time card is
approved.

fm_calcBudgetValues

[fm_budget]

Updates remaining
budget amount when
planned or actual values
change.

fm_Disable rate card costs

[fm_ci_rate_card]

Disables all rate card
costs when a rate card is
disabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2260


<!-- page 2261 -->
Business rules (continued)
Name

Table

Description

fm_InsertBudget

[fm_budget]

Shows a message with
the next budget number
when a new record is
inserted.

fm_Populate Month Field

[fm_expense_allocation]

Fills in the Month field
based on the Expense
date field.

fm_processExpenseAllocation [fm_expense_line]

Processes expense
allocation rules when an
expense line is created
for pending items.

fm_Set default next process

[fm_ci_rate_card_cost]

Sets the default next
process date for a new
configuration item rate
card cost.

fm_Set default next process

[fm_distribution_cost]

Sets the default next
process date for a new
distribution cost.

fm_updateAllocationAvailable

[allocation_unit]

Recalculates the number
of available units when
the number of allocated
units is updated.

fm_updateAllocationUnits

[fm_cmdb_rel_cc]

Recalculates the number
of allocated units for a
business service.

Next process date validation

[fm_contract_rate_card]

If the next process date
for the contract rate card
is after the start date, this
business rule sets the
next date to the start date.

Prevent more than one
allocation per ci

[allocation_unit]

Prevents more than
one allocation per
configuration item.

Process CI Relationships

[fm_expense_line]

Processes parent related
items and generates
expense lines for
configuration item source
expenses. Processes
task cost into affected
configuration item
expense lines for task
source expenses.

Process Task Rate Cards

[task]

Processes task rate cards
when a task is set to
inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2261


