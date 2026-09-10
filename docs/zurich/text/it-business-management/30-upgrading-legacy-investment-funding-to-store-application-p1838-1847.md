# Zurich Strategic Portfolio Management — Upgrading legacy Investment Funding to Store application / Investment Funding administration / Create a top-level investment +2 more

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1838–1847 of 2289

Sections: Upgrading legacy Investment Funding to Store application (p1838); Investment Funding administration (p1839); Create a top-level investment (p1843); Create an investment (p1845); Co-owners for an investment (p1847)

---

<!-- page 1838 -->
Table

Description

[sn_invst_pln_invst_funding_base_fund]
Funding Base

Base table for funding and requests.

[sn_invst_pln_invst_funding_base]
Funding Base Breakdown
[sn_invst_pln_invst_funding_base_breakdown]
Funding Configuration

Stores the breakdown of funding base
records.
Stores funding configuration details.

[sn_invst_pln_invst_funding_configuration]
Investment Entity

Stores investment entity types.

[sn_invst_pln_invst_funding_entity]
Funding State

Stores different states of a funding.

[sn_invst_pln_invst_funding_state]
Investment

Stores investment details.

[sn_invst_pln_invst_investment]

Upgrading legacy Investment Funding to Store application
If you are upgrading from the legacy Investment Funding, post installation of the Investment
Funding application, you can migrate your existing data to the ServiceNow Store application
tables. Also, you must update the reference tables for the Investment and Funding Entity fields
to the ServiceNow Store application tables.

Migrate data from legacy Investment Funding to Store application
With the admin role, you can migrate your existing data from the legacy Investment Funding
tables to the new ServiceNow Store application tables by running the scheduled job.

Before you begin

Role required: admin

Note: Migrating data to the ServiceNow Store application tables is a one-time job, and not
meant to be on a schedule.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Migrate Investment Funding To Store scheduled job.
3. On the Scheduled Script Execution form, ensure that the frequency is selected as On Demand
in the Run field.
4. Click Execute Now.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1838


<!-- page 1839 -->
Update references from legacy Investment Funding tables to Store tables
Post migration of your legacy Investment Funding data, you must update the reference tables
for the Investment and Funding Entity fields from the legacy Investment Funding tables to the
ServiceNow Store application tables in the required tables.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Update the reference tables from the legacy Investment Funding tables to the Store
application for the Investment and Funding Entity fields for the following tables.

Table

Column label (Field)

Reference table for
the legacy Investment
Funding plugin

Reference table for the
Store application

Cost Plan

Investment

invst_investment

sn_invst_pln_invst_investment

Cost Plan

Funding Entity

invst_investment_entitysn_invst_pln_invst_investment_entity

Benefit Plan

Investment

invst_investment

sn_invst_pln_invst_investment

Goal

Investment

invst_investment

sn_invst_pln_invst_investment

Investment Funding administration
The Investment Funding application requires you to do some initial administrative tasks for it to
be fully functional.

Fiscal calendar setup for Investment Funding
The Fiscal calendar setup you choose determines the fiscal periods used by your organization to
request or allocate funds.
Based on the fiscal calendar setup, you can then set the funding frequency that aligns with
the funding cycles your organization uses, such as monthly or quarterly, for fund requests and
allocations.

Note: Once you allocate or request funds for investments for a fiscal period, you cannot
change to another fiscal calendar type.
For information about fiscal calendars, see Defining fiscal calendars

.

For information about how to generate a fiscal calendar, see Generate a fiscal calendar

.

Set Investment Funding preferences
As an administrator, you can set global defaults for Investment Funding preferences, which affect
the funding behavior.

Before you begin

Role required: sn_invst_pln_investment_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1839


<!-- page 1840 -->
Procedure
1. Navigate to All > Investment Funding > Setup > Preferences.
2. In the Funding frequency list, select a frequency of periods in which you can request or
allocate funds to an investment.
The list shows options based on the configured fiscal calendar.
For example, if you set up the Standard fiscal calendar and you want to fund your investments
quarterly, select Quarter.
The default value is Quarter for the Standard fiscal calendar setup or Period for any other fiscal
calendar setup.
3. Optional: In the Number of editable past periods field, enter a number to specify the number
of past periods enabled for you to modify the allocated or requested fund.
(Optional) For example, if the funding frequency is Quarter and you enter 2 in the field, you can
edit funds for the previous two quarters.
The default value is 0 (editing of past period funding is not enabled).
4. Optional: Select the Hide actuals in tree view check box to hide the actual amount of an
investment in the tree view cards.
5. Optional: Select the Allow fund overallocation check box to enable allocation of funds in
addition to the received funds.
The Fund overallocation percent (%) and Allow fund overallocation at investment level
fields are enabled.
6. Optional: In the Fund overallocation percent (%) field, enter the percentage by which funds
can be allocated in addition to the received funds.
(Optional) For example, if the received fund amount is $200,000, and you enter 10% in the
Fund overallocation percent field, a total of $220,000 can be used for funding.
7. Optional: Select the Allow fund overallocation at investment level check box to enable
source investment owners who have funded the investment and are not removed from the
allocation to override the fund overallocation percent at investment level.
8. Click Save.
9. Select an option from the confirmation window that is displayed:
◦ Update the overallocation preferences at the investment level for all existing investments
◦ Update the overallocation preferences at the investment level for existing investments that
have not overridden the overallocation percentage
◦ Update the overallocation preferences at the investment level only for new investments
10. Click Confirm.

Create an investment entity
Create an entity for investments through which you can receive or allocate funds.

Before you begin

Role required: sn_invst_pln_v2.investment_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1840


<!-- page 1841 -->
Procedure
1. Navigate to All > Investment Funding > Setup > Investment Entities.
2. Click New.
3. On the form, fill in the fields.

Note: The Entity tab in the form is replaced by the Owner tab when the Generic option
is selected.
Investment Entity form
Field

Name
Active

Description

Unique name of the investment entity.
Option for indicating the status of the investment entity.
You can create investments only for active investment
entities.

Description

Short description of the investment entity.

When the Generic option is not selected:
Entity tab
Field

Description

Table

Transaction table on which funding is
enabled.

Condition

Condition to filter data from the table enabled
for funding.
For example, you could enable funding for
the Project table and add a filter condition to
list only projects that are in the Ready state.

Owner field

Any user field in the transaction table
mapped to the investment owner field.
The user on the mapped field is automatically
assigned as the investment owner when you
are creating an investment.
For example, for a Project investment entity,
you could map the Project manager field as
the investment owner field.

When the Generic option is selected:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1841


<!-- page 1842 -->
Owner tab
Field

Owner table

Owner filter

Description

User table mapped as the investment owner
field.
Condition to filter users that are listed in the
Owner field in the Investment form to select
the investment owner.
For example, for a Project investment entity,
you could create a filter to list only users with
the Project manager role.
By default, the Active is true filter is set,
which means that only active users are listed
for selection.

4. Optional: Click the Unlock fundable entities icon to enable the selection of entities that can
be funded by the current entity.
(Optional) For example, a portfolio entity can fund a program, a program can fund a project, a
project can request from a program, and a program can request from a portfolio.
5. Optional: Add the entities to the Fundable entities list.
(Optional) If no value is selected, all entities are considered to be enabled for funding.
6. Click Submit.

What to do next
• Create funding artifacts to create a business rule to synchronize investment and investment
entity owners or to add a related link on the investment target form.
• Create a top-level investment or an investment for an investment entity.
Enable synchronization of investment and investment entity owners
Create a business rule for an investment entity that synchronizes the investment owner with the
investment entity owner. If you update the name of the investment entity owner, the owner of the
corresponding investment and the Viewable by field for the investment is automatically updated.

Before you begin

Role required: sn_invst_pln_v2.investment_admin

Procedure
1. Navigate to All > Investment Funding > Setup > Investment Entities.
2. Open an entity for which you want to enable synchronization of owners.
3. On the form, click the Create Funding Artifacts related link.
4. In the dialog box, select the Create business rule to sync investment owner with investment
entity owner option, and click OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1842


<!-- page 1843 -->
Result

A business rule is created for the investment entity that synchronizes the owner of the
investment with the associated investment entity owner when you update the investment entity
owner.
Access investments directly from an investment target
Create a related link to go directly to the My Funds page from an investment target.

Before you begin

Role required: sn_invst_pln_v2.investment_admin

Procedure
1. Navigate to All > Investment Funding > Setup > Investment Entities.
2. Open an investment entity for which you want to create a related link.
3. On the form, click the Create Funding Artifacts related link.
4. In the dialog box, select the Create related link for requesting/funding on the form option,
and click OK.
5. Click OK.

Result

The Add/View Investments related link appears on the form of the investment target for direct
navigation to the My Funds page.

Create a top-level investment
Create a top-level investment for the investment entity record for which you want to receive and
allocate funds.

Before you begin

Role required: sn_invst_pln_v2.investment_planner

About this task

A top-level investment does not have a source investment or source investment entity. Once
created, a top-level investment cannot be converted to a normal investment later.

Procedure
1. Navigate to All > Investment Funding > Top level Investments.
2. Click New.
3. On the form, fill in the fields.
New Top level Investment form
Field

For

Description

Investment entity record to associate with the
investment. To access the records associated
with an entity, select an investment entity in
the list on the left. The list on the right then
displays the records associated with the
selected entity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1843


<!-- page 1844 -->
Field

Description

You can create only one top-level investment
for an investment entity type-investment
entity value pair.

Note: When you select the Generic

Bucket entity option, the list to select
the associated entity record is disabled.
Owner

User who will own the top-level investment.
This field is set to the Owner field value
determined while creating the selected
investment entity.

Name

Unique name of the investment.

Top investment

Option that indicates that this is a top-level
investment. This setting cannot be changed.

4. Click Create.

What to do next
• Fund a top-level investment to meet the business goals.
• Create a business case to define the business need of the investment.

Fund a top-level investment
Allocate funds to a top-level investment so that the investment owner can distribute funds
further.

Before you begin

Role required: sn_invst_pln_v2.investment_planner

Procedure
1. Navigate to All > Investment Funding > Top level Investments.
2. Open an investment to which you want to allocate funds.
3. On the Details tab, click Add fund.
4. On the form, fill in the fields.
Add fund form
Field

Fiscal period

Funded capex

Description

Fiscal period for which the fund is allocated
to the investment.
Amount funded as a capital expense.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1844


<!-- page 1845 -->
Field

Funded opex

Description

Amount funded as an operating expense.

5. Click Submit.

Result

The top-level investment is funded with the specified amount for the selected period.

Create an investment
Create an investment to fund a target.

Before you begin

Role required: sn_invst_pln_v2.investment_user

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click New.
3. On the form, fill in the fields.
Investment form
Field

For

Description

Investment entity record to associate with the
investment. To access the records associated
with an entity, select an investment entity in
the list on the left. The list on the right then
displays the records associated with the
selected entity.

Note: You can create only one toplevel investment for an investment
entity type-investment entity value pair.
Name

Unique name of the investment.

4. Click Submit.

What to do next
• Add a business case to define the business needs of the investment.
• Request funds from a funding source.
• Allocate funds from your available funds.

Add a business case for an investment
Add a business case for an investment to define its business needs and goals.

Before you begin

Role required: sn_invst_pln_v2.investment_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1845


<!-- page 1846 -->
About this task

An investment can have only one business case.
When a business case is created on a demand or project record, the same is mapped to the
corresponding investment record. And when a business case is created on an investment
record, the same is mapped to the corresponding demand or project record. Cost plans and
benefit plans associated with project or demand records are also mapped to the investment
records.

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Open an investment to add the business case.
3. On the Details tab, click the Create Business case related link.
The related link is available only if a business case does not exist for the investment.
4. In the Add Business case dialog box, provide information in the fields based on your business
needs and goals for the investment.
Add Business case form
Field

Description

Name

Unique name of the business case.

Investment type

Type of the investment.

Investment class

Investment class category assigned to the investment:
◦ Run: Investment made to sustain the existing business.
◦ Change: Investment made to implement a change in the
business.

Business case tab section of the Add Business case form
Field

Description

Description

Description of the business case supporting
the investment.

Enablers

Key enablers for the investment.

Barriers

Major barriers to the investment.

Assumptions

Assumptions made for the investment that
help to determine the scope and risks, and
fine-tune the time and cost estimates.

Scope section of the Add Business case form
In scope

Scope of the investment, which includes a
set of boundaries that define the extent of the
investment.

Out of scope

Activities that are not in the scope of the
investment.

Risk of performing

Risks associated with the investment if it is
carried out.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1846


<!-- page 1847 -->
Risk of not performing

Risks associated with the investment if it is
not carried out.

5. Click Submit.

Co-owners for an investment
Investment co-owners manage, request, and allocate funds on your behalf to the investments
that you own. The co-owner has the same rights and permissions as the owner.
• Co-owners have the same capabilities and access rights as the owner for the investments,
which include:
◦ Add funds to top-level investments.
◦ Add child investments and fund them.
◦ Add and request source and funds from a top-level investment.
◦ See, request, and allocate funds to child investments.
◦ Add others as co-owners.
◦ Delete any unfunded investments.
◦ See who funded an investment.
• Co-owners are added to the Viewable by field for all the child investments.
• An investment can have multiple co-owners. There is no maximum limit for the number of coowners for an investment.
• In the Active Investments page, you can see the access level for the investments.
◦ Owned investments are marked with an owned icon (

).

◦ Co-owned investments are marked with a co-owner icon (
◦ Viewable investments are marked with a view only icon (

).
).

Manage co-owners for an investment
Add co-owners to your investments to request, approve, and manage the funds on your
behalf. You can remove the existing co-owners when you no longer need them to manage your
investments.

Before you begin
Role required:

• For managing co-owners in top-level investments: sn_invst_pln_v2.investment_planner
• For managing co-owners in My funds: sn_invst_pln_v2.investment_user,
sn_invst_pln_v2.investment_planner

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1847


