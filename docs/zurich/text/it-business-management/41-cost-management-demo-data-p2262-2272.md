# Zurich Strategic Portfolio Management — Cost Management Demo Data / Cost overview module / CI rate cards +1 more

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2262–2272 of 2289

Sections: Cost Management Demo Data (p2262); Cost overview module (p2264); CI rate cards (p2265); Task and labor rate cards (p2271)

---

<!-- page 2262 -->
Business rules (continued)
Name

Table

Description

Update Contract

[fm_contract_rate_card]

Rolls costs from rate card
to contract. Updates the
contract total cost, tax
cost, tax rate, and base
cost when total cost, tax
cost or tax rate values
change.

Update Planned Task Actual
Cost

[fm_expense_line]

Calculates the total
actual costs from related
expense lines for planned
task source expenses.

Verify rate card's start and end [fm_contract_rate_card]
dates

Validates that the
rate card start date is
specified and is not
after the end date. This
business rule also:
• Validates that the rate
card start date is not
before the contract
start date and that the
rate card end date is
not after the contract
end date.
• Sets the rate card end
date to the contract
end date if a value is
not entered and the
contract has an end
date.

Cost Management Demo Data
The demo data available with Cost Management provides samples of the data types to illustrate
its use.
Demo data should be loaded only in a development or test instance to prevent conflict with
production data.

High-Level Data Review
The Cost Overview module has a number of commonly requested reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2262


<!-- page 2263 -->
Business Service Overview

Business Service Overview
The business service owner would like to know how much it costs to maintain the service over
some period of time. This requires gathering the dependent CI costs and representing them at
the business service level. For CI costs to roll up to business services, relationships must exist
between CIs and services.
The demo data contains a number of services that have costs from their dependent CIs. In the
Cost Overview homepage, the Business Service Cost 12 Month report shows an overview of
this information:
Cost Report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2263


<!-- page 2264 -->
Allocation Overview
Expense allocation rules costs allow you to allocate costs to one or more business entities
such as a user, group, department, company, or cost center. The purpose of the allocation is to
represent the cost that the business is responsible for. This is not considered charge-back or
billing, but could be used as a source for billing. The primary purpose of expense allocation is to
represent the consumer of the process that has incurred some expense.
The following diagram shows the distribution of expenses to cost centers.
Report example

Budget Overview
The amount of money allocated to cost centers can be tracked against a planned budget. A
budget represents a collection of cost centers, a duration, and the amount of money that is
expected to be allocated to the cost centers during that period. The administration budget
contains three cost centers and has incurred $173,610.83 so far during this period.
Budget Demo

Cost overview module
The Cost Overview module displays various cost management reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2264


<!-- page 2265 -->
It gives financial administrators and other users a summary view of key cost management
information.
The Cost Overview is a type of homepage.
Only users with certain roles have access to the Cost Overview module. See Cost overview
module roles for more information.

Cost overview module roles
Only certain roles can customize Cost Overview modules. In addition to viewing, roles with
access can refresh, add, delete, and rearrange reports.
Cost Overview Module Role Access
Role

Access

admin

View, customize

asset

View, customize

financial_mgmt_admin

View

financial_mgmt_user

View

procurement_user

View

sam

View

CI rate cards
A configuration item (CI) rate card is a group of recurring configuration item costs associated with
multiple configuration items. Rate cards make it easier to enter and track costs that are the same
across multiple configuration items.
Rate cards usually follow a framework in which all costs are recorded and allocated. For example,
the contract costs of a specific model server in a New York datacenter could be different than the
same server model running in a Madrid datacenter. Each model would have a separate rate card
detailing the costs.
Users with the Financial Admin (financial_mgmt_admin) and Financial User
(financial_mgmt_user) roles can manage CI rate cards.

Create a CI rate card
You can add a CI rate card that specifies an hourly rate and associate a rate code.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Click New.
3. Fill in the fields, as appropriate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2265


<!-- page 2266 -->
Field

Number
Define
condition
Name
Summary
type
Active

Table

Condition

Description

[Read-only] The CI rate card identification number. Automatically assigned.
Check box that indicates whether to use the Condition field to filter
configuration items for the rate card.
The CI rate card name.
The CI rate card category: Grow Business, Run Business, or Transform
Business. Categorizing can be useful for reporting.
Check box that indicates whether the rate card is available for use. Clear the
check box to disable the rate card and deactivate all associated rate card costs.
The table to query with conditions for configuration items. This field is available
if Define condition is selected.
The condition to query on the specified Table. This field has a condition count
widget to preview what records are captured by the conditions. This field is
available if Define condition is selected.

Short
Description A brief description of the rate card.

Add a condition to a CI rate card
If you are adding a condition to a CI rate card, use the Update CI List related link to create the
relationship between the configuration item or items and the rate card.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Select a rate card.
3. Select Define condition.
4. Create the Condition.
5. Right-click the header bar and select Save.
6. In Related Links, click Update CI List.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2266


<!-- page 2267 -->
Example
Update CI List

7. Click one of the choices.
◦ Replace: removes any existing items that do not match the condition and adds all remaining
items from the condition results.
◦ Merge: keeps existing items and adds all remaining items from the condition results.
8. Click Return to rate card.

CI rate card costs
CI rate card costs generate expense lines for configuration items on the associated rate card
Costs associated with rate cards are stored in the Rate Card Cost (fm_ci_rate_card_cost)
table. Each cost is applied to every configuration item associated with the rate card when the
costs are processed.
Expense Line is active by default.
Add a CI rate card cost
You can add a rate card cost to the CI rate card.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Select a rate card.
3. In the Rate Card Costs related list, click New.
4. Enter a Start date.
5. Fill in the fields, as appropriate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2267


<!-- page 2268 -->
Field

Number
Rate card

Name
Active

Description

[Read-only] The rate card cost identification number. Automatically assigned.
The identification number of the rate card to which this rate card cost is
associated.
The rate card cost name.
Check box that indicates whether to enable cost processing for this cost.

Short
A brief description of the rate card cost. The description is used to identify the
description processed cost on an expense line record.
Start date
End date
Interval
Recurring

Sales tax
Tax rate

The date the cost should start being processed.
The date the cost should stop being processed.
The frequency at which the rate card cost recurs.
Check box that indicates whether the cost is a repeating cost. Also sets
generated expense lines to show as recurring. If this check box is cleared, no
further expenses are generated automatically.
Check box that indicates whether to apply sales tax to the cost.
The tax rate to apply to the cost.

Order

Used by task rate cards.

Last
processed

[Read-only] The date and time this cost was last processed.

Next
process
Base cost
Tax cost
Total cost
Description

The next date on which new expenses will be processed based on the Process
FM Costs scheduled job.
The amount that must be paid before taxes.
Total cost of the tax.
Total rate card cost, including taxes.
Detailed description of the rate card cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2268


<!-- page 2269 -->
Remove a rate card cost
You can remove a rate card cost on the CI Rate Card form.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Select a rate card.
3. In the Rate Card Costs related list, click a Number.
4. Click Delete.
Disable a rate card cost
To prevent a cost from processing, clear the Active option. Use the option to make a rate card
cost permanently inactive or to temporarily skip a cost from processing.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Select a rate card.
3. In the Rate Card Costs related list, click a Number.
4. Clear the Active check box.
Modify a rate card cost
Configuration item costs often change over time as facilities or vendor rates change.

Before you begin

Role required: financial_mgmt_admin

About this task

Expense lines are the snapshot of a given interval's costs, so changing the cost does not affect
already generated expense lines. When costs change, either modify the cost amount or disable
the current cost and create a new cost to represent the cost going forward. The changes are
processed in the next generated expense line. To keep historical records of costs, create new
costs rather than modifying existing ones and set the end date of the disabled cost to show that
the cost agreement expired.

Procedure
1. Navigate to All > Cost > Costs > CI Rate Cards.
2. Select a rate card.
3. Click a rate card cost Number.
4. Modify the fields, as necessary.

Aggregate CI costs
Expense lines can be aggregated to apply all configuration item expenses to a parent business
service or application with relationship paths.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2269


<!-- page 2270 -->
Define relationship paths from a child configuration class to one or many parent classes. If a
path does not match one of the relationship path record criteria, the path is not viewed as a
relationship when determining expense aggregations. See CI relationships.

Enable relationship aggregation
The Process Last Month CI Costs scheduled job processes costs of configuration items. To start
aggregating expenses to parents, identify the relationships to use for aggregation. Because there
are many options for CMDB relationships, using all available paths for aggregation is generally
not efficient.

Before you begin

Role required: financial_mgmt_admin

About this task

You can have multiple relationships for each child class. For example, to enable only certain
relationships or parent classes, create a new record for each type and class combination paired
with the child class.
When an expense line is generated from a configuration item cost, the parents of the
configuration item are evaluated. The parent class and relationship type are compared to the
list of relationship path records to see if there is a match to use for aggregation. If there is a
match, an expense line is generated for the parent configuration item. The process repeats for all
parents until there are either no parent relationships or the relationships in place do not meet the
criteria defined in the relationship path records.

Procedure
1. Navigate to All > Cost > Administration > Relationship Paths.
2. Click New.
3. Fill in the fields, as appropriate.

Field

Active
Child class

All parent
classes
Parent class

Description

Check box that indicates whether the relationship path is enabled.
The child configuration item class. This class is the source of the expense
generated during configuration item cost processing.
Check box that indicates whether CI relationships in the CMDB
classes are processed.

to all parent

A valid parent CI class for the selected child class. Available only if All parent
classes is not selected.

All
relationships Check box that indicates whether all relationship types between the child and
parent classes are processed.
Relationship
The type of relationship to process between the child and parent classes.
type
Available only if All relationships is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2270


<!-- page 2271 -->
What to do next

When a configuration item has multiple parents that have valid relationship paths, the amount
aggregated to each parent is split to prevent over-aggregation of a item cost. When evaluating
parent relationships to active relationship paths, the aggregation counts the total number of
valid relationships. The expense line amount from the child configuration item is evenly divided
among the number valid paths and that amount is used when creating the inherited expense line
for the parent.

Task and labor rate cards
In Cost Management, task rate cards and labor rate cards capture operating costs by generating
expense lines representing the cost of performing a task
• Task rate cards are templates used to define the type of task and the method of calculating the
associated costs.
• Labor rate cards are templates used to define worker's labor rates when calculating task cost
based on time worked.

Manage a labor rate card
The labor rate card associates a rate code with a labor rate.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Labor Rate Cards.
2. Create or edit a record (see table for details).

Field

Name
Rate
code

Input Value

String field summarizing the purpose of the rate card.
For reference use only, if you want to align rates with an external system.

Rate type The rate type that is used to determine if the labor rate card matches with the rate
type on the time card.
Active
Hourly
rate
Condition

Check box which determines if the rate card will be actively used.
Identifies the hourly rate to be applied to task time worked entries if the worker
meets the condition defined.
Defines a filter on the user table to determine whether the task time worked user
applies to this rate card. This field uses the Condition Count Widget to preview
what records would be returned by the conditions.

Rate type in labor rate card
The rate type functionality is used to categorize different types of work. For example, Standard
versus Overtime.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2271


<!-- page 2272 -->
The Labor Rate Card form contains options to specify rate type, specify hourly rate for the
rate type, and specify users for whom the labor rate card is applicable. A single user can be
associated with multiple labor rate cards that contain different rate types.
Assume that a user logs time against a task and selects the rate type Standard in the Time
Cards form. Upon approval, the expense line (cost) for the time card is derived by matching
the user and rate type on the time card to a labor rate card assigned to that user, and that
has the same rate type. When the user has multiple labor rate cards with the same rate type,
the expense line is generated based on the labor rate card that has the lowest value in the
Order field. When there is no labor rate card associated with the user and rate type, the default
hourly rate found in theTime Sheets > Administration > Time Sheet Policy form is used
(com.snc.time_card.default_rate property).

Note: A user can enter a rate type only if it is permitted by the users Time sheet policies.
Related topics
Create a rate type

Manage a task rate card
Task rate cards are rate cards associated with records in a task table.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Costs.
2. Create or edit a record (see table for details).

Field

Name
Table
Order

Active

Input Value

String field summarizing the purpose of the rate card.
Which type of tasks the rate card applies to.
If more than one task rate card apply to the same task, the one with the lowest
order is used.
Check box which determines if the rate card will be actively used.

Summary
High-level type of expense for easier summary reports. This value will be used to
type
set the expense line summary type field.
Condition Filter to run on the table selected to determine whether this rate card applies to
a given task. This field uses the Condition Count Widget to preview what records
would be returned by the conditions.
Task rate

Rate of the task, with a currency list. To add a new currency, use the Edit link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2272


