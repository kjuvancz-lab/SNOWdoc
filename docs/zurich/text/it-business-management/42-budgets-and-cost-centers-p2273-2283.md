# Zurich Strategic Portfolio Management — Budgets and cost centers / Cost sources

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2273–2283 of 2289

Sections: Budgets and cost centers (p2273); Using distribution costs and rules (p2277); Use business services with expenses (p2278); Cost sources (p2281)

---

<!-- page 2273 -->
Field

Use time
worked

Input Value

By default a flat rate per task is defined in the rate card. Selecting the check box
will force the rule to calculate the task cost based on the related task time worked
entries.

Default
labor rate Defines the default hourly rate to apply to the time worked entries if the worker
does not have a labor rate card. Displayed when Use time worked is selected.

Process task rate cards
The business rule Process Task Rate Cards runs when tasks close and checks to see if any task
rate cards apply. If they do, an expense line is created according to the rate card.
The process flow of the "Process Task Rate Cards" business rule is:
1. Task closes.
2. Business rule runs.
3. Query active task rate cards in order looking for a matching condition.
4. Qualifying rate card not using time worked.
Generate expense line linked to the task using the task rate value.
5. Qualifying rate card using time worked.
a. Get task time worked entries for the task grouped by user (worker).
b. For each user, check to see if they match conditions in any of the labor rate cards.
i. Labor rate card found, generate expense line using the time worked and labor rate.
ii. Labor rate card not found, generate expense line using the default labor rate from the task
rate card.

Budgets and cost centers
Understand what budgets and cost centers are and how to manage them in the Cost
Management application.
Budgets
Budgets allow tracking of planned and actual spending. Budgets are defined for a
given time period for one or more cost centers.
Cost centers
Cost Centers are used to represent a business entity. All expense allocations
assigned to the budget's cost center during the budget period are used to calculate
the budget's actual expense allocations.
It is also possible to assign a cost center to a budget from the cost center record.
The cost center record contains a budgets related list.

Budgets and cost centers example
The most common business entity to associate financial information is the cost center.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2273


<!-- page 2274 -->
The example here shows how cost centers can be allocated expenses based on service usage.
This example uses that information to compare with a defined budget for the cost centers.
A budget is a placeholder for an amount of planned spending for one or more cost centers. To
view an example, navigate to Financial Management > Budgets and select the Investments
budget:
Cost Demo Budget

This budget has a defined start and end date, planned amount, and actual amount. In the Cost
Center related list, Trading is a member.
For all expense allocations assigned to the Trading cost center during the budget time periods,
the allocations will be totaled to populate the actual budget field. The related expense allocation
records can also be viewed in the Expense Allocations related list.

Create or update cost centers
Define a new cost center or update the details of the existing cost centers.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Config > Cost Center.
2. Select a cost center record to edit or select New to create one.
3. On the form, fill in the fields.
Cost Center form
Field

Description

Name

Name of the cost center.

Manager

Manager of this cost center.

Account number

Account number for this cost center.

Valid from

Date this cost center is valid from. Select a
date using the calendar option.

Code

Code assigned to this cost center.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2274


<!-- page 2275 -->
Field

Description

Valid to

Date this cost center is valid up to. Select a
date using the calendar option.

Location

Location of this cost center. Select one using
the lookup option.

Parent

Parent cost center, if any. Select one using
the lookup option.

4. Select Submit.

What to do next

Review the related lists for this cost center and update them as necessary. See Cost centers
related records.
Related topics
Budgets and cost centers

Create or update a budget
Cost management provides budgets for you to plan expenses for a certain time period.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Config > Budgets.
2. Select a Budget to edit or select New.
3. Fill in the form (see table)
Budget form
Field

Input value

Number

System generated record number.

Name

String field for the name of the budget.

Start

Date field defining the beginning of the budget period.

End

Date field defining the end of the budget period.

Planned

Currency field representing the planned amount of expenses for the associated
cost centers during the budget period. This value is inputted or imported.

Actual

Currency field representing the actual amount of expenses for the associated
cost centers during the budget period. This is a calculated field using the list of
expense allocations for the cost centers.

Remaining Currency field representing the amount of planned minus actual expenses. This
is a calculated field.
Projected

Currency field representing the estimated amount of expenses for the
associated cost centers during the budget period. An average daily expense
amount is calculated and applied to the rest of the budget period to determine
the estimated projection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2275


<!-- page 2276 -->
What to do next

Review the related lists for this budget and update them as necessary. See Budget related
records.
Related topics
Budgets and cost centers

Cost centers related records
Cost centers are related to additional records, displayed as related lists on its form.
The Cost Management plugin adds the following related lists to the cost center record. You can
add additional records in these related lists or remove existing ones.
• Budgets: Budgets that this cost center is a member of.
• CI Cost Center Relationships: Defines how much of a business service capacity this cost
center is consuming.
• Expense Allocations: Shows all the expense allocation records that have this cost center as
the target.
Cost center related lists

Associate cost centers to a budget
You create cost centers and associate budgets and expense allocations with them.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Open an existing budget from the Cost > Config > Budgets module.
2. Make sure the Cost Centers related list is displayed.
3. Use the Edit to add or remove existing cost centers from the budget.
4. Use the New button to create a new cost center record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2276


<!-- page 2277 -->
Using distribution costs and rules
Distribution Costs are costs which can be divided among a group of records.
For example, the cost of power at a datacenter which can be divided among the CIs in the
datacenter.
Distribution Rules determine how the Distribution Costs are divided among the CIs.

Defining Distribution Costs
To define new distribution costs, navigate to Financial Management > Cost Management >
Distribution Costs, and select New. Populate the following fields:
Defining Distribution Costs
Field

Input Value

Number

A system-generated unique identifier for the Distribution Cost.

Name

A human-readable identifier for the cost.

Amount

The amount of the cost, with a currency list. To add a new currency, use the Edit
link.

Distribution Select a Distribution Rule to determine how the costs are distributed to CIs. For
Rule
more information, see Distribution Rules.
Active

Determines if the cost is actively used.

Start Date

The date of the cost, or if the cost is recurring, the first date of the cost.

Recurring

If checked, the cost will recur, and will be added regularly.

End Date

If Recurring is true, the last date to add the distribution cost.

Summary
Type

Identifies a high-level type of expense for easier summary reports. This value will
be used to set the expense line summary type field.

Interval

If Recurring is true, the time between each addition of the distribution cost
between Start Date and End Date.

Last
Processed

A read-only display of the last time the distribution cost was processed.

Next
Process

A read-only display of the scheduled next process date.

Defining distribution rules
Define distribution rules to view distribution costs that are distributed according to the rules.
To define new distribution rules, navigate to Financial Management > Admin > Distribution Cost
Rules, and select New and populate the following:
Distribution Rules form
Field

Input Value

Name

A unique name for the rule.

Active

Determines if the rule is actively used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2277


<!-- page 2278 -->
Distribution Rules form (continued)
Field

Input Value

Advanced

If checked, the distribution rule will be determined by script. If not checked, it will
be determined by table and conditions.

Description A description of the rules and any notes on its use.
Script

If Advanced is true, the script which will determine the rule's behavior.

Table

If Advanced is false, a list list of tables to find the records to distribute the cost to.

Condition

If Advanced is false, a condition builder to determine which records will receive
the distributed cost, on the table determined by the Table field. Cost amount will
be distributed evenly across the records identified by the table and condition
values. This field uses the Condition Count Widget to preview what records would
be returned by the conditions.

Once submitted, the Distribution Costs related list is displated, which helps determine which
costs will be distributed according to the rules.

Scripted distribution
Scripted distributions allow for custom distribution amounts, versus the evenly split distributions
when using table and condition filters.
To enable scripted processing on a distribution rule:
• Check the advanced field check box, this will display the script field.
• Build the script using the following concepts:
◦ Query for target records and data to use for calculating the allocation amount.
◦ Create expense line records using the ExpenseLine API.
For more information, see ExpenseLine

.

As noted in the default script, when the advanced field is enabled, the following variables are
available during the script processing:
• distCost - GlideRecord for the distribution cost, allowing access to all fields.
• distCostAmount - cost amount in the system currency.

Processing Distribution Costs
A scheduled job called Process FM Costs automatically processes distribution costs daily.

Use business services with expenses
Manage the relationships between business services and their expenses with allocation units
and cost centers.

Define a cost center
Cost centers are a commonly used reference between financial systems and IT. Cost center
records represent business entities, and have a related list of CI Cost Center Relationships that
measure the cost center's consumption of business services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2278


<!-- page 2279 -->
Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Config > Cost Center.
2. Select a record to edit or select New.

Field

Description

Name

A unique name for the cost center.

Account Number

An account number associated with the cost center, if one exists.

Code

A code associated with the cost center, if one exists.

Location

A reference to the location of the cost center.

Manager

A reference to the user who manages the cost center.

Valid from

The date that the cost center is valid from.

Valid to

The date that the cost center is valid to.

CI Cost Center Relationships
Field

Description

Service

A reference to a Business Service.

Cost
Center

The cost center to apply the relationship to. If reached through the related list, it
should already be related to the appropriate cost center.

Allocation Feature not yet implemented.
Percentage
Allocation
Type

A choice list. Should be Units.

Allocation
Units

The number of units that the cost center is using. This is measured using the
same type of unit used to define the total capacity of the business service in
the allocation unit record. This number will be used to update the number of
allocated units in the allocation unit record. It will also be used to determine the
amount of expenses to allocate to the cost center based on the percentage of
business service used versus the total capacity.

Default allocation rule
For every expense line generated for a business service, the default allocation rule Process SvcCC Relationships will attempt to process the expense and create allocations for each cost center
that is consuming the service.
The amount of the expense allocation is calculated by dividing the number of units the cost
center is consuming by the total number of units for the business service. This calculation
method is refereed to as "all unit" allocation as it uses the total unit capacity to determine the
allocation percentage.
Refer to the demo walk-through for a detailed example.
For a given business service expense line, it is typical that less than 100% of the expense would
be allocated using this method not all units have been allocated to cost centers. The unallocated
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2279


<!-- page 2280 -->
expenses could be considered IT overhead. Some organizations prefer to show 100% expense
allocation regardless of how many units are in use. This method is referred to as "allocated unit"
since the percent of allocation calculated by dividing the number of units the cost center is
consuming by total number of allocated units from all cost centers.

Allocation
calculation
method

all_units

Example

Service supports 100 units but only has 50 units allocated, and cost center
ABC is allocated 25 units. This method will result in an allocation cost of
25/100, or 25% of the total cost of the service. 50% of the expenses (from the
50 unallocated units) will not be allocated.

allocated_units Service supports 100 units but only has 50 units allocated, and cost center
ABC is allocated 25 units. This method will result in an allocation cost of
25/50, or 50% of the total cost of the service. 100% of the expenses will be
allocated, showing full cost recovery.
This is a system wide setting that can be configured by navigating to Financial Management >
Properties module and selecting an option from the choice list.

Define an allocation unit
Allocation unit records define the capacity and usage of a business service.

Before you begin

Role required: financial_mgmt_admin

Procedure
1. Navigate to All > Cost > Config > Allocation Units.
2. Select a record to edit or select New.

Note: Selecting the name of the configuration item will display the CI record, not the
Allocation Units.

Field

Description

Configuration Select the Business Service to define allocation units for.
Item
Total Units

The total number of units of expense available to allocate. A unit is a generic
measurement which can represent anything. Should match the cost center
relationship unit. What units represent can be recorded in the Unit Type field.
Using the Total units option may result in unallocated expenses if there are
unallocated business service units. Using the Allocated unit option always
results in 100% expense allocations.

Allocated
Units

How many of the total units are allocated. Populated by script.

Available
Units

How many of the total units are unallocated. Populated by script.

Updated

When the units were last updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2280


<!-- page 2281 -->
Field

Description

Unit Type
(added by
configuring
the form)

Used to record what the units represent (e.g. seats, licenses, Gigabytes, and
so on).

Cost sources
There are a several ways to generate expense lines for objects in the system.
These are generally classified as one of three types:
• CI costs
• Task costs
• Custom generated costs - these are not covered in the demo data, refer to the ExpenseLine
API for more information.

CI Rate Cards
A CI rate card is a template that defines costs for a particular type of CI. This example uses only
server-related costs. Since there are only a few different server models and the costs are the
same for each model, CI rate cards can define a template of costs for each model.
Following is the Sun E20K Servers NY rate card:
Cost Demo CI Rate card

It represents the common costs and CIs in the UNIX servers in the NY datacenter, regardless of
what the server is used for.
The related lists contain information on how this rate card is used. The Configuration Items
related list display the each of the servers that will use this rate card. This list of items can be
managed manually with the Edit button or with the Update CI List related link. The rate card
condition for this rate card is Table=Unix Server. Clicking the Update CI List related link shows
two things:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2281


<!-- page 2282 -->
• CIs that are a member of the rate card but do not match the condition.
• CIs that match the condition but are not a member of the rate card.
To "true-up" the rate card, use the Replace or Merge button.
Cost Demo update CI rate card

In this case, there are two extra UNIX servers that are not in the rate card. Use the Merge button
to add them. The rate card now shows nine items.

Note: Counts may vary if there are additional CIs in the instance.
The Rate Card Costs related list displays the recurring costs that all of the servers will incur, in
this case on a monthly basis.
Adding the Expense Line related list to the CI Rate Card form shows the list of expense lines that
have been generated from this rate card's costs. Here are the expenses for the Server backup
services for two of the servers:
Cost Demo CI Rate Card

Distribution Costs
For more generic bulk costs that are generated by multiple CIs, distribution costs can
represent the broader costs where individual CI rate cards do not apply. Navigate to Financial
Management > Distribution Costs to view a few examples.
Select Datacenter Facilities (amort) from the list:
Cost Demo distribution cost

In this example, the datacenter's power costs for a month have been amortized and represented
as a monthly recurring distribution cost.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2282


<!-- page 2283 -->
This bulk cost should be distributed to all servers evenly to enable reporting on costs per server
and cost center. This is accomplished with the Distribution Rule listed on the cost's form. To view
the distribution cost, click the reference icon for the All Installed Servers rule in the Distribution
rule field:
Cost Demo Distribution cost rule

This rule takes the $5,500 and distributes it to each of the servers that match the rule condition.
The condition here is All servers with install status of installed. The '"View Condition Results
related link displays the current records matching the condition.

Task Costs
Task-related activity can also generate expense lines to track the costs associated with
processing tasks. The primary method of generating task-related costs is to use Task Rate
Cards.

Task Rate Cards
A task rate card is a condition-based record that the system uses to determine how to calculate
the costs of a task.
To view an example, navigate to Financial Management > Task Rate Card and select Incident
P1:
Cost Demo Incident rate card

Rate cards are processed whenever a task is closed. This processing is triggered by a business
rule. The rate card contains the following information:
• When an incident with priority 1 - Critical is closed, it generates an expense line for $150.
• This is a flat rate defined for each P1 incident.
The Expense Line related list displays the list of expenses that have been created by this rate
card.
Return to the Task Rate Card list and open the Change Request (emergency) rate card:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2283


