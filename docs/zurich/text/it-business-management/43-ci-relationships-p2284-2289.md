# Zurich Strategic Portfolio Management — CI relationships / Allocating expenses / Budget related records +2 more

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2284–2289 of 2289

Sections: CI relationships (p2284); Allocating expenses (p2286); Budget related records (p2287); Domain separation and Cost Management (p2288); SPM custom tables (p2288); SPM custom tables (p2288)

---

<!-- page 2284 -->
Cost Demo Change Request

This rate card for emergency change requests demonstrates an example of creating a task cost
based on the amount of time it took to work the task, instead of the flat rate model in the incident
rate card.
• The Use time worked flag in the rate card tells the system to use the task time worked records
associated with the task when determining the task cost.
• Processing this rate will:
◦ Query the list of task time worked records for the task.
◦ Attempt to resolve an hourly rate for the user in the task time worked record, or use the
default rate of $250/hr defined in the rate card.
◦ Generate an expense line for each time worked entry.
The Expense Lines related list shows the expenses generated from this rate card.

Labor Rate Cards
Labor rate cards are a way to define common patterns for hourly worker rates so rates don't need
to be managed for each individual in the system.
To view the sample rates, navigate to Financial Management > Labor Rate Cards and select the
Development rate card:
Cost Demo Development Labor Rate

The conditions state that for users in the Development department, time worked costs will use
$100 as the hourly rate.

CI relationships
To get reports that represent the total costs for a business service, there must be some
association between the service and the CIs that make up the service. This is done with CI
relationships.

Before you begin

Role required: financial_mgmt_admin

About this task

Use the demo data of the Cost Management plugin to understand how to check all expense lines
related to a business service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2284


<!-- page 2285 -->
Procedure
1. Navigate to All > Cost > Config > Business Services.
2. Select Retail.
3. View the business service map by selecting the dependency views icon (

).

Example business service map

This view shows that the dbaix901nyc server is a dependency of the Retail Adding Points,
Retail POS, and Retail business services. So whenever the dbaix901nyc server incurs a cost, it
would be represented at each of the business services.
The dbaix901nyc server is a member of the Sun E20K Servers NY CI rate card, so the expenses
can be verified from this CI rate card.
To view them:
a. Navigate to All > Cost > Costs > CI Rate Cards.
b. Select Sun E20K Servers NY.
c. Select the Expense Line related list.
If this related list is not available, configure your form layout to display the Expense Line →
Rate Card related list.
d. Filter the related list for short description contains dbaix901nyc.
The server's expenses are now visible:
Example server expenses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2285


<!-- page 2286 -->
This example contains one direct expense (inherited = false), and three inherited expenses
that have been generated from other direct expenses. These inherited expenses are based on
CI relationships, which allow for reporting at any business service level.
For more information on expense aggregation, see Enable relationship aggregation.

Allocating expenses
Expenses can also be allocated to a business entity that is responsible for the expense.
This is not considered charge-back or billing but could be used as a source for billing. The
primary purpose of expense allocation is to represent the consumer of the process that has
incurred some expense. This can be accomplished by defining expense allocation rules.

Simple Example
This example demonstrates allocating every server-related expense line to the department
responsible for the server.
To view the example:
1. Navigate to Financial Management > Expense Allocation Rules.
2. Remove the list filter to view inactive rules as well as active ones.
3. Select the Server - Department rule.
The rule states that for every expense line associated (Expense source field) with a server that
has one of the selected statuses, generate an expense location record for 100% of the expense
amount and assign the allocation to the server's department.
To view expense allocations, add the Expense Allocation related list to the form. The Target field
is the business unit that the expense is allocated to.
Cost Demo Alloc Exp

Complex Example
A more common example would be to allocate the costs of a business service to the business
consumers. Since cost centers are generally used when referring to business finances, this
example allocates business service costs to each cost center that is consuming the service and
bases the amount allocated on the amount of the service the cost center consumes.
To view the example, navigate to Financial Management > Business Services and select Retail.
Switch to the Cost view to gain access to additional related lists.
The Allocation Units record defines the amount of capacity that this service provides. In this
case, the Retail service can support 50 locations (units), of which 45 are allocated. A unit is a
generic concept that can represent something that makes sense for that business service. This
record uses units to represent allocation. The objective is to use the unit count and the cost
center unit count to determine a percentage of total to calculate the allocation amount.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2286


<!-- page 2287 -->
Cost Demo Retail Allocation Units

The CI Cost Center Relationships list shows which cost centers are using the service and
how many units they are using. This information is used to determine how much of the service
expenses to allocate to each cost center. For example, the Trading department is using 10 of the
50 allocated units, so they will be allocated 20% of all Retail expenses. There's also an option to
allocate based on the total (10 or 45).
Cost Demo Retail Users

To see how the expense lines are allocated, select an entry in the Expense Lines related list and
add the Expense Allocation related list to the Expense Line form.
The following is an expense from the dbaix901nyc server for $2,500. Two expense allocations
are generated from the expense. The Trading cost center was allocated $500 (20%) of the
expense based on the CI cost center relationship seen earlier.
Cost Demo Retail Example

This type of business-service-to-cost-center allocation is accomplished through the Process
Svc-CC Relationships expense allocation rule. This is an advanced rule that uses script to
determine the allocation logic.

Budget related records
Budgets are related to additional records, displayed as related lists on its form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2287


<!-- page 2288 -->
The following are the related lists on a Budget record. You can add additional records to these
related lists or remove existing ones.
• Cost Centers: Shows the cost centers that are a member of this budget.
• Expense Allocations: Shows all of the expense allocation records during the budget time
period for all of the budget's cost centers.

Domain separation and Cost Management
Domain separation is unsupported in Cost Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

SPM custom tables
Strategic Portfolio Management (SPM) includes several custom tables that enable you to
enhance SPM according to your specific business requirements. These tables are provided
without predefined business logic, allowing you to use them as fully customizable entities to suit
your unique needs.

SPM custom tables
The SPM custom tables enable organizations to scale Strategic Portfolio Management by
integrating custom features and business-specific functionality.
The following tables from the Strategic Planning application and the PPM Standard plugin
support Microsoft Active Directory SPM implementations, with a focus on cost efficiency and
scalability for large-scale deployments, particularly within financial institutions.

Table

Description

Application/
Plugin

Custom planning item 1

Stores information for an additional
planning item type.

Strategic
Planning

Stores information for an additional
planning item type.

Strategic
Planning

Stores information for an additional
planning item type.

Strategic
Planning

Stores information for an additional
planning item type.

Strategic
Planning

[sn_align_core_custom_planning_item_1]
Custom planning item 2
[sn_align_core_custom_planning_item_2]
Custom planning item 3
[sn_align_core_custom_planning_item_3]
Custom planning item 3

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2288


<!-- page 2289 -->
Table

Description

Application/
Plugin

Stores information for an additional
planning item type.

Strategic
Planning

Stores information for an additional
planning item type.

Strategic
Planning

Import and map project codes from
ERP systems to SPM.

PPM
Standard

Import expense lines from ERP
systems to SPM.

PPM
Standard

[sn_align_core_custom_planning_item_3]
Custom planning item 4
[sn_align_core_custom_planning_item_4]
Custom planning item 5
[sn_align_core_custom_planning_item_5]
Inbound Actuals Configuration
[sn_invst_pln_inbound_actuals_config]
Inbound Actuals
[sn_invst_pln_inbound_actuals]
Related topics
Planning item configuration for lenses and portfolio plans
Define a new planning item type in Strategic Planning
Enable custom item types in Strategic Planning
Investment Funding administration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2289


